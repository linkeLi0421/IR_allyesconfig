; ModuleID = '/llk/IR_all_yes/drivers/staging/media/omap4iss/iss_video.c_pt.bc'
source_filename = "../drivers/staging/media/omap4iss/iss_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iss_format_info = type { i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iss_video_operations = type { ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.iss_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.iss_pipeline, %struct.mutex, i8, ptr, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.iss_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iss_device = type { %struct.v4l2_device, %struct.media_device, ptr, i32, ptr, i32, [11 x ptr], [11 x ptr], ptr, i64, %struct.mutex, %struct.media_entity_enum, i32, i32, ptr, ptr, %struct.iss_csi2_device, %struct.iss_csi2_device, %struct.iss_csiphy, %struct.iss_csiphy, %struct.iss_ipipeif_device, %struct.iss_ipipe_device, %struct.iss_resizer_device, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iss_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.iss_video, ptr, i8, i32, i32, i32, i32, i8, i32, ptr, [8 x %struct.iss_csi2_ctx_cfg], [2 x %struct.iss_csi2_timing_cfg], %struct.iss_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.iss_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.iss_csi2_timing_cfg = type { i8, i8, i16 }
%struct.iss_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.iss_csiphy = type { ptr, %struct.mutex, i8, ptr, i32, i32, i8, i8, %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_dphy_cfg }
%struct.iss_csiphy_lanes_cfg = type { [4 x %struct.iss_csiphy_lane], %struct.iss_csiphy_lane }
%struct.iss_csiphy_lane = type { i8, i8 }
%struct.iss_csiphy_dphy_cfg = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.iss_ipipeif_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_ipipe_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_resizer_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iss_video_fh = type { %struct.v4l2_fh, ptr, %struct.vb2_queue, %struct.v4l2_format, %struct.v4l2_fract }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.100, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.100 = type { i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }
%struct.iss_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.iss_platform_data = type { ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.99, i32, i32 }
%union.anon.99 = type { i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.114 }
%union.anon.114 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }

@formats = internal global { [19 x %struct.iss_format_info], [120 x i8] } { [19 x %struct.iss_format_info] [%struct.iss_format_info { i32 8193, i32 8193, i32 8193, i32 8193, i32 1497715271, i32 8 }, %struct.iss_format_info { i32 8202, i32 8202, i32 8202, i32 8193, i32 540029273, i32 10 }, %struct.iss_format_info { i32 8211, i32 8202, i32 8211, i32 8193, i32 540160345, i32 12 }, %struct.iss_format_info { i32 12289, i32 12289, i32 12289, i32 12289, i32 825770306, i32 8 }, %struct.iss_format_info { i32 12307, i32 12307, i32 12307, i32 12307, i32 1196573255, i32 8 }, %struct.iss_format_info { i32 12290, i32 12290, i32 12290, i32 12290, i32 1195528775, i32 8 }, %struct.iss_format_info { i32 12308, i32 12308, i32 12308, i32 12308, i32 1111967570, i32 8 }, %struct.iss_format_info { i32 12297, i32 12297, i32 12298, i32 0, i32 808535106, i32 8 }, %struct.iss_format_info { i32 12295, i32 12295, i32 12295, i32 12289, i32 808535874, i32 10 }, %struct.iss_format_info { i32 12302, i32 12302, i32 12302, i32 12307, i32 808534599, i32 10 }, %struct.iss_format_info { i32 12298, i32 12298, i32 12298, i32 12290, i32 808534338, i32 10 }, %struct.iss_format_info { i32 12303, i32 12303, i32 12303, i32 12308, i32 808535890, i32 10 }, %struct.iss_format_info { i32 12296, i32 12295, i32 12296, i32 12289, i32 842090306, i32 12 }, %struct.iss_format_info { i32 12304, i32 12302, i32 12304, i32 12307, i32 842089031, i32 12 }, %struct.iss_format_info { i32 12305, i32 12298, i32 12305, i32 12290, i32 842088770, i32 12 }, %struct.iss_format_info { i32 12306, i32 12303, i32 12306, i32 12308, i32 842090322, i32 12 }, %struct.iss_format_info { i32 8207, i32 8207, i32 8207, i32 0, i32 1498831189, i32 16 }, %struct.iss_format_info { i32 8209, i32 8209, i32 8209, i32 0, i32 1448695129, i32 16 }, %struct.iss_format_info { i32 8196, i32 8196, i32 8196, i32 0, i32 842094158, i32 8 }], [120 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/omap4iss/iss_video.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@omap4iss_video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&video->qlock\00", [18 x i8] zeroinitializer }, align 32
@omap4iss_video_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&video->mutex\00", [18 x i8] zeroinitializer }, align 32
@omap4iss_video_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&video->pipe.lock\00", [46 x i8] zeroinitializer }, align 32
@omap4iss_video_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&video->stream_lock\00", [44 x i8] zeroinitializer }, align 32
@iss_video_dummy_ops = internal constant { %struct.iss_video_operations, [28 x i8] } zeroinitializer, align 32
@iss_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @iss_video_poll, ptr @video_ioctl2, ptr null, ptr @iss_video_mmap, ptr @iss_video_open, ptr @iss_video_release }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OMAP4 ISS %s %s\00", [16 x i8] zeroinitializer }, align 32
@iss_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @iss_video_querycap, ptr @iss_video_enum_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_get_format, ptr null, ptr @iss_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_set_format, ptr null, ptr @iss_video_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_try_format, ptr null, ptr @iss_video_try_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_reqbufs, ptr @iss_video_querybuf, ptr @iss_video_qbuf, ptr @iss_video_expbuf, ptr @iss_video_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_streamon, ptr @iss_video_streamoff, ptr null, ptr null, ptr null, ptr @iss_video_enum_input, ptr @iss_video_g_input, ptr @iss_video_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_get_selection, ptr @iss_video_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_get_param, ptr @iss_video_set_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@omap4iss_video_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 1279, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not register video device (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap4iss_video_register\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap4iss_video_register._entry_ptr = internal global ptr @omap4iss_video_register._entry, section ".printk_index", align 4
@iss_video_vb2ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @iss_video_queue_setup, ptr null, ptr null, ptr null, ptr null, ptr @iss_video_buf_prepare, ptr null, ptr @iss_video_buf_cleanup, ptr null, ptr null, ptr @iss_video_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iss_video_buf_prepare.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str, ptr @.str.17, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap4_iss\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iss_video_buf_prepare\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Buffer address must be aligned to 32 bytes boundary.\0A\00", [42 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"issvideo\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"media\00", [26 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/media/media-entity.h\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 31, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 436, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1218, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1222, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1234, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1235, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1238, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1239, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"iss_video_dummy_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1208, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"iss_video_fops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1195, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1247, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"iss_video_ioctl_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1068, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1278, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"iss_video_vb2ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 406, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 342, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1163, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 533, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 535, i32 25 }
@___asan_gen_.112 = private unnamed_addr constant [32 x i8] c"../include/media/media-entity.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 468, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [46 x i8] c"../drivers/staging/media/omap4iss/iss_video.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1048, i32 23 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @omap4iss_video_register._entry, ptr @omap4iss_video_register._entry_ptr, ptr @formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @omap4iss_video_init.__key, ptr @.str.3, ptr @omap4iss_video_init.__key.4, ptr @.str.5, ptr @omap4iss_video_init.__key.6, ptr @.str.7, ptr @omap4iss_video_init.__key.8, ptr @.str.9, ptr @iss_video_dummy_ops, ptr @iss_video_fops, ptr @.str.10, ptr @iss_video_ioctl_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @iss_video_vb2ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_video_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_video_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_video_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_video_dummy_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_video_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_video_vb2ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap4iss_video_format_info(i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %code)
  %cmp2 = icmp eq i32 %0, %code
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond:                                         ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %code)
  %cmp2.1 = icmp eq i32 %1, %code
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %2 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %code)
  %cmp2.2 = icmp eq i32 %2, %code
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %code)
  %cmp2.3 = icmp eq i32 %3, %code
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %code)
  %cmp2.4 = icmp eq i32 %4, %code
  br i1 %cmp2.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %code)
  %cmp2.5 = icmp eq i32 %5, %code
  br i1 %cmp2.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %code)
  %cmp2.6 = icmp eq i32 %6, %code
  br i1 %cmp2.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %code)
  %cmp2.7 = icmp eq i32 %7, %code
  br i1 %cmp2.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %8 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %code)
  %cmp2.8 = icmp eq i32 %8, %code
  br i1 %cmp2.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %9 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %code)
  %cmp2.9 = icmp eq i32 %9, %code
  br i1 %cmp2.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %10 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %code)
  %cmp2.10 = icmp eq i32 %10, %code
  br i1 %cmp2.10, label %for.cond.9.cleanup_crit_edge, label %for.cond.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %11 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %code)
  %cmp2.11 = icmp eq i32 %11, %code
  br i1 %cmp2.11, label %for.cond.10.cleanup_crit_edge, label %for.cond.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %12 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %code)
  %cmp2.12 = icmp eq i32 %12, %code
  br i1 %cmp2.12, label %for.cond.11.cleanup_crit_edge, label %for.cond.12

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %13 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %code)
  %cmp2.13 = icmp eq i32 %13, %code
  br i1 %cmp2.13, label %for.cond.12.cleanup_crit_edge, label %for.cond.13

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %14 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %code)
  %cmp2.14 = icmp eq i32 %14, %code
  br i1 %cmp2.14, label %for.cond.13.cleanup_crit_edge, label %for.cond.14

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  %15 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %code)
  %cmp2.15 = icmp eq i32 %15, %code
  br i1 %cmp2.15, label %for.cond.14.cleanup_crit_edge, label %for.cond.15

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.15:                                      ; preds = %for.cond.14
  %16 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %code)
  %cmp2.16 = icmp eq i32 %16, %code
  br i1 %cmp2.16, label %for.cond.15.cleanup_crit_edge, label %for.cond.16

for.cond.15.cleanup_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.16:                                      ; preds = %for.cond.15
  %17 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %code)
  %cmp2.17 = icmp eq i32 %17, %code
  br i1 %cmp2.17, label %for.cond.16.cleanup_crit_edge, label %for.cond.17

for.cond.16.cleanup_crit_edge:                    ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.17:                                      ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #16
  %18 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 18), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %code)
  %cmp2.18 = icmp eq i32 %18, %code
  %spec.select = select i1 %cmp2.18, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 18), ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.17, %for.cond.16.cleanup_crit_edge, %for.cond.15.cleanup_crit_edge, %for.cond.14.cleanup_crit_edge, %for.cond.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @formats, %entry.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 1), %for.cond.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 2), %for.cond.1.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 3), %for.cond.2.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 4), %for.cond.3.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 5), %for.cond.4.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 6), %for.cond.5.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 7), %for.cond.6.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 8), %for.cond.7.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 9), %for.cond.8.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 10), %for.cond.9.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 11), %for.cond.10.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 12), %for.cond.11.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 13), %for.cond.12.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 14), %for.cond.13.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 15), %for.cond.14.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 16), %for.cond.15.cleanup_crit_edge ], [ getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 17), %for.cond.16.cleanup_crit_edge ], [ %spec.select, %for.cond.17 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap4iss_video_buffer_next(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe2 = getelementptr inbounds %struct.media_entity, ptr %video, i32 0, i32 14
  %0 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe2, align 4
  %qlock = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 16
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #14
  %dmaqueue = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 17
  %2 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i.not = icmp eq ptr %3, %dmaqueue
  br i1 %cmp.i.not, label %do.end19, label %if.end35, !prof !62

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call5) #14
  br label %cleanup

if.end35:                                         ; preds = %entry
  %add.ptr39 = getelementptr i8, ptr %3, i32 -736
  %call.i.i165 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #14
  br i1 %call.i.i165, label %if.end.i.i, label %if.end35.list_del.exit_crit_edge

if.end35.list_del.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end35.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call5) #14
  %call.i = tail call i64 @ktime_get() #14
  %timestamp = getelementptr i8, ptr %3, i32 -712
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %timestamp, align 8
  %output = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %output, align 4
  %cmp42 = icmp eq ptr %14, %video
  br i1 %cmp42, label %land.lhs.true, label %list_del.exit.if.else_crit_edge

list_del.exit.if.else_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %list_del.exit
  %do_propagation = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %do_propagation to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %do_propagation, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool44.not = icmp eq i8 %16, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %frame_number = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_number, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %frame_number, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_number, ptr %frame_number, i32 1, ptr elementtype(i32) %frame_number) #14, !srcloc !65
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %list_del.exit.if.else_crit_edge
  %frame_number48 = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 7
  %call.i.i164 = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_number48, i32 noundef 4) #14
  %18 = ptrtoint ptr %frame_number48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %frame_number48, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then45
  %.sink = phi i32 [ %19, %if.else ], [ %asmresult.i.i.i.i, %if.then45 ]
  %sequence51 = getelementptr i8, ptr %3, i32 -272
  %20 = ptrtoint ptr %sequence51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %sequence51, align 8
  %error = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %error, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool55.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool55.not, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef %add.ptr39, i32 noundef %cond) #14
  %23 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %error, align 1
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #14
  %24 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i166.not = icmp eq ptr %25, %dmaqueue
  br i1 %cmp.i166.not, label %if.then75, label %if.end102

if.then75:                                        ; preds = %if.end52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call67) #14
  %type = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp77 = icmp eq i32 %27, 1
  %. = select i1 %cmp77, i32 -73, i32 -69
  %lock = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 1
  %call90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %state95 = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %state95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state95, align 4
  %and = and i32 %29, %.
  store i32 %and, ptr %state95, align 4
  %stream_state = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 12, i32 3
  %30 = ptrtoint ptr %stream_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp97 = icmp eq i32 %31, 1
  br i1 %cmp97, label %if.then99, label %if.then75.if.end100_crit_edge

if.then75.if.end100_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

if.then99:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  %dmaqueue_flags = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 18
  %32 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dmaqueue_flags, align 8
  %or = or i32 %33, 1
  store i32 %or, ptr %dmaqueue_flags, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.then75.if.end100_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call90) #14
  br label %cleanup

if.end102:                                        ; preds = %if.end52
  %type103 = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 1
  %34 = ptrtoint ptr %type103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp104 = icmp eq i32 %35, 1
  br i1 %cmp104, label %land.lhs.true106, label %if.end102.if.end113_crit_edge

if.end102.if.end113_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

land.lhs.true106:                                 ; preds = %if.end102
  %input = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input, align 4
  %tobool107.not = icmp eq ptr %37, null
  br i1 %tobool107.not, label %land.lhs.true106.if.end113_crit_edge, label %if.then108

land.lhs.true106.if.end113_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then108:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  %lock109 = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock109) #14
  %state110 = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %state110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state110, align 4
  %and111 = and i32 %39, -65
  store i32 %and111, ptr %state110, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock109) #14
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %land.lhs.true106.if.end113_crit_edge, %if.end102.if.end113_crit_edge
  %40 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dmaqueue, align 8
  %add.ptr118 = getelementptr i8, ptr %41, i32 -736
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call67) #14
  %state122 = getelementptr i8, ptr %41, i32 -672
  %42 = ptrtoint ptr %state122 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %state122, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.end100, %do.end19
  %retval.0 = phi ptr [ null, %do.end19 ], [ null, %if.end100 ], [ %add.ptr118, %if.end113 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_video_cancel_stream(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #14
  %dmaqueue = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 17
  %0 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i.not15 = icmp eq ptr %1, %dmaqueue
  br i1 %cmp.i.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #14
  %11 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i.not = icmp eq ptr %12, %dmaqueue
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %queue = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 15
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue, align 8
  tail call void @vb2_queue_error(ptr noundef %14) #14
  %error = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 14
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %error, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_video_init(ptr noundef %video, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %direction.0 = phi ptr [ @.str.2, %sw.bb1 ], [ @.str.1, %entry.sw.epilog_crit_edge ]
  %flags3 = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %flags3, align 4
  %pad5 = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 2
  %call = tail call i32 @media_entity_pads_init(ptr noundef %video, i16 noundef zeroext 1, ptr noundef %pad5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  %qlock = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @omap4iss_video_init.__key, i16 noundef signext 3) #14
  %mutex = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @omap4iss_video_init.__key.4) #14
  %active = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #14
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %active, align 4
  %lock = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 12, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @omap4iss_video_init.__key.6, i16 noundef signext 3) #14
  %stream_lock = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %stream_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @omap4iss_video_init.__key.8) #14
  %ops = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 19
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then17, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iss_video_dummy_ops, ptr %ops, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.body.if.end19_crit_edge
  %fops = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 3
  %8 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iss_video_fops, ptr %fops, align 4
  %name22 = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 12
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name22, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull %direction.0)
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 13
  %9 = ptrtoint ptr %vfl_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %vfl_type, align 8
  %release = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 23
  %10 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @video_device_release_empty, ptr %release, align 8
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 24
  %11 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @iss_video_ioctl_ops, ptr %ioctl_ops, align 4
  %stream_state = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %stream_state, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 5, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %video, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_video_cleanup(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_lock = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %stream_lock) #14
  %mutex = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_video_register(ptr noundef %video, ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %vdev, ptr %v4l2_dev, align 4
  %type = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %spec.select = select i1 %cmp, i32 67108865, i32 67108866
  %3 = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 3
  %5 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %video, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %do.end, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %iss = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 5
  %9 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iss, align 4
  %dev = getelementptr inbounds %struct.iss_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %call.i) #17
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_video_unregister(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @video_unregister_device(ptr noundef %video) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %1, i32 0, i32 2
  %call = tail call i32 @vb2_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %1, i32 0, i32 2
  %call = tail call i32 @vb2_mmap(ptr noundef %queue, ptr noundef %vma) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 920) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %1) #14
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #14
  %iss = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iss, align 4
  %call4 = tail call ptr @omap4iss_get(ptr noundef %4) #14
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.if.then27_crit_edge, label %if.end7

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iss, align 4
  tail call void @omap4iss_put(ptr noundef %6) #14
  br label %if.then27

if.end12:                                         ; preds = %if.end7
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2
  %type = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 17, ptr %io_modes, align 8
  %drv_priv = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 10
  %11 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 7
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @iss_video_vb2ops, ptr %ops, align 8
  %mem_ops = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 12
  %14 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 752, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 13
  %15 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %timestamp_flags, align 8
  %16 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iss, align 4
  %dev = getelementptr inbounds %struct.iss_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %dev15 = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev15, align 4
  %call16 = tail call i32 @vb2_queue_init(ptr noundef %queue) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %done.thread69, label %done

done.thread69:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %format = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 3, i32 1
  %22 = call ptr @memset(ptr %21, i32 0, i32 200)
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 8
  %25 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %format, align 4
  %denominator = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %denominator, align 4
  %video24 = getelementptr inbounds %struct.iss_video_fh, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %video24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %video24, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

done:                                             ; preds = %if.end12
  %29 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iss, align 4
  tail call void @omap4iss_put(ptr noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp26 = icmp slt i32 %call16, 0
  br i1 %cmp26, label %done.if.then27_crit_edge, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

done.if.then27_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.then27:                                        ; preds = %done.if.then27_crit_edge, %if.then10, %if.end.if.then27_crit_edge
  %ret.068 = phi i32 [ %call16, %done.if.then27_crit_edge ], [ -16, %if.end.if.then27_crit_edge ], [ %call9, %if.then10 ]
  tail call void @v4l2_fh_del(ptr noundef nonnull %call7.i.i) #14
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %done.cleanup_crit_edge, %done.thread69, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.068, %if.then27 ], [ %call16, %done.cleanup_crit_edge ], [ 0, %done.thread69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  %call1 = tail call i32 @iss_video_streamoff(ptr noundef %file, ptr noundef %3, i32 noundef %5)
  tail call void @v4l2_pipeline_pm_put(ptr noundef %1) #14
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %3, i32 0, i32 2
  tail call void @vb2_queue_release(ptr noundef %queue) #14
  tail call void @v4l2_fh_del(ptr noundef %3) #14
  tail call void @v4l2_fh_exit(ptr noundef %3) #14
  tail call void @kfree(ptr noundef %3) #14
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data, align 4
  %iss = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iss, align 4
  tail call void @omap4iss_put(ptr noundef %8) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4iss_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iss_video_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %count, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %video1 = getelementptr inbounds %struct.iss_video_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %video1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video1, align 4
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_planes, align 4
  %sizeimage = getelementptr inbounds %struct.iss_video_fh, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 5
  %5 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sizeimage, align 4
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %capture_mem = getelementptr inbounds %struct.iss_video, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %capture_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capture_mem, align 8
  %add = add i32 %6, 4095
  %and = and i32 %add, -4096
  %div = udiv i32 %11, %and
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %div)
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_buf_prepare(ptr noundef %vb) #2 align 64 {
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
  %video4 = getelementptr inbounds %struct.iss_video_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %video4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video4, align 4
  %sizeimage = getelementptr inbounds %struct.iss_video_fh, ptr %3, i32 0, i32 3, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i28 = phi i32 [ %11, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i28, i32 %7)
  %cmp = icmp ult i32 %retval.0.i28, %7
  br i1 %cmp, label %vb2_plane_size.exit.cleanup_crit_edge, label %if.end

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %vb2_plane_size.exit
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #14
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 4
  %and = and i32 %13, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_video_buf_prepare.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_video_buf_prepare, %if.then13)) #14
          to label %cleanup [label %if.then13], !srcloc !67

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %iss = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iss, align 4
  %dev = getelementptr inbounds %struct.iss_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_video_buf_prepare.__UNIQUE_ID_ddebug304, ptr noundef %17, ptr noundef nonnull @.str.17) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %18 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i30 = icmp eq i32 %19, 0
  br i1 %cmp.not.i30, label %if.end15.vb2_set_plane_payload.exit_crit_edge, label %if.then.i32

if.end15.vb2_set_plane_payload.exit_crit_edge:    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_set_plane_payload.exit

if.then.i32:                                      ; preds = %if.end15
  %length.i31 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %20 = ptrtoint ptr %length.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %7)
  %cmp1.i = icmp ult i32 %21, %7
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i32.if.end42.i_crit_edge

if.then.i32.if.end42.i_crit_edge:                 ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i32
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !68

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %22 = ptrtoint ptr %length.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i31, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i32.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %23, %if.then38.i ], [ %7, %if.then.i32.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %24 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end15.vb2_set_plane_payload.exit_crit_edge
  %iss_addr = getelementptr inbounds %struct.iss_buffer, ptr %vb, i32 0, i32 2
  %25 = ptrtoint ptr %iss_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %13, ptr %iss_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %if.then13, %do.body, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -105, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iss_video_buf_cleanup(ptr nocapture noundef %vb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iss_addr = getelementptr inbounds %struct.iss_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %iss_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iss_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %iss_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %iss_addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iss_video_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %video1 = getelementptr inbounds %struct.iss_video_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %video1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video1, align 4
  %pipe7 = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %pipe7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe7, align 4
  %qlock = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 16
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #14
  %error = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %error, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call13) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmaqueue = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 17
  %10 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i.not = icmp eq ptr %11, %dmaqueue
  %list = getelementptr inbounds %struct.iss_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %13, ptr noundef %dmaqueue) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dmaqueue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iss_buffer, ptr %vb, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call13) #14
  br i1 %cmp.i.not, label %if.then24, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then24:                                        ; preds = %list_add_tail.exit
  %type = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp25 = icmp eq i32 %19, 1
  %. = select i1 %cmp25, i32 8, i32 4
  %lock = getelementptr inbounds %struct.iss_pipeline, ptr %7, i32 0, i32 1
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %state42 = getelementptr inbounds %struct.iss_pipeline, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %state42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state42, align 4
  %or = or i32 %21, %.
  store i32 %or, ptr %state42, align 4
  %ops = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 19
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call43 = tail call i32 %25(ptr noundef %5, ptr noundef %vb) #14
  %dmaqueue_flags = getelementptr inbounds %struct.iss_video, ptr %5, i32 0, i32 18
  %26 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dmaqueue_flags, align 8
  %or44 = or i32 %27, 2
  store i32 %or44, ptr %dmaqueue_flags, align 8
  %28 = ptrtoint ptr %state42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %29)
  %cmp.i84.not = icmp eq i32 %29, 63
  br i1 %cmp.i84.not, label %if.then47, label %if.end55.critedge

if.then47:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %state42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 127, ptr %state42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call37) #14
  %call54 = tail call i32 @omap4iss_pipeline_set_stream(ptr noundef %7, i32 noundef 2) #14
  br label %cleanup

if.end55.critedge:                                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call37) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end55.critedge, %if.then47, %list_add_tail.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_pipeline_set_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_streamoff(ptr noundef %file, ptr noundef %fh, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pipe3 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pipe3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe3, align 4
  %type6 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %type)
  %cmp.not = icmp eq i32 %5, %type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream_lock = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #14
  %streaming.i = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2, i32 28
  %6 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end9, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end9:                                          ; preds = %if.end
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2
  %7 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11 = icmp eq i32 %8, 1
  %. = select i1 %cmp11, i32 -11, i32 -6
  %lock = getelementptr inbounds %struct.iss_pipeline, ptr %3, i32 0, i32 1
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %state21 = getelementptr inbounds %struct.iss_pipeline, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state21, align 4
  %and = and i32 %10, %.
  store i32 %and, ptr %state21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #14
  %call23 = tail call i32 @omap4iss_pipeline_set_stream(ptr noundef %3, i32 noundef 0) #14
  %call25 = tail call i32 @vb2_streamoff(ptr noundef %queue, i32 noundef %type) #14
  %queue26 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %queue26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %queue26, align 8
  %ent_enum = getelementptr inbounds %struct.iss_pipeline, ptr %3, i32 0, i32 6
  tail call void @media_entity_enum_cleanup(ptr noundef %ent_enum) #14
  %iss = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iss, align 4
  %pdata = getelementptr inbounds %struct.iss_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  %set_constraints = getelementptr inbounds %struct.iss_platform_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %set_constraints to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_constraints, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end9.if.end32_crit_edge, label %if.then27

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %17(ptr noundef %13, i1 noundef zeroext false) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end9.if.end32_crit_edge
  tail call void @media_pipeline_stop(ptr noundef %1) #14
  br label %done

done:                                             ; preds = %if.end32, %if.end.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_enum_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.19, i32 noundef 16) #14
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 12
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #14
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.20, i32 noundef 32) #14
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2080374781, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_enum_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #14
  %2 = call ptr @memset(ptr %format, i32 255, i32 48)
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %type2 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup16_crit_edge

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup16

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f, align 4
  %call3 = call fastcc i32 @__iss_video_get_format(ptr noundef %1, ptr noundef nonnull %format)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup16_crit_edge, label %for.cond.preheader

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup16

for.cond.preheader:                               ; preds = %if.end
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.034 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %index.033 = phi i32 [ %8, %for.cond.preheader ], [ %index.1.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [19 x %struct.iss_format_info], ptr @formats, i32 0, i32 %i.034
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp9.not = icmp eq i32 %10, %12
  br i1 %cmp9.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.033)
  %cmp12 = icmp eq i32 %index.033, 0
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %index.033, -1
  br label %for.inc

cleanup:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %pixelformat = getelementptr [19 x %struct.iss_format_info], ptr @formats, i32 0, i32 %i.034, i32 4
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  %pixelformat14 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %15 = ptrtoint ptr %pixelformat14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pixelformat14, align 4
  br label %cleanup16

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %index.1.ph = phi i32 [ %index.033, %for.body.for.inc_crit_edge ], [ %dec, %if.end15 ]
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.inc.cleanup16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc.cleanup16_crit_edge, %cleanup, %if.end.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup ], [ -22, %entry.cleanup16_crit_edge ], [ %call3, %if.end.cleanup16_crit_edge ], [ -22, %for.inc.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #14
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_get_format(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %type1 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mutex = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %format2 = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %format, ptr %format2, i32 204)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_set_format(ptr noundef %file, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %format) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fmt) #14
  %2 = call ptr @memset(ptr %fmt, i32 255, i32 48)
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %type1 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mutex = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  call fastcc void @iss_video_pix_to_mbus(ptr noundef %fmt2, ptr noundef nonnull %fmt)
  %call4 = call fastcc i32 @iss_video_mbus_to_pix(ptr noundef %1, ptr noundef nonnull %fmt, ptr noundef %fmt2)
  %format5 = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %format5, ptr %format, i32 204)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fmt) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_try_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #14
  %2 = getelementptr inbounds i8, ptr %fmt, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %type1 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pad1.i = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 2
  %call.i55 = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #14
  %tobool.not.i = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i55, i32 0, i32 1
  %8 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i, label %if.end4, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i55, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %13 to i32
  %fmt5 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %format6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  call fastcc void @iss_video_pix_to_mbus(ptr noundef %fmt5, ptr noundef %format6)
  %pad7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %14 = ptrtoint ptr %pad7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %pad7, align 4
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %fmt, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %pad10 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %pad10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pad10, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_fmt, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %if.else16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %get_fmt19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %get_fmt19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_fmt19, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.if.end31_crit_edge

land.lhs.true18.if.end31_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %land.lhs.true18.if.end31_crit_edge
  %.sink = phi ptr [ %21, %if.else24 ], [ %24, %land.lhs.true18.if.end31_crit_edge ]
  %call28 = call i32 %.sink(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %fmt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool32.not = icmp eq i32 %call28, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = call fastcc i32 @iss_video_mbus_to_pix(ptr noundef %1, ptr noundef %format6, ptr noundef %fmt5)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ %call28, %if.end31.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_reqbufs(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %rb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2
  %call = tail call i32 @vb2_reqbufs(ptr noundef %queue, ptr noundef %rb) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_querybuf(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2
  %call = tail call i32 @vb2_querybuf(ptr noundef %queue, ptr noundef %b) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_qbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %call2 = tail call i32 @vb2_qbuf(ptr noundef %queue, ptr noundef %5, ptr noundef %b) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_expbuf(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2
  %call = tail call i32 @vb2_expbuf(ptr noundef %queue, ptr noundef %e) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_dqbuf(ptr nocapture noundef readonly %file, ptr noundef %fh, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call = tail call i32 @vb2_dqbuf(ptr noundef %queue, ptr noundef %b, i1 noundef zeroext %tobool) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_streamon(ptr noundef %file, ptr noundef %fh, i32 noundef %type) #2 align 64 {
entry:
  %graph.i = alloca %struct.media_graph, align 4
  %format.i = alloca %struct.v4l2_mbus_framefmt, align 4
  %pixfmt.i = alloca %struct.v4l2_pix_format, align 4
  %graph = alloca %struct.media_graph, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %graph) #14
  %2 = call ptr @memset(ptr %graph, i32 255, i32 140)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %type4 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %type)
  %cmp.not = icmp eq i32 %6, %type
  br i1 %cmp.not, label %if.end, label %entry.cleanup123_crit_edge

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup123

if.end:                                           ; preds = %entry
  %stream_lock = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #14
  %pipe5 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %pipe5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe5, align 4
  %tobool.not = icmp eq ptr %8, null
  %pipe10 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 12
  %cond = select i1 %tobool.not, ptr %pipe10, ptr %8
  %external = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 11
  %9 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %external, align 4
  %external_rate = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 12
  %10 = ptrtoint ptr %external_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %external_rate, align 4
  %external_bpp = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 13
  %11 = ptrtoint ptr %external_bpp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %external_bpp, align 4
  %ent_enum = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %entity_internal_idx_max.i = getelementptr inbounds %struct.media_device, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %entity_internal_idx_max.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entity_internal_idx_max.i, align 8
  %add.i = add i32 %15, 1
  %call.i205 = tail call i32 @__media_entity_enum_init(ptr noundef %ent_enum, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool14.not = icmp eq i32 %call.i205, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.err_graph_walk_init_crit_edge

if.end.err_graph_walk_init_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_graph_walk_init

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call19 = call i32 @media_graph_walk_init(ptr noundef nonnull %graph, ptr noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.err_graph_walk_init_crit_edge

if.end16.err_graph_walk_init_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_graph_walk_init

if.end22:                                         ; preds = %if.end16
  %iss = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iss, align 4
  %pdata = getelementptr inbounds %struct.iss_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 8
  %set_constraints = getelementptr inbounds %struct.iss_platform_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %set_constraints to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_constraints, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.end22.if.end29_crit_edge, label %if.then24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  call void %23(ptr noundef %19, i1 noundef zeroext true) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end22.if.end29_crit_edge
  %call31 = call i32 @media_pipeline_start(ptr noundef %1, ptr noundef %cond) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end29.err_media_pipeline_start_crit_edge, label %if.end34

if.end29.err_media_pipeline_start_crit_edge:      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_media_pipeline_start

if.end34:                                         ; preds = %if.end29
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %4, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #14
  call void @media_graph_walk_start(ptr noundef nonnull %graph, ptr noundef %1) #14
  %call35221 = call ptr @media_graph_walk_next(ptr noundef nonnull %graph) #14
  %tobool36.not222 = icmp eq ptr %call35221, null
  br i1 %tobool36.not222, label %if.end34.while.end_crit_edge, label %while.body.lr.ph

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end34
  %idx_max.i = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 6, i32 1
  br label %while.body

while.body:                                       ; preds = %media_entity_enum_set.exit.while.body_crit_edge, %while.body.lr.ph
  %call35223 = phi ptr [ %call35221, %while.body.lr.ph ], [ %call35, %media_entity_enum_set.exit.while.body_crit_edge ]
  %internal_idx.i = getelementptr inbounds %struct.media_entity, ptr %call35223, i32 0, i32 8
  %24 = ptrtoint ptr %internal_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %internal_idx.i, align 4
  %26 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i = icmp slt i32 %25, %27
  br i1 %cmp.not.i, label %if.end21.critedge.i, label %do.end.i, !prof !68

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 468, i32 noundef 9, ptr noundef null) #14
  br label %media_entity_enum_set.exit

if.end21.critedge.i:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ent_enum, align 4
  %rem.i.i = and i32 %25, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %25, 5
  %add.ptr.i.i = getelementptr i32, ptr %29, i32 %div2.i.i
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %31, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %media_entity_enum_set.exit

media_entity_enum_set.exit:                       ; preds = %if.end21.critedge.i, %do.end.i
  %call35 = call ptr @media_graph_walk_next(ptr noundef nonnull %graph) #14
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %media_entity_enum_set.exit.while.end_crit_edge, label %media_entity_enum_set.exit.while.body_crit_edge

media_entity_enum_set.exit.while.body_crit_edge:  ; preds = %media_entity_enum_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

media_entity_enum_set.exit.while.end_crit_edge:   ; preds = %media_entity_enum_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %media_entity_enum_set.exit.while.end_crit_edge, %if.end34.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %graph_mutex) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format.i) #14
  %32 = call ptr @memset(ptr %format.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pixfmt.i) #14
  %33 = call ptr @memset(ptr %pixfmt.i, i32 255, i32 48)
  %call.i206 = call fastcc i32 @__iss_video_get_format(ptr noundef %1, ptr noundef nonnull %format.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp.i = icmp slt i32 %call.i206, 0
  br i1 %cmp.i, label %while.end.iss_video_check_format.exit.thread_crit_edge, label %if.end.i

while.end.iss_video_check_format.exit.thread_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_check_format.exit.thread

if.end.i:                                         ; preds = %while.end
  %bytesperline.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt.i, i32 0, i32 4
  %34 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %bytesperline.i, align 4
  %call1.i = call fastcc i32 @iss_video_mbus_to_pix(ptr noundef %1, ptr noundef nonnull %format.i, ptr noundef nonnull %pixfmt.i) #14
  %fmt.i = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 3, i32 1
  %pixelformat.i = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pixelformat.i, align 4
  %pixelformat3.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt.i, i32 0, i32 2
  %37 = ptrtoint ptr %pixelformat3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixelformat3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp4.not.i = icmp eq i32 %36, %38
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %if.end.i.iss_video_check_format.exit.thread_crit_edge

if.end.i.iss_video_check_format.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_check_format.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt.i, i32 0, i32 1
  %41 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp8.not.i = icmp eq i32 %40, %42
  br i1 %cmp8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.iss_video_check_format.exit.thread_crit_edge

lor.lhs.false.i.iss_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_check_format.exit.thread

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %43 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fmt.i, align 4
  %45 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixfmt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp13.not.i = icmp eq i32 %44, %46
  br i1 %cmp13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false9.i.iss_video_check_format.exit.thread_crit_edge

lor.lhs.false9.i.iss_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_check_format.exit.thread

lor.lhs.false14.i:                                ; preds = %lor.lhs.false9.i
  %bytesperline17.i = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %bytesperline17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytesperline17.i, align 4
  %49 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytesperline.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp19.not.i = icmp eq i32 %48, %50
  br i1 %cmp19.not.i, label %lor.lhs.false20.i, label %lor.lhs.false14.i.iss_video_check_format.exit.thread_crit_edge

lor.lhs.false14.i.iss_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_check_format.exit.thread

lor.lhs.false20.i:                                ; preds = %lor.lhs.false14.i
  %sizeimage.i = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 5
  %51 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sizeimage.i, align 4
  %sizeimage23.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt.i, i32 0, i32 5
  %53 = ptrtoint ptr %sizeimage23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sizeimage23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp24.not.i = icmp eq i32 %52, %54
  br i1 %cmp24.not.i, label %iss_video_check_format.exit, label %lor.lhs.false20.i.iss_video_check_format.exit.thread_crit_edge

lor.lhs.false20.i.iss_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_check_format.exit.thread

iss_video_check_format.exit.thread:               ; preds = %lor.lhs.false20.i.iss_video_check_format.exit.thread_crit_edge, %lor.lhs.false14.i.iss_video_check_format.exit.thread_crit_edge, %lor.lhs.false9.i.iss_video_check_format.exit.thread_crit_edge, %lor.lhs.false.i.iss_video_check_format.exit.thread_crit_edge, %if.end.i.iss_video_check_format.exit.thread_crit_edge, %while.end.iss_video_check_format.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %lor.lhs.false20.i.iss_video_check_format.exit.thread_crit_edge ], [ -22, %if.end.i.iss_video_check_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.iss_video_check_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false9.i.iss_video_check_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false14.i.iss_video_check_format.exit.thread_crit_edge ], [ %call.i206, %while.end.iss_video_check_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pixfmt.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format.i) #14
  br label %err_iss_video_check_format

iss_video_check_format.exit:                      ; preds = %lor.lhs.false20.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pixfmt.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp40 = icmp slt i32 %call1.i, 0
  br i1 %cmp40, label %iss_video_check_format.exit.err_iss_video_check_format_crit_edge, label %if.end42

iss_video_check_format.exit.err_iss_video_check_format_crit_edge: ; preds = %iss_video_check_format.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_iss_video_check_format

if.end42:                                         ; preds = %iss_video_check_format.exit
  %bpl_padding = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 11
  %55 = ptrtoint ptr %bpl_padding to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call1.i, ptr %bpl_padding, align 4
  %56 = ptrtoint ptr %bytesperline17.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bytesperline17.i, align 4
  %bpl_value = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 10
  %58 = ptrtoint ptr %bpl_value to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %bpl_value, align 8
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %graph.i) #14
  %59 = call ptr @memset(ptr %graph.i, i32 255, i32 140)
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %graph_mutex.i = getelementptr inbounds %struct.media_device, ptr %61, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #14
  %call.i207 = call i32 @media_graph_walk_init(ptr noundef nonnull %graph.i, ptr noundef %61) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool.not.i = icmp eq i32 %call.i207, 0
  br i1 %tobool.not.i, label %if.end.i208, label %iss_video_far_end.exit.thread

if.end.i208:                                      ; preds = %if.end42
  call void @media_graph_walk_start(ptr noundef nonnull %graph.i, ptr noundef %1) #14
  %call535.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i) #14
  %tobool6.not36.i = icmp eq ptr %call535.i, null
  br i1 %tobool6.not36.i, label %if.end.i208.iss_video_far_end.exit_crit_edge, label %if.end.i208.while.body.i_crit_edge

if.end.i208.while.body.i_crit_edge:               ; preds = %if.end.i208
  br label %while.body.i

if.end.i208.iss_video_far_end.exit_crit_edge:     ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_far_end.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end.i208.while.body.i_crit_edge
  %call537.i = phi ptr [ %call5.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call535.i, %if.end.i208.while.body.i_crit_edge ]
  %cmp.i209 = icmp eq ptr %call537.i, %1
  br i1 %cmp.i209, label %while.body.i.while.cond.backedge.i_crit_edge, label %is_media_entity_v4l2_video_device.exit.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end13.i.while.cond.backedge.i_crit_edge, %is_media_entity_v4l2_video_device.exit.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %call5.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i) #14
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %while.cond.backedge.i.iss_video_far_end.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.backedge.i.iss_video_far_end.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_far_end.exit

is_media_entity_v4l2_video_device.exit.i:         ; preds = %while.body.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %call537.i, i32 0, i32 2
  %62 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 1
  br i1 %cmp.i.i, label %if.end13.i, label %is_media_entity_v4l2_video_device.exit.i.while.cond.backedge.i_crit_edge

is_media_entity_v4l2_video_device.exit.i.while.cond.backedge.i_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

if.end13.i:                                       ; preds = %is_media_entity_v4l2_video_device.exit.i
  %type.i = getelementptr inbounds %struct.iss_video, ptr %call537.i, i32 0, i32 1
  %64 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i, align 8
  %66 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp18.not.i = icmp eq i32 %65, %67
  br i1 %cmp18.not.i, label %if.end13.i.while.cond.backedge.i_crit_edge, label %if.end13.i.iss_video_far_end.exit_crit_edge

if.end13.i.iss_video_far_end.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iss_video_far_end.exit

if.end13.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

iss_video_far_end.exit:                           ; preds = %if.end13.i.iss_video_far_end.exit_crit_edge, %while.cond.backedge.i.iss_video_far_end.exit_crit_edge, %if.end.i208.iss_video_far_end.exit_crit_edge
  %call5.lcssa.i = phi ptr [ null, %if.end.i208.iss_video_far_end.exit_crit_edge ], [ null, %while.cond.backedge.i.iss_video_far_end.exit_crit_edge ], [ %call537.i, %if.end13.i.iss_video_far_end.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %graph_mutex.i) #14
  call void @media_graph_walk_cleanup(ptr noundef nonnull %graph.i) #14
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i) #14
  %68 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp45 = icmp eq i32 %69, 1
  br i1 %cmp45, label %iss_video_far_end.exit.do.body53_crit_edge, label %if.else

iss_video_far_end.exit.do.body53_crit_edge:       ; preds = %iss_video_far_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

iss_video_far_end.exit.thread:                    ; preds = %if.end42
  call void @mutex_unlock(ptr noundef %graph_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i) #14
  %70 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp45215 = icmp eq i32 %71, 1
  br i1 %cmp45215, label %iss_video_far_end.exit.thread.do.body53_crit_edge, label %iss_video_far_end.exit.thread.err_iss_video_check_format_crit_edge

iss_video_far_end.exit.thread.err_iss_video_check_format_crit_edge: ; preds = %iss_video_far_end.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_iss_video_check_format

iss_video_far_end.exit.thread.do.body53_crit_edge: ; preds = %iss_video_far_end.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

if.else:                                          ; preds = %iss_video_far_end.exit
  %tobool47.not = icmp eq ptr %call5.lcssa.i, null
  br i1 %tobool47.not, label %if.else.err_iss_video_check_format_crit_edge, label %if.else.do.body53_crit_edge

if.else.do.body53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

if.else.err_iss_video_check_format_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_iss_video_check_format

do.body53:                                        ; preds = %if.else.do.body53_crit_edge, %iss_video_far_end.exit.thread.do.body53_crit_edge, %iss_video_far_end.exit.do.body53_crit_edge
  %.sink = phi ptr [ null, %iss_video_far_end.exit.thread.do.body53_crit_edge ], [ %call5.lcssa.i, %iss_video_far_end.exit.do.body53_crit_edge ], [ %1, %if.else.do.body53_crit_edge ]
  %call5.lcssa.i.sink = phi ptr [ %1, %iss_video_far_end.exit.thread.do.body53_crit_edge ], [ %1, %iss_video_far_end.exit.do.body53_crit_edge ], [ %call5.lcssa.i, %if.else.do.body53_crit_edge ]
  %state.0 = phi i32 [ 34, %iss_video_far_end.exit.thread.do.body53_crit_edge ], [ 34, %iss_video_far_end.exit.do.body53_crit_edge ], [ 17, %if.else.do.body53_crit_edge ]
  %input50 = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 4
  %72 = ptrtoint ptr %input50 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.sink, ptr %input50, align 4
  %output51 = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 5
  %73 = ptrtoint ptr %output51 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call5.lcssa.i.sink, ptr %output51, align 4
  %lock = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 1
  %call57 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %state60 = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 2
  %74 = ptrtoint ptr %state60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state60, align 4
  %and = and i32 %75, -65
  %or = or i32 %and, %state.0
  store i32 %or, ptr %state60, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call57) #14
  %76 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp64 = icmp eq i32 %77, 2
  br i1 %cmp64, label %if.then66, label %do.body53.if.end67_crit_edge

do.body53.if.end67_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then66:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  %max_timeperframe = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 10
  %timeperframe = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 4
  %78 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %timeperframe, align 4
  %80 = ptrtoint ptr %max_timeperframe to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %79, ptr %max_timeperframe, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %do.body53.if.end67_crit_edge
  %queue = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 2
  %queue68 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 15
  %81 = ptrtoint ptr %queue68 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %queue, ptr %queue68, align 8
  %dmaqueue = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 17
  %82 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %dmaqueue, ptr %dmaqueue, align 4
  %prev.i = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 17, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %dmaqueue, ptr %prev.i, align 4
  %error = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 14
  %84 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %error, align 4
  %frame_number = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %frame_number, i32 noundef 4) #14
  %85 = ptrtoint ptr %frame_number to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 -1, ptr %frame_number, align 4
  %call70 = call i32 @vb2_streamon(ptr noundef %queue, i32 noundef %type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end67.err_iss_video_check_format_crit_edge, label %if.end74

if.end67.err_iss_video_check_format_crit_edge:    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_iss_video_check_format

if.end74:                                         ; preds = %if.end67
  %input75 = getelementptr inbounds %struct.iss_pipeline, ptr %cond, i32 0, i32 4
  %86 = ptrtoint ptr %input75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %input75, align 4
  %tobool76.not = icmp eq ptr %87, null
  br i1 %tobool76.not, label %if.then77, label %if.end74.if.end104_crit_edge

if.end74.if.end104_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

if.then77:                                        ; preds = %if.end74
  %call79 = call i32 @omap4iss_pipeline_set_stream(ptr noundef %cond, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %err_omap4iss_set_stream, label %do.body85

do.body85:                                        ; preds = %if.then77
  %qlock = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 16
  %call92 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #14
  %88 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i211.not = icmp eq ptr %89, %dmaqueue
  br i1 %cmp.i211.not, label %if.then100, label %do.body85.cleanup.thread_crit_edge

do.body85.cleanup.thread_crit_edge:               ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.then100:                                       ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #16
  %dmaqueue_flags = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 18
  %90 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dmaqueue_flags, align 8
  %or101 = or i32 %91, 1
  store i32 %or101, ptr %dmaqueue_flags, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then100, %do.body85.cleanup.thread_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call92) #14
  br label %if.end104

if.end104:                                        ; preds = %cleanup.thread, %if.end74.if.end104_crit_edge
  call void @media_graph_walk_cleanup(ptr noundef nonnull %graph) #14
  br label %cleanup123.sink.split

err_omap4iss_set_stream:                          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  %call107 = call i32 @vb2_streamoff(ptr noundef %queue, i32 noundef %type) #14
  br label %err_iss_video_check_format

err_iss_video_check_format:                       ; preds = %err_omap4iss_set_stream, %if.end67.err_iss_video_check_format_crit_edge, %if.else.err_iss_video_check_format_crit_edge, %iss_video_far_end.exit.thread.err_iss_video_check_format_crit_edge, %iss_video_check_format.exit.err_iss_video_check_format_crit_edge, %iss_video_check_format.exit.thread
  %ret.0 = phi i32 [ %call1.i, %iss_video_check_format.exit.err_iss_video_check_format_crit_edge ], [ %call70, %if.end67.err_iss_video_check_format_crit_edge ], [ %call79, %err_omap4iss_set_stream ], [ -32, %if.else.err_iss_video_check_format_crit_edge ], [ %retval.0.i.ph, %iss_video_check_format.exit.thread ], [ -32, %iss_video_far_end.exit.thread.err_iss_video_check_format_crit_edge ]
  call void @media_pipeline_stop(ptr noundef %1) #14
  br label %err_media_pipeline_start

err_media_pipeline_start:                         ; preds = %err_iss_video_check_format, %if.end29.err_media_pipeline_start_crit_edge
  %ret.1 = phi i32 [ %call31, %if.end29.err_media_pipeline_start_crit_edge ], [ %ret.0, %err_iss_video_check_format ]
  %92 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iss, align 4
  %pdata111 = getelementptr inbounds %struct.iss_device, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %pdata111 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdata111, align 8
  %set_constraints112 = getelementptr inbounds %struct.iss_platform_data, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %set_constraints112 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_constraints112, align 4
  %tobool113.not = icmp eq ptr %97, null
  br i1 %tobool113.not, label %err_media_pipeline_start.if.end119_crit_edge, label %if.then114

err_media_pipeline_start.if.end119_crit_edge:     ; preds = %err_media_pipeline_start
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then114:                                       ; preds = %err_media_pipeline_start
  call void @__sanitizer_cov_trace_pc() #16
  call void %97(ptr noundef %93, i1 noundef zeroext false) #14
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %err_media_pipeline_start.if.end119_crit_edge
  %queue120 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 15
  %98 = ptrtoint ptr %queue120 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %queue120, align 8
  call void @media_graph_walk_cleanup(ptr noundef nonnull %graph) #14
  br label %err_graph_walk_init

err_graph_walk_init:                              ; preds = %if.end119, %if.end16.err_graph_walk_init_crit_edge, %if.end.err_graph_walk_init_crit_edge
  %ret.2 = phi i32 [ %call.i205, %if.end.err_graph_walk_init_crit_edge ], [ %call19, %if.end16.err_graph_walk_init_crit_edge ], [ %ret.1, %if.end119 ]
  call void @media_entity_enum_cleanup(ptr noundef %ent_enum) #14
  br label %cleanup123.sink.split

cleanup123.sink.split:                            ; preds = %err_graph_walk_init, %if.end104
  %retval.0.ph = phi i32 [ 0, %if.end104 ], [ %ret.2, %err_graph_walk_init ]
  call void @mutex_unlock(ptr noundef %stream_lock) #14
  br label %cleanup123

cleanup123:                                       ; preds = %cleanup123.sink.split, %entry.cleanup123_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup123_crit_edge ], [ %retval.0.ph, %cleanup123.sink.split ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.22, i32 noundef 32) #14
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
define internal i32 @iss_video_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %input) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %input, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iss_video_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %input) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp = icmp eq i32 %input, 0
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_get_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  %sdsel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #14
  %2 = getelementptr inbounds i8, ptr %format, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sdsel) #14
  %4 = getelementptr inbounds i8, ptr %sdsel, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 52)
  %6 = ptrtoint ptr %sdsel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %sdsel, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 2
  %target1 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %7 = ptrtoint ptr %target1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target1, align 4
  %9 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %target, align 4
  %10 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge139
    i32 1, label %entry.sw.bb_crit_edge140
    i32 256, label %entry.sw.bb3_crit_edge
    i32 258, label %entry.sw.bb3_crit_edge141
    i32 257, label %entry.sw.bb3_crit_edge142
  ]

entry.sw.bb3_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb_crit_edge140:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge139:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge139, %entry.sw.bb_crit_edge140
  %type = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge141, %entry.sw.bb3_crit_edge142
  %type4 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp5 = icmp eq i32 %14, 1
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %pad1.i = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 2
  %call.i122 = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #14
  %tobool.not.i = icmp eq ptr %call.i122, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i122, i32 0, i32 1
  %15 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 2
  br i1 %cmp.i.i, label %if.end10, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i122, i32 0, i32 2
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %20 to i32
  %pad11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 1
  %21 = ptrtoint ptr %pad11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %pad11, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %pad14 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %pad14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pad14, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %if.end10.if.end42_crit_edge, label %land.lhs.true

if.end10.if.end42_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end10
  %get_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %get_selection to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_selection, align 4
  %tobool18.not = icmp eq ptr %27, null
  br i1 %tobool18.not, label %land.lhs.true.if.end42_crit_edge, label %if.else20

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.else20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %if.else20.if.else28_crit_edge, label %land.lhs.true22

if.else20.if.else28_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %get_selection23 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %get_selection23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_selection23, align 4
  %tobool24.not = icmp eq ptr %30, null
  br i1 %tobool24.not, label %land.lhs.true22.if.else28_crit_edge, label %land.lhs.true22.if.end35_crit_edge

land.lhs.true22.if.end35_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true22.if.else28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else28

if.else28:                                        ; preds = %land.lhs.true22.if.else28_crit_edge, %if.else20.if.else28_crit_edge
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %land.lhs.true22.if.end35_crit_edge
  %.sink = phi ptr [ %27, %if.else28 ], [ %30, %land.lhs.true22.if.end35_crit_edge ]
  %call32 = call i32 %.sink(ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %sdsel) #14
  %31 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call32, label %if.end35.cleanup_crit_edge [
    i32 0, label %if.then37
    i32 -515, label %if.end35.if.end42_crit_edge
  ]

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %r38 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 4
  %32 = call ptr @memcpy(ptr %r, ptr %r38, i32 16)
  br label %cleanup

if.end42:                                         ; preds = %if.end35.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.end10.if.end42_crit_edge
  %pad43 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %33 = ptrtoint ptr %pad43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i, ptr %pad43, align 4
  %34 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %format, align 4
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %pad51 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %pad51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pad51, align 4
  %tobool52.not = icmp eq ptr %38, null
  br i1 %tobool52.not, label %if.end42.if.then76.thread_crit_edge, label %land.lhs.true53

if.end42.if.then76.thread_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76.thread

land.lhs.true53:                                  ; preds = %if.end42
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_fmt, align 4
  %tobool56.not = icmp eq ptr %40, null
  br i1 %tobool56.not, label %land.lhs.true53.if.then76.thread_crit_edge, label %if.else58

land.lhs.true53.if.then76.thread_crit_edge:       ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76.thread

if.else58:                                        ; preds = %land.lhs.true53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool59.not = icmp eq ptr %41, null
  br i1 %tobool59.not, label %if.else58.if.else66_crit_edge, label %land.lhs.true60

if.else58.if.else66_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else66

land.lhs.true60:                                  ; preds = %if.else58
  %get_fmt61 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %get_fmt61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_fmt61, align 4
  %tobool62.not = icmp eq ptr %43, null
  br i1 %tobool62.not, label %land.lhs.true60.if.else66_crit_edge, label %land.lhs.true60.if.end73_crit_edge

land.lhs.true60.if.end73_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.lhs.true60.if.else66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else66

if.else66:                                        ; preds = %land.lhs.true60.if.else66_crit_edge, %if.else58.if.else66_crit_edge
  br label %if.end73

if.end73:                                         ; preds = %if.else66, %land.lhs.true60.if.end73_crit_edge
  %.sink138 = phi ptr [ %40, %if.else66 ], [ %43, %land.lhs.true60.if.end73_crit_edge ]
  %call70 = call i32 %.sink138(ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %format) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp75 = icmp slt i32 %call70, 0
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call70)
  %cmp77 = icmp eq i32 %call70, -515
  br i1 %cmp77, label %if.then76.if.then76.thread_crit_edge, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then76.if.then76.thread_crit_edge:             ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76.thread

if.then76.thread:                                 ; preds = %if.then76.if.then76.thread_crit_edge, %land.lhs.true53.if.then76.thread_crit_edge, %if.end42.if.then76.thread_crit_edge
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %r79 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %44 = ptrtoint ptr %r79 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %r79, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %top, align 4
  %format81 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %46 = ptrtoint ptr %format81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %format81, align 4
  %width83 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %width83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %width83, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %height86 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %height86 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %height86, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then76.thread, %if.then76.cleanup_crit_edge, %if.then37, %if.end35.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call32, %if.end35.cleanup_crit_edge ], [ 0, %if.then37 ], [ -25, %if.then76.thread ], [ %call70, %if.then76.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sdsel) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_set_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %sdsel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sdsel) #14
  %2 = ptrtoint ptr %sdsel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %sdsel, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 1
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 2
  %target1 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %3 = ptrtoint ptr %target1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target1, align 4
  %5 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %target, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 3
  %flags2 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 4
  %r3 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %r, ptr %r3, i32 16)
  %reserved = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 5
  %10 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %11 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %type7 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp8 = icmp eq i32 %15, 1
  br i1 %cmp8, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %pad1.i = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 2
  %call.i68 = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #14
  %tobool.not.i = icmp eq ptr %call.i68, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i68, i32 0, i32 1
  %16 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 2
  br i1 %cmp.i.i, label %if.end13, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i68, i32 0, i32 2
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i, ptr %pad, align 4
  %mutex = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %pad17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pad17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pad17, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.end13.if.end38.thread_crit_edge, label %land.lhs.true

if.end13.if.end38.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.thread

land.lhs.true:                                    ; preds = %if.end13
  %set_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %set_selection to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_selection, align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %land.lhs.true.if.end38.thread_crit_edge, label %if.else23

land.lhs.true.if.end38.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.thread

if.else23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %if.else23.if.else31_crit_edge, label %land.lhs.true25

if.else23.if.else31_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else23
  %set_selection26 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %set_selection26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_selection26, align 4
  %tobool27.not = icmp eq ptr %31, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end38_crit_edge

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else23.if.else31_crit_edge
  br label %if.end38

if.end38.thread:                                  ; preds = %land.lhs.true.if.end38.thread_crit_edge, %if.end13.if.end38.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

if.end38:                                         ; preds = %if.else31, %land.lhs.true25.if.end38_crit_edge
  %.sink = phi ptr [ %28, %if.else31 ], [ %31, %land.lhs.true25.if.end38_crit_edge ]
  %call35 = call i32 %.sink(ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %sdsel) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  %32 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call35, label %if.end38.cond.false_crit_edge [
    i32 0, label %if.then41
    i32 -515, label %if.end38.cleanup_crit_edge
  ]

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38.cond.false_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %33 = call ptr @memcpy(ptr %r3, ptr %r, i32 16)
  br label %cond.false

cond.false:                                       ; preds = %if.then41, %if.end38.cond.false_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end38.cleanup_crit_edge, %if.end38.thread, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call35, %cond.false ], [ -25, %if.end38.cleanup_crit_edge ], [ -25, %if.end38.thread ], [ -22, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sdsel) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_get_param(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.not = icmp eq i32 %5, 2
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %6 = getelementptr inbounds i8, ptr %a, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 196)
  %8 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %a, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %9 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %parm, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %timeperframe6 = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 4
  %10 = ptrtoint ptr %timeperframe6 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %timeperframe6, align 4
  %12 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_video_set_param(ptr noundef %file, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.not = icmp eq i32 %5, 2
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %denominator, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %timeperframe10 = getelementptr inbounds %struct.iss_video_fh, ptr %fh, i32 0, i32 4
  %9 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %timeperframe, align 4
  %11 = ptrtoint ptr %timeperframe10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %timeperframe10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iss_video_get_format(ptr noundef %video, ptr nocapture noundef writeonly %format) unnamed_addr #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #14
  %pad1.i = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 2
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 2
  br i1 %cmp.i.i, label %if.end, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %5 to i32
  %6 = getelementptr inbounds i8, ptr %fmt, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 80)
  %pad1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %8 = ptrtoint ptr %pad1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %pad1, align 4
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %fmt, align 4
  %mutex = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %pad4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %pad4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pad4, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end.if.end25.thread_crit_edge, label %land.lhs.true

if.end.if.end25.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.thread

land.lhs.true:                                    ; preds = %if.end
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fmt, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %land.lhs.true.if.end25.thread_crit_edge, label %if.else10

land.lhs.true.if.end25.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.thread

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %get_fmt13 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %get_fmt13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_fmt13, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end25_crit_edge

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end25

if.end25.thread:                                  ; preds = %land.lhs.true.if.end25.thread_crit_edge, %if.end.if.end25.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

if.end25:                                         ; preds = %if.else18, %land.lhs.true12.if.end25_crit_edge
  %.sink = phi ptr [ %15, %if.else18 ], [ %18, %land.lhs.true12.if.end25_crit_edge ]
  %call22 = call i32 %.sink(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %fmt) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %format30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %format, ptr %format30, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %if.end25.thread, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call22, %if.end25.cleanup_crit_edge ], [ -515, %if.end25.thread ], [ -22, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iss_video_pix_to_mbus(ptr nocapture noundef readonly %pix, ptr nocapture noundef writeonly %mbus) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbus, i32 0, i32 48)
  %1 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pix, align 4
  %3 = ptrtoint ptr %mbus to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mbus, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %height2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 1
  %6 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %height2, align 4
  %pixelformat3 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat3, align 4
  %9 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp4 = icmp eq i32 %9, %8
  br i1 %cmp4, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %entry
  %10 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 1, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp4.1 = icmp eq i32 %10, %8
  br i1 %cmp4.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %11 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp4.2 = icmp eq i32 %11, %8
  br i1 %cmp4.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %12 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp4.3 = icmp eq i32 %12, %8
  br i1 %cmp4.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %13 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 4, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %cmp4.4 = icmp eq i32 %13, %8
  br i1 %cmp4.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %14 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 5, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp4.5 = icmp eq i32 %14, %8
  br i1 %cmp4.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %15 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 6, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %8)
  %cmp4.6 = icmp eq i32 %15, %8
  br i1 %cmp4.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %16 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 7, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %8)
  %cmp4.7 = icmp eq i32 %16, %8
  br i1 %cmp4.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %17 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 8, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %8)
  %cmp4.8 = icmp eq i32 %17, %8
  br i1 %cmp4.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %18 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 9, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %8)
  %cmp4.9 = icmp eq i32 %18, %8
  br i1 %cmp4.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %19 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 10, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %8)
  %cmp4.10 = icmp eq i32 %19, %8
  br i1 %cmp4.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %20 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 11, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %8)
  %cmp4.11 = icmp eq i32 %20, %8
  br i1 %cmp4.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %21 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 12, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %8)
  %cmp4.12 = icmp eq i32 %21, %8
  br i1 %cmp4.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %22 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 13, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %8)
  %cmp4.13 = icmp eq i32 %22, %8
  br i1 %cmp4.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %23 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 14, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %8)
  %cmp4.14 = icmp eq i32 %23, %8
  br i1 %cmp4.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %24 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 15, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %8)
  %cmp4.15 = icmp eq i32 %24, %8
  br i1 %cmp4.15, label %for.inc.14.for.end_crit_edge, label %for.inc.15

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %25 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 16, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %8)
  %cmp4.16 = icmp eq i32 %25, %8
  br i1 %cmp4.16, label %for.inc.15.for.end_crit_edge, label %for.inc.16

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #16
  %26 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 17, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %8)
  %cmp4.17 = icmp eq i32 %26, %8
  %spec.select = select i1 %cmp4.17, i32 17, i32 18
  br label %for.end

for.end:                                          ; preds = %for.inc.16, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ %spec.select, %for.inc.16 ]
  %arrayidx5 = getelementptr [19 x %struct.iss_format_info], ptr @formats, i32 0, i32 %i.0.lcssa
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5, align 4
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 2
  %29 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %code6, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %colorspace, align 4
  %colorspace7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 4
  %32 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %colorspace7, align 4
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %33 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %field, align 4
  %field8 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 3
  %35 = ptrtoint ptr %field8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %field8, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iss_video_mbus_to_pix(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %mbus, ptr nocapture noundef %pix) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 4
  %0 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytesperline, align 4
  %2 = call ptr @memset(ptr %pix, i32 0, i32 48)
  %3 = ptrtoint ptr %mbus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbus, align 4
  %5 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pix, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %height2 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %8 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height2, align 4
  %code3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 2
  %9 = ptrtoint ptr %code3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code3, align 4
  %11 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp4 = icmp eq i32 %11, %10
  br i1 %cmp4, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %entry
  %12 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp4.1 = icmp eq i32 %12, %10
  br i1 %cmp4.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %13 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %10)
  %cmp4.2 = icmp eq i32 %13, %10
  br i1 %cmp4.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %14 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp4.3 = icmp eq i32 %14, %10
  br i1 %cmp4.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %15 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %10)
  %cmp4.4 = icmp eq i32 %15, %10
  br i1 %cmp4.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %16 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp4.5 = icmp eq i32 %16, %10
  br i1 %cmp4.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %17 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %10)
  %cmp4.6 = icmp eq i32 %17, %10
  br i1 %cmp4.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %18 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %10)
  %cmp4.7 = icmp eq i32 %18, %10
  br i1 %cmp4.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %19 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %10)
  %cmp4.8 = icmp eq i32 %19, %10
  br i1 %cmp4.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %20 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %10)
  %cmp4.9 = icmp eq i32 %20, %10
  br i1 %cmp4.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %21 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %10)
  %cmp4.10 = icmp eq i32 %21, %10
  br i1 %cmp4.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %22 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %10)
  %cmp4.11 = icmp eq i32 %22, %10
  br i1 %cmp4.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %23 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %10)
  %cmp4.12 = icmp eq i32 %23, %10
  br i1 %cmp4.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %24 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %10)
  %cmp4.13 = icmp eq i32 %24, %10
  br i1 %cmp4.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %25 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %10)
  %cmp4.14 = icmp eq i32 %25, %10
  br i1 %cmp4.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %26 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %10)
  %cmp4.15 = icmp eq i32 %26, %10
  br i1 %cmp4.15, label %for.inc.14.for.end_crit_edge, label %for.inc.15

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %27 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %10)
  %cmp4.16 = icmp eq i32 %27, %10
  br i1 %cmp4.16, label %for.inc.15.for.end_crit_edge, label %for.inc.16

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #16
  %28 = load i32, ptr getelementptr inbounds ([19 x %struct.iss_format_info], ptr @formats, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %10)
  %cmp4.17 = icmp eq i32 %28, %10
  %spec.select = select i1 %cmp4.17, i32 17, i32 18
  br label %for.end

for.end:                                          ; preds = %for.inc.16, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ %spec.select, %for.inc.16 ]
  %bpp = getelementptr [19 x %struct.iss_format_info], ptr @formats, i32 0, i32 %i.0.lcssa, i32 5
  %29 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bpp, align 4
  %add = add i32 %30, 7
  %and = and i32 %add, -8
  %mul = mul i32 %and, %4
  %div83 = lshr exact i32 %mul, 3
  %bpl_max = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 9
  %31 = ptrtoint ptr %bpl_max to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bpl_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  %33 = tail call i32 @llvm.umax.i32(i32 %1, i32 %div83)
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %32)
  %bpl.0 = select i1 %tobool.not, i32 %div83, i32 %34
  %bpl_zero_padding = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 8
  %35 = ptrtoint ptr %bpl_zero_padding to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bpl_zero_padding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool17.not = icmp ne i32 %36, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bpl.0, i32 %div83)
  %cmp18.not = icmp eq i32 %bpl.0, %div83
  %or.cond = select i1 %tobool17.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %for.end.if.end24_crit_edge, label %if.then19

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %bpl_alignment = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 7
  %37 = ptrtoint ptr %bpl_alignment to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bpl_alignment, align 4
  %sub = add i32 %bpl.0, -1
  %add20 = add i32 %sub, %38
  %neg = sub i32 0, %38
  %and23 = and i32 %add20, %neg
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %for.end.if.end24_crit_edge
  %bpl.1 = phi i32 [ %and23, %if.then19 ], [ %div83, %for.end.if.end24_crit_edge ]
  %pixelformat = getelementptr [19 x %struct.iss_format_info], ptr @formats, i32 0, i32 %i.0.lcssa, i32 4
  %39 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixelformat, align 4
  %pixelformat26 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %41 = ptrtoint ptr %pixelformat26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %pixelformat26, align 4
  %42 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bpl.1, ptr %bytesperline, align 4
  %mul30 = mul i32 %bpl.1, %7
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 5
  %43 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul30, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 4
  %44 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %colorspace, align 4
  %colorspace31 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %46 = ptrtoint ptr %colorspace31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %colorspace31, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 3
  %47 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %field, align 4
  %field32 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %49 = ptrtoint ptr %field32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %field32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %40)
  %cmp34 = icmp eq i32 %40, 842094158
  br i1 %cmp34, label %if.then35, label %if.end24.if.end42_crit_edge

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %div3984 = lshr i32 %mul30, 1
  %add41 = add i32 %div3984, %mul30
  %50 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add41, ptr %sizeimage, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %if.end24.if.end42_crit_edge
  %sub43 = sub i32 %bpl.1, %div83
  ret i32 %sub43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_expbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_enum_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 436, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1218, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1222, i32 15}
!6 = !{ptr @omap4iss_video_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1234, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap4iss_video_init.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1235, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @omap4iss_video_init.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1238, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @omap4iss_video_init.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1239, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1247, i32 4}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1278, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @omap4iss_video_register._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @omap4iss_video_register._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @formats, !28, !"formats", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 31, i32 31}
!29 = !{ptr @iss_video_dummy_ops, !30, !"iss_video_dummy_ops", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1208, i32 42}
!31 = !{ptr @iss_video_fops, !32, !"iss_video_fops", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1195, i32 42}
!33 = !{ptr @iss_video_vb2ops, !34, !"iss_video_vb2ops", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 406, i32 29}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 342, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @iss_video_buf_prepare.__UNIQUE_ID_ddebug304, !36, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @iss_video_ioctl_ops, !44, !"iss_video_ioctl_ops", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1068, i32 36}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 533, i32 23}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 535, i32 25}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/media/media-entity.h", i32 468, i32 6}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/omap4iss/iss_video.c", i32 1048, i32 23}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i8 0, i8 2}
!64 = !{i64 2148358349}
!65 = !{i64 2148273658, i64 2148273690, i64 2148273719, i64 2148273753, i64 2148273784, i64 2148273807}
!66 = !{i64 2148358578}
!67 = !{i64 2148754753, i64 2148754758, i64 2148754771, i64 2148754815, i64 2148754849, i64 2148754870}
!68 = !{!"branch_weights", i32 2000, i32 1}
