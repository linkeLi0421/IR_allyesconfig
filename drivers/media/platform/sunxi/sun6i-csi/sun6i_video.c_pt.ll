; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c_pt.bc'
source_filename = "../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun6i_video = type { %struct.video_device, %struct.media_pad, ptr, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, i32, %struct.v4l2_format, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.sun6i_csi = type { ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, %struct.v4l2_fwnode_endpoint, %struct.sun6i_csi_config, %struct.sun6i_video }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.114, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.114 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.sun6i_csi_config = type { i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.sun6i_csi_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i8 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@sun6i_video_frame_done.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun6i_csi\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun6i_video_frame_done\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Frame dropped!\0A\00", [16 x i8] zeroinitializer }, align 32
@sun6i_video_frame_done.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sun6i_video_frame_done.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Next frame will be dropped!\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_video_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @sun6i_video_link_validate }, [20 x i8] zeroinitializer }, align 32
@sun6i_video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&video->lock\00", [19 x i8] zeroinitializer }, align 32
@sun6i_video_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&video->dma_queue_lock\00", [41 x i8] zeroinitializer }, align 32
@supported_pixformats = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 825770306, i32 1196573255, i32 1195528775, i32 1111967570, i32 808535874, i32 808534599, i32 808534338, i32 808535890, i32 842090306, i32 842089031, i32 842088770, i32 842090322, i32 1448695129, i32 1431918169, i32 1498831189, i32 1498765654, i32 842091848, i32 842094158, i32 825382478, i32 842093913, i32 842094169, i32 909203022, i32 825644622, i32 1345466932, i32 1346520914, i32 1380075346, i32 1195724874], [52 x i8] zeroinitializer }, align 32
@sun6i_csi_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @sun6i_video_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @sun6i_video_buffer_prepare, ptr null, ptr null, ptr @sun6i_video_start_streaming, ptr @sun6i_video_stop_streaming, ptr @sun6i_video_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@sun6i_video_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: vb2_queue_init failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun6i_video_init\00", [47 x i8] zeroinitializer }, align 32
@sun6i_video_init._entry_ptr = internal global ptr @sun6i_video_init._entry, section ".printk_index", align 4
@sun6i_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @sun6i_video_open, ptr @sun6i_video_close }, [60 x i8] zeroinitializer }, align 32
@sun6i_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@sun6i_video_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: video_register_device failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sun6i_video_init._entry_ptr.12 = internal global ptr @sun6i_video_init._entry.10, section ".printk_index", align 4
@sun6i_video_link_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 561, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"video node %s pad not connected\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sun6i_video_link_validate\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun6i_video_link_validate._entry_ptr = internal global ptr @sun6i_video_link_validate._entry, section ".printk_index", align 4
@sun6i_video_link_validate._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 575, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unsupported pixformat: 0x%x with mbus code: 0x%x!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sun6i_video_link_validate._entry_ptr.20 = internal global ptr @sun6i_video_link_validate._entry.17, section ".printk_index", align 4
@sun6i_video_link_validate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 584, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Wrong width or height %ux%u (%ux%u expected)\0A\00", [50 x i8] zeroinitializer }, align 32
@sun6i_video_link_validate._entry_ptr.23 = internal global ptr @sun6i_video_link_validate._entry.21, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported pixformat: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_video_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: buffer too small (%lu < %lu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun6i_video_buffer_prepare\00", [37 x i8] zeroinitializer }, align 32
@sun6i_video_buffer_prepare._entry_ptr = internal global ptr @sun6i_video_buffer_prepare._entry, section ".printk_index", align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sun6i-video\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [29 x i64] [i64 27, i64 32, i64 808534338, i64 808534599, i64 808535874, i64 808535890, i64 825382478, i64 825644622, i64 825770306, i64 842088770, i64 842089031, i64 842090306, i64 842090322, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 909203022, i64 1111967570, i64 1195528775, i64 1195724874, i64 1196573255, i64 1345466932, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.32 = internal global [33 x i64] [i64 31, i64 32, i64 808534338, i64 808534599, i64 808535874, i64 808535890, i64 825382478, i64 825644622, i64 825770306, i64 842088770, i64 842089031, i64 842090306, i64 842090322, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 859981650, i64 861030210, i64 876758866, i64 877807426, i64 909203022, i64 1111967570, i64 1195528775, i64 1195724874, i64 1196573255, i64 1345466932, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 269, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 298, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"sun6i_video_media_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 593, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 614, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 617, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"supported_pixformats\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 34, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"sun6i_csi_vb2_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 306, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 644, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"sun6i_video_fops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 522, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"sun6i_video_ioctl_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 438, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 663, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 560, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 572, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 581, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [54 x i8] c"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 131, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 118, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 321, i32 23 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 323, i32 49 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [56 x i8] c"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 417, i32 21 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @sun6i_video_buffer_prepare._entry, ptr @sun6i_video_buffer_prepare._entry_ptr, ptr @sun6i_video_init._entry, ptr @sun6i_video_init._entry.10, ptr @sun6i_video_init._entry_ptr, ptr @sun6i_video_init._entry_ptr.12, ptr @sun6i_video_link_validate._entry, ptr @sun6i_video_link_validate._entry.17, ptr @sun6i_video_link_validate._entry.21, ptr @sun6i_video_link_validate._entry_ptr, ptr @sun6i_video_link_validate._entry_ptr.20, ptr @sun6i_video_link_validate._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sun6i_video_media_ops, ptr @sun6i_video_init.__key, ptr @.str.5, ptr @sun6i_video_init.__key.6, ptr @.str.7, ptr @supported_pixformats, ptr @sun6i_csi_vb2_ops, ptr @.str.8, ptr @.str.9, ptr @sun6i_video_fops, ptr @sun6i_video_ioctl_ops, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_pixformats to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_link_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_link_validate._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_link_validate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_video_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun6i_video_frame_done(ptr noundef %video) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_queue_lock = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dma_queue_lock) #9
  %dma_queue = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 6
  %0 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_queue, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %3, %dma_queue
  br i1 %cmp.i.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_video_frame_done.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_video_frame_done, %if.then7)) #9
          to label %unlock [label %if.then7], !srcloc !78

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %csi = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 2
  %4 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_video_frame_done.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.3) #9
  br label %unlock

if.end8:                                          ; preds = %entry
  %queued_to_csi = getelementptr i8, ptr %3, i32 12
  %8 = ptrtoint ptr %queued_to_csi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %queued_to_csi, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %if.then15, label %if.end36

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %queued_to_csi to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %queued_to_csi, align 4
  %csi17 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 2
  %11 = ptrtoint ptr %csi17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csi17, align 8
  %dma_addr = getelementptr i8, ptr %3, i32 8
  %13 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr, align 8
  tail call void @sun6i_csi_update_buf_addr(ptr noundef %12, i32 noundef %14) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_video_frame_done.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_video_frame_done, %if.then30)) #9
          to label %unlock [label %if.then30], !srcloc !78

if.then30:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %csi17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csi17, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_video_frame_done.__UNIQUE_ID_ddebug299, ptr noundef %18, ptr noundef nonnull @.str.3) #9
  br label %unlock

if.end36:                                         ; preds = %if.end8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end36.list_del.exit_crit_edge

if.end36.list_del.exit_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end36.list_del.exit_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr i8, ptr %1, i32 -712
  %27 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 7
  %28 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sequence, align 4
  %sequence39 = getelementptr i8, ptr %1, i32 -272
  %30 = ptrtoint ptr %sequence39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sequence39, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 5) #9
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %cmp.i103.not = icmp eq ptr %32, %dma_queue
  br i1 %cmp.i103.not, label %do.body54, label %if.then45

if.then45:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %queued_to_csi51 = getelementptr i8, ptr %32, i32 12
  %33 = ptrtoint ptr %queued_to_csi51 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %queued_to_csi51, align 4
  %csi52 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 2
  %34 = ptrtoint ptr %csi52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csi52, align 8
  %dma_addr53 = getelementptr i8, ptr %32, i32 8
  %36 = ptrtoint ptr %dma_addr53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr53, align 8
  tail call void @sun6i_csi_update_buf_addr(ptr noundef %35, i32 noundef %37) #9
  br label %unlock

do.body54:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_video_frame_done.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_video_frame_done, %if.then66)) #9
          to label %unlock [label %if.then66], !srcloc !78

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  %csi67 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 2
  %38 = ptrtoint ptr %csi67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csi67, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_video_frame_done.__UNIQUE_ID_ddebug300, ptr noundef %41, ptr noundef nonnull @.str.4) #9
  br label %unlock

unlock:                                           ; preds = %if.then66, %do.body54, %if.then45, %if.then30, %if.then15, %if.then7, %do.body
  %sequence73 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 7
  %42 = ptrtoint ptr %sequence73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sequence73, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %sequence73, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dma_queue_lock) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun6i_csi_update_buf_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun6i_video_init(ptr noundef %video, ptr noundef %csi, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %fmt = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vb2_vidq = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %fmt) #9
  %0 = getelementptr inbounds i8, ptr %fmt, i32 20
  %1 = call ptr @memset(ptr %0, i32 0, i32 184)
  %csi2 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 2
  %2 = ptrtoint ptr %csi2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %csi, ptr %csi2, align 8
  %pad = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 1
  %flags = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %video, i32 0, i32 11
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sun6i_video_media_ops, ptr %ops, align 8
  %call = tail call i32 @media_entity_pads_init(ptr noundef %video, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @sun6i_video_init.__key) #9
  %dma_queue = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 6
  %5 = ptrtoint ptr %dma_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dma_queue, ptr %dma_queue, align 4
  %prev.i = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dma_queue, ptr %prev.i, align 4
  %dma_queue_lock = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %dma_queue_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sun6i_video_init.__key.6, i16 noundef signext 3) #9
  %sequence = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 7
  %7 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sequence, align 4
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %fmt, align 4
  %fmt9 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 825770306, ptr %pixelformat, align 4
  %10 = ptrtoint ptr %fmt9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1280, ptr %fmt9, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 720, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  call fastcc void @sun6i_video_try_fmt(ptr noundef nonnull %fmt) #9
  %fmt.i = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 8
  %13 = call ptr @memcpy(ptr %fmt.i, ptr %fmt, i32 204)
  %14 = ptrtoint ptr %vb2_vidq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %vb2_vidq, align 4
  %io_modes = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 10
  %16 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %video, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 752, ptr %buf_struct_size, align 4
  %ops15 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 7
  %18 = ptrtoint ptr %ops15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sun6i_csi_vb2_ops, ptr %ops15, align 4
  %mem_ops = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 13
  %20 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock17 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 5
  %21 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lock, ptr %lock17, align 4
  %min_buffers_needed = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 15
  %22 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %min_buffers_needed, align 4
  %23 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csi, align 8
  %dev18 = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dev18, align 4
  %call19 = call i32 @vb2_queue_init(ptr noundef %vb2_vidq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name24 = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 2, i32 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name24, i32 noundef %call19) #12
  br label %clean_entity

if.end26:                                         ; preds = %do.body
  %name27 = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 12
  %call29 = call i32 @strscpy(ptr noundef %name27, ptr noundef %name, i32 noundef 32) #9
  %release = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 23
  %26 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @video_device_release_empty, ptr %release, align 8
  %fops = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 3
  %27 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sun6i_video_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 24
  %28 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sun6i_video_ioctl_ops, ptr %ioctl_ops, align 4
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 13
  %29 = ptrtoint ptr %vfl_type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %vfl_type, align 8
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 14
  %30 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %vfl_dir, align 4
  %v4l2_dev30 = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 2
  %v4l2_dev31 = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 7
  %31 = ptrtoint ptr %v4l2_dev31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %v4l2_dev30, ptr %v4l2_dev31, align 4
  %queue = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 10
  %32 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vb2_vidq, ptr %queue, align 8
  %lock33 = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 26
  %33 = ptrtoint ptr %lock33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %lock, ptr %lock33, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 4
  %34 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 67108865, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 5, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %video, ptr %driver_data.i.i, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %video, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35 = icmp slt i32 %call.i, 0
  br i1 %cmp35, label %do.end39, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end39:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %name42 = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 2, i32 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name42, i32 noundef %call.i) #12
  br label %clean_entity

clean_entity:                                     ; preds = %do.end39, %do.end23
  %ret.0 = phi i32 [ %call19, %do.end23 ], [ %call.i, %do.end39 ]
  call void @mutex_destroy(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %clean_entity, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %clean_entity ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %fmt) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun6i_video_cleanup(ptr noundef %video) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vb2_video_unregister_device(ptr noundef %video) #9
  %lock = getelementptr inbounds %struct.sun6i_video, ptr %video, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_video_link_validate(ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  %source_fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %entity = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entity, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %source_fmt) #9
  %7 = getelementptr inbounds i8, ptr %source_fmt, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 80)
  %mbus_code = getelementptr inbounds %struct.sun6i_video, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mbus_code, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %entity1 = getelementptr inbounds %struct.media_pad, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity1, align 4
  %pads = getelementptr inbounds %struct.media_entity, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pads, align 4
  %call2 = tail call ptr @media_entity_remote_pad(ptr noundef %15) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %csi = getelementptr inbounds %struct.sun6i_video, ptr %6, i32 0, i32 2
  %16 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csi, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %if.end
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 2
  br i1 %cmp.i.i, label %if.else.i, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i
  %27 = ptrtoint ptr %source_fmt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %source_fmt, align 4
  %index.i = getelementptr inbounds %struct.media_pad, ptr %22, i32 0, i32 2
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %29 to i32
  %pad3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 1
  %30 = ptrtoint ptr %pad3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %pad3.i, align 4
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %pad6.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pad6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad6.i, align 4
  %tobool7.not.i = icmp eq ptr %34, null
  br i1 %tobool7.not.i, label %if.else.i.cleanup_crit_edge, label %land.lhs.true.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_fmt.i, align 4
  %tobool10.not.i = icmp eq ptr %36, null
  br i1 %tobool10.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.else12.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else12.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not.i = icmp eq ptr %37, null
  br i1 %tobool13.not.i, label %if.else12.i.if.else20.i_crit_edge, label %land.lhs.true14.i

if.else12.i.if.else20.i_crit_edge:                ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20.i

land.lhs.true14.i:                                ; preds = %if.else12.i
  %get_fmt15.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %get_fmt15.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_fmt15.i, align 4
  %tobool16.not.i = icmp eq ptr %39, null
  br i1 %tobool16.not.i, label %land.lhs.true14.i.if.else20.i_crit_edge, label %land.lhs.true14.i.sun6i_video_link_validate_get_format.exit_crit_edge

land.lhs.true14.i.sun6i_video_link_validate_get_format.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun6i_video_link_validate_get_format.exit

land.lhs.true14.i.if.else20.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20.i

if.else20.i:                                      ; preds = %land.lhs.true14.i.if.else20.i_crit_edge, %if.else12.i.if.else20.i_crit_edge
  br label %sun6i_video_link_validate_get_format.exit

sun6i_video_link_validate_get_format.exit:        ; preds = %if.else20.i, %land.lhs.true14.i.sun6i_video_link_validate_get_format.exit_crit_edge
  %.sink.i = phi ptr [ %36, %if.else20.i ], [ %39, %land.lhs.true14.i.sun6i_video_link_validate_get_format.exit_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef nonnull %24, ptr noundef null, ptr noundef nonnull %source_fmt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp = icmp slt i32 %call19.i, 0
  br i1 %cmp, label %sun6i_video_link_validate_get_format.exit.cleanup_crit_edge, label %if.end5

sun6i_video_link_validate_get_format.exit.cleanup_crit_edge: ; preds = %sun6i_video_link_validate_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %sun6i_video_link_validate_get_format.exit
  %csi6 = getelementptr inbounds %struct.sun6i_video, ptr %6, i32 0, i32 2
  %40 = ptrtoint ptr %csi6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %csi6, align 8
  %pixelformat = getelementptr inbounds %struct.sun6i_video, ptr %6, i32 0, i32 8, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixelformat, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %code, align 4
  %call8 = call zeroext i1 @sun6i_csi_is_format_supported(ptr noundef %41, i32 noundef %43, i32 noundef %45) #9
  br i1 %call8, label %if.end20, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %csi6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %csi6, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pixelformat, align 4
  %52 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %code, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.18, i32 noundef %51, i32 noundef %53) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end5
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2
  %fmt7 = getelementptr inbounds %struct.sun6i_video, ptr %6, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %format, align 4
  %56 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fmt7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp25.not = icmp eq i32 %55, %57
  br i1 %cmp25.not, label %lor.lhs.false, label %if.end20.do.end34_crit_edge

if.end20.do.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

lor.lhs.false:                                    ; preds = %if.end20
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %height29 = getelementptr inbounds %struct.sun6i_video, ptr %6, i32 0, i32 8, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp30.not = icmp eq i32 %59, %61
  br i1 %cmp30.not, label %if.end47, label %lor.lhs.false.do.end34_crit_edge

lor.lhs.false.do.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end34:                                         ; preds = %lor.lhs.false.do.end34_crit_edge, %if.end20.do.end34_crit_edge
  %62 = ptrtoint ptr %csi6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %csi6, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %height42 = getelementptr inbounds %struct.sun6i_video, ptr %6, i32 0, i32 8, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height42, align 4
  %height46 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %height46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height46, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.22, i32 noundef %57, i32 noundef %67, i32 noundef %55, i32 noundef %69) #12
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %code, align 4
  %72 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %mbus_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end34, %do.end12, %sun6i_video_link_validate_get_format.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -32, %do.end34 ], [ 0, %if.end47 ], [ -32, %do.end12 ], [ -67, %do.end ], [ %call19.i, %sun6i_video_link_validate_get_format.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -515, %if.else.i.cleanup_crit_edge ], [ -515, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %source_fmt) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sun6i_csi_is_format_supported(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun6i_video_try_fmt(ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then.critedge [
    i32 825770306, label %entry.if.end_crit_edge
    i32 1196573255, label %entry.if.end_crit_edge4
    i32 1195528775, label %entry.if.end_crit_edge5
    i32 1111967570, label %entry.if.end_crit_edge6
    i32 808535874, label %entry.if.end_crit_edge7
    i32 808534599, label %entry.if.end_crit_edge8
    i32 808534338, label %entry.if.end_crit_edge9
    i32 808535890, label %entry.if.end_crit_edge10
    i32 842090306, label %entry.if.end_crit_edge11
    i32 842089031, label %entry.if.end_crit_edge12
    i32 842088770, label %entry.if.end_crit_edge13
    i32 842090322, label %entry.if.end_crit_edge14
    i32 1448695129, label %entry.if.end_crit_edge15
    i32 1431918169, label %entry.if.end_crit_edge16
    i32 1498831189, label %entry.if.end_crit_edge17
    i32 1498765654, label %entry.if.end_crit_edge18
    i32 842091848, label %entry.if.end_crit_edge19
    i32 842094158, label %entry.if.end_crit_edge20
    i32 825382478, label %entry.if.end_crit_edge21
    i32 842093913, label %entry.if.end_crit_edge22
    i32 842094169, label %entry.if.end_crit_edge23
    i32 909203022, label %entry.if.end_crit_edge24
    i32 825644622, label %entry.if.end_crit_edge25
    i32 1345466932, label %entry.if.end_crit_edge26
    i32 1346520914, label %entry.if.end_crit_edge27
    i32 1380075346, label %entry.if.end_crit_edge28
    i32 1195724874, label %entry.if.end_crit_edge29
  ]

entry.if.end_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 825770306, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.critedge, %entry.if.end_crit_edge, %entry.if.end_crit_edge4, %entry.if.end_crit_edge5, %entry.if.end_crit_edge6, %entry.if.end_crit_edge7, %entry.if.end_crit_edge8, %entry.if.end_crit_edge9, %entry.if.end_crit_edge10, %entry.if.end_crit_edge11, %entry.if.end_crit_edge12, %entry.if.end_crit_edge13, %entry.if.end_crit_edge14, %entry.if.end_crit_edge15, %entry.if.end_crit_edge16, %entry.if.end_crit_edge17, %entry.if.end_crit_edge18, %entry.if.end_crit_edge19, %entry.if.end_crit_edge20, %entry.if.end_crit_edge21, %entry.if.end_crit_edge22, %entry.if.end_crit_edge23, %entry.if.end_crit_edge24, %entry.if.end_crit_edge25, %entry.if.end_crit_edge26, %entry.if.end_crit_edge27, %entry.if.end_crit_edge28, %entry.if.end_crit_edge29
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef 4800, i32 noundef 1, ptr noundef %height, i32 noundef 32, i32 noundef 4800, i32 noundef 1, i32 noundef 1) #9
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %5, label %do.end.i [
    i32 825770306, label %if.end.sun6i_csi_get_bpp.exit_crit_edge
    i32 1196573255, label %if.end.sun6i_csi_get_bpp.exit_crit_edge30
    i32 1195528775, label %if.end.sun6i_csi_get_bpp.exit_crit_edge31
    i32 1111967570, label %if.end.sun6i_csi_get_bpp.exit_crit_edge32
    i32 1195724874, label %if.end.sun6i_csi_get_bpp.exit_crit_edge33
    i32 808535874, label %if.end.sw.bb1.i_crit_edge
    i32 808534599, label %if.end.sw.bb1.i_crit_edge34
    i32 808534338, label %if.end.sw.bb1.i_crit_edge35
    i32 808535890, label %if.end.sw.bb1.i_crit_edge36
    i32 842090306, label %if.end.sw.bb2.i_crit_edge
    i32 842089031, label %if.end.sw.bb2.i_crit_edge37
    i32 842088770, label %if.end.sw.bb2.i_crit_edge38
    i32 842090322, label %if.end.sw.bb2.i_crit_edge39
    i32 842091848, label %if.end.sw.bb2.i_crit_edge40
    i32 842094158, label %if.end.sw.bb2.i_crit_edge41
    i32 825382478, label %if.end.sw.bb2.i_crit_edge42
    i32 842093913, label %if.end.sw.bb2.i_crit_edge43
    i32 842094169, label %if.end.sw.bb2.i_crit_edge44
    i32 1448695129, label %if.end.sw.bb3.i_crit_edge
    i32 1431918169, label %if.end.sw.bb3.i_crit_edge45
    i32 1498831189, label %if.end.sw.bb3.i_crit_edge46
    i32 1498765654, label %if.end.sw.bb3.i_crit_edge47
    i32 909203022, label %if.end.sw.bb3.i_crit_edge48
    i32 825644622, label %if.end.sw.bb3.i_crit_edge49
    i32 1345466932, label %if.end.sw.bb3.i_crit_edge50
    i32 1346520914, label %if.end.sw.bb3.i_crit_edge51
    i32 1380075346, label %if.end.sw.bb3.i_crit_edge52
    i32 859981650, label %if.end.sw.bb4.i_crit_edge
    i32 861030210, label %if.end.sw.bb4.i_crit_edge53
    i32 876758866, label %if.end.sw.bb5.i_crit_edge
    i32 877807426, label %if.end.sw.bb5.i_crit_edge54
  ]

if.end.sw.bb5.i_crit_edge54:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.sw.bb4.i_crit_edge53:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

if.end.sw.bb4.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

if.end.sw.bb3.i_crit_edge52:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge51:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge50:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge49:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge48:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge47:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge46:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge45:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb2.i_crit_edge44:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge43:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge42:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge41:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge40:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge39:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge38:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge37:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb1.i_crit_edge36:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge35:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge34:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sun6i_csi_get_bpp.exit_crit_edge33:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun6i_csi_get_bpp.exit

if.end.sun6i_csi_get_bpp.exit_crit_edge32:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun6i_csi_get_bpp.exit

if.end.sun6i_csi_get_bpp.exit_crit_edge31:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun6i_csi_get_bpp.exit

if.end.sun6i_csi_get_bpp.exit_crit_edge30:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun6i_csi_get_bpp.exit

if.end.sun6i_csi_get_bpp.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun6i_csi_get_bpp.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge34, %if.end.sw.bb1.i_crit_edge35, %if.end.sw.bb1.i_crit_edge36
  br label %sun6i_csi_get_bpp.exit

sw.bb2.i:                                         ; preds = %if.end.sw.bb2.i_crit_edge, %if.end.sw.bb2.i_crit_edge37, %if.end.sw.bb2.i_crit_edge38, %if.end.sw.bb2.i_crit_edge39, %if.end.sw.bb2.i_crit_edge40, %if.end.sw.bb2.i_crit_edge41, %if.end.sw.bb2.i_crit_edge42, %if.end.sw.bb2.i_crit_edge43, %if.end.sw.bb2.i_crit_edge44
  br label %sun6i_csi_get_bpp.exit

sw.bb3.i:                                         ; preds = %if.end.sw.bb3.i_crit_edge, %if.end.sw.bb3.i_crit_edge45, %if.end.sw.bb3.i_crit_edge46, %if.end.sw.bb3.i_crit_edge47, %if.end.sw.bb3.i_crit_edge48, %if.end.sw.bb3.i_crit_edge49, %if.end.sw.bb3.i_crit_edge50, %if.end.sw.bb3.i_crit_edge51, %if.end.sw.bb3.i_crit_edge52
  br label %sun6i_csi_get_bpp.exit

sw.bb4.i:                                         ; preds = %if.end.sw.bb4.i_crit_edge, %if.end.sw.bb4.i_crit_edge53
  br label %sun6i_csi_get_bpp.exit

sw.bb5.i:                                         ; preds = %if.end.sw.bb5.i_crit_edge, %if.end.sw.bb5.i_crit_edge54
  br label %sun6i_csi_get_bpp.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef %5) #9
  br label %sun6i_csi_get_bpp.exit

sun6i_csi_get_bpp.exit:                           ; preds = %do.end.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.sun6i_csi_get_bpp.exit_crit_edge, %if.end.sun6i_csi_get_bpp.exit_crit_edge30, %if.end.sun6i_csi_get_bpp.exit_crit_edge31, %if.end.sun6i_csi_get_bpp.exit_crit_edge32, %if.end.sun6i_csi_get_bpp.exit_crit_edge33
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 32, %sw.bb5.i ], [ 24, %sw.bb4.i ], [ 16, %sw.bb3.i ], [ 12, %sw.bb2.i ], [ 10, %sw.bb1.i ], [ 8, %if.end.sun6i_csi_get_bpp.exit_crit_edge ], [ 8, %if.end.sun6i_csi_get_bpp.exit_crit_edge30 ], [ 8, %if.end.sun6i_csi_get_bpp.exit_crit_edge31 ], [ 8, %if.end.sun6i_csi_get_bpp.exit_crit_edge32 ], [ 8, %if.end.sun6i_csi_get_bpp.exit_crit_edge33 ]
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  %mul = mul i32 %8, %retval.0.i
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %bytesperline, align 4
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %mul7 = mul i32 %shr, %11
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul7, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then8, label %sun6i_csi_get_bpp.exit.if.end10_crit_edge

sun6i_csi_get_bpp.exit.if.end10_crit_edge:        ; preds = %sun6i_csi_get_bpp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %sun6i_csi_get_bpp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sun6i_csi_get_bpp.exit.if.end10_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 11, ptr %colorspace, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %quantization, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %20 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %xfer_func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_video_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_video_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.sun6i_video, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 5
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
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit31_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit31_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit31

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp37 = icmp ult i32 %9, %5
  br i1 %cmp37, label %vb2_plane_size.exit.thread.vb2_plane_size.exit31_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit31_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit31

vb2_plane_size.exit31:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit31_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit31_crit_edge
  %retval.0.i30 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit31_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit31_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %name41 = getelementptr inbounds %struct.v4l2_device, ptr %.pn, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name41, i32 noundef %retval.0.i30, i32 noundef %5) #12
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 4
  %dma_addr = getelementptr inbounds %struct.sun6i_csi_buffer, ptr %vb, i32 0, i32 2
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dma_addr, align 8
  %field = getelementptr inbounds %struct.sun6i_video, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field, align 4
  %field12 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %17 = ptrtoint ptr %field12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %field12, align 4
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit31
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit31 ], [ 0, %vb2_set_plane_payload.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_video_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  %config = alloca %struct.sun6i_csi_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %config) #9
  %2 = getelementptr inbounds %struct.sun6i_csi_config, ptr %config, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sun6i_csi_config, ptr %config, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sun6i_csi_config, ptr %config, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sun6i_csi_config, ptr %config, i32 0, i32 4
  %sequence = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 7
  %6 = call ptr @memset(ptr %config, i32 255, i32 20)
  %7 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sequence, align 4
  %pipe = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @media_pipeline_start(ptr noundef %1, ptr noundef %pipe) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.do.body77_crit_edge, label %if.end

entry.do.body77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.end:                                           ; preds = %entry
  %mbus_code = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.end.stop_media_pipeline_crit_edge, label %if.end5

if.end.stop_media_pipeline_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_media_pipeline

if.end5:                                          ; preds = %if.end
  %pad1.i = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.stop_media_pipeline_crit_edge, label %lor.lhs.false.i

if.end5.stop_media_pipeline_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_media_pipeline

lor.lhs.false.i:                                  ; preds = %if.end5
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.stop_media_pipeline_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.stop_media_pipeline_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_media_pipeline

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 2
  br i1 %cmp.i.i, label %if.end8, label %is_media_entity_v4l2_subdev.exit.i.stop_media_pipeline_crit_edge

is_media_entity_v4l2_subdev.exit.i.stop_media_pipeline_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_media_pipeline

if.end8:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i
  %fmt9 = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 8, i32 1
  %pixelformat = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %config, align 4
  %17 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbus_code, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %2, align 4
  %field = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %3, align 4
  %23 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt9, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %4, align 4
  %height = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %5, align 4
  %csi = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csi, align 8
  %call21 = call i32 @sun6i_csi_update_config(ptr noundef %30, ptr noundef nonnull %config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end8.stop_media_pipeline_crit_edge, label %do.body25

if.end8.stop_media_pipeline_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_media_pipeline

do.body25:                                        ; preds = %if.end8
  %dma_queue_lock = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 5
  %call28 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #9
  %dma_queue = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_queue, align 4
  %queued_to_csi = getelementptr i8, ptr %32, i32 12
  %33 = ptrtoint ptr %queued_to_csi to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %queued_to_csi, align 4
  %34 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csi, align 8
  %dma_addr = getelementptr i8, ptr %32, i32 8
  %36 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr, align 8
  call void @sun6i_csi_update_buf_addr(ptr noundef %35, i32 noundef %37) #9
  %38 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csi, align 8
  call void @sun6i_csi_set_stream(ptr noundef %39, i1 noundef zeroext true) #9
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %32, align 8
  %queued_to_csi38 = getelementptr i8, ptr %41, i32 12
  %42 = ptrtoint ptr %queued_to_csi38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %queued_to_csi38, align 4
  %43 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csi, align 8
  %dma_addr40 = getelementptr i8, ptr %41, i32 8
  %45 = ptrtoint ptr %dma_addr40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_addr40, align 8
  call void @sun6i_csi_update_buf_addr(ptr noundef %44, i32 noundef %46) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call28) #9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %video44 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %video44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %video44, align 4
  %tobool45.not = icmp eq ptr %50, null
  br i1 %tobool45.not, label %do.body25.cleanup_crit_edge, label %land.lhs.true

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body25
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_stream, align 4
  %tobool48.not = icmp eq ptr %52, null
  br i1 %tobool48.not, label %land.lhs.true.cleanup_crit_edge, label %if.else50

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else50:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool51.not = icmp eq ptr %53, null
  br i1 %tobool51.not, label %if.else50.if.else58_crit_edge, label %land.lhs.true52

if.else50.if.else58_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else58

land.lhs.true52:                                  ; preds = %if.else50
  %s_stream53 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %s_stream53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_stream53, align 4
  %tobool54.not = icmp eq ptr %55, null
  br i1 %tobool54.not, label %land.lhs.true52.if.else58_crit_edge, label %land.lhs.true52.if.end65_crit_edge

land.lhs.true52.if.end65_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true52.if.else58_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else58

if.else58:                                        ; preds = %land.lhs.true52.if.else58_crit_edge, %if.else50.if.else58_crit_edge
  br label %if.end65

if.end65:                                         ; preds = %if.else58, %land.lhs.true52.if.end65_crit_edge
  %.sink = phi ptr [ %52, %if.else58 ], [ %55, %land.lhs.true52.if.end65_crit_edge ]
  %call62 = call i32 %.sink(ptr noundef nonnull %11, i32 noundef 1) #9
  %56 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call62, label %stop_csi_stream [
    i32 0, label %if.end65.cleanup_crit_edge
    i32 -515, label %if.end65.cleanup_crit_edge160
  ]

if.end65.cleanup_crit_edge160:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

stop_csi_stream:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csi, align 8
  call void @sun6i_csi_set_stream(ptr noundef %58, i1 noundef zeroext false) #9
  br label %stop_media_pipeline

stop_media_pipeline:                              ; preds = %stop_csi_stream, %if.end8.stop_media_pipeline_crit_edge, %is_media_entity_v4l2_subdev.exit.i.stop_media_pipeline_crit_edge, %lor.lhs.false.i.stop_media_pipeline_crit_edge, %if.end5.stop_media_pipeline_crit_edge, %if.end.stop_media_pipeline_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end8.stop_media_pipeline_crit_edge ], [ %call62, %stop_csi_stream ], [ -22, %if.end.stop_media_pipeline_crit_edge ], [ -22, %if.end5.stop_media_pipeline_crit_edge ], [ -22, %lor.lhs.false.i.stop_media_pipeline_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.i.stop_media_pipeline_crit_edge ]
  call void @media_pipeline_stop(ptr noundef %1) #9
  br label %do.body77

do.body77:                                        ; preds = %stop_media_pipeline, %entry.do.body77_crit_edge
  %ret.1 = phi i32 [ %call2, %entry.do.body77_crit_edge ], [ %ret.0, %stop_media_pipeline ]
  %dma_queue_lock83 = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 5
  %call85 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock83) #9
  %dma_queue91 = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %dma_queue91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn157 = load ptr, ptr %dma_queue91, align 4
  %cmp97.not158 = icmp eq ptr %.pn157, %dma_queue91
  br i1 %cmp97.not158, label %do.body77.for.end_crit_edge, label %do.body77.for.body_crit_edge

do.body77.for.body_crit_edge:                     ; preds = %do.body77
  br label %for.body

do.body77.for.end_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body77.for.body_crit_edge
  %.pn159 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn157, %do.body77.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn159, i32 -736
  call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #9
  %60 = ptrtoint ptr %.pn159 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn159, align 4
  %cmp97.not = icmp eq ptr %.pn, %dma_queue91
  br i1 %cmp97.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body77.for.end_crit_edge
  %61 = ptrtoint ptr %dma_queue91 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %dma_queue91, ptr %dma_queue91, align 4
  %prev.i = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dma_queue91, ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock83, i32 noundef %call85) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end65.cleanup_crit_edge, %if.end65.cleanup_crit_edge160, %land.lhs.true.cleanup_crit_edge, %do.body25.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ 0, %if.end65.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge160 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.body25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_video_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %pad1.i = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end25_crit_edge, label %lor.lhs.false.i

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

lor.lhs.false.i:                                  ; preds = %entry
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.end25_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.end25_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 2
  br i1 %cmp.i.i, label %if.else, label %is_media_entity_v4l2_subdev.exit.i.if.end25_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.end25_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.else.if.end25_crit_edge, label %land.lhs.true

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_stream, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.lhs.true.if.end25_crit_edge, label %if.else10

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %s_stream13 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_stream13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_stream13, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end25.sink.split_crit_edge

land.lhs.true12.if.end25.sink.split_crit_edge:    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.sink.split

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else18, %land.lhs.true12.if.end25.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else18 ], [ %14, %land.lhs.true12.if.end25.sink.split_crit_edge ]
  %call17 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 0) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %land.lhs.true.if.end25_crit_edge, %if.else.if.end25_crit_edge, %is_media_entity_v4l2_subdev.exit.i.if.end25_crit_edge, %lor.lhs.false.i.if.end25_crit_edge, %entry.if.end25_crit_edge
  %csi = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csi, align 8
  tail call void @sun6i_csi_set_stream(ptr noundef %16, i1 noundef zeroext false) #9
  tail call void @media_pipeline_stop(ptr noundef %1) #9
  %dma_queue_lock = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 5
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #9
  %dma_queue = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn62 = load ptr, ptr %dma_queue, align 4
  %cmp34.not63 = icmp eq ptr %.pn62, %dma_queue
  br i1 %cmp34.not63, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end25.for.body_crit_edge
  %.pn64 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn62, %if.end25.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn64, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #9
  %18 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn64, align 4
  %cmp34.not = icmp eq ptr %.pn, %dma_queue
  br i1 %cmp34.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end25.for.end_crit_edge
  %19 = ptrtoint ptr %dma_queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %dma_queue, ptr %dma_queue, align 4
  %prev.i = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dma_queue, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call29) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_video_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dma_queue_lock = getelementptr inbounds %struct.sun6i_video, ptr %3, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #9
  %queued_to_csi = getelementptr inbounds %struct.sun6i_csi_buffer, ptr %vb, i32 0, i32 3
  %4 = ptrtoint ptr %queued_to_csi to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %queued_to_csi, align 4
  %list = getelementptr inbounds %struct.sun6i_csi_buffer, ptr %vb, i32 0, i32 1
  %dma_queue = getelementptr inbounds %struct.sun6i_video, ptr %3, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.sun6i_video, ptr %3, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %dma_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dma_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun6i_csi_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun6i_csi_update_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun6i_csi_set_stream(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_video_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.fh_release_crit_edge, label %if.end8

if.end4.fh_release_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fh_release

if.end8:                                          ; preds = %if.end4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i31 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool10.not = icmp eq i32 %call.i31, 0
  br i1 %tobool10.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end12

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end8
  %csi = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi, align 8
  %call13 = tail call i32 @sun6i_csi_set_power(ptr noundef %5, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.fh_release_crit_edge, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12.fh_release_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %fh_release

fh_release:                                       ; preds = %if.end12.fh_release_crit_edge, %if.end4.fh_release_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.fh_release_crit_edge ], [ %call13, %if.end12.fh_release_crit_edge ]
  %call18 = tail call i32 @v4l2_fh_release(ptr noundef %file) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fh_release, %if.end12.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end12.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ], [ %ret.0, %fh_release ], [ %call5, %if.end8.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_video_close(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i11 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not = icmp eq i32 %call.i11, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #9
  tail call void @v4l2_pipeline_pm_put(ptr noundef %1) #9
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %csi = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi, align 8
  %call4 = tail call i32 @sun6i_csi_set_power(ptr noundef %5, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun6i_csi_set_power(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.29, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %csi = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csi, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef %9)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %cmp = icmp ugt i32 %1, 26
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [27 x i32], ptr @supported_pixformats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 8
  %2 = call ptr @memcpy(ptr %fmt, ptr %fmt1, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 4, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sun6i_video_try_fmt(ptr noundef %f) #9
  %fmt.i = getelementptr inbounds %struct.sun6i_video, ptr %1, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %fmt.i, ptr %f, i32 204)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  tail call fastcc void @sun6i_video_try_fmt(ptr noundef %f)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %inp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.31, i32 noundef 32) #9
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %i) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 269, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sun6i_video_frame_done.__UNIQUE_ID_ddebug298, !1, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!6 = !{ptr @sun6i_video_frame_done.__UNIQUE_ID_ddebug299, !7, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 282, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 298, i32 3}
!10 = !{ptr @sun6i_video_frame_done.__UNIQUE_ID_ddebug300, !9, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!11 = !{ptr @sun6i_video_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 614, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sun6i_video_init.__key.6, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 617, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 644, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun6i_video_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun6i_video_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 663, i32 3}
!24 = !{ptr @sun6i_video_init._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun6i_video_init._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sun6i_video_media_ops, !27, !"sun6i_video_media_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 593, i32 45}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 560, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sun6i_video_link_validate._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @sun6i_video_link_validate._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 572, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sun6i_video_link_validate._entry.17, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun6i_video_link_validate._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 581, i32 3}
!42 = !{ptr @sun6i_video_link_validate._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sun6i_video_link_validate._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @supported_pixformats, !45, !"supported_pixformats", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 34, i32 18}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h", i32 131, i32 3}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sun6i_csi_vb2_ops, !50, !"sun6i_csi_vb2_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 306, i32 29}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 118, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sun6i_video_buffer_prepare._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sun6i_video_buffer_prepare._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!58 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sun6i_video_fops, !60, !"sun6i_video_fops", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 522, i32 42}
!61 = !{ptr @sun6i_video_ioctl_ops, !62, !"sun6i_video_ioctl_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 438, i32 36}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 321, i32 23}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 323, i32 49}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c", i32 417, i32 21}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148873968, i64 2148873973, i64 2148873986, i64 2148874030, i64 2148874064, i64 2148874085}
!79 = !{i8 0, i8 2}
