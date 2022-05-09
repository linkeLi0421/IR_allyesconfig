; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rkisp1_capture_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rkisp1_capture_config = type { ptr, i32, %struct.anon.114 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rkisp1_capture_fmt_cfg = type { i32, i8, i32, i32, i32 }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rkisp1_capture = type { %struct.rkisp1_vdev_node, ptr, i32, ptr, ptr, i8, i8, %struct.wait_queue_head, i32, %struct.anon.115, %struct.anon.116 }
%struct.rkisp1_vdev_node = type { %struct.vb2_queue, %struct.mutex, %struct.video_device, %struct.media_pad }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.115 = type { %struct.spinlock, %struct.list_head, %struct.rkisp1_dummy_buffer, ptr, ptr }
%struct.rkisp1_dummy_buffer = type { ptr, i32, i32 }
%struct.anon.116 = type { ptr, ptr, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.rkisp1_device = type { ptr, ptr, i32, [8 x %struct.clk_bulk_data], %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, ptr, %struct.rkisp1_isp, [2 x %struct.rkisp1_resizer], [2 x %struct.rkisp1_capture], %struct.rkisp1_stats, %struct.rkisp1_params, %struct.media_pipeline, %struct.mutex, %struct.rkisp1_debug }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rkisp1_isp = type { %struct.v4l2_subdev, [4 x %struct.media_pad], [4 x %struct.v4l2_subdev_pad_config], ptr, ptr, %struct.mutex, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rkisp1_resizer = type { %struct.v4l2_subdev, i32, ptr, [2 x %struct.media_pad], [2 x %struct.v4l2_subdev_pad_config], ptr, i32, %struct.mutex }
%struct.rkisp1_stats = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.rkisp1_params = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format, i32, i32 }
%struct.rkisp1_debug = type { ptr, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.v4l2_format_info = type { i32, i8, i8, i8, [4 x i8], i8, i8, [4 x i8], [4 x i8] }
%struct.rkisp1_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, [8 x i32] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rkisp1_sensor_async = type { %struct.v4l2_async_subdev, i32, i32, i32, ptr, ptr, ptr }
%struct.v4l2_async_subdev = type { i32, %union.anon.93, %struct.list_head, %struct.list_head }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rkisp1_capture_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cap->done\00", [21 x i8] zeroinitializer }, align 32
@rkisp1_capture_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cap->buf.lock\00", [17 x i8] zeroinitializer }, align 32
@rkisp1_capture_ops_sp = internal constant { %struct.rkisp1_capture_ops, [40 x i8] } { %struct.rkisp1_capture_ops { ptr @rkisp1_sp_config, ptr @rkisp1_mp_sp_stop, ptr @rkisp1_sp_enable, ptr @rkisp1_sp_disable, ptr @rkisp1_sp_set_data_path, ptr @rkisp1_sp_is_stopped }, [40 x i8] zeroinitializer }, align 32
@rkisp1_capture_config_sp = internal constant { %struct.rkisp1_capture_config, [52 x i8] } { %struct.rkisp1_capture_config { ptr @rkisp1_sp_fmts, i32 14, %struct.anon.114 { i32 5184, i32 5204, i32 5220, i32 5180, i32 5200, i32 5216, i32 5188, i32 5208, i32 5224 } }, [52 x i8] zeroinitializer }, align 32
@rkisp1_capture_ops_mp = internal constant { %struct.rkisp1_capture_ops, [40 x i8] } { %struct.rkisp1_capture_ops { ptr @rkisp1_mp_config, ptr @rkisp1_mp_sp_stop, ptr @rkisp1_mp_enable, ptr @rkisp1_mp_disable, ptr @rkisp1_mp_set_data_path, ptr @rkisp1_mp_is_stopped }, [40 x i8] zeroinitializer }, align 32
@rkisp1_capture_config_mp = internal constant { %struct.rkisp1_capture_config, [52 x i8] } { %struct.rkisp1_capture_config { ptr @rkisp1_mp_fmts, i32 24, %struct.anon.114 { i32 5132, i32 5152, i32 5168, i32 5128, i32 5148, i32 5164, i32 5136, i32 5156, i32 5172 } }, [52 x i8] zeroinitializer }, align 32
@rkisp1_sp_fmts = internal constant { [14 x %struct.rkisp1_capture_fmt_cfg], [72 x i8] } { [14 x %struct.rkisp1_capture_fmt_cfg] [%struct.rkisp1_capture_fmt_cfg { i32 1448695129, i8 0, i32 33554432, i32 536870912, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 1345466932, i8 0, i32 0, i32 536870912, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 909203022, i8 0, i32 16777216, i32 536870912, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 825644622, i8 1, i32 16777216, i32 536870912, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 825642329, i8 1, i32 0, i32 536870912, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 1497715271, i8 0, i32 0, i32 0, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 875713112, i8 0, i32 0, i32 1610612736, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 1346520914, i8 0, i32 0, i32 1073741824, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 825382478, i8 1, i32 16777216, i32 268435456, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842094158, i8 0, i32 16777216, i32 268435456, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 825380174, i8 1, i32 16777216, i32 268435456, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842091854, i8 0, i32 16777216, i32 268435456, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842093913, i8 0, i32 0, i32 268435456, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842094169, i8 1, i32 0, i32 268435456, i32 8196 }], [72 x i8] zeroinitializer }, align 32
@rkisp1_mp_fmts = internal constant { [24 x %struct.rkisp1_capture_fmt_cfg], [96 x i8] } { [24 x %struct.rkisp1_capture_fmt_cfg] [%struct.rkisp1_capture_fmt_cfg { i32 1448695129, i8 0, i32 8388608, i32 0, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 1345466932, i8 0, i32 0, i32 0, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 909203022, i8 0, i32 4194304, i32 0, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 825644622, i8 1, i32 4194304, i32 0, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 825642329, i8 1, i32 0, i32 0, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 1497715271, i8 0, i32 0, i32 0, i32 8200 }, %struct.rkisp1_capture_fmt_cfg { i32 825382478, i8 1, i32 4194304, i32 0, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842094158, i8 0, i32 4194304, i32 0, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 825380174, i8 1, i32 4194304, i32 0, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842091854, i8 0, i32 4194304, i32 0, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842093913, i8 0, i32 0, i32 0, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 842094169, i8 1, i32 0, i32 0, i32 8196 }, %struct.rkisp1_capture_fmt_cfg { i32 1111967570, i8 0, i32 0, i32 0, i32 12308 }, %struct.rkisp1_capture_fmt_cfg { i32 1195528775, i8 0, i32 0, i32 0, i32 12290 }, %struct.rkisp1_capture_fmt_cfg { i32 1196573255, i8 0, i32 0, i32 0, i32 12307 }, %struct.rkisp1_capture_fmt_cfg { i32 825770306, i8 0, i32 0, i32 0, i32 12289 }, %struct.rkisp1_capture_fmt_cfg { i32 808535890, i8 0, i32 8388608, i32 0, i32 12303 }, %struct.rkisp1_capture_fmt_cfg { i32 808534338, i8 0, i32 8388608, i32 0, i32 12298 }, %struct.rkisp1_capture_fmt_cfg { i32 808534599, i8 0, i32 8388608, i32 0, i32 12302 }, %struct.rkisp1_capture_fmt_cfg { i32 808535874, i8 0, i32 8388608, i32 0, i32 12295 }, %struct.rkisp1_capture_fmt_cfg { i32 842090322, i8 0, i32 8388608, i32 0, i32 12306 }, %struct.rkisp1_capture_fmt_cfg { i32 842088770, i8 0, i32 8388608, i32 0, i32 12305 }, %struct.rkisp1_capture_fmt_cfg { i32 842089031, i8 0, i32 8388608, i32 0, i32 12304 }, %struct.rkisp1_capture_fmt_cfg { i32 842090306, i8 0, i32 8388608, i32 0, i32 12296 }], [96 x i8] zeroinitializer }, align 32
@__const.rkisp1_try_fmt.max_widths = private unnamed_addr constant [2 x i32] [i32 4416, i32 1920], align 4
@__const.rkisp1_try_fmt.max_heights = private unnamed_addr constant [2 x i32] [i32 3312, i32 1920], align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rkisp1_mainpath\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rkisp1_selfpath\00", [16 x i8] zeroinitializer }, align 32
@__const.rkisp1_register_capture.dev_names = private unnamed_addr constant [2 x ptr] [ptr @.str.3, ptr @.str.4], align 4
@rkisp1_register_capture.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&node->vlock\00", [19 x i8] zeroinitializer }, align 32
@rkisp1_v4l2_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rkisp1_querycap, ptr @rkisp1_enum_fmt_vid_cap_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_g_fmt_vid_cap_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_s_fmt_vid_cap_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_try_fmt_vid_cap_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rkisp1_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@rkisp1_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @rkisp1_capture_link_validate }, [20 x i8] zeroinitializer }, align 32
@rkisp1_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rkisp1_vb2_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @rkisp1_vb2_buf_init, ptr @rkisp1_vb2_buf_prepare, ptr null, ptr null, ptr @rkisp1_vb2_start_streaming, ptr @rkisp1_vb2_stop_streaming, ptr @rkisp1_vb2_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@rkisp1_register_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1369, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vb2 queue init failed (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rkisp1_register_capture\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rkisp1_register_capture._entry_ptr = internal global ptr @rkisp1_register_capture._entry, section ".printk_index", align 4
@rkisp1_register_capture._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1378, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register %s, ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@rkisp1_register_capture._entry_ptr.13 = internal global ptr @rkisp1_register_capture._entry.11, section ".printk_index", align 4
@rkisp1_register_capture._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: registered %s as /dev/video%d\0A\00", [59 x i8] zeroinitializer }, align 32
@rkisp1_register_capture._entry_ptr.16 = internal global ptr @rkisp1_register_capture._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:rkisp1\00", [16 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rkisp1_vb2_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 816, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"User buffer too small (%ld < %ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rkisp1_vb2_buf_prepare\00", [41 x i8] zeroinitializer }, align 32
@rkisp1_vb2_buf_prepare._entry_ptr = internal global ptr @rkisp1_vb2_buf_prepare._entry, section ".printk_index", align 4
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@rkisp1_vb2_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 1014, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"start pipeline failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rkisp1_vb2_start_streaming\00", [37 x i8] zeroinitializer }, align 32
@rkisp1_vb2_start_streaming._entry_ptr = internal global ptr @rkisp1_vb2_start_streaming._entry, section ".printk_index", align 4
@rkisp1_vb2_start_streaming._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.8, i32 1024, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"power up failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rkisp1_vb2_start_streaming._entry_ptr.25 = internal global ptr @rkisp1_vb2_start_streaming._entry.23, section ".printk_index", align 4
@rkisp1_vb2_start_streaming._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.8, i32 1029, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"open cif pipeline failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rkisp1_vb2_start_streaming._entry_ptr.28 = internal global ptr @rkisp1_vb2_start_streaming._entry.26, section ".printk_index", align 4
@rkisp1_vb2_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.8, i32 994, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"power down failed error:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rkisp1_vb2_stop_streaming\00", [38 x i8] zeroinitializer }, align 32
@rkisp1_vb2_stop_streaming._entry_ptr = internal global ptr @rkisp1_vb2_stop_streaming._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1404, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1405, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"rkisp1_capture_ops_sp\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 577, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"rkisp1_capture_config_sp\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 323, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"rkisp1_capture_ops_mp\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 568, i32 40 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"rkisp1_capture_config_mp\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 307, i32 43 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"rkisp1_sp_fmts\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 214, i32 44 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"rkisp1_mp_fmts\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 91, i32 44 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1330, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1331, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1340, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"rkisp1_v4l2_ioctl_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1252, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"rkisp1_fops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1305, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"rkisp1_media_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1301, i32 45 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"rkisp1_vb2_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1056, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1368, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1377, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1381, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1247, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 814, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1163, i32 7 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1014, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1024, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1029, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [59 x i8] c"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 994, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @rkisp1_register_capture._entry, ptr @rkisp1_register_capture._entry.11, ptr @rkisp1_register_capture._entry.14, ptr @rkisp1_register_capture._entry_ptr, ptr @rkisp1_register_capture._entry_ptr.13, ptr @rkisp1_register_capture._entry_ptr.16, ptr @rkisp1_vb2_buf_prepare._entry, ptr @rkisp1_vb2_buf_prepare._entry_ptr, ptr @rkisp1_vb2_start_streaming._entry, ptr @rkisp1_vb2_start_streaming._entry.23, ptr @rkisp1_vb2_start_streaming._entry.26, ptr @rkisp1_vb2_start_streaming._entry_ptr, ptr @rkisp1_vb2_start_streaming._entry_ptr.25, ptr @rkisp1_vb2_start_streaming._entry_ptr.28, ptr @rkisp1_vb2_stop_streaming._entry, ptr @rkisp1_vb2_stop_streaming._entry_ptr, ptr @rkisp1_capture_init.__key, ptr @.str, ptr @rkisp1_capture_init.__key.1, ptr @.str.2, ptr @rkisp1_capture_ops_sp, ptr @rkisp1_capture_config_sp, ptr @rkisp1_capture_ops_mp, ptr @rkisp1_capture_config_mp, ptr @rkisp1_sp_fmts, ptr @rkisp1_mp_fmts, ptr @.str.3, ptr @.str.4, ptr @rkisp1_register_capture.__key, ptr @.str.5, ptr @rkisp1_v4l2_ioctl_ops, ptr @rkisp1_fops, ptr @rkisp1_media_ops, ptr @rkisp1_vb2_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_capture_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_capture_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_capture_ops_sp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_capture_config_sp to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_capture_ops_mp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_capture_config_mp to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_sp_fmts to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_mp_fmts to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_register_capture.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_v4l2_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_register_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_register_capture._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_register_capture._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_vb2_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_vb2_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_vb2_start_streaming._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_vb2_start_streaming._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_vb2_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_cap_enum_mbus_codes(ptr nocapture noundef readonly %cap, ptr nocapture noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 4
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fmt_size = getelementptr inbounds %struct.rkisp1_capture_config, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fmt_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp sgt i32 %5, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.024 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.inc.for.body_crit_edge ]
  %curr_mbus.022 = phi i32 [ 0, %for.body.lr.ph ], [ %curr_mbus.1, %for.inc.for.body_crit_edge ]
  %mbus = getelementptr %struct.rkisp1_capture_fmt_cfg, ptr %3, i32 %i.023, i32 4
  %6 = ptrtoint ptr %mbus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %curr_mbus.022)
  %cmp3 = icmp eq i32 %7, %curr_mbus.022
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inc = add i32 %n.024, 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.024, i32 %9)
  %cmp6 = icmp eq i32 %n.024, %9
  br i1 %cmp6, label %if.then7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %code8 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %10 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %code8, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %curr_mbus.1 = phi i32 [ %curr_mbus.022, %for.body.for.inc_crit_edge ], [ %7, %if.end.for.inc_crit_edge ]
  %n.1 = phi i32 [ %n.024, %for.body.for.inc_crit_edge ], [ %inc, %if.end.for.inc_crit_edge ]
  %inc10 = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc10, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_capture_isr(i32 noundef %irq, ptr nocapture noundef readonly %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 5376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i32 = getelementptr i8, ptr %7, i32 5380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %4) #7, !srcloc !89
  %arrayidx = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0
  %id = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %is_stopping = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 6
  %10 = ptrtoint ptr %is_stopping to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_stopping, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %rkisp1.i = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 1
  %12 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rkisp1.i, align 8
  %buf.i = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %buf.i) #7
  %curr.i = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %curr.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %frame_sequence.i = getelementptr inbounds %struct.rkisp1_device, ptr %13, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %frame_sequence.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_sequence.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sequence.i, align 8
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %15, i32 0, i32 5
  %19 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.i.i, ptr %timestamp.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field.i, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %15, i32 noundef 5) #7
  br label %rkisp1_handle_buffer.exit

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rkisp1.i, align 8
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %arrayidx.i = getelementptr %struct.rkisp1_device, ptr %22, i32 0, i32 15, i32 9, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  br label %rkisp1_handle_buffer.exit

rkisp1_handle_buffer.exit:                        ; preds = %if.else.i, %if.then.i
  tail call fastcc void @rkisp1_set_next_buf(ptr noundef %arrayidx) #7
  tail call void @_raw_spin_unlock(ptr noundef %buf.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %ops = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 3
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 8
  %is_stopped = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %is_stopped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %is_stopped, align 4
  %call8 = tail call zeroext i1 %30(ptr noundef %arrayidx) #7
  br i1 %call8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 8
  %stop = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stop, align 4
  tail call void %34(ptr noundef %arrayidx) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %is_stopping to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %is_stopping, align 1
  %is_streaming = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 5
  %36 = ptrtoint ptr %is_streaming to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %is_streaming, align 8
  %done = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %done, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %rkisp1_handle_buffer.exit, %if.end.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1
  %id.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 2
  %37 = ptrtoint ptr %id.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.1, align 4
  %shl.1 = shl nuw i32 1, %38
  %and.1 = and i32 %shl.1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %cleanup.cleanup13_crit_edge, label %if.end4.1

cleanup.cleanup13_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end4.1:                                        ; preds = %cleanup
  %is_stopping.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 6
  %39 = ptrtoint ptr %is_stopping.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_stopping.1, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.1 = icmp eq i8 %40, 0
  br i1 %tobool5.not.1, label %if.then6.1, label %if.end7.1

if.end7.1:                                        ; preds = %if.end4.1
  %ops.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 3
  %41 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.1, align 8
  %is_stopped.1 = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %is_stopped.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %is_stopped.1, align 4
  %call8.1 = tail call zeroext i1 %44(ptr noundef %arrayidx.1) #7
  br i1 %call8.1, label %if.end11.1, label %if.then9.1

if.then9.1:                                       ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.1, align 8
  %stop.1 = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %stop.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stop.1, align 4
  tail call void %48(ptr noundef %arrayidx.1) #7
  br label %cleanup13

if.end11.1:                                       ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %is_stopping.1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %is_stopping.1, align 1
  %is_streaming.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 5
  %50 = ptrtoint ptr %is_streaming.1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %is_streaming.1, align 8
  %done.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 7
  tail call void @__wake_up(ptr noundef %done.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup13

if.then6.1:                                       ; preds = %if.end4.1
  %rkisp1.i.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 1
  %51 = ptrtoint ptr %rkisp1.i.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rkisp1.i.1, align 8
  %buf.i.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 9
  tail call void @_raw_spin_lock(ptr noundef %buf.i.1) #7
  %curr.i.1 = getelementptr %struct.rkisp1_device, ptr %1, i32 0, i32 10, i32 1, i32 9, i32 3
  %53 = ptrtoint ptr %curr.i.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %curr.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %54, null
  br i1 %tobool.not.i.1, label %if.else.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #9
  %frame_sequence.i.1 = getelementptr inbounds %struct.rkisp1_device, ptr %52, i32 0, i32 8, i32 7
  %55 = ptrtoint ptr %frame_sequence.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frame_sequence.i.1, align 4
  %sequence.i.1 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %54, i32 0, i32 4
  %57 = ptrtoint ptr %sequence.i.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %sequence.i.1, align 8
  %call.i.i.i.1 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %timestamp.i.1 = getelementptr inbounds %struct.vb2_buffer, ptr %54, i32 0, i32 5
  %58 = ptrtoint ptr %timestamp.i.1 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call.i.i.i.1, ptr %timestamp.i.1, align 8
  %field.i.1 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %54, i32 0, i32 2
  %59 = ptrtoint ptr %field.i.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %field.i.1, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %54, i32 noundef 5) #7
  br label %rkisp1_handle_buffer.exit.1

if.else.i.1:                                      ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %rkisp1.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rkisp1.i.1, align 8
  %62 = ptrtoint ptr %id.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.1, align 4
  %arrayidx.i.1 = getelementptr %struct.rkisp1_device, ptr %61, i32 0, i32 15, i32 9, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.1, align 4
  %inc.i.1 = add i32 %65, 1
  store i32 %inc.i.1, ptr %arrayidx.i.1, align 4
  br label %rkisp1_handle_buffer.exit.1

rkisp1_handle_buffer.exit.1:                      ; preds = %if.else.i.1, %if.then.i.1
  tail call fastcc void @rkisp1_set_next_buf(ptr noundef %arrayidx.1) #7
  tail call void @_raw_spin_unlock(ptr noundef %buf.i.1) #7
  br label %cleanup13

cleanup13:                                        ; preds = %rkisp1_handle_buffer.exit.1, %if.end11.1, %if.then9.1, %cleanup.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup13_crit_edge ], [ 1, %rkisp1_handle_buffer.exit.1 ], [ 1, %if.end11.1 ], [ 1, %if.then9.1 ], [ 1, %cleanup.cleanup13_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_capture_devs_unregister(ptr noundef %rkisp1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 0, i32 0, i32 2
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i) #7
  %vdev.i4 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 1, i32 0, i32 2
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_capture_devs_register(ptr noundef %rkisp1) local_unnamed_addr #2 align 64 {
entry:
  %pixm.i = alloca %struct.v4l2_pix_format_mplane, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %pixm.i, i32 12
  %pixelformat.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 2
  %height.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 1
  %bytesperline.i.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 5, i32 0, i32 1
  %v4l2_dev1.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 4
  %name31.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 4, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp344.not = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %pixm.i) #7
  %1 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 2344)
  %id1.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 2
  %2 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i.043, ptr %id1.i, align 4
  %rkisp12.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 1
  %3 = ptrtoint ptr %rkisp12.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rkisp1, ptr %rkisp12.i, align 8
  %buf.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 9
  %queue.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 9, i32 1
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 9, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %done.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %done.i, ptr noundef nonnull @.str, ptr noundef nonnull @rkisp1_capture_init.__key) #7
  tail call void @__raw_spin_lock_init(ptr noundef %buf.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @rkisp1_capture_init.__key.1, i16 noundef signext 3) #7
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %spec.select.i = select i1 %cmp.i, ptr @rkisp1_capture_ops_sp, ptr @rkisp1_capture_ops_mp
  %spec.select24.i = select i1 %cmp.i, ptr @rkisp1_capture_config_sp, ptr @rkisp1_capture_config_mp
  %8 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select.i, ptr %8, align 8
  %10 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select24.i, ptr %10, align 4
  %is_streaming.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 5
  %12 = ptrtoint ptr %is_streaming.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_streaming.i, align 8
  %13 = call ptr @memset(ptr %0, i32 0, i32 180)
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1448695129, ptr %pixelformat.i, align 4
  %15 = ptrtoint ptr %pixm.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 800, ptr %pixm.i, align 4
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 600, ptr %height.i, align 4
  %pix.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 10
  %info.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 10, i32 1
  call fastcc void @rkisp1_try_fmt(ptr noundef %arrayidx.i, ptr noundef nonnull %pixm.i, ptr noundef %pix.i.i, ptr noundef %info.i.i) #7
  %fmt.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 10, i32 2
  %17 = call ptr @memcpy(ptr %fmt.i.i, ptr %pixm.i, i32 192)
  %18 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.rkisp1_capture_init.exit_crit_edge

for.body.rkisp1_capture_init.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_capture_init.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesperline.i.i, align 4
  %22 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info.i.i, align 4
  %bpp.i.i = getelementptr inbounds %struct.v4l2_format_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %bpp.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bpp.i.i, align 1
  %conv.i.i = zext i8 %25 to i32
  %div.i.i = udiv i32 %21, %conv.i.i
  %sp_y_stride.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 %i.043, i32 8
  %26 = ptrtoint ptr %sp_y_stride.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div.i.i, ptr %sp_y_stride.i.i, align 8
  br label %rkisp1_capture_init.exit

rkisp1_capture_init.exit:                         ; preds = %if.then.i.i, %for.body.rkisp1_capture_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %pixm.i) #7
  %27 = ptrtoint ptr %rkisp12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rkisp1, ptr %rkisp12.i, align 8
  %vdev2.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 12
  %28 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id1.i, align 4
  %arrayidx.i25 = getelementptr [2 x ptr], ptr @__const.rkisp1_register_capture.dev_names, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i25, align 4
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef %31, i32 noundef 32) #7
  %vlock.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %vlock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @rkisp1_register_capture.__key) #7
  %ioctl_ops.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 24
  %32 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @rkisp1_v4l2_ioctl_ops, ptr %ioctl_ops.i, align 4
  %release.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 23
  %33 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %fops.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @rkisp1_fops, ptr %fops.i, align 4
  %minor.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 15
  %35 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %minor.i, align 8
  %v4l2_dev4.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 7
  %36 = ptrtoint ptr %v4l2_dev4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %v4l2_dev1.i, ptr %v4l2_dev4.i, align 4
  %lock.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 26
  %37 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vlock.i, ptr %lock.i, align 8
  %device_caps.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 603983872, ptr %device_caps.i, align 8
  %ops.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 0, i32 11
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rkisp1_media_ops, ptr %ops.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 5, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx.i, ptr %driver_data.i.i.i, align 4
  %vfl_dir.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 14
  %41 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %vfl_dir.i, align 4
  %pad.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %flags.i, align 4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 9, ptr %arrayidx.i, align 4
  %io_modes.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 1
  %44 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 17, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 10
  %45 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.i, ptr %drv_priv.i, align 4
  %ops6.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 7
  %46 = ptrtoint ptr %ops6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @rkisp1_vb2_ops, ptr %ops6.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 8
  %47 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 12
  %48 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 776, ptr %buf_struct_size.i, align 4
  %min_buffers_needed.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 15
  %49 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %min_buffers_needed.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 13
  %50 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %lock8.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 5
  %51 = ptrtoint ptr %lock8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %vlock.i, ptr %lock8.i, align 4
  %52 = ptrtoint ptr %rkisp12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rkisp12.i, align 8
  %dev.i = getelementptr inbounds %struct.rkisp1_device, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %dev10.i = getelementptr inbounds %struct.vb2_queue, ptr %arrayidx.i, i32 0, i32 2
  %56 = ptrtoint ptr %dev10.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %dev10.i, align 4
  %call11.i = tail call i32 @vb2_queue_init(ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end14.i

do.end14.i:                                       ; preds = %rkisp1_capture_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %rkisp12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rkisp12.i, align 8
  %dev16.i = getelementptr inbounds %struct.rkisp1_device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.6, i32 noundef %call11.i) #10
  br label %rkisp1_register_capture.exit

if.end.i:                                         ; preds = %rkisp1_capture_init.exit
  %queue.i26 = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 10
  %61 = ptrtoint ptr %queue.i26 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx.i, ptr %queue.i26, align 8
  %62 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fops.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %vdev2.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %do.end30.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %rkisp12.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rkisp12.i, align 8
  %dev24.i = getelementptr inbounds %struct.rkisp1_device, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev24.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.12, ptr noundef %name.i, i32 noundef %call.i.i) #10
  br label %rkisp1_register_capture.exit

do.end30.i:                                       ; preds = %if.end.i
  %num.i = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %arrayidx.i, i32 0, i32 2, i32 16
  %70 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num.i, align 4
  %conv.i = zext i16 %71 to i32
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name31.i, ptr noundef %name.i, i32 noundef %conv.i) #10
  %call38.i = tail call i32 @media_entity_pads_init(ptr noundef %vdev2.i, i16 noundef zeroext 1, ptr noundef %pad.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %for.inc, label %if.then40.i

if.then40.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @video_unregister_device(ptr noundef %vdev2.i) #7
  br label %rkisp1_register_capture.exit

rkisp1_register_capture.exit:                     ; preds = %if.then40.i, %do.end22.i, %do.end14.i
  %retval.0.i = phi i32 [ %call11.i, %do.end14.i ], [ %call.i.i, %do.end22.i ], [ %call38.i, %if.then40.i ]
  br i1 %cmp344.not, label %rkisp1_register_capture.exit.cleanup_crit_edge, label %for.body4.lr.ph

rkisp1_register_capture.exit.cleanup_crit_edge:   ; preds = %rkisp1_register_capture.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body4.lr.ph:                                  ; preds = %rkisp1_register_capture.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vdev.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 10, i32 0, i32 0, i32 2
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i) #7
  br label %cleanup

for.inc:                                          ; preds = %do.end30.i
  br i1 %cmp344.not, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body4.lr.ph, %rkisp1_register_capture.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rkisp1_register_capture.exit.cleanup_crit_edge ], [ %retval.0.i, %for.body4.lr.ph ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_set_next_buf(ptr noundef %cap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  %curr = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %curr, align 4
  store ptr null, ptr %next, align 4
  %queue = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %4, %queue
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %4, i32 -736
  %5 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %next, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next, align 4
  %buff_addr15 = getelementptr inbounds %struct.rkisp1_buffer, ptr %15, i32 0, i32 2
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %16 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rkisp1, align 8
  %18 = ptrtoint ptr %buff_addr15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buff_addr15, align 4
  %config = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 4
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config, align 4
  %y_base_ad_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %21, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %y_base_ad_init to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y_base_ad_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %17, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #7, !srcloc !89
  %27 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rkisp1, align 8
  %arrayidx17 = getelementptr %struct.rkisp1_buffer, ptr %15, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx17, align 4
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config, align 4
  %cb_base_ad_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %32, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %cb_base_ad_init to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cb_base_ad_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %28, align 8
  %add.ptr.i82 = getelementptr i8, ptr %37, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %35) #7, !srcloc !89
  %38 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rkisp1, align 8
  %arrayidx21 = getelementptr %struct.rkisp1_buffer, ptr %15, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx21, align 4
  %42 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config, align 4
  %cr_base_ad_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %43, i32 0, i32 2, i32 5
  %44 = ptrtoint ptr %cr_base_ad_init to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cr_base_ad_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %39, align 8
  %add.ptr.i83 = getelementptr i8, ptr %48, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %46) #7, !srcloc !89
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rkisp124 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %49 = ptrtoint ptr %rkisp124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rkisp124, align 8
  %dma_addr = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9, i32 2, i32 1
  %51 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_addr, align 4
  %config26 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 4
  %53 = ptrtoint ptr %config26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config26, align 4
  %y_base_ad_init28 = getelementptr inbounds %struct.rkisp1_capture_config, ptr %54, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %y_base_ad_init28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %y_base_ad_init28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %50, align 8
  %add.ptr.i84 = getelementptr i8, ptr %59, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %57) #7, !srcloc !89
  %60 = ptrtoint ptr %rkisp124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rkisp124, align 8
  %62 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_addr, align 4
  %64 = ptrtoint ptr %config26 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config26, align 4
  %cb_base_ad_init35 = getelementptr inbounds %struct.rkisp1_capture_config, ptr %65, i32 0, i32 2, i32 4
  %66 = ptrtoint ptr %cb_base_ad_init35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cb_base_ad_init35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  %69 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %61, align 8
  %add.ptr.i85 = getelementptr i8, ptr %70, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %68) #7, !srcloc !89
  %71 = ptrtoint ptr %rkisp124 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rkisp124, align 8
  %73 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_addr, align 4
  %75 = ptrtoint ptr %config26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config26, align 4
  %cr_base_ad_init42 = getelementptr inbounds %struct.rkisp1_capture_config, ptr %76, i32 0, i32 2, i32 5
  %77 = ptrtoint ptr %cr_base_ad_init42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cr_base_ad_init42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %79 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  %80 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %72, align 8
  %add.ptr.i86 = getelementptr i8, ptr %81, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %79) #7, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %if.else, %list_del.exit
  %rkisp143 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %82 = ptrtoint ptr %rkisp143 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rkisp143, align 8
  %config44 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 4
  %84 = ptrtoint ptr %config44 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config44, align 4
  %y_offs_cnt_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %85, i32 0, i32 2, i32 6
  %86 = ptrtoint ptr %y_offs_cnt_init to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %y_offs_cnt_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %83, align 8
  %add.ptr.i87 = getelementptr i8, ptr %89, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 0) #7, !srcloc !89
  %90 = ptrtoint ptr %rkisp143 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rkisp143, align 8
  %92 = ptrtoint ptr %config44 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config44, align 4
  %cb_offs_cnt_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %93, i32 0, i32 2, i32 7
  %94 = ptrtoint ptr %cb_offs_cnt_init to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cb_offs_cnt_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %91, align 8
  %add.ptr.i88 = getelementptr i8, ptr %97, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #7, !srcloc !89
  %98 = ptrtoint ptr %rkisp143 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rkisp143, align 8
  %100 = ptrtoint ptr %config44 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config44, align 4
  %cr_offs_cnt_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %101, i32 0, i32 2, i32 8
  %102 = ptrtoint ptr %cr_offs_cnt_init to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cr_offs_cnt_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %99, align 8
  %add.ptr.i89 = getelementptr i8, ptr %105, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 0) #7, !srcloc !89
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_sp_config(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pix = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10
  %fmt = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2
  %rkisp11 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %num_planes.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 6
  %2 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bytesperline.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %bytesperline.i, align 1
  %height.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height.i, align 1
  %mul.i = mul i32 %7, %5
  br label %rkisp1_pixfmt_comp_size.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx3.i, align 1
  br label %rkisp1_pixfmt_comp_size.exit

rkisp1_pixfmt_comp_size.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.end.i ], [ %mul.i, %if.then.i ]
  %config = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 4
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %mi = getelementptr inbounds %struct.rkisp1_capture_config, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !89
  %arrayidx3.i52 = getelementptr %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx3.i52 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx3.i52, align 1
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config, align 4
  %cb_size_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %20, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %cb_size_init to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cb_size_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr.i55 = getelementptr i8, ptr %25, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %23) #7, !srcloc !89
  %arrayidx3.i56 = getelementptr %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx3.i56 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx3.i56, align 1
  %28 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config, align 4
  %cr_size_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %29, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %cr_size_init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cr_size_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr.i59 = getelementptr i8, ptr %34, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %32) #7, !srcloc !89
  %35 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %fmt, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr.i60 = getelementptr i8, ptr %39, i32 5396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %37) #7, !srcloc !89
  %height = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 1
  %40 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %height, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %add.ptr.i61 = getelementptr i8, ptr %44, i32 5400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %42) #7, !srcloc !89
  %sp_y_stride = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 8
  %45 = ptrtoint ptr %sp_y_stride to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sp_y_stride, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %add.ptr.i62 = getelementptr i8, ptr %49, i32 5196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %47) #7, !srcloc !89
  %50 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rkisp11, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 5368
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !86
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %id.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 2
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %57
  %or.i = or i32 %shl.i, %55
  %58 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rkisp11, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %59, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %62, i32 5368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %60) #7, !srcloc !89
  %info = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 1
  %63 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info, align 4
  %comp_planes = getelementptr inbounds %struct.v4l2_format_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %comp_planes to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %comp_planes, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp = icmp eq i8 %66, 2
  br i1 %cmp, label %if.then, label %rkisp1_pixfmt_comp_size.exit.if.end13_crit_edge

rkisp1_pixfmt_comp_size.exit.if.end13_crit_edge:  ; preds = %rkisp1_pixfmt_comp_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %rkisp1_pixfmt_comp_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %add.ptr.i63 = getelementptr i8, ptr %68, i32 5448
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %70 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pix, align 4
  %uv_swap = getelementptr inbounds %struct.rkisp1_capture_fmt_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %uv_swap to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %uv_swap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not = icmp eq i8 %73, 0
  %74 = and i32 %69, -33554433
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %masksel = select i1 %tobool.not, i32 0, i32 2
  %reg.0 = or i32 %masksel, %75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #7
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %add.ptr.i64 = getelementptr i8, ptr %78, i32 5448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %76) #7, !srcloc !89
  br label %if.end13

if.end13:                                         ; preds = %if.then, %rkisp1_pixfmt_comp_size.exit.if.end13_crit_edge
  %79 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rkisp11, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %add.ptr.i.i66 = getelementptr i8, ptr %82, i32 5120
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %84 = and i32 %83, -16129
  %85 = or i32 %84, 14848
  %86 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rkisp11, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %89, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %85) #7, !srcloc !89
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 8
  %add.ptr.i67 = getelementptr i8, ptr %91, i32 5120
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %93 = and i32 %92, -4194432
  %94 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pix, align 4
  %write_format = getelementptr inbounds %struct.rkisp1_capture_fmt_cfg, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %write_format to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %write_format, align 4
  %output_format = getelementptr inbounds %struct.rkisp1_capture_fmt_cfg, ptr %95, i32 0, i32 3
  %98 = ptrtoint ptr %output_format to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %output_format, align 4
  %100 = or i32 %93, 4194312
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %or22 = or i32 %101, %97
  %or23 = or i32 %or22, %99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %102 = tail call i32 @llvm.bswap.i32(i32 %or23) #7
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %add.ptr.i68 = getelementptr i8, ptr %104, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %102) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_mp_sp_stop(ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_streaming = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 5
  %0 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_streaming, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %2 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rkisp1, align 8
  %id = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 5380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !89
  %ops = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 8
  %disable = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disable, align 4
  tail call void %12(ptr noundef %cap) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_sp_enable(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 5120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = or i32 %4, 33554432
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_sp_disable(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 5120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = and i32 %4, -33554433
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_sp_set_data_path(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = or i32 %4, 134217728
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rkisp1_sp_is_stopped(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 5236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_mp_config(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pix = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10
  %rkisp11 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %num_planes.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 6
  %2 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bytesperline.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %bytesperline.i, align 1
  %height.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height.i, align 1
  %mul.i = mul i32 %7, %5
  br label %rkisp1_pixfmt_comp_size.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx3.i, align 1
  br label %rkisp1_pixfmt_comp_size.exit

rkisp1_pixfmt_comp_size.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.end.i ], [ %mul.i, %if.then.i ]
  %config = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 4
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %mi = getelementptr inbounds %struct.rkisp1_capture_config, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !89
  %arrayidx3.i47 = getelementptr %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx3.i47 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx3.i47, align 1
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config, align 4
  %cb_size_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %20, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %cb_size_init to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cb_size_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr.i50 = getelementptr i8, ptr %25, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %23) #7, !srcloc !89
  %arrayidx3.i51 = getelementptr %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 2, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx3.i51 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx3.i51, align 1
  %28 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config, align 4
  %cr_size_init = getelementptr inbounds %struct.rkisp1_capture_config, ptr %29, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %cr_size_init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cr_size_init, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr.i54 = getelementptr i8, ptr %34, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %32) #7, !srcloc !89
  %35 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rkisp11, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 5368
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !86
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %id.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 2
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %42
  %or.i = or i32 %shl.i, %40
  %43 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rkisp11, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %44, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %47, i32 5368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %45) #7, !srcloc !89
  %info = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 4
  %comp_planes = getelementptr inbounds %struct.v4l2_format_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %comp_planes to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %comp_planes, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp = icmp eq i8 %51, 2
  br i1 %cmp, label %if.then, label %rkisp1_pixfmt_comp_size.exit.if.end13_crit_edge

rkisp1_pixfmt_comp_size.exit.if.end13_crit_edge:  ; preds = %rkisp1_pixfmt_comp_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %rkisp1_pixfmt_comp_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %add.ptr.i55 = getelementptr i8, ptr %53, i32 5448
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %55 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pix, align 4
  %uv_swap = getelementptr inbounds %struct.rkisp1_capture_fmt_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %uv_swap to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %uv_swap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not = icmp ne i8 %58, 0
  %59 = and i32 %54, -16777217
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %masksel = zext i1 %tobool.not to i32
  %reg.0 = or i32 %60, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #7
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %add.ptr.i56 = getelementptr i8, ptr %63, i32 5448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %61) #7, !srcloc !89
  br label %if.end13

if.end13:                                         ; preds = %if.then, %rkisp1_pixfmt_comp_size.exit.if.end13_crit_edge
  %64 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rkisp11, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %add.ptr.i.i58 = getelementptr i8, ptr %67, i32 5120
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %69 = and i32 %68, -16129
  %70 = or i32 %69, 14848
  %71 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rkisp11, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %74, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %70) #7, !srcloc !89
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %add.ptr.i59 = getelementptr i8, ptr %76, i32 5120
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %78 = and i32 %77, -49153
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %80 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pix, align 4
  %write_format = getelementptr inbounds %struct.rkisp1_capture_fmt_cfg, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %write_format to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %write_format, align 4
  %or18 = or i32 %83, %79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %84 = tail call i32 @llvm.bswap.i32(i32 %or18) #7
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %add.ptr.i60 = getelementptr i8, ptr %86, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %84) #7, !srcloc !89
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %add.ptr.i61 = getelementptr i8, ptr %88, i32 5120
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %90 = or i32 %89, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  %add.ptr.i62 = getelementptr i8, ptr %92, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %90) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_mp_enable(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 5120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = and i32 %4, -150994945
  %6 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %5) #7, !srcloc !89
  %10 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 5120
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %info = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %v4l2_is_format_bayer.exit.thread, label %v4l2_is_format_bayer.exit

v4l2_is_format_bayer.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or211 = or i32 %15, 1
  br label %20

v4l2_is_format_bayer.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pixel_enc.i = getelementptr inbounds %struct.v4l2_format_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pixel_enc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i = icmp eq i8 %19, 3
  %spec.select.v = select i1 %cmp.i, i32 8, i32 1
  %spec.select = or i32 %spec.select.v, %15
  br label %20

20:                                               ; preds = %v4l2_is_format_bayer.exit, %v4l2_is_format_bayer.exit.thread
  %21 = phi i32 [ %or211, %v4l2_is_format_bayer.exit.thread ], [ %spec.select, %v4l2_is_format_bayer.exit ]
  %22 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rkisp1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %23, align 8
  %add.ptr.i9 = getelementptr i8, ptr %26, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %24) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_mp_disable(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 5120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = and i32 %4, -150994945
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_mp_set_data_path(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = or i32 %4, 83886080
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %5) #7, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rkisp1_mp_is_stopped(ptr nocapture noundef readonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 5236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = and i32 %4, 16779264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_try_fmt(ptr nocapture noundef readonly %cap, ptr nocapture noundef %pixm, ptr noundef writeonly %fmt_cfg, ptr noundef writeonly %fmt_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %pixelformat, align 1
  %fmt_size.i = getelementptr inbounds %struct.rkisp1_capture_config, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fmt_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.if.then_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rkisp1_capture_fmt_cfg, ptr %7, i32 %i.012.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i = icmp eq i32 %9, %3
  br i1 %cmp2.i, label %rkisp1_find_fmt_cfg.exit, label %for.cond.i

rkisp1_find_fmt_cfg.exit:                         ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rkisp1_find_fmt_cfg.exit.if.then_crit_edge, label %rkisp1_find_fmt_cfg.exit.if.end_crit_edge

rkisp1_find_fmt_cfg.exit.if.end_crit_edge:        ; preds = %rkisp1_find_fmt_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rkisp1_find_fmt_cfg.exit.if.then_crit_edge:       ; preds = %rkisp1_find_fmt_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %rkisp1_find_fmt_cfg.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %pixelformat, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %rkisp1_find_fmt_cfg.exit.if.end_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.i, %rkisp1_find_fmt_cfg.exit.if.end_crit_edge ], [ %11, %if.then ]
  %15 = ptrtoint ptr %pixm to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %pixm, align 1
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 32)
  %id = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 2
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [2 x i32], ptr @__const.rkisp1_try_fmt.max_widths, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %17, i32 %21)
  %23 = ptrtoint ptr %pixm to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %pixm, align 1
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %height, align 1
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 16)
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %arrayidx17 = getelementptr [2 x i32], ptr @__const.rkisp1_try_fmt.max_heights, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx17, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %26, i32 %30)
  %32 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 3
  %33 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 1, ptr %field, align 1
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 4
  %34 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %colorspace, align 1
  %35 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %35, align 1
  %quantization = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 9
  %37 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %quantization, align 1
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %plane_fmt.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5
  %40 = call ptr @memset(ptr %plane_fmt.i, i32 0, i32 160)
  %41 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %pixelformat, align 1
  %call.i = tail call ptr @v4l2_format_info(i32 noundef %42) #7
  %mem_planes.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %mem_planes.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mem_planes.i, align 1
  %num_planes.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 6
  %45 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %num_planes.i, align 1
  %bpp.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bpp.i, align 1
  %conv.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %pixm to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %pixm, align 1
  %mul.i = mul i32 %49, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %bytesperline.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %bytesperline.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %mul.i)
  %cmp4.i = icmp ult i32 %51, %mul.i
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %bytesperline6.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5, i32 0, i32 1
  %52 = ptrtoint ptr %bytesperline6.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %mul.i, ptr %bytesperline6.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %bytesperline7.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5, i32 0, i32 1
  %53 = ptrtoint ptr %bytesperline7.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %bytesperline7.i, align 1
  %55 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %height, align 1
  %mul8.i = mul i32 %56, %54
  %57 = ptrtoint ptr %plane_fmt.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %mul8.i, ptr %plane_fmt.i, align 1
  %comp_planes.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call.i, i32 0, i32 3
  %58 = ptrtoint ptr %comp_planes.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %comp_planes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp1798.i = icmp ugt i8 %59, 1
  br i1 %cmp1798.i, label %for.body.lr.ph.i62, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i62:                               ; preds = %if.end.i
  %add.i = add i32 %54, -1
  %60 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bpp.i, align 1
  %conv12.i = zext i8 %61 to i32
  %sub.i = add i32 %add.i, %conv12.i
  %div.i = udiv i32 %sub.i, %conv12.i
  %hdiv.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call.i, i32 0, i32 5
  %add22.i = add i32 %div.i, -1
  %vdiv.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call.i, i32 0, i32 6
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.body.i64.for.body.i64_crit_edge, %for.body.lr.ph.i62
  %i.099.i = phi i32 [ 1, %for.body.lr.ph.i62 ], [ %inc.i63, %for.body.i64.for.body.i64_crit_edge ]
  %arrayidx20.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5, i32 %i.099.i
  %62 = ptrtoint ptr %hdiv.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %hdiv.i, align 1
  %conv21.i = zext i8 %63 to i32
  %sub23.i = add i32 %add22.i, %conv21.i
  %div26.i = udiv i32 %sub23.i, %conv21.i
  %arrayidx28.i = getelementptr %struct.v4l2_format_info, ptr %call.i, i32 0, i32 4, i32 %i.099.i
  %64 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %65 to i32
  %mul30.i = mul i32 %div26.i, %conv29.i
  %bytesperline31.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5, i32 %i.099.i, i32 1
  %66 = ptrtoint ptr %bytesperline31.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %mul30.i, ptr %bytesperline31.i, align 1
  %67 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %height, align 1
  %69 = ptrtoint ptr %vdiv.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vdiv.i, align 4
  %conv34.i = zext i8 %70 to i32
  %add35.i = add i32 %68, -1
  %sub36.i = add i32 %add35.i, %conv34.i
  %div39.i = udiv i32 %sub36.i, %conv34.i
  %mul40.i = mul i32 %div39.i, %mul30.i
  %71 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %mul40.i, ptr %arrayidx20.i, align 1
  %inc.i63 = add nuw nsw i32 %i.099.i, 1
  %72 = ptrtoint ptr %comp_planes.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %comp_planes.i, align 2
  %conv16.i = zext i8 %73 to i32
  %cmp17.i = icmp ult i32 %inc.i63, %conv16.i
  br i1 %cmp17.i, label %for.body.i64.for.body.i64_crit_edge, label %for.body.i64.for.end.i_crit_edge

for.body.i64.for.end.i_crit_edge:                 ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i64.for.body.i64_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i64

for.end.i:                                        ; preds = %for.body.i64.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %74 = ptrtoint ptr %mem_planes.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mem_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp44.i = icmp eq i8 %75, 1
  br i1 %cmp44.i, label %for.cond47.preheader.i, label %for.end.i.rkisp1_fill_pixfmt.exit_crit_edge

for.end.i.rkisp1_fill_pixfmt.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_fill_pixfmt.exit

for.cond47.preheader.i:                           ; preds = %for.end.i
  %76 = ptrtoint ptr %comp_planes.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %comp_planes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp50101.i = icmp ugt i8 %77, 1
  br i1 %cmp50101.i, label %for.cond47.preheader.i.for.body52.i_crit_edge, label %for.cond47.preheader.i.rkisp1_fill_pixfmt.exit_crit_edge

for.cond47.preheader.i.rkisp1_fill_pixfmt.exit_crit_edge: ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_fill_pixfmt.exit

for.cond47.preheader.i.for.body52.i_crit_edge:    ; preds = %for.cond47.preheader.i
  br label %for.body52.i

for.body52.i:                                     ; preds = %for.body52.i.for.body52.i_crit_edge, %for.cond47.preheader.i.for.body52.i_crit_edge
  %i.1102.i = phi i32 [ %inc59.i, %for.body52.i.for.body52.i_crit_edge ], [ 1, %for.cond47.preheader.i.for.body52.i_crit_edge ]
  %arrayidx54.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5, i32 %i.1102.i
  %78 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %arrayidx54.i, align 1
  %80 = ptrtoint ptr %plane_fmt.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %plane_fmt.i, align 1
  %add57.i = add i32 %81, %79
  store i32 %add57.i, ptr %plane_fmt.i, align 1
  %inc59.i = add nuw nsw i32 %i.1102.i, 1
  %82 = ptrtoint ptr %comp_planes.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %comp_planes.i, align 2
  %conv49.i = zext i8 %83 to i32
  %cmp50.i = icmp ult i32 %inc59.i, %conv49.i
  br i1 %cmp50.i, label %for.body52.i.for.body52.i_crit_edge, label %for.body52.i.rkisp1_fill_pixfmt.exit_crit_edge

for.body52.i.rkisp1_fill_pixfmt.exit_crit_edge:   ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_fill_pixfmt.exit

for.body52.i.for.body52.i_crit_edge:              ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52.i

rkisp1_fill_pixfmt.exit:                          ; preds = %for.body52.i.rkisp1_fill_pixfmt.exit_crit_edge, %for.cond47.preheader.i.rkisp1_fill_pixfmt.exit_crit_edge, %for.end.i.rkisp1_fill_pixfmt.exit_crit_edge
  %tobool27.not = icmp eq ptr %fmt_cfg, null
  br i1 %tobool27.not, label %rkisp1_fill_pixfmt.exit.if.end29_crit_edge, label %if.then28

rkisp1_fill_pixfmt.exit.if.end29_crit_edge:       ; preds = %rkisp1_fill_pixfmt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %rkisp1_fill_pixfmt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %fmt_cfg to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %fmt.0, ptr %fmt_cfg, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %rkisp1_fill_pixfmt.exit.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %fmt_info, null
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %fmt_info to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %fmt_info, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %rkisp11 = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rkisp11, align 8
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %driver2 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver2, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call3 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %9, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %driver6 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %driver6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver6, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call8 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %15, i32 noundef 32) #7
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call10 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.17, i32 noundef 32) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_enum_fmt_vid_cap_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mbus_code = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 5
  %2 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %config5 = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %config5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config5, align 4
  %fmt_size6 = getelementptr inbounds %struct.rkisp1_capture_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fmt_size6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt_size6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp741.not = icmp eq i32 %7, 0
  br i1 %cmp741.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %config = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config, align 4
  %fmt_size = getelementptr inbounds %struct.rkisp1_capture_config, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %fmt_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp.not = icmp ult i32 %11, %15
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %arrayidx = getelementptr %struct.rkisp1_capture_fmt_cfg, ptr %17, i32 %11
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.044 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.inc.for.body_crit_edge ]
  %mbus = getelementptr %struct.rkisp1_capture_fmt_cfg, ptr %9, i32 %i.042, i32 4
  %18 = ptrtoint ptr %mbus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp12.not = icmp eq i32 %19, %3
  br i1 %cmp12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %inc = add i32 %n.044, 1
  %20 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.044, i32 %21)
  %cmp16 = icmp eq i32 %n.044, %21
  br i1 %cmp16, label %if.then17, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.le = getelementptr %struct.rkisp1_capture_fmt_cfg, ptr %9, i32 %i.042
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %n.044, %for.body.for.inc_crit_edge ], [ %inc, %if.end14.for.inc_crit_edge ]
  %inc24 = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc24, %7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then17, %if.end
  %arrayidx10.le.sink = phi ptr [ %arrayidx10.le, %if.then17 ], [ %arrayidx, %if.end ]
  %22 = ptrtoint ptr %arrayidx10.le.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10.le.sink, align 4
  %pixelformat22 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %24 = ptrtoint ptr %pixelformat22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pixelformat22, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_g_fmt_vid_cap_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %fmt1 = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2
  %2 = call ptr @memcpy(ptr %fmt, ptr %fmt1, i32 192)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_s_fmt_vid_cap_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pix.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10
  %info.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 1
  tail call fastcc void @rkisp1_try_fmt(ptr noundef %1, ptr noundef %fmt, ptr noundef %pix.i, ptr noundef %info.i) #7
  %fmt.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2
  %4 = call ptr @memcpy(ptr %fmt.i, ptr %fmt, i32 192)
  %id.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i5 = icmp eq i32 %6, 1
  br i1 %cmp.i5, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %bytesperline.i, align 1
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info.i, align 4
  %bpp.i = getelementptr inbounds %struct.v4l2_format_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bpp.i, align 1
  %conv.i = zext i8 %12 to i32
  %div.i = udiv i32 %8, %conv.i
  %sp_y_stride.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %sp_y_stride.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i, ptr %sp_y_stride.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_try_fmt_vid_cap_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  tail call fastcc void @rkisp1_try_fmt(ptr noundef %1, ptr noundef %fmt, ptr noundef null, ptr noundef null)
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
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

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
define internal i32 @rkisp1_capture_link_validate(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %entity = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entity, align 4
  %5 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %entity1 = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity1, align 4
  %tobool.not = icmp eq ptr %9, null
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %fmt6 = getelementptr inbounds %struct.rkisp1_capture, ptr %11, i32 0, i32 10, i32 2
  %pixelformat = getelementptr inbounds %struct.rkisp1_capture, ptr %11, i32 0, i32 10, i32 2, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  %config.i = getelementptr inbounds %struct.rkisp1_capture, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 4
  %fmt_size.i = getelementptr inbounds %struct.rkisp1_capture_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %fmt_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp11.not.i = icmp eq i32 %17, 0
  br i1 %cmp11.not.i, label %entry.rkisp1_find_fmt_cfg.exit_crit_edge, label %for.body.lr.ph.i

entry.rkisp1_find_fmt_cfg.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_find_fmt_cfg.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond.i.rkisp1_find_fmt_cfg.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.rkisp1_find_fmt_cfg.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_find_fmt_cfg.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rkisp1_capture_fmt_cfg, ptr %19, i32 %i.012.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %13)
  %cmp2.i = icmp eq i32 %21, %13
  br i1 %cmp2.i, label %for.body.i.rkisp1_find_fmt_cfg.exit_crit_edge, label %for.cond.i

for.body.i.rkisp1_find_fmt_cfg.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_find_fmt_cfg.exit

rkisp1_find_fmt_cfg.exit:                         ; preds = %for.body.i.rkisp1_find_fmt_cfg.exit_crit_edge, %for.cond.i.rkisp1_find_fmt_cfg.exit_crit_edge, %entry.rkisp1_find_fmt_cfg.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.rkisp1_find_fmt_cfg.exit_crit_edge ], [ %arrayidx.i, %for.body.i.rkisp1_find_fmt_cfg.exit_crit_edge ], [ null, %for.cond.i.rkisp1_find_fmt_cfg.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #7
  %22 = getelementptr inbounds i8, ptr %sd_fmt, i32 8
  %23 = call ptr @memset(ptr %22, i32 255, i32 80)
  %24 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %sd_fmt, align 4
  %index = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 2
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %index, align 4
  %conv = zext i16 %26 to i32
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 1
  %27 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %pad, align 4
  br i1 %tobool.not, label %rkisp1_find_fmt_cfg.exit.cleanup_crit_edge, label %if.else

rkisp1_find_fmt_cfg.exit.cleanup_crit_edge:       ; preds = %rkisp1_find_fmt_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %rkisp1_find_fmt_cfg.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %pad9 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %pad9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pad9, align 4
  %tobool10.not = icmp eq ptr %31, null
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_fmt, align 4
  %tobool13.not = icmp eq ptr %33, null
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %if.else15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else15:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool16.not = icmp eq ptr %34, null
  br i1 %tobool16.not, label %if.else15.if.else23_crit_edge, label %land.lhs.true17

if.else15.if.else23_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else23

land.lhs.true17:                                  ; preds = %if.else15
  %get_fmt18 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %get_fmt18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_fmt18, align 4
  %tobool19.not = icmp eq ptr %36, null
  br i1 %tobool19.not, label %land.lhs.true17.if.else23_crit_edge, label %land.lhs.true17.if.end29_crit_edge

land.lhs.true17.if.end29_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true17.if.else23_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true17.if.else23_crit_edge, %if.else15.if.else23_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %land.lhs.true17.if.end29_crit_edge
  %.sink = phi ptr [ %33, %if.else23 ], [ %36, %land.lhs.true17.if.end29_crit_edge ]
  %call27 = call i32 %.sink(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %sd_fmt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool31.not = icmp eq i32 %call27, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height, align 4
  %height36 = getelementptr inbounds %struct.rkisp1_capture, ptr %11, i32 0, i32 10, i32 2, i32 1
  %39 = ptrtoint ptr %height36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.not = icmp eq i32 %38, %40
  br i1 %cmp.not, label %lor.lhs.false, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end33
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2
  %41 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format, align 4
  %43 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fmt6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp42.not = icmp eq i32 %42, %44
  br i1 %cmp42.not, label %lor.lhs.false44, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false44:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %code, align 4
  %mbus = getelementptr inbounds %struct.rkisp1_capture_fmt_cfg, ptr %retval.0.i, i32 0, i32 4
  %47 = ptrtoint ptr %mbus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mbus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp46.not = icmp eq i32 %46, %48
  %spec.select70 = select i1 %cmp46.not, i32 0, i32 -32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false44, %lor.lhs.false.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %rkisp1_find_fmt_cfg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end29.cleanup_crit_edge ], [ -32, %lor.lhs.false.cleanup_crit_edge ], [ -32, %if.end33.cleanup_crit_edge ], [ %spec.select70, %lor.lhs.false44 ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %rkisp1_find_fmt_cfg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #7
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_vb2_queue_setup(ptr nocapture noundef readonly %queue, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %num_planes13 = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 6
  %4 = ptrtoint ptr %num_planes13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes13, align 1
  %conv14 = zext i8 %5 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv14)
  %cmp.not = icmp eq i32 %3, %conv14
  br i1 %cmp.not, label %for.cond.preheader, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp647.not = icmp eq i8 %5, 0
  br i1 %cmp647.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.048
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 5, i32 %i.048
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9 = icmp ult i32 %7, %9
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv14, ptr %num_planes, align 4
  %11 = ptrtoint ptr %num_planes13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_planes13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp1851.not = icmp eq i8 %12, 0
  br i1 %cmp1851.not, label %if.else.cleanup_crit_edge, label %if.else.for.body20_crit_edge

if.else.for.body20_crit_edge:                     ; preds = %if.else
  br label %for.body20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %if.else.for.body20_crit_edge
  %i.152 = phi i32 [ %inc26, %for.body20.for.body20_crit_edge ], [ 0, %if.else.for.body20_crit_edge ]
  %arrayidx22 = getelementptr %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 5, i32 %i.152
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr i32, ptr %sizes, i32 %i.152
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx24, align 4
  %inc26 = add nuw nsw i32 %i.152, 1
  %16 = ptrtoint ptr %num_planes13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_planes13, align 1
  %conv17 = zext i8 %17 to i32
  %cmp18 = icmp ult i32 %inc26, %conv17
  br i1 %cmp18, label %for.body20.for.body20_crit_edge, label %for.body20.cleanup_crit_edge

for.body20.cleanup_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

cleanup:                                          ; preds = %for.body20.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body20.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_vb2_buf_init(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %pix = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 10
  %buff_addr = getelementptr inbounds %struct.rkisp1_buffer, ptr %vb, i32 0, i32 2
  %4 = call ptr @memset(ptr %buff_addr, i32 0, i32 32)
  %num_planes = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 2, i32 6
  %5 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp60.not = icmp eq i8 %6, 0
  br i1 %cmp60.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef %i.061) #7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i, align 4
  %arrayidx = getelementptr %struct.rkisp1_buffer, ptr %vb, i32 0, i32 2, i32 %i.061
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.061, 1
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %phi.cmp = icmp eq i8 %11, 1
  br i1 %phi.cmp, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  %12 = ptrtoint ptr %buff_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buff_addr, align 8
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i = icmp eq i8 %15, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bytesperline.i = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 2, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %bytesperline.i, align 1
  %height.i = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 2, i32 1
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %height.i, align 1
  %mul.i = mul i32 %19, %17
  br label %rkisp1_pixfmt_comp_size.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 2, i32 5
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx3.i, align 1
  br label %rkisp1_pixfmt_comp_size.exit

rkisp1_pixfmt_comp_size.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %21, %if.end.i ], [ %mul.i, %if.then.i ]
  %add = add i32 %retval.0.i, %13
  %arrayidx14 = getelementptr %struct.rkisp1_buffer, ptr %vb, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %arrayidx14, align 4
  %arrayidx3.i56 = getelementptr %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 2, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx3.i56 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx3.i56, align 1
  %add18 = add i32 %24, %add
  %arrayidx20 = getelementptr %struct.rkisp1_buffer, ptr %vb, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add18, ptr %arrayidx20, align 8
  br label %if.end

if.end:                                           ; preds = %rkisp1_pixfmt_comp_size.exit, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %info = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %comp_planes = getelementptr inbounds %struct.v4l2_format_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %comp_planes to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %comp_planes, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp23 = icmp eq i8 %29, 3
  br i1 %cmp23, label %land.lhs.true, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %30 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pix, align 4
  %uv_swap = getelementptr inbounds %struct.rkisp1_capture_fmt_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %uv_swap to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %uv_swap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %land.lhs.true.if.end36_crit_edge, label %do.body

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx29 = getelementptr %struct.rkisp1_buffer, ptr %vb, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx29, align 8
  %arrayidx31 = getelementptr %struct.rkisp1_buffer, ptr %vb, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx31, align 4
  store i32 %37, ptr %arrayidx29, align 8
  store i32 %35, ptr %arrayidx31, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.body, %land.lhs.true.if.end36_crit_edge, %if.end.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_vb2_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %num_planes = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 2, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp39.not = icmp eq i8 %5, 0
  br i1 %cmp39.not, label %entry.cleanup7_crit_edge, label %for.body.lr.ph

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

for.body.lr.ph:                                   ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rkisp1_capture, ptr %3, i32 0, i32 10, i32 2, i32 5, i32 %i.040
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %i.040)
  %cmp.i = icmp ugt i32 %7, %i.040
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.040, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp4 = icmp ult i32 %11, %9
  br i1 %cmp4, label %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge, label %if.end42.i

vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit26

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp432.not = icmp eq i32 %9, 0
  br i1 %cmp432.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit26

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit26:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge
  %retval.0.i25 = phi i32 [ %11, %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in, align 8
  %.in = getelementptr inbounds %struct.rkisp1_device, ptr %.pn, i32 0, i32 1
  %13 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.in, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i25, i32 noundef %9) #10
  br label %cleanup7

if.end42.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.040, i32 3
  %15 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %16 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup7_crit_edge

vb2_set_plane_payload.exit.cleanup7_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup7:                                         ; preds = %vb2_set_plane_payload.exit.cleanup7_crit_edge, %vb2_plane_size.exit26, %entry.cleanup7_crit_edge
  %retval.2 = phi i32 [ -22, %vb2_plane_size.exit26 ], [ 0, %entry.cleanup7_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup7_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_vb2_start_streaming(ptr nocapture noundef readonly %queue, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %vdev = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %1, i32 0, i32 2
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rkisp1, align 8
  %stream_lock = getelementptr inbounds %struct.rkisp1_device, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rkisp1, align 8
  %pipe = getelementptr inbounds %struct.rkisp1_device, ptr %5, i32 0, i32 13
  %call = tail call i32 @media_pipeline_start(ptr noundef %vdev, ptr noundef %pipe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %call) #10
  br label %err_ret_buffers

if.end:                                           ; preds = %entry
  %num_planes.i.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 6
  %10 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_planes.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i.i = icmp eq i8 %11, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bytesperline.i.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %bytesperline.i.i, align 1
  %height.i.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 1
  %14 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %height.i.i, align 1
  %mul.i.i = mul i32 %15, %13
  br label %rkisp1_dummy_buf_create.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i.i = getelementptr %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 5
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx3.i.i, align 1
  br label %rkisp1_dummy_buf_create.exit

rkisp1_dummy_buf_create.exit:                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %17, %if.end.i.i ], [ %mul.i.i, %if.then.i.i ]
  %dummy.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 9, i32 2
  %arrayidx3.i25.i = getelementptr %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx3.i25.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx3.i25.i, align 1
  %20 = tail call i32 @llvm.umax.i32(i32 %retval.0.i.i, i32 %19) #7
  %arrayidx3.i28.i = getelementptr %struct.rkisp1_capture, ptr %1, i32 0, i32 10, i32 2, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx3.i28.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx3.i28.i, align 1
  %23 = tail call i32 @llvm.umax.i32(i32 %20, i32 %22) #7
  %size.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 9, i32 2, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %size.i, align 4
  %25 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rkisp1, align 8
  %dev.i = getelementptr inbounds %struct.rkisp1_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 9, i32 2, i32 1
  %call10.i = tail call ptr @dma_alloc_attrs(ptr noundef %28, i32 noundef %23, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef 16) #7
  %29 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call10.i, ptr %dummy.i, align 4
  %tobool.not.i.not = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i.not, label %rkisp1_dummy_buf_create.exit.err_pipeline_stop_crit_edge, label %if.end7

rkisp1_dummy_buf_create.exit.err_pipeline_stop_crit_edge: ; preds = %rkisp1_dummy_buf_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pipeline_stop

if.end7:                                          ; preds = %rkisp1_dummy_buf_create.exit
  %30 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rkisp1, align 8
  %dev9 = getelementptr inbounds %struct.rkisp1_device, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev9, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %33, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end17

if.then.i:                                        ; preds = %if.end7
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end14_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %do.end14

do.end14:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end14_crit_edge
  %35 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rkisp1, align 8
  %dev16 = getelementptr inbounds %struct.rkisp1_device, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.24, i32 noundef %call.i) #10
  br label %err_destroy_dummy

if.end17:                                         ; preds = %if.end7
  %call18 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %vdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %39 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rkisp1, align 8
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.rkisp1_device, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.27, i32 noundef %call18) #10
  br label %err_pipe_pm_put

if.end26:                                         ; preds = %if.end17
  %id.i.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id.i.i, align 4
  %xor.i.i = xor i32 %44, 1
  %ops.i.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 8
  %set_data_path.i.i = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %set_data_path.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_data_path.i.i, align 4
  tail call void %48(ptr noundef %1) #7
  %49 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  tail call void %52(ptr noundef %1) #7
  %buf.i.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %buf.i.i) #7
  tail call fastcc void @rkisp1_set_next_buf(ptr noundef %1) #7
  %53 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i, align 8
  %enable.i.i = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %enable.i.i, align 4
  tail call void %56(ptr noundef %1) #7
  %is_streaming.i.i = getelementptr %struct.rkisp1_device, ptr %40, i32 0, i32 10, i32 %xor.i.i, i32 5
  %57 = ptrtoint ptr %is_streaming.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_streaming.i.i, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i, label %if.then.i.i65, label %if.end26.rkisp1_cap_stream_enable.exit.i_crit_edge

if.end26.rkisp1_cap_stream_enable.exit.i_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_cap_stream_enable.exit.i

if.then.i.i65:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %40, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 5124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 268435456) #7, !srcloc !89
  tail call fastcc void @rkisp1_set_next_buf(ptr noundef %1) #7
  br label %rkisp1_cap_stream_enable.exit.i

rkisp1_cap_stream_enable.exit.i:                  ; preds = %if.then.i.i65, %if.end26.rkisp1_cap_stream_enable.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %buf.i.i) #7
  %is_streaming6.i.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %is_streaming6.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %is_streaming6.i.i, align 8
  %62 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i.i, align 4
  %arrayidx.i = getelementptr %struct.rkisp1_device, ptr %40, i32 0, i32 9, i32 %63
  %tobool.not.i66 = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i66, label %rkisp1_cap_stream_enable.exit.i.err_v4l2_pm_put_crit_edge, label %if.else.i

rkisp1_cap_stream_enable.exit.i.err_v4l2_pm_put_crit_edge: ; preds = %rkisp1_cap_stream_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_pm_put

if.else.i:                                        ; preds = %rkisp1_cap_stream_enable.exit.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %arrayidx.i, i32 0, i32 6
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %video.i, align 4
  %tobool2.not.i = icmp eq ptr %67, null
  br i1 %tobool2.not.i, label %if.else.i.err_v4l2_pm_put_crit_edge, label %land.lhs.true.i

if.else.i.err_v4l2_pm_put_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_pm_put

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_stream.i, align 4
  %tobool5.not.i = icmp eq ptr %69, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.err_v4l2_pm_put_crit_edge, label %if.else7.i

land.lhs.true.i.err_v4l2_pm_put_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_pm_put

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not.i = icmp eq ptr %70, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %s_stream10.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %s_stream10.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_stream10.i, align 4
  %tobool11.not.i = icmp eq ptr %72, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end20.i_crit_edge

land.lhs.true9.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true9.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %69, %if.else14.i ], [ %72, %land.lhs.true9.i.if.end20.i_crit_edge ]
  %call18.i = tail call i32 %.sink.i(ptr noundef nonnull %arrayidx.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool21.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end20.i.err_v4l2_pm_put_crit_edge

if.end20.i.err_v4l2_pm_put_crit_edge:             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_pm_put

if.end23.i:                                       ; preds = %if.end20.i
  %pipe.i = getelementptr inbounds %struct.rkisp1_device, ptr %40, i32 0, i32 13
  %73 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pipe.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i67 = icmp sgt i32 %74, 1
  br i1 %cmp.i67, label %if.end23.i.cleanup_crit_edge, label %if.end25.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.i:                                       ; preds = %if.end23.i
  %isp.i = getelementptr inbounds %struct.rkisp1_device, ptr %40, i32 0, i32 8
  %ops32.i = getelementptr inbounds %struct.rkisp1_device, ptr %40, i32 0, i32 8, i32 0, i32 6
  %75 = ptrtoint ptr %ops32.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops32.i, align 4
  %video33.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %video33.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %video33.i, align 4
  %tobool34.not.i = icmp eq ptr %78, null
  br i1 %tobool34.not.i, label %if.end25.i.err_disable_rsz.i_crit_edge, label %land.lhs.true35.i

if.end25.i.err_disable_rsz.i_crit_edge:           ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_rsz.i

land.lhs.true35.i:                                ; preds = %if.end25.i
  %s_stream38.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %78, i32 0, i32 10
  %79 = ptrtoint ptr %s_stream38.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_stream38.i, align 4
  %tobool39.not.i = icmp eq ptr %80, null
  br i1 %tobool39.not.i, label %land.lhs.true35.i.err_disable_rsz.i_crit_edge, label %if.else41.i

land.lhs.true35.i.err_disable_rsz.i_crit_edge:    ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_rsz.i

if.else41.i:                                      ; preds = %land.lhs.true35.i
  br i1 %tobool8.not.i, label %if.else41.i.if.else49.i_crit_edge, label %land.lhs.true43.i

if.else41.i.if.else49.i_crit_edge:                ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else49.i

land.lhs.true43.i:                                ; preds = %if.else41.i
  %s_stream44.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %70, i32 0, i32 10
  %81 = ptrtoint ptr %s_stream44.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_stream44.i, align 4
  %tobool45.not.i = icmp eq ptr %82, null
  br i1 %tobool45.not.i, label %land.lhs.true43.i.if.else49.i_crit_edge, label %land.lhs.true43.i.if.end56.i_crit_edge

land.lhs.true43.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

land.lhs.true43.i.if.else49.i_crit_edge:          ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else49.i

if.else49.i:                                      ; preds = %land.lhs.true43.i.if.else49.i_crit_edge, %if.else41.i.if.else49.i_crit_edge
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else49.i, %land.lhs.true43.i.if.end56.i_crit_edge
  %.sink224.i = phi ptr [ %80, %if.else49.i ], [ %82, %land.lhs.true43.i.if.end56.i_crit_edge ]
  %call53.i = tail call i32 %.sink224.i(ptr noundef nonnull %isp.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool58.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end56.i.err_disable_rsz.i_crit_edge

if.end56.i.err_disable_rsz.i_crit_edge:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_rsz.i

if.end60.i:                                       ; preds = %if.end56.i
  %active_sensor.i = getelementptr inbounds %struct.rkisp1_device, ptr %40, i32 0, i32 7
  %83 = ptrtoint ptr %active_sensor.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %active_sensor.i, align 8
  %sd62.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %sd62.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sd62.i, align 4
  %tobool64.not.i = icmp eq ptr %86, null
  br i1 %tobool64.not.i, label %if.end60.i.if.else102.i_crit_edge, label %if.else66.i

if.end60.i.if.else102.i_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else102.i

if.else66.i:                                      ; preds = %if.end60.i
  %ops67.i = getelementptr inbounds %struct.v4l2_subdev, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %ops67.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops67.i, align 4
  %video68.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %video68.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %video68.i, align 4
  %tobool69.not.i = icmp eq ptr %90, null
  br i1 %tobool69.not.i, label %if.else66.i.if.else102.i_crit_edge, label %land.lhs.true70.i

if.else66.i.if.else102.i_crit_edge:               ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else102.i

land.lhs.true70.i:                                ; preds = %if.else66.i
  %s_stream73.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %s_stream73.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_stream73.i, align 4
  %tobool74.not.i = icmp eq ptr %92, null
  br i1 %tobool74.not.i, label %land.lhs.true70.i.if.else102.i_crit_edge, label %if.else76.i

land.lhs.true70.i.if.else102.i_crit_edge:         ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else102.i

if.else76.i:                                      ; preds = %land.lhs.true70.i
  br i1 %tobool8.not.i, label %if.else76.i.if.else84.i_crit_edge, label %land.lhs.true78.i

if.else76.i.if.else84.i_crit_edge:                ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else84.i

land.lhs.true78.i:                                ; preds = %if.else76.i
  %s_stream79.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %70, i32 0, i32 10
  %93 = ptrtoint ptr %s_stream79.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_stream79.i, align 4
  %tobool80.not.i = icmp eq ptr %94, null
  br i1 %tobool80.not.i, label %land.lhs.true78.i.if.else84.i_crit_edge, label %land.lhs.true78.i.if.end91.i_crit_edge

land.lhs.true78.i.if.end91.i_crit_edge:           ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

land.lhs.true78.i.if.else84.i_crit_edge:          ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else84.i

if.else84.i:                                      ; preds = %land.lhs.true78.i.if.else84.i_crit_edge, %if.else76.i.if.else84.i_crit_edge
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else84.i, %land.lhs.true78.i.if.end91.i_crit_edge
  %.sink225.i = phi ptr [ %92, %if.else84.i ], [ %94, %land.lhs.true78.i.if.end91.i_crit_edge ]
  %call88.i = tail call i32 %.sink225.i(ptr noundef nonnull %86, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool93.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool93.not.i, label %if.end91.i.cleanup_crit_edge, label %if.end91.i.if.else102.i_crit_edge

if.end91.i.if.else102.i_crit_edge:                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else102.i

if.end91.i.cleanup_crit_edge:                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else102.i:                                     ; preds = %if.end91.i.if.else102.i_crit_edge, %land.lhs.true70.i.if.else102.i_crit_edge, %if.else66.i.if.else102.i_crit_edge, %if.end60.i.if.else102.i_crit_edge
  %__result63.0223.i = phi i32 [ %call88.i, %if.end91.i.if.else102.i_crit_edge ], [ -515, %if.else66.i.if.else102.i_crit_edge ], [ -515, %land.lhs.true70.i.if.else102.i_crit_edge ], [ -19, %if.end60.i.if.else102.i_crit_edge ]
  %95 = ptrtoint ptr %ops32.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops32.i, align 4
  %video104.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %video104.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %video104.i, align 4
  %tobool105.not.i = icmp eq ptr %98, null
  br i1 %tobool105.not.i, label %if.else102.i.err_disable_rsz.i_crit_edge, label %land.lhs.true106.i

if.else102.i.err_disable_rsz.i_crit_edge:         ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_rsz.i

land.lhs.true106.i:                               ; preds = %if.else102.i
  %s_stream109.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %s_stream109.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_stream109.i, align 4
  %tobool110.not.i = icmp eq ptr %100, null
  br i1 %tobool110.not.i, label %land.lhs.true106.i.err_disable_rsz.i_crit_edge, label %if.else112.i

land.lhs.true106.i.err_disable_rsz.i_crit_edge:   ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_rsz.i

if.else112.i:                                     ; preds = %land.lhs.true106.i
  br i1 %tobool8.not.i, label %if.else112.i.if.else120.i_crit_edge, label %land.lhs.true114.i

if.else112.i.if.else120.i_crit_edge:              ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else120.i

land.lhs.true114.i:                               ; preds = %if.else112.i
  %s_stream115.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %70, i32 0, i32 10
  %101 = ptrtoint ptr %s_stream115.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_stream115.i, align 4
  %tobool116.not.i = icmp eq ptr %102, null
  br i1 %tobool116.not.i, label %land.lhs.true114.i.if.else120.i_crit_edge, label %land.lhs.true114.i.err_disable_rsz.sink.split.i_crit_edge

land.lhs.true114.i.err_disable_rsz.sink.split.i_crit_edge: ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_rsz.sink.split.i

land.lhs.true114.i.if.else120.i_crit_edge:        ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else120.i

if.else120.i:                                     ; preds = %land.lhs.true114.i.if.else120.i_crit_edge, %if.else112.i.if.else120.i_crit_edge
  br label %err_disable_rsz.sink.split.i

err_disable_rsz.sink.split.i:                     ; preds = %if.else120.i, %land.lhs.true114.i.err_disable_rsz.sink.split.i_crit_edge
  %.sink226.i = phi ptr [ %100, %if.else120.i ], [ %102, %land.lhs.true114.i.err_disable_rsz.sink.split.i_crit_edge ]
  %call119.i = tail call i32 %.sink226.i(ptr noundef nonnull %isp.i, i32 noundef 0) #7
  br label %err_disable_rsz.i

err_disable_rsz.i:                                ; preds = %err_disable_rsz.sink.split.i, %land.lhs.true106.i.err_disable_rsz.i_crit_edge, %if.else102.i.err_disable_rsz.i_crit_edge, %if.end56.i.err_disable_rsz.i_crit_edge, %land.lhs.true35.i.err_disable_rsz.i_crit_edge, %if.end25.i.err_disable_rsz.i_crit_edge
  %ret.0.i = phi i32 [ %call53.i, %if.end56.i.err_disable_rsz.i_crit_edge ], [ %__result63.0223.i, %if.else102.i.err_disable_rsz.i_crit_edge ], [ %__result63.0223.i, %land.lhs.true106.i.err_disable_rsz.i_crit_edge ], [ -515, %if.end25.i.err_disable_rsz.i_crit_edge ], [ -515, %land.lhs.true35.i.err_disable_rsz.i_crit_edge ], [ %__result63.0223.i, %err_disable_rsz.sink.split.i ]
  %103 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %id.i.i, align 4
  %arrayidx132.i = getelementptr %struct.rkisp1_device, ptr %40, i32 0, i32 9, i32 %104
  %tobool135.not.i = icmp eq ptr %arrayidx132.i, null
  br i1 %tobool135.not.i, label %err_disable_rsz.i.err_v4l2_pm_put_crit_edge, label %if.else137.i

err_disable_rsz.i.err_v4l2_pm_put_crit_edge:      ; preds = %err_disable_rsz.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_pm_put

if.else137.i:                                     ; preds = %err_disable_rsz.i
  %ops138.i = getelementptr inbounds %struct.v4l2_subdev, ptr %arrayidx132.i, i32 0, i32 6
  %105 = ptrtoint ptr %ops138.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops138.i, align 4
  %video139.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %video139.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %video139.i, align 4
  %tobool140.not.i = icmp eq ptr %108, null
  br i1 %tobool140.not.i, label %if.else137.i.err_v4l2_pm_put_crit_edge, label %land.lhs.true141.i

if.else137.i.err_v4l2_pm_put_crit_edge:           ; preds = %if.else137.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_pm_put

land.lhs.true141.i:                               ; preds = %if.else137.i
  %s_stream144.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %108, i32 0, i32 10
  %109 = ptrtoint ptr %s_stream144.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_stream144.i, align 4
  %tobool145.not.i = icmp eq ptr %110, null
  br i1 %tobool145.not.i, label %land.lhs.true141.i.err_v4l2_pm_put_crit_edge, label %if.else147.i

land.lhs.true141.i.err_v4l2_pm_put_crit_edge:     ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_pm_put

if.else147.i:                                     ; preds = %land.lhs.true141.i
  br i1 %tobool8.not.i, label %if.else147.i.if.else155.i_crit_edge, label %land.lhs.true149.i

if.else147.i.if.else155.i_crit_edge:              ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else155.i

land.lhs.true149.i:                               ; preds = %if.else147.i
  %s_stream150.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %70, i32 0, i32 10
  %111 = ptrtoint ptr %s_stream150.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s_stream150.i, align 4
  %tobool151.not.i = icmp eq ptr %112, null
  br i1 %tobool151.not.i, label %land.lhs.true149.i.if.else155.i_crit_edge, label %land.lhs.true149.i.err_disable_cap.sink.split.i_crit_edge

land.lhs.true149.i.err_disable_cap.sink.split.i_crit_edge: ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_cap.sink.split.i

land.lhs.true149.i.if.else155.i_crit_edge:        ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else155.i

if.else155.i:                                     ; preds = %land.lhs.true149.i.if.else155.i_crit_edge, %if.else147.i.if.else155.i_crit_edge
  br label %err_disable_cap.sink.split.i

err_disable_cap.sink.split.i:                     ; preds = %if.else155.i, %land.lhs.true149.i.err_disable_cap.sink.split.i_crit_edge
  %.sink227.i = phi ptr [ %110, %if.else155.i ], [ %112, %land.lhs.true149.i.err_disable_cap.sink.split.i_crit_edge ]
  %call154.i = tail call i32 %.sink227.i(ptr noundef nonnull %arrayidx132.i, i32 noundef 0) #7
  br label %err_v4l2_pm_put

err_v4l2_pm_put:                                  ; preds = %err_disable_cap.sink.split.i, %land.lhs.true141.i.err_v4l2_pm_put_crit_edge, %if.else137.i.err_v4l2_pm_put_crit_edge, %err_disable_rsz.i.err_v4l2_pm_put_crit_edge, %if.end20.i.err_v4l2_pm_put_crit_edge, %land.lhs.true.i.err_v4l2_pm_put_crit_edge, %if.else.i.err_v4l2_pm_put_crit_edge, %rkisp1_cap_stream_enable.exit.i.err_v4l2_pm_put_crit_edge
  %ret.1.i = phi i32 [ %call18.i, %if.end20.i.err_v4l2_pm_put_crit_edge ], [ %ret.0.i, %if.else137.i.err_v4l2_pm_put_crit_edge ], [ %ret.0.i, %land.lhs.true141.i.err_v4l2_pm_put_crit_edge ], [ %ret.0.i, %err_disable_rsz.i.err_v4l2_pm_put_crit_edge ], [ -515, %if.else.i.err_v4l2_pm_put_crit_edge ], [ -515, %land.lhs.true.i.err_v4l2_pm_put_crit_edge ], [ -19, %rkisp1_cap_stream_enable.exit.i.err_v4l2_pm_put_crit_edge ], [ %ret.0.i, %err_disable_cap.sink.split.i ]
  tail call fastcc void @rkisp1_cap_stream_disable(ptr noundef %1) #7
  tail call void @v4l2_pipeline_pm_put(ptr noundef %vdev) #7
  br label %err_pipe_pm_put

err_pipe_pm_put:                                  ; preds = %err_v4l2_pm_put, %do.end23
  %ret.0 = phi i32 [ %call18, %do.end23 ], [ %ret.1.i, %err_v4l2_pm_put ]
  %113 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rkisp1, align 8
  %dev34 = getelementptr inbounds %struct.rkisp1_device, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev34, align 4
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %116, i32 noundef 5) #7
  br label %err_destroy_dummy

err_destroy_dummy:                                ; preds = %err_pipe_pm_put, %do.end14
  %ret.1 = phi i32 [ %call.i, %do.end14 ], [ %ret.0, %err_pipe_pm_put ]
  %117 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rkisp1, align 8
  %dev.i71 = getelementptr inbounds %struct.rkisp1_device, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %dev.i71 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i71, align 4
  %121 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %size.i, align 4
  %123 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dummy.i, align 4
  %125 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %120, i32 noundef %122, ptr noundef %124, i32 noundef %126, i32 noundef 16) #7
  br label %err_pipeline_stop

err_pipeline_stop:                                ; preds = %err_destroy_dummy, %rkisp1_dummy_buf_create.exit.err_pipeline_stop_crit_edge
  %ret.2 = phi i32 [ -12, %rkisp1_dummy_buf_create.exit.err_pipeline_stop_crit_edge ], [ %ret.1, %err_destroy_dummy ]
  tail call void @media_pipeline_stop(ptr noundef %vdev) #7
  br label %err_ret_buffers

err_ret_buffers:                                  ; preds = %err_pipeline_stop, %do.end
  %ret.3 = phi i32 [ %call, %do.end ], [ %ret.2, %err_pipeline_stop ]
  tail call fastcc void @rkisp1_return_all_buffers(ptr noundef %1, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %err_ret_buffers, %if.end91.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_ret_buffers ], [ 0, %if.end23.i.cleanup_crit_edge ], [ 0, %if.end91.i.cleanup_crit_edge ]
  %127 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rkisp1, align 8
  %stream_lock37 = getelementptr inbounds %struct.rkisp1_device, ptr %128, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %stream_lock37) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_vb2_stop_streaming(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %rkisp11 = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rkisp11, align 8
  %stream_lock = getelementptr inbounds %struct.rkisp1_device, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rkisp11, align 8
  tail call fastcc void @rkisp1_cap_stream_disable(ptr noundef %1) #7
  %pipe.i = getelementptr inbounds %struct.rkisp1_device, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp slt i32 %7, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end54.i_crit_edge

entry.if.end54.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then.i:                                        ; preds = %entry
  %active_sensor.i = getelementptr inbounds %struct.rkisp1_device, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %active_sensor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_sensor.i, align 8
  %sd.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i.if.end21.i_crit_edge, label %if.else.i

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.else.i.if.end21.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_stream.i, align 4
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end21.i_crit_edge, label %if.else8.i

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.else8.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %if.else8.i.if.else15.i_crit_edge, label %land.lhs.true10.i

if.else8.i.if.else15.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

land.lhs.true10.i:                                ; preds = %if.else8.i
  %s_stream11.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_stream11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_stream11.i, align 4
  %tobool12.not.i = icmp eq ptr %20, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else15.i_crit_edge, label %land.lhs.true10.i.if.end21.sink.split.i_crit_edge

land.lhs.true10.i.if.end21.sink.split.i_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.sink.split.i

land.lhs.true10.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true10.i.if.else15.i_crit_edge, %if.else8.i.if.else15.i_crit_edge
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.else15.i, %land.lhs.true10.i.if.end21.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %17, %if.else15.i ], [ %20, %land.lhs.true10.i.if.end21.sink.split.i_crit_edge ]
  %call19.i = tail call i32 %.sink.i(ptr noundef nonnull %11, i32 noundef 0) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %land.lhs.true.i.if.end21.i_crit_edge, %if.else.i.if.end21.i_crit_edge, %if.then.i.if.end21.i_crit_edge
  %isp.i = getelementptr inbounds %struct.rkisp1_device, ptr %5, i32 0, i32 8
  %ops28.i = getelementptr inbounds %struct.rkisp1_device, ptr %5, i32 0, i32 8, i32 0, i32 6
  %21 = ptrtoint ptr %ops28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops28.i, align 4
  %video29.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %video29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %video29.i, align 4
  %tobool30.not.i = icmp eq ptr %24, null
  br i1 %tobool30.not.i, label %if.end21.i.if.end54.i_crit_edge, label %land.lhs.true31.i

if.end21.i.if.end54.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

land.lhs.true31.i:                                ; preds = %if.end21.i
  %s_stream34.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %s_stream34.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_stream34.i, align 4
  %tobool35.not.i = icmp eq ptr %26, null
  br i1 %tobool35.not.i, label %land.lhs.true31.i.if.end54.i_crit_edge, label %if.else37.i

land.lhs.true31.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.else37.i:                                      ; preds = %land.lhs.true31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool38.not.i = icmp eq ptr %27, null
  br i1 %tobool38.not.i, label %if.else37.i.if.else45.i_crit_edge, label %land.lhs.true39.i

if.else37.i.if.else45.i_crit_edge:                ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else45.i

land.lhs.true39.i:                                ; preds = %if.else37.i
  %s_stream40.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_stream40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_stream40.i, align 4
  %tobool41.not.i = icmp eq ptr %29, null
  br i1 %tobool41.not.i, label %land.lhs.true39.i.if.else45.i_crit_edge, label %land.lhs.true39.i.if.end54.sink.split.i_crit_edge

land.lhs.true39.i.if.end54.sink.split.i_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.sink.split.i

land.lhs.true39.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else45.i

if.else45.i:                                      ; preds = %land.lhs.true39.i.if.else45.i_crit_edge, %if.else37.i.if.else45.i_crit_edge
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %if.else45.i, %land.lhs.true39.i.if.end54.sink.split.i_crit_edge
  %.sink116.i = phi ptr [ %26, %if.else45.i ], [ %29, %land.lhs.true39.i.if.end54.sink.split.i_crit_edge ]
  %call44.i = tail call i32 %.sink116.i(ptr noundef nonnull %isp.i, i32 noundef 0) #7
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %land.lhs.true31.i.if.end54.i_crit_edge, %if.end21.i.if.end54.i_crit_edge, %entry.if.end54.i_crit_edge
  %id.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.rkisp1_device, ptr %5, i32 0, i32 9, i32 %31
  %tobool58.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool58.not.i, label %if.end54.i.rkisp1_pipeline_stream_disable.exit_crit_edge, label %if.else60.i

if.end54.i.rkisp1_pipeline_stream_disable.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_pipeline_stream_disable.exit

if.else60.i:                                      ; preds = %if.end54.i
  %ops61.i = getelementptr inbounds %struct.v4l2_subdev, ptr %arrayidx.i, i32 0, i32 6
  %32 = ptrtoint ptr %ops61.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops61.i, align 4
  %video62.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %video62.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %video62.i, align 4
  %tobool63.not.i = icmp eq ptr %35, null
  br i1 %tobool63.not.i, label %if.else60.i.rkisp1_pipeline_stream_disable.exit_crit_edge, label %land.lhs.true64.i

if.else60.i.rkisp1_pipeline_stream_disable.exit_crit_edge: ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_pipeline_stream_disable.exit

land.lhs.true64.i:                                ; preds = %if.else60.i
  %s_stream67.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %s_stream67.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_stream67.i, align 4
  %tobool68.not.i = icmp eq ptr %37, null
  br i1 %tobool68.not.i, label %land.lhs.true64.i.rkisp1_pipeline_stream_disable.exit_crit_edge, label %if.else70.i

land.lhs.true64.i.rkisp1_pipeline_stream_disable.exit_crit_edge: ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rkisp1_pipeline_stream_disable.exit

if.else70.i:                                      ; preds = %land.lhs.true64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool71.not.i = icmp eq ptr %38, null
  br i1 %tobool71.not.i, label %if.else70.i.if.else78.i_crit_edge, label %land.lhs.true72.i

if.else70.i.if.else78.i_crit_edge:                ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else78.i

land.lhs.true72.i:                                ; preds = %if.else70.i
  %s_stream73.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %s_stream73.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_stream73.i, align 4
  %tobool74.not.i = icmp eq ptr %40, null
  br i1 %tobool74.not.i, label %land.lhs.true72.i.if.else78.i_crit_edge, label %land.lhs.true72.i.if.end85.sink.split.i_crit_edge

land.lhs.true72.i.if.end85.sink.split.i_crit_edge: ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.sink.split.i

land.lhs.true72.i.if.else78.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else78.i

if.else78.i:                                      ; preds = %land.lhs.true72.i.if.else78.i_crit_edge, %if.else70.i.if.else78.i_crit_edge
  br label %if.end85.sink.split.i

if.end85.sink.split.i:                            ; preds = %if.else78.i, %land.lhs.true72.i.if.end85.sink.split.i_crit_edge
  %.sink117.i = phi ptr [ %37, %if.else78.i ], [ %40, %land.lhs.true72.i.if.end85.sink.split.i_crit_edge ]
  %call82.i = tail call i32 %.sink117.i(ptr noundef nonnull %arrayidx.i, i32 noundef 0) #7
  br label %rkisp1_pipeline_stream_disable.exit

rkisp1_pipeline_stream_disable.exit:              ; preds = %if.end85.sink.split.i, %land.lhs.true64.i.rkisp1_pipeline_stream_disable.exit_crit_edge, %if.else60.i.rkisp1_pipeline_stream_disable.exit_crit_edge, %if.end54.i.rkisp1_pipeline_stream_disable.exit_crit_edge
  tail call fastcc void @rkisp1_return_all_buffers(ptr noundef %1, i32 noundef 6)
  %vdev = getelementptr inbounds %struct.rkisp1_vdev_node, ptr %1, i32 0, i32 2
  tail call void @v4l2_pipeline_pm_put(ptr noundef %vdev) #7
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %rkisp1_pipeline_stream_disable.exit.if.end_crit_edge

rkisp1_pipeline_stream_disable.exit.if.end_crit_edge: ; preds = %rkisp1_pipeline_stream_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %rkisp1_pipeline_stream_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.29, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %rkisp1_pipeline_stream_disable.exit.if.end_crit_edge
  %45 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rkisp11, align 8
  %dev.i = getelementptr inbounds %struct.rkisp1_device, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %dummy.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 9, i32 2
  %size.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 9, i32 2, i32 2
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i, align 4
  %51 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dummy.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.rkisp1_capture, ptr %1, i32 0, i32 9, i32 2, i32 1
  %53 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %48, i32 noundef %50, ptr noundef %52, i32 noundef %54, i32 noundef 16) #7
  tail call void @media_pipeline_stop(ptr noundef %vdev) #7
  %55 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rkisp11, align 8
  %stream_lock7 = getelementptr inbounds %struct.rkisp1_device, ptr %56, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %stream_lock7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_vb2_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %buf = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %buf) #7
  %queue = getelementptr inbounds %struct.rkisp1_buffer, ptr %vb, i32 0, i32 1
  %queue5 = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 9, i32 1
  %prev.i = getelementptr inbounds %struct.rkisp1_capture, ptr %3, i32 0, i32 9, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %queue5) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue5, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.rkisp1_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_return_all_buffers(ptr noundef %cap, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %buf1) #7
  %curr = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vb2_buffer_done(ptr noundef nonnull %1, i32 noundef %state) #7
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %curr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %next = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end.if.end16_crit_edge, label %if.then9

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vb2_buffer_done(ptr noundef nonnull %4, i32 noundef %state) #7
  %5 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %next, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end.if.end16_crit_edge
  %queue = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not40 = icmp eq ptr %7, %queue
  br i1 %cmp.i.not40, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end16.while.body_crit_edge
  %8 = phi ptr [ %18, %list_del.exit.while.body_crit_edge ], [ %7, %if.end16.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %8, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef %state) #7
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %18, %queue
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end16.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %buf1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_cap_stream_disable(ptr noundef %cap) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_stopping = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 6
  %0 = ptrtoint ptr %is_stopping to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_stopping, align 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 893) #7
  %is_streaming = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 5
  %1 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_streaming, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %if.then10

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %done = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 7
  %call1368 = call i32 @prepare_to_wait_event(ptr noundef %done, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %4 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_streaming, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool16.not69 = icmp eq i8 %5, 0
  br i1 %tobool16.not69, label %if.end37.thread, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  br label %cleanup

if.end37.thread:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %done, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end43

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %__ret11.170 = phi i32 [ %__ret11.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then10.cleanup_crit_edge ]
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret11.170) #7
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %done, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %6 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_streaming, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool21.not = icmp eq i32 %call34, 0
  %8 = select i1 %tobool16.not, i1 %tobool21.not, i1 false
  %__ret11.1 = select i1 %8, i32 1, i32 %call34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool27.not = icmp eq i32 %__ret11.1, 0
  %9 = select i1 %tobool16.not, i1 true, i1 %tobool27.not
  br i1 %9, label %if.end37, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %phi.cmp = icmp eq i32 %__ret11.1, 0
  call void @finish_wait(ptr noundef %done, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %if.then40, label %if.end37.if.end43_crit_edge

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %rkisp1 = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 1
  %10 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1, align 8
  %id = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.rkisp1_device, ptr %11, i32 0, i32 15, i32 8, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.rkisp1_capture, ptr %cap, i32 0, i32 3
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 8
  %stop = getelementptr inbounds %struct.rkisp1_capture_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stop, align 4
  call void %19(ptr noundef %cap) #7
  %20 = ptrtoint ptr %is_stopping to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_stopping, align 1
  %21 = ptrtoint ptr %is_streaming to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_streaming, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge, %if.end37.thread, %entry.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @rkisp1_capture_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1404, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rkisp1_capture_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1405, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rkisp1_capture_ops_sp, !7, !"rkisp1_capture_ops_sp", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 577, i32 40}
!8 = !{ptr @rkisp1_capture_config_sp, !9, !"rkisp1_capture_config_sp", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 323, i32 43}
!10 = !{ptr @rkisp1_sp_fmts, !11, !"rkisp1_sp_fmts", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 214, i32 44}
!12 = !{ptr @rkisp1_capture_ops_mp, !13, !"rkisp1_capture_ops_mp", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 568, i32 40}
!14 = !{ptr @rkisp1_capture_config_mp, !15, !"rkisp1_capture_config_mp", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 307, i32 43}
!16 = !{ptr @rkisp1_mp_fmts, !17, !"rkisp1_mp_fmts", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 91, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1330, i32 36}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1331, i32 8}
!22 = !{ptr @rkisp1_register_capture.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1340, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1368, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rkisp1_register_capture._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @rkisp1_register_capture._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1377, i32 3}
!35 = !{ptr @rkisp1_register_capture._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rkisp1_register_capture._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1381, i32 2}
!39 = !{ptr @rkisp1_register_capture._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rkisp1_register_capture._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @rkisp1_v4l2_ioctl_ops, !42, !"rkisp1_v4l2_ioctl_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1252, i32 36}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1247, i32 25}
!45 = !{ptr @rkisp1_fops, !46, !"rkisp1_fops", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1305, i32 42}
!47 = !{ptr @rkisp1_media_ops, !48, !"rkisp1_media_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1301, i32 45}
!49 = !{ptr @rkisp1_vb2_ops, !50, !"rkisp1_vb2_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1056, i32 29}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 814, i32 4}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rkisp1_vb2_buf_prepare._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rkisp1_vb2_buf_prepare._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1014, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @rkisp1_vb2_start_streaming._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @rkisp1_vb2_start_streaming._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1024, i32 3}
!66 = !{ptr @rkisp1_vb2_start_streaming._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rkisp1_vb2_start_streaming._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 1029, i32 3}
!70 = !{ptr @rkisp1_vb2_start_streaming._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rkisp1_vb2_start_streaming._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c", i32 994, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rkisp1_vb2_stop_streaming._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @rkisp1_vb2_stop_streaming._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 7218036}
!87 = !{i64 2156629797}
!88 = !{i64 2156628932}
!89 = !{i64 7217618}
!90 = !{i8 0, i8 2}
!91 = !{i64 2148227784}
!92 = !{i64 712607, i64 712632, i64 712654, i64 712670, i64 712682, i64 712702, i64 712726, i64 712742, i64 712754}
!93 = !{i64 2148227972}
