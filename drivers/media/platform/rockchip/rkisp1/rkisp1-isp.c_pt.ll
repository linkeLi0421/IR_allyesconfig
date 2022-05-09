; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rkisp1_isp_mbus_info = type { i32, i32, i32, i32, i8, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.rkisp1_device = type { ptr, ptr, i32, [8 x %struct.clk_bulk_data], %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, ptr, %struct.rkisp1_isp, [2 x %struct.rkisp1_resizer], [2 x %struct.rkisp1_capture], %struct.rkisp1_stats, %struct.rkisp1_params, %struct.media_pipeline, %struct.mutex, %struct.rkisp1_debug }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rkisp1_isp = type { %struct.v4l2_subdev, [4 x %struct.media_pad], [4 x %struct.v4l2_subdev_pad_config], ptr, ptr, %struct.mutex, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rkisp1_resizer = type { %struct.v4l2_subdev, i32, ptr, [2 x %struct.media_pad], [2 x %struct.v4l2_subdev_pad_config], ptr, i32, %struct.mutex }
%struct.rkisp1_capture = type { %struct.rkisp1_vdev_node, ptr, i32, ptr, ptr, i8, i8, %struct.wait_queue_head, i32, %struct.anon.95, %struct.anon.96 }
%struct.rkisp1_vdev_node = type { %struct.vb2_queue, %struct.mutex, %struct.video_device, %struct.media_pad }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.95 = type { %struct.spinlock, %struct.list_head, %struct.rkisp1_dummy_buffer, ptr, ptr }
%struct.rkisp1_dummy_buffer = type { ptr, i32, i32 }
%struct.anon.96 = type { ptr, ptr, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.rkisp1_stats = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format }
%struct.v4l2_format = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.rkisp1_params = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rkisp1_debug = type { ptr, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.v4l2_event = type { i32, %union.anon.106, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.106 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.107, i32, i32, i32, i32, i32 }
%union.anon.107 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.rkisp1_sensor_async = type { %struct.v4l2_async_subdev, i32, i32, i32, ptr, ptr, ptr }
%struct.v4l2_async_subdev = type { i32, %union.anon.93, %struct.list_head, %struct.list_head }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }

@rkisp1_isp_formats = internal constant { [17 x %struct.rkisp1_isp_mbus_info], [100 x i8] } { [17 x %struct.rkisp1_isp_mbus_info] [%struct.rkisp1_isp_mbus_info { i32 8200, i32 1, i32 0, i32 0, i8 0, i32 0, i32 1 }, %struct.rkisp1_isp_mbus_info { i32 12303, i32 3, i32 43, i32 0, i8 10, i32 0, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12295, i32 3, i32 43, i32 0, i8 10, i32 3, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12302, i32 3, i32 43, i32 0, i8 10, i32 2, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12298, i32 3, i32 43, i32 0, i8 10, i32 1, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12306, i32 3, i32 44, i32 0, i8 12, i32 0, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12296, i32 3, i32 44, i32 0, i8 12, i32 3, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12304, i32 3, i32 44, i32 0, i8 12, i32 2, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12305, i32 3, i32 44, i32 0, i8 12, i32 1, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12308, i32 3, i32 42, i32 0, i8 8, i32 0, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12289, i32 3, i32 42, i32 0, i8 8, i32 3, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12307, i32 3, i32 42, i32 0, i8 8, i32 2, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 12290, i32 3, i32 42, i32 0, i8 8, i32 1, i32 3 }, %struct.rkisp1_isp_mbus_info { i32 8209, i32 1, i32 30, i32 0, i8 16, i32 0, i32 2 }, %struct.rkisp1_isp_mbus_info { i32 8210, i32 1, i32 30, i32 128, i8 16, i32 0, i32 2 }, %struct.rkisp1_isp_mbus_info { i32 8207, i32 1, i32 30, i32 256, i8 16, i32 0, i32 2 }, %struct.rkisp1_isp_mbus_info { i32 8208, i32 1, i32 30, i32 384, i8 16, i32 0, i32 2 }], [100 x i8] zeroinitializer }, align 32
@rkisp1_isp_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @rkisp1_isp_core_ops, ptr null, ptr null, ptr @rkisp1_isp_video_ops, ptr null, ptr null, ptr null, ptr @rkisp1_isp_pad_ops }, [32 x i8] zeroinitializer }, align 32
@rkisp1_isp_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @rkisp1_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rkisp1_isp\00", [21 x i8] zeroinitializer }, align 32
@rkisp1_isp_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&isp->ops_lock\00", [17 x i8] zeroinitializer }, align 32
@rkisp1_isp_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1097, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register isp subdev\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rkisp1_isp_register\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rkisp1_isp_register._entry_ptr = internal global ptr @rkisp1_isp_register._entry, section ".printk_index", align 4
@rkisp1_isp_isr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"irq delay is too long, buffers might not be in sync\0A\00", [43 x i8] zeroinitializer }, align 32
@rkisp1_isp_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_isp_subs_evt, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@rkisp1_isp_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_isp_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rkisp1_isp_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @rkisp1_isp_init_config, ptr @rkisp1_isp_enum_mbus_code, ptr @rkisp1_isp_enum_frame_size, ptr null, ptr @rkisp1_isp_get_fmt, ptr @rkisp1_isp_set_fmt, ptr @rkisp1_isp_get_selection, ptr @rkisp1_isp_set_selection, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_subdev_link_validate_default, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rkisp1_isp_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 1005, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No link between isp and sensor\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rkisp1_isp_s_stream\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rkisp1_isp_s_stream._entry_ptr = internal global ptr @rkisp1_isp_s_stream._entry, section ".printk_index", align 4
@rkisp1_config_cif.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip_isp1\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rkisp1_config_cif\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CIF_ID 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@rkisp1_config_dvp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid bus width\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rkisp1_config_dvp\00", [46 x i8] zeroinitializer }, align 32
@rkisp1_config_dvp._entry_ptr = internal global ptr @rkisp1_config_dvp._entry, section ".printk_index", align 4
@rkisp1_config_mipi.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rkisp1_config_mipi\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\0A  MIPI_CTRL 0x%08x\0A  MIPI_IMG_DATA_SEL 0x%08x\0A  MIPI_STATUS 0x%08x\0A  MIPI_IMSC 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@rkisp1_mipi_csi2_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 965, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No pixel rate control in sensor subdev\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rkisp1_mipi_csi2_start\00", [41 x i8] zeroinitializer }, align 32
@rkisp1_mipi_csi2_start._entry_ptr = internal global ptr @rkisp1_mipi_csi2_start._entry, section ".printk_index", align 4
@rkisp1_mipi_csi2_start._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 971, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid pixel rate value\0A\00", [38 x i8] zeroinitializer }, align 32
@rkisp1_mipi_csi2_start._entry_ptr.23 = internal global ptr @rkisp1_mipi_csi2_start._entry.21, section ".printk_index", align 4
@rkisp1_isp_set_selection.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rkisp1_isp_set_selection\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: pad: %d sel(%d,%d)/%dx%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 8200, i64 8207, i64 8208, i64 8209, i64 8210, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [19 x i64] [i64 17, i64 32, i64 8200, i64 8207, i64 8208, i64 8209, i64 8210, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [19 x i64] [i64 17, i64 32, i64 8200, i64 8207, i64 8208, i64 8209, i64 8210, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [19 x i64] [i64 17, i64 32, i64 8200, i64 8207, i64 8208, i64 8209, i64 8210, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"rkisp1_isp_formats\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 57, i32 42 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"rkisp1_isp_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1058, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"rkisp1_isp_media_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1045, i32 45 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1079, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1090, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1097, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1196, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"rkisp1_isp_core_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1053, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"rkisp1_isp_video_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1049, i32 43 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"rkisp1_isp_pad_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 940, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1005, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 480, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 998, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 391, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 440, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 965, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 971, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [55 x i8] c"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 918, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @rkisp1_config_dvp._entry, ptr @rkisp1_config_dvp._entry_ptr, ptr @rkisp1_isp_register._entry, ptr @rkisp1_isp_register._entry_ptr, ptr @rkisp1_isp_s_stream._entry, ptr @rkisp1_isp_s_stream._entry_ptr, ptr @rkisp1_mipi_csi2_start._entry, ptr @rkisp1_mipi_csi2_start._entry.21, ptr @rkisp1_mipi_csi2_start._entry_ptr, ptr @rkisp1_mipi_csi2_start._entry_ptr.23, ptr @rkisp1_isp_formats, ptr @rkisp1_isp_ops, ptr @rkisp1_isp_media_ops, ptr @.str, ptr @rkisp1_isp_register.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rkisp1_isp_core_ops, ptr @rkisp1_isp_video_ops, ptr @rkisp1_isp_pad_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_formats to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_isp_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_config_dvp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_mipi_csi2_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_mipi_csi2_start._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rkisp1_isp_mbus_info_get(i32 noundef %mbus_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mbus_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mbus_code, label %for.cond.16 [
    i32 8200, label %entry.cleanup3_crit_edge
    i32 12303, label %cleanup3.fold.split
    i32 12295, label %cleanup3.fold.split8
    i32 12302, label %cleanup3.fold.split9
    i32 12298, label %cleanup3.fold.split10
    i32 12306, label %cleanup3.fold.split11
    i32 12296, label %cleanup3.fold.split12
    i32 12304, label %cleanup3.fold.split13
    i32 12305, label %cleanup3.fold.split14
    i32 12308, label %cleanup3.fold.split15
    i32 12289, label %cleanup3.fold.split16
    i32 12307, label %cleanup3.fold.split17
    i32 12290, label %cleanup3.fold.split18
    i32 8209, label %cleanup3.fold.split19
    i32 8210, label %cleanup3.fold.split20
    i32 8207, label %cleanup3.fold.split21
    i32 8208, label %cleanup3.fold.split22
  ]

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

for.cond.16:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split8:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split9:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split10:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split11:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split12:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split13:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split14:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split15:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split16:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split17:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split18:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split19:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split20:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split21:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3.fold.split22:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

cleanup3:                                         ; preds = %cleanup3.fold.split22, %cleanup3.fold.split21, %cleanup3.fold.split20, %cleanup3.fold.split19, %cleanup3.fold.split18, %cleanup3.fold.split17, %cleanup3.fold.split16, %cleanup3.fold.split15, %cleanup3.fold.split14, %cleanup3.fold.split13, %cleanup3.fold.split12, %cleanup3.fold.split11, %cleanup3.fold.split10, %cleanup3.fold.split9, %cleanup3.fold.split8, %cleanup3.fold.split, %for.cond.16, %entry.cleanup3_crit_edge
  %retval.2 = phi ptr [ @rkisp1_isp_formats, %entry.cleanup3_crit_edge ], [ null, %for.cond.16 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 1), %cleanup3.fold.split ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 2), %cleanup3.fold.split8 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 3), %cleanup3.fold.split9 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 4), %cleanup3.fold.split10 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 5), %cleanup3.fold.split11 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 6), %cleanup3.fold.split12 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 7), %cleanup3.fold.split13 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 8), %cleanup3.fold.split14 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 9), %cleanup3.fold.split15 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 10), %cleanup3.fold.split16 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 11), %cleanup3.fold.split17 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 12), %cleanup3.fold.split18 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 13), %cleanup3.fold.split19 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 14), %cleanup3.fold.split20 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 15), %cleanup3.fold.split21 ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 16), %cleanup3.fold.split22 ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_isp_register(ptr noundef %rkisp1) local_unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.v4l2_subdev_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %isp = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8
  %pad_cfg = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pad_cfg, ptr %state, align 4
  %pads4 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 1
  tail call void @v4l2_subdev_init(ptr noundef %isp, ptr noundef nonnull @rkisp1_isp_ops) #8
  %flags = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %or = or i32 %2, 12
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 0, i32 0, i32 11
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rkisp1_isp_media_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16386, ptr %function, align 4
  %owner = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 0, i32 2
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %name = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 0, i32 9
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #8
  %flags9 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %flags9, align 4
  %flags11 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 1, i32 1, i32 4
  %7 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags11, align 4
  %flags13 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 1, i32 2, i32 4
  %8 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags13, align 4
  %flags15 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 1, i32 3, i32 4
  %9 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %flags15, align 4
  %sink_fmt = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 3
  %10 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 1), ptr %sink_fmt, align 4
  %src_fmt = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rkisp1_isp_formats, ptr %src_fmt, align 4
  %ops_lock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 5
  tail call void @__mutex_init(ptr noundef %ops_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rkisp1_isp_register.__key) #8
  %call19 = tail call i32 @media_entity_pads_init(ptr noundef %isp, i16 noundef zeroext 4, ptr noundef %pads4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 4
  %call20 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %isp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 @rkisp1_isp_init_config(ptr noundef %isp, ptr noundef nonnull %state)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end25 ], [ 0, %if.end26 ], [ %call19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_init_config(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !72

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 800, ptr %3, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 600, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12303, ptr %code, align 4
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i40.not = icmp eq i16 %9, 0
  br i1 %cmp.not.i40.not, label %do.end.i41, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !72

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit

do.end.i41:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i41, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1
  %width2 = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 800, ptr %width2, align 4
  %height3 = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 600, ptr %height3, align 4
  %14 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %try_crop.i, align 4
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %top, align 4
  %16 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp.not.i44 = icmp ugt i16 %17, 2
  br i1 %cmp.not.i44, label %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit46_crit_edge, label %do.end.i45, !prof !73

v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit46_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit46

do.end.i45:                                       ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit46

v4l2_subdev_get_try_format.exit46:                ; preds = %do.end.i45, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit46_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i45 ], [ 2, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit46_crit_edge ]
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 %spec.select.i
  %20 = call ptr @memcpy(ptr %arrayidx.i, ptr %3, i32 48)
  %code5 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %21 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8200, ptr %code5, align 4
  %22 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp.not.i49 = icmp ugt i16 %23, 2
  br i1 %cmp.not.i49, label %v4l2_subdev_get_try_format.exit46.v4l2_subdev_get_try_crop.exit53_crit_edge, label %do.end.i50, !prof !73

v4l2_subdev_get_try_format.exit46.v4l2_subdev_get_try_crop.exit53_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit53

do.end.i50:                                       ; preds = %v4l2_subdev_get_try_format.exit46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit53

v4l2_subdev_get_try_crop.exit53:                  ; preds = %do.end.i50, %v4l2_subdev_get_try_format.exit46.v4l2_subdev_get_try_crop.exit53_crit_edge
  %spec.select.i51 = phi i32 [ 0, %do.end.i50 ], [ 2, %v4l2_subdev_get_try_format.exit46.v4l2_subdev_get_try_crop.exit53_crit_edge ]
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  %try_crop.i52 = getelementptr %struct.v4l2_subdev_pad_config, ptr %25, i32 %spec.select.i51, i32 1
  %26 = call ptr @memcpy(ptr %try_crop.i52, ptr %try_crop.i, i32 16)
  %27 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp.not.i56 = icmp ugt i16 %28, 1
  br i1 %cmp.not.i56, label %v4l2_subdev_get_try_crop.exit53.v4l2_subdev_get_try_format.exit60_crit_edge, label %do.end.i57, !prof !73

v4l2_subdev_get_try_crop.exit53.v4l2_subdev_get_try_format.exit60_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit53
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit60

do.end.i57:                                       ; preds = %v4l2_subdev_get_try_crop.exit53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %29 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %.pr = load i16, ptr %num_pads.i, align 4
  br label %v4l2_subdev_get_try_format.exit60

v4l2_subdev_get_try_format.exit60:                ; preds = %do.end.i57, %v4l2_subdev_get_try_crop.exit53.v4l2_subdev_get_try_format.exit60_crit_edge
  %30 = phi i16 [ %28, %v4l2_subdev_get_try_crop.exit53.v4l2_subdev_get_try_format.exit60_crit_edge ], [ %.pr, %do.end.i57 ]
  %spec.select.i58 = phi i32 [ 1, %v4l2_subdev_get_try_crop.exit53.v4l2_subdev_get_try_format.exit60_crit_edge ], [ 0, %do.end.i57 ]
  %31 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp.not.i63 = icmp ugt i16 %30, 3
  br i1 %cmp.not.i63, label %v4l2_subdev_get_try_format.exit60.v4l2_subdev_get_try_format.exit67_crit_edge, label %do.end.i64, !prof !73

v4l2_subdev_get_try_format.exit60.v4l2_subdev_get_try_format.exit67_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit60
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit67

do.end.i64:                                       ; preds = %v4l2_subdev_get_try_format.exit60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit67

v4l2_subdev_get_try_format.exit67:                ; preds = %do.end.i64, %v4l2_subdev_get_try_format.exit60.v4l2_subdev_get_try_format.exit67_crit_edge
  %spec.select.i65 = phi i32 [ 0, %do.end.i64 ], [ 3, %v4l2_subdev_get_try_format.exit60.v4l2_subdev_get_try_format.exit67_crit_edge ]
  %arrayidx.i59 = getelementptr %struct.v4l2_subdev_pad_config, ptr %32, i32 %spec.select.i58
  %33 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_state, align 4
  %arrayidx.i66 = getelementptr %struct.v4l2_subdev_pad_config, ptr %34, i32 %spec.select.i65
  %35 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx.i59, align 4
  %height10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i59, i32 0, i32 1
  %36 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %height10, align 4
  %field11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i59, i32 0, i32 3
  %37 = ptrtoint ptr %field11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %field11, align 4
  %code12 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i59, i32 0, i32 2
  %38 = ptrtoint ptr %code12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 28673, ptr %code12, align 4
  %39 = call ptr @memcpy(ptr %arrayidx.i66, ptr %arrayidx.i59, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_isp_unregister(ptr noundef %rkisp1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8
  tail call void @v4l2_device_unregister_subdev(ptr noundef %isp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_mipi_isr(i32 noundef %irq, ptr nocapture noundef readonly %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 7184
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr.i34 = getelementptr i8, ptr %6, i32 7188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %4) #8, !srcloc !77
  %7 = and i32 %4, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end6, label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i35 = getelementptr i8, ptr %9, i32 7176
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %11 = and i32 %10, -3841
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %11) #8, !srcloc !77
  %is_dphy_errctrl_disabled = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %is_dphy_errctrl_disabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_dphy_errctrl_disabled, align 4
  br label %if.else

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then7, label %if.end6.if.else_crit_edge

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then7:                                         ; preds = %if.end6
  %is_dphy_errctrl_disabled9 = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %is_dphy_errctrl_disabled9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_dphy_errctrl_disabled9, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.then11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i37 = getelementptr i8, ptr %18, i32 7176
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %20 = or i32 %19, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %add.ptr.i38 = getelementptr i8, ptr %22, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %20) #8, !srcloc !77
  %23 = ptrtoint ptr %is_dphy_errctrl_disabled9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %is_dphy_errctrl_disabled9, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end6.if.else_crit_edge, %if.end6.thread
  %mipi_error = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15, i32 6
  %24 = ptrtoint ptr %mipi_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mipi_error, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %mipi_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.then11 ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_isp_isr(i32 noundef %irq, ptr nocapture noundef readonly %ctx) local_unnamed_addr #2 align 64 {
entry:
  %event.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1476
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !74
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i113 = getelementptr i8, ptr %7, i32 1480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %4) #8, !srcloc !77
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end45_crit_edge, label %if.then3

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then3:                                         ; preds = %if.end
  %frame_sequence = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 8, i32 7
  %8 = ptrtoint ptr %frame_sequence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_sequence, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %frame_sequence, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %event.i) #8
  %10 = call ptr @memset(ptr %event.i, i32 0, i32 136)
  %11 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %event.i, align 8
  %u.i = getelementptr inbounds %struct.v4l2_event, ptr %event.i, i32 0, i32 1
  %12 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %u.i, align 8
  %devnode.i = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 8, i32 0, i32 13
  %13 = ptrtoint ptr %devnode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devnode.i, align 4
  call void @v4l2_event_queue(ptr noundef %14, ptr noundef nonnull %event.i) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %event.i) #8
  %and5 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then3.if.end45_crit_edge, label %land.end

if.then3.if.end45_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.end:                                         ; preds = %if.then3
  %.b112 = load i1, ptr @rkisp1_isp_isr.__already_done, align 1
  br i1 %.b112, label %land.end.if.end35_crit_edge, label %if.then13, !prof !73

land.end.if.end35_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rkisp1_isp_isr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1196, i32 noundef 9, ptr noundef nonnull @.str.7) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then13, %land.end.if.end35_crit_edge
  %irq_delay = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15, i32 5
  %15 = ptrtoint ptr %irq_delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_delay, align 4
  %inc43 = add i32 %16, 1
  store i32 %inc43, ptr %irq_delay, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end35, %if.then3.if.end45_crit_edge, %if.end.if.end45_crit_edge
  %and46 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end45
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i114 = getelementptr i8, ptr %18, i32 1596
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #8, !srcloc !74
  %20 = call i32 @llvm.bswap.i32(i32 %19) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %and50 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then48.if.end55_crit_edge, label %if.then52

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %inform_size_error = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15, i32 4
  %21 = ptrtoint ptr %inform_size_error to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inform_size_error, align 4
  %inc54 = add i32 %22, 1
  store i32 %inc54, ptr %inform_size_error, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then48.if.end55_crit_edge
  %and56 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end61_crit_edge, label %if.then58

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %img_stabilization_size_error = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15, i32 3
  %23 = ptrtoint ptr %img_stabilization_size_error to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %img_stabilization_size_error, align 4
  %inc60 = add i32 %24, 1
  store i32 %inc60, ptr %img_stabilization_size_error, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55.if.end61_crit_edge
  %and62 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end67_crit_edge, label %if.then64

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %outform_size_error = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15, i32 2
  %25 = ptrtoint ptr %outform_size_error to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %outform_size_error, align 4
  %inc66 = add i32 %26, 1
  store i32 %inc66, ptr %outform_size_error, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %add.ptr.i115 = getelementptr i8, ptr %28, i32 1600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %19) #8, !srcloc !77
  br label %if.end74

if.else:                                          ; preds = %if.end45
  %and68 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else.if.end74_crit_edge, label %if.then70

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %data_loss = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15, i32 1
  %29 = ptrtoint ptr %data_loss to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_loss, align 4
  %inc72 = add i32 %30, 1
  store i32 %inc72, ptr %data_loss, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.else.if.end74_crit_edge, %if.end67
  %and75 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %if.then77

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77:                                        ; preds = %if.end74
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %add.ptr.i116 = getelementptr i8, ptr %32, i32 1472
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #8, !srcloc !74
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %and79 = and i32 %34, 311312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then77.if.end82_crit_edge, label %if.then81

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %stats = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 11
  call void @rkisp1_stats_isr(ptr noundef %stats, i32 noundef %34) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then77.if.end82_crit_edge
  call void @rkisp1_params_isr(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.end74.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end82 ], [ 1, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_stats_isr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_params_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_subs_evt(ptr nocapture noundef readnone %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_event_subscription, ptr %sub, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  %opts.i = alloca %union.phy_configure_opts, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %5, i32 7188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 -1) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %7, i32 1468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i62.i = getelementptr i8, ptr %9, i32 1480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 -1) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i63.i = getelementptr i8, ptr %11, i32 5368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %13, i32 5380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 -1) #8, !srcloc !77
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i65.i = getelementptr i8, ptr %15, i32 7168
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i66.i = getelementptr i8, ptr %19, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %17) #8, !srcloc !77
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i67.i = getelementptr i8, ptr %21, i32 1024
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %23 = and i32 %22, -285212673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i68.i = getelementptr i8, ptr %25, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %23) #8, !srcloc !77
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i69.i = getelementptr i8, ptr %27, i32 1024
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %29 = or i32 %28, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i70.i = getelementptr i8, ptr %31, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %29) #8, !srcloc !77
  %call4.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call4.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 524) #8
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  %add.ptr73.i = getelementptr i8, ptr %33, i32 1472
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not74.i = icmp eq i32 %35, 0
  br i1 %tobool.not74.i, label %if.then.land.lhs.true.i_crit_edge, label %if.then.rkisp1_isp_stop.exit_crit_edge

if.then.rkisp1_isp_stop.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_stop.exit

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then31.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %call18.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call18.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then21.i, label %if.then31.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %add.ptr25.i = getelementptr i8, ptr %37, i32 1472
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %rkisp1_isp_stop.exit

if.then31.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %40, i32 1472
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %42 = and i32 %41, 16777216
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.then31.i.land.lhs.true.i_crit_edge, label %if.then31.i.rkisp1_isp_stop.exit_crit_edge

if.then31.i.rkisp1_isp_stop.exit_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_stop.exit

if.then31.i.land.lhs.true.i_crit_edge:            ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

rkisp1_isp_stop.exit:                             ; preds = %if.then31.i.rkisp1_isp_stop.exit_crit_edge, %if.then21.i, %if.then.rkisp1_isp_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i71.i = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 17301504) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i72.i = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 0) #8, !srcloc !77
  %active_sensor = getelementptr i8, ptr %1, i32 788
  %47 = ptrtoint ptr %active_sensor to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_sensor, align 8
  %dphy.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %dphy.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dphy.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %50) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 9
  %51 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pads.i, align 4
  %call.i42 = tail call ptr @media_entity_remote_pad(ptr noundef %52) #8
  %tobool.not.i43 = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i43, label %if.end.do.end_crit_edge, label %rkisp1_get_remote_sensor.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

rkisp1_get_remote_sensor.exit:                    ; preds = %if.end
  %entity1.i = getelementptr inbounds %struct.media_pad, ptr %call.i42, i32 0, i32 1
  %53 = ptrtoint ptr %entity1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %entity1.i, align 4
  %tobool2.not = icmp eq ptr %54, null
  br i1 %tobool2.not, label %rkisp1_get_remote_sensor.exit.do.end_crit_edge, label %if.end4

rkisp1_get_remote_sensor.exit.do.end_crit_edge:   ; preds = %rkisp1_get_remote_sensor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %rkisp1_get_remote_sensor.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr i8, ptr %1, i32 -72
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end4:                                          ; preds = %rkisp1_get_remote_sensor.exit
  %asd = getelementptr inbounds %struct.v4l2_subdev, ptr %54, i32 0, i32 17
  %57 = ptrtoint ptr %asd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %asd, align 4
  %active_sensor8 = getelementptr i8, ptr %1, i32 788
  %59 = ptrtoint ptr %active_sensor8 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %active_sensor8, align 8
  %mbus_type = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %58, i32 0, i32 2
  %60 = ptrtoint ptr %mbus_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mbus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp.not = icmp eq i32 %61, 5
  br i1 %cmp.not, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %frame_sequence = getelementptr i8, ptr %1, i32 1540
  %62 = ptrtoint ptr %frame_sequence to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %frame_sequence, align 4
  %ops_lock = getelementptr i8, ptr %1, i32 1444
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %call13 = tail call fastcc i32 @rkisp1_config_cif(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.mutex_unlock_crit_edge

if.end11.mutex_unlock_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %mutex_unlock

if.end16:                                         ; preds = %if.end11
  %63 = ptrtoint ptr %active_sensor8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %active_sensor8, align 8
  %v4l2_dev.i = getelementptr i8, ptr %1, i32 892
  %65 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %v4l2_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %opts.i) #8
  %67 = call ptr @memset(ptr %opts.i, i32 255, i32 100)
  %pixel_rate_ctrl.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %64, i32 0, i32 5
  %68 = ptrtoint ptr %pixel_rate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pixel_rate_ctrl.i, align 4
  %tobool.not.i44 = icmp eq ptr %69, null
  br i1 %tobool.not.i44, label %do.end.i, label %if.end.i46

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %66, i32 -72
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.19) #11
  br label %rkisp1_mipi_csi2_start.exit.thread

if.end.i46:                                       ; preds = %if.end16
  %call.i45 = tail call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %69) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i45)
  %tobool2.not.i = icmp eq i64 %call.i45, 0
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end22

do.end6.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i = getelementptr i8, ptr %66, i32 -72
  %72 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.22) #11
  br label %rkisp1_mipi_csi2_start.exit.thread

rkisp1_mipi_csi2_start.exit.thread:               ; preds = %do.end6.i, %do.end.i
  %retval.0.i48.ph = phi i32 [ -32, %do.end.i ], [ -22, %do.end6.i ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %opts.i) #8
  br label %mutex_unlock

if.end22:                                         ; preds = %if.end.i46
  %conv.i = trunc i64 %call.i45 to i32
  %sink_fmt.i = getelementptr i8, ptr %1, i32 1436
  %74 = ptrtoint ptr %sink_fmt.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sink_fmt.i, align 4
  %bus_width.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bus_width.i, align 4
  %conv9.i = zext i8 %77 to i32
  %lanes.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %64, i32 0, i32 1
  %78 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lanes.i, align 4
  %call10.i = call i32 @phy_mipi_dphy_get_default_config(i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %79, ptr noundef nonnull %opts.i) #8
  %dphy.i47 = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %64, i32 0, i32 6
  %80 = ptrtoint ptr %dphy.i47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dphy.i47, align 4
  %call11.i = call i32 @phy_set_mode_ext(ptr noundef %81, i32 noundef 16, i32 noundef 0) #8
  %82 = ptrtoint ptr %dphy.i47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dphy.i47, align 4
  %call13.i = call i32 @phy_configure(ptr noundef %83, ptr noundef nonnull %opts.i) #8
  %84 = ptrtoint ptr %dphy.i47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dphy.i47, align 4
  %call15.i = call i32 @phy_power_on(ptr noundef %85) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %opts.i) #8
  %86 = ptrtoint ptr %active_sensor8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %active_sensor8, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %89, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2065235968) #8, !srcloc !77
  %hw_revision.i.i = getelementptr i8, ptr %1, i32 276
  %90 = ptrtoint ptr %hw_revision.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hw_revision.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %91)
  %cmp.i.i = icmp eq i32 %91, 12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end22.rkisp1_config_clk.exit.i_crit_edge

if.end22.rkisp1_config_clk.exit.i_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_config_clk.exit.i

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %93, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 14688000) #8, !srcloc !77
  br label %rkisp1_config_clk.exit.i

rkisp1_config_clk.exit.i:                         ; preds = %if.then.i.i, %if.end22.rkisp1_config_clk.exit.i_crit_edge
  %mbus_type.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %87, i32 0, i32 2
  %94 = ptrtoint ptr %mbus_type.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mbus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %95)
  %cmp.i = icmp eq i32 %95, 5
  br i1 %cmp.i, label %if.then.i, label %rkisp1_config_clk.exit.i.rkisp1_isp_start.exit_crit_edge

rkisp1_config_clk.exit.i.rkisp1_isp_start.exit_crit_edge: ; preds = %rkisp1_config_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_start.exit

if.then.i:                                        ; preds = %rkisp1_config_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i49 = getelementptr i8, ptr %97, i32 7168
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %99 = or i32 %98, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %101, i32 7168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %99) #8, !srcloc !77
  br label %rkisp1_isp_start.exit

rkisp1_isp_start.exit:                            ; preds = %if.then.i, %rkisp1_config_clk.exit.i.rkisp1_isp_start.exit_crit_edge
  %102 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %103, i32 1024
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %105 = or i32 %104, 285343744
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %107, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %105) #8, !srcloc !77
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  br label %mutex_unlock

mutex_unlock:                                     ; preds = %rkisp1_isp_start.exit, %rkisp1_mipi_csi2_start.exit.thread, %if.end11.mutex_unlock_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11.mutex_unlock_crit_edge ], [ 0, %rkisp1_isp_start.exit ], [ %retval.0.i48.ph, %rkisp1_mipi_csi2_start.exit.thread ]
  call void @mutex_unlock(ptr noundef %ops_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %mutex_unlock, %if.end4.cleanup_crit_edge, %do.end, %rkisp1_isp_stop.exit
  %retval.0 = phi i32 [ %ret.0, %mutex_unlock ], [ -19, %do.end ], [ 0, %rkisp1_isp_stop.exit ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rkisp1_config_cif(ptr noundef %rkisp1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_config_cif.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_config_cif, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_config_cif.__UNIQUE_ID_ddebug300, ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active_sensor.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 7
  %6 = ptrtoint ptr %active_sensor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_sensor.i, align 8
  %sink_fmt1.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %sink_fmt1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sink_fmt1.i, align 4
  %src_fmt3.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %src_fmt3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src_fmt3.i, align 4
  %pad_cfg.i.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2
  %num_pads.i.i.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 0, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.i.not.i = icmp eq i16 %13, 0
  br i1 %cmp.not.i.i.not.i, label %rkisp1_isp_get_pad_fmt.exit.i, label %do.end.rkisp1_isp_get_pad_crop.exit.i_crit_edge, !prof !72

do.end.rkisp1_isp_get_pad_crop.exit.i_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_get_pad_crop.exit.i

rkisp1_isp_get_pad_fmt.exit.i:                    ; preds = %do.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %14 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %.pr.i = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp.not.i.i8.not.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp.not.i.i8.not.i, label %do.end.i9.i9.i, label %rkisp1_isp_get_pad_fmt.exit.i.rkisp1_isp_get_pad_crop.exit.i_crit_edge, !prof !72

rkisp1_isp_get_pad_fmt.exit.i.rkisp1_isp_get_pad_crop.exit.i_crit_edge: ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_get_pad_crop.exit.i

do.end.i9.i9.i:                                   ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %rkisp1_isp_get_pad_crop.exit.i

rkisp1_isp_get_pad_crop.exit.i:                   ; preds = %do.end.i9.i9.i, %rkisp1_isp_get_pad_fmt.exit.i.rkisp1_isp_get_pad_crop.exit.i_crit_edge, %do.end.rkisp1_isp_get_pad_crop.exit.i_crit_edge
  %try_crop.i11.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2, i32 0, i32 1
  %pixel_enc.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixel_enc.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %16, label %rkisp1_isp_get_pad_crop.exit.i.if.end34.i_crit_edge [
    i32 3, label %if.then.i
    i32 1, label %if.then22.i
  ]

rkisp1_isp_get_pad_crop.exit.i.if.end34.i_crit_edge: ; preds = %rkisp1_isp_get_pad_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then.i:                                        ; preds = %rkisp1_isp_get_pad_crop.exit.i
  %pixel_enc7.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %pixel_enc7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixel_enc7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp8.i = icmp eq i32 %19, 3
  br i1 %cmp8.i, label %if.then9.i, label %if.else12.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %mbus_type.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %mbus_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mbus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp10.i = icmp eq i32 %21, 2
  %..i = select i1 %cmp10.i, i32 201326592, i32 0
  br label %if.end34.i

if.else12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 1444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 201326592) #8, !srcloc !77
  %mbus_type13.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %mbus_type13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mbus_type13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp14.i = icmp eq i32 %25, 2
  %.1.i = select i1 %cmp14.i, i32 167772160, i32 100663296
  br label %if.end34.i

if.then22.i:                                      ; preds = %rkisp1_isp_get_pad_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %mbus_type23.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %mbus_type23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mbus_type23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cond.i = icmp eq i32 %27, 2
  %spec.select3.i = select i1 %cond.i, i32 33554432, i32 67108864
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then22.i, %if.else12.i, %if.then9.i, %rkisp1_isp_get_pad_crop.exit.i.if.end34.i_crit_edge
  %irq_mask.0.i = phi i32 [ 1241513984, %if.then9.i ], [ 1241513984, %if.else12.i ], [ 1241513984, %rkisp1_isp_get_pad_crop.exit.i.if.end34.i_crit_edge ], [ 1308622848, %if.then22.i ]
  %acq_mult.0.i = phi i32 [ 1, %if.then9.i ], [ 1, %if.else12.i ], [ 0, %rkisp1_isp_get_pad_crop.exit.i.if.end34.i_crit_edge ], [ 2, %if.then22.i ]
  %isp_ctrl.1.i = phi i32 [ %..i, %if.then9.i ], [ %.1.i, %if.else12.i ], [ 0, %rkisp1_isp_get_pad_crop.exit.i.if.end34.i_crit_edge ], [ %spec.select3.i, %if.then22.i ]
  %mbus_type35.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %7, i32 0, i32 2
  %28 = ptrtoint ptr %mbus_type35.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mbus_type35.i, align 4
  %.off.i = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end42.i, label %if.end34.i.if.end58.i_crit_edge

if.end34.i.if.end58.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.end42.i:                                       ; preds = %if.end34.i
  %mbus_flags.i = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %7, i32 0, i32 3
  %30 = ptrtoint ptr %mbus_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbus_flags.i, align 4
  %and.i = lshr i32 %31, 6
  %and.lobit.i = and i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp44.i = icmp eq i32 %29, 1
  br i1 %cmp44.i, label %if.then45.i, label %if.end42.i.if.end58.i_crit_edge

if.end42.i.if.end58.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %and47.i = lshr i32 %31, 3
  %32 = and i32 %and47.i, 4
  %33 = or i32 %32, %and.lobit.i
  %and53.i = lshr i32 %31, 2
  %34 = and i32 %and53.i, 2
  %35 = or i32 %33, %34
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end58.i_crit_edge, %if.end34.i.if.end58.i_crit_edge
  %signal.2.i = phi i32 [ %and.lobit.i, %if.end42.i.if.end58.i_crit_edge ], [ %35, %if.then45.i ], [ 0, %if.end34.i.if.end58.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %37, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %isp_ctrl.1.i) #8, !srcloc !77
  %yuv_seq.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %9, i32 0, i32 3
  %38 = ptrtoint ptr %yuv_seq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yuv_seq.i, align 4
  %or59.i = or i32 %39, %signal.2.i
  %bayer_pat.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %9, i32 0, i32 5
  %40 = ptrtoint ptr %bayer_pat.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bayer_pat.i, align 4
  %shl.i = shl i32 %41, 3
  %or60.i = or i32 %or59.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #8
  %43 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %44, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %42) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %46, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %48, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %50, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #8, !srcloc !77
  %51 = ptrtoint ptr %pad_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pad_cfg.i.i, align 4
  %mul.i = mul i32 %52, %acq_mult.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #8
  %54 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %55, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %53) #8, !srcloc !77
  %height.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %59 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %60, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %58) #8, !srcloc !77
  %61 = ptrtoint ptr %try_crop.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %try_crop.i11.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %64 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %65, i32 1428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %63) #8, !srcloc !77
  %top.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %top.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %69 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %70, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %68) #8, !srcloc !77
  %width62.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %width62.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %74 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %75, i32 1436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %73) #8, !srcloc !77
  %height63.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %height63.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height63.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  %79 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %80, i32 1440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %78) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %82, i32 1468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %irq_mask.0.i) #8, !srcloc !77
  %pixel_enc65.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %11, i32 0, i32 1
  %83 = ptrtoint ptr %pixel_enc65.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pixel_enc65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp66.i = icmp eq i32 %84, 3
  br i1 %cmp66.i, label %if.then67.i, label %if.else68.i

if.then67.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %params.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12
  tail call void @rkisp1_params_disable(ptr noundef %params.i) #8
  br label %rkisp1_config_isp.exit

if.else68.i:                                      ; preds = %if.end58.i
  %85 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.not.i.i25.not.i = icmp eq i16 %86, 0
  br i1 %cmp.not.i.i25.not.i, label %do.end.i9.i26.i, label %if.else68.i.rkisp1_isp_get_pad_fmt.exit27.i_crit_edge, !prof !72

if.else68.i.rkisp1_isp_get_pad_fmt.exit27.i_crit_edge: ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_get_pad_fmt.exit27.i

do.end.i9.i26.i:                                  ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %rkisp1_isp_get_pad_fmt.exit27.i

rkisp1_isp_get_pad_fmt.exit27.i:                  ; preds = %do.end.i9.i26.i, %if.else68.i.rkisp1_isp_get_pad_fmt.exit27.i_crit_edge
  %params71.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12
  %87 = ptrtoint ptr %bayer_pat.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bayer_pat.i, align 4
  %quantization.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 2, i32 0, i32 0, i32 6
  %89 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %quantization.i, align 2
  %conv.i = zext i16 %90 to i32
  tail call void @rkisp1_params_configure(ptr noundef %params71.i, i32 noundef %88, i32 noundef %conv.i) #8
  br label %rkisp1_config_isp.exit

rkisp1_config_isp.exit:                           ; preds = %rkisp1_isp_get_pad_fmt.exit27.i, %if.then67.i
  %91 = ptrtoint ptr %active_sensor.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %active_sensor.i, align 8
  %93 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i.i21 = getelementptr i8, ptr %94, i32 24
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #8, !srcloc !74
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %mbus_type.i22 = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %92, i32 0, i32 2
  %97 = ptrtoint ptr %mbus_type.i22 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mbus_type.i22, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %98, label %rkisp1_config_isp.exit.rkisp1_config_path.exit_crit_edge [
    i32 2, label %rkisp1_config_isp.exit.if.then.i23_crit_edge
    i32 1, label %rkisp1_config_isp.exit.if.then.i23_crit_edge38
    i32 5, label %if.then6.i
  ]

rkisp1_config_isp.exit.if.then.i23_crit_edge38:   ; preds = %rkisp1_config_isp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i23

rkisp1_config_isp.exit.if.then.i23_crit_edge:     ; preds = %rkisp1_config_isp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i23

rkisp1_config_isp.exit.rkisp1_config_path.exit_crit_edge: ; preds = %rkisp1_config_isp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_config_path.exit

if.then.i23:                                      ; preds = %rkisp1_config_isp.exit.if.then.i23_crit_edge, %rkisp1_config_isp.exit.if.then.i23_crit_edge38
  %100 = ptrtoint ptr %sink_fmt1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sink_fmt1.i, align 4
  %bus_width.i.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bus_width.i.i, align 4
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %103, label %do.end.i.i [
    i8 8, label %if.then.i23.sw.epilog.i.i_crit_edge
    i8 10, label %sw.bb2.i.i
    i8 12, label %sw.bb3.i.i
  ]

if.then.i23.sw.epilog.i.i_crit_edge:              ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.15) #11
  br label %rkisp1_config_path.exit

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %if.then.i23.sw.epilog.i.i_crit_edge
  %input_sel.0.i.i = phi i32 [ 0, %sw.bb3.i.i ], [ 4096, %sw.bb2.i.i ], [ 12288, %if.then.i23.sw.epilog.i.i_crit_edge ]
  %107 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %108, i32 1028
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !74
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %or.i.i = or i32 %110, %input_sel.0.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %111 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %112 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i9.i.i = getelementptr i8, ptr %113, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %111) #8, !srcloc !77
  br label %rkisp1_config_path.exit

if.then6.i:                                       ; preds = %rkisp1_config_isp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @rkisp1_config_mipi(ptr noundef %rkisp1) #8
  %or8.i = or i32 %96, 512
  br label %rkisp1_config_path.exit

rkisp1_config_path.exit:                          ; preds = %if.then6.i, %sw.epilog.i.i, %do.end.i.i, %rkisp1_config_isp.exit.rkisp1_config_path.exit_crit_edge
  %dpcl.0.i = phi i32 [ %or8.i, %if.then6.i ], [ %96, %rkisp1_config_isp.exit.rkisp1_config_path.exit_crit_edge ], [ %96, %do.end.i.i ], [ %96, %sw.epilog.i.i ]
  %ret.0.i = phi i32 [ %call7.i, %if.then6.i ], [ 0, %rkisp1_config_isp.exit.rkisp1_config_path.exit_crit_edge ], [ -22, %do.end.i.i ], [ 0, %sw.epilog.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %114 = tail call i32 @llvm.bswap.i32(i32 %dpcl.0.i) #8
  %115 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i18.i24 = getelementptr i8, ptr %116, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i24, i32 %114) #8, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool9.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool9.not, label %if.end11, label %rkisp1_config_path.exit.cleanup_crit_edge

rkisp1_config_path.exit.cleanup_crit_edge:        ; preds = %rkisp1_config_path.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %rkisp1_config_path.exit
  %117 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %118)
  %cmp.not.i.i.i = icmp ugt i16 %118, 2
  br i1 %cmp.not.i.i.i, label %if.end11.rkisp1_config_ism.exit_crit_edge, label %do.end.i9.i.i, !prof !73

if.end11.rkisp1_config_ism.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_config_ism.exit

do.end.i9.i.i:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %rkisp1_config_ism.exit

rkisp1_config_ism.exit:                           ; preds = %do.end.i9.i.i, %if.end11.rkisp1_config_ism.exit_crit_edge
  %spec.select.i10.i.i = phi i32 [ 0, %do.end.i9.i.i ], [ 2, %if.end11.rkisp1_config_ism.exit_crit_edge ]
  %try_crop.i11.i.i27 = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i.i, i32 %spec.select.i10.i.i, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i.i28 = getelementptr i8, ptr %120, i32 8964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i17.i29 = getelementptr i8, ptr %122, i32 8984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i29, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %123 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i18.i30 = getelementptr i8, ptr %124, i32 8988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i30, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %125 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i19.i31 = getelementptr i8, ptr %126, i32 8992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i31, i32 0) #8, !srcloc !77
  %127 = ptrtoint ptr %try_crop.i11.i.i27 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %try_crop.i11.i.i27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #8
  %130 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i20.i32 = getelementptr i8, ptr %131, i32 8968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i32, i32 %129) #8, !srcloc !77
  %top.i33 = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i.i, i32 %spec.select.i10.i.i, i32 1, i32 1
  %132 = ptrtoint ptr %top.i33 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %top.i33, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #8
  %135 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i21.i34 = getelementptr i8, ptr %136, i32 8972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i34, i32 %134) #8, !srcloc !77
  %width.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i.i, i32 %spec.select.i10.i.i, i32 1, i32 2
  %137 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %width.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #8
  %140 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %141, i32 8976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %139) #8, !srcloc !77
  %height.i35 = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i.i, i32 %spec.select.i10.i.i, i32 1, i32 3
  %142 = ptrtoint ptr %height.i35 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %height.i35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #8
  %145 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %146, i32 8980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %144) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %147 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %148, i32 8960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 16777216) #8, !srcloc !77
  %149 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %150, i32 1024
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %152 = or i32 %151, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %153 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %154, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %152) #8, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %rkisp1_config_ism.exit, %rkisp1_config_path.exit.cleanup_crit_edge
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_params_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_params_configure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rkisp1_config_mipi(ptr nocapture noundef readonly %rkisp1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sink_fmt1 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %sink_fmt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sink_fmt1, align 4
  %active_sensor = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 7
  %2 = ptrtoint ptr %active_sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_sensor, align 8
  %lanes2 = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %lanes2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lanes2, align 4
  %6 = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %6)
  %7 = icmp ult i32 %6, -4
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = shl nuw nsw i32 %5, 12
  %and = add nuw nsw i32 %sub, 12288
  %shl = and i32 %and, 12288
  %or5 = or i32 %shl, 397056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or5) #8
  %9 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !77
  %hw_revision = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 5, i32 6
  %11 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_revision, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %cmp6 = icmp eq i32 %12, 12
  br i1 %cmp6, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i36 = getelementptr i8, ptr %14, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #8, !srcloc !77
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %mipi_dt = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %mipi_dt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mipi_dt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %and9 = shl i32 %16, 24
  %17 = and i32 %and9, 1056964608
  %18 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i37 = getelementptr i8, ptr %19, i32 7200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %17) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i38 = getelementptr i8, ptr %21, i32 7188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 -1) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i39 = getelementptr i8, ptr %23, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 859042563) #8, !srcloc !77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_config_mipi.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_config_mipi, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !81

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i40 = getelementptr i8, ptr %27, i32 7168
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #8, !srcloc !74
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %30 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i41 = getelementptr i8, ptr %31, i32 7200
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !74
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %34 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i42 = getelementptr i8, ptr %35, i32 7172
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #8, !srcloc !74
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %38 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rkisp1, align 8
  %add.ptr.i43 = getelementptr i8, ptr %39, i32 7176
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #8, !srcloc !74
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_config_mipi.__UNIQUE_ID_ddebug299, ptr noundef %25, ptr noundef nonnull @.str.18, i32 noundef %29, i32 noundef %33, i32 noundef %37, i32 noundef %41) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %if.else.if.end9_crit_edge, label %if.else4

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else4:                                         ; preds = %if.else
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %if.end, label %if.else4.cleanup27_crit_edge

if.else4.cleanup27_crit_edge:                     ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

if.end:                                           ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  %code7 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 28673, ptr %code7, align 4
  br label %cleanup27

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %dir.0 = phi i32 [ 2, %entry.if.end9_crit_edge ], [ 1, %if.else.if.end9_crit_edge ]
  %index10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %5 = ptrtoint ptr %index10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp11 = icmp ugt i32 %6, 16
  br i1 %cmp11, label %if.end9.cleanup27_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.cleanup27_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %if.end9.for.body_crit_edge
  %pos.046 = phi i32 [ %spec.select, %for.inc.critedge.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %i.045 = phi i32 [ %inc26, %for.inc.critedge.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %direction = getelementptr [17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 %i.045, i32 6
  %7 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %direction, align 4
  %and = and i32 %8, %dir.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %pos.046, %inc
  %sub = add i32 %spec.select, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp18 = icmp eq i32 %6, %sub
  br i1 %cmp18, label %if.then19, label %for.inc.critedge

if.then19:                                        ; preds = %for.body
  %arrayidx = getelementptr [17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 %i.045
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %code20 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %11 = ptrtoint ptr %code20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %code20, align 4
  %12 = add nsw i32 %i.045, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %cmp21 = icmp ult i32 %12, 12
  %brmerge = select i1 %cmp21, i1 true, i1 %cmp
  br i1 %brmerge, label %if.then19.cleanup27_crit_edge, label %if.then23

if.then19.cleanup27_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %flags, align 4
  br label %cleanup27

for.inc.critedge:                                 ; preds = %for.body
  %inc26 = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc26, 17
  br i1 %exitcond.not, label %for.inc.critedge.cleanup27_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.critedge.cleanup27_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

cleanup27:                                        ; preds = %for.inc.critedge.cleanup27_crit_edge, %if.then23, %if.then19.cleanup27_crit_edge, %if.end9.cleanup27_crit_edge, %if.end, %if.else4.cleanup27_crit_edge
  %retval.2 = phi i32 [ 0, %if.end ], [ -22, %if.else4.cleanup27_crit_edge ], [ -22, %if.end9.cleanup27_crit_edge ], [ 0, %if.then23 ], [ 0, %if.then19.cleanup27_crit_edge ], [ -22, %for.inc.critedge.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkisp1_isp_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %1, label %if.end [
    i32 1, label %entry.cleanup_crit_edge
    i32 3, label %entry.cleanup_crit_edge36
  ]

entry.cleanup_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.not = icmp eq i32 %4, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %6, label %if.end5.cleanup_crit_edge [
    i32 8200, label %if.end5.if.end7_crit_edge
    i32 12303, label %cleanup3.fold.split.i
    i32 12295, label %cleanup3.fold.split8.i
    i32 12302, label %cleanup3.fold.split9.i
    i32 12298, label %cleanup3.fold.split10.i
    i32 12306, label %cleanup3.fold.split11.i
    i32 12296, label %cleanup3.fold.split12.i
    i32 12304, label %cleanup3.fold.split13.i
    i32 12305, label %cleanup3.fold.split14.i
    i32 12308, label %cleanup3.fold.split15.i
    i32 12289, label %cleanup3.fold.split16.i
    i32 12307, label %cleanup3.fold.split17.i
    i32 12290, label %cleanup3.fold.split18.i
    i32 8209, label %cleanup3.fold.split19.i
    i32 8210, label %cleanup3.fold.split20.i
    i32 8207, label %cleanup3.fold.split21.i
    i32 8208, label %cleanup3.fold.split22.i
  ]

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup3.fold.split.i:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split8.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split9.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split10.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split11.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split12.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split13.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split14.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split15.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split16.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split17.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split18.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split19.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split20.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split21.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cleanup3.fold.split22.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %cleanup3.fold.split22.i, %cleanup3.fold.split21.i, %cleanup3.fold.split20.i, %cleanup3.fold.split19.i, %cleanup3.fold.split18.i, %cleanup3.fold.split17.i, %cleanup3.fold.split16.i, %cleanup3.fold.split15.i, %cleanup3.fold.split14.i, %cleanup3.fold.split13.i, %cleanup3.fold.split12.i, %cleanup3.fold.split11.i, %cleanup3.fold.split10.i, %cleanup3.fold.split9.i, %cleanup3.fold.split8.i, %cleanup3.fold.split.i, %if.end5.if.end7_crit_edge
  %retval.2.i.ph = phi ptr [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 16), %cleanup3.fold.split22.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 15), %cleanup3.fold.split21.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 14), %cleanup3.fold.split20.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 13), %cleanup3.fold.split19.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 12), %cleanup3.fold.split18.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 11), %cleanup3.fold.split17.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 10), %cleanup3.fold.split16.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 9), %cleanup3.fold.split15.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 8), %cleanup3.fold.split14.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 7), %cleanup3.fold.split13.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 6), %cleanup3.fold.split12.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 5), %cleanup3.fold.split11.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 4), %cleanup3.fold.split10.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 3), %cleanup3.fold.split9.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 2), %cleanup3.fold.split8.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 1), %cleanup3.fold.split.i ], [ @rkisp1_isp_formats, %if.end5.if.end7_crit_edge ]
  %direction = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %retval.2.i.ph, i32 0, i32 6
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %and14 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp18 = icmp eq i32 %1, 2
  %or.cond35 = select i1 %tobool15.not, i1 %cmp18, i1 false
  br i1 %or.cond35, label %if.end12.cleanup_crit_edge, label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %10 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4032, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %12 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %13 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3024, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge36
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -25, %entry.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge36 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !73

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  br label %rkisp1_isp_get_pad_fmt.exit

if.else.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge, label %do.end.i9.i, !prof !73

if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit12.i

do.end.i9.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit12.i

v4l2_subdev_get_try_format.exit12.i:              ; preds = %do.end.i9.i, %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge
  %spec.select.i10.i = phi i32 [ 0, %do.end.i9.i ], [ %1, %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge ]
  %arrayidx.i11.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i10.i
  br label %rkisp1_isp_get_pad_fmt.exit

rkisp1_isp_get_pad_fmt.exit:                      ; preds = %v4l2_subdev_get_try_format.exit12.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i11.i, %v4l2_subdev_get_try_format.exit12.i ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %1, label %if.else6 [
    i32 0, label %if.then
    i32 2, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmt, align 4
  %pad_cfg.i.i = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not.i.i.not.i = icmp eq i16 %6, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !72

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  br label %rkisp1_isp_get_pad_fmt.exit.i

if.else.i.i:                                      ; preds = %if.then
  br i1 %cmp.not.i.i.not.i, label %do.end.i9.i.i, label %if.else.i.i.rkisp1_isp_get_pad_fmt.exit.i_crit_edge, !prof !72

if.else.i.i.rkisp1_isp_get_pad_fmt.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_get_pad_fmt.exit.i

do.end.i9.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %rkisp1_isp_get_pad_fmt.exit.i

rkisp1_isp_get_pad_fmt.exit.i:                    ; preds = %do.end.i9.i.i, %if.else.i.i.rkisp1_isp_get_pad_fmt.exit.i_crit_edge, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %8, %v4l2_subdev_get_try_format.exit.i.i ], [ %pad_cfg.i.i, %do.end.i9.i.i ], [ %pad_cfg.i.i, %if.else.i.i.rkisp1_isp_get_pad_fmt.exit.i_crit_edge ]
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code.i, align 4
  %code1.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %code1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %code1.i, align 4
  %12 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %10, label %rkisp1_isp_get_pad_fmt.exit.i.if.then.i_crit_edge [
    i32 8200, label %rkisp1_isp_get_pad_fmt.exit.i.lor.lhs.false.i_crit_edge
    i32 12303, label %cleanup3.fold.split.i.i
    i32 12295, label %cleanup3.fold.split8.i.i
    i32 12302, label %cleanup3.fold.split9.i.i
    i32 12298, label %cleanup3.fold.split10.i.i
    i32 12306, label %cleanup3.fold.split11.i.i
    i32 12296, label %cleanup3.fold.split12.i.i
    i32 12304, label %cleanup3.fold.split13.i.i
    i32 12305, label %cleanup3.fold.split14.i.i
    i32 12308, label %cleanup3.fold.split15.i.i
    i32 12289, label %cleanup3.fold.split16.i.i
    i32 12307, label %cleanup3.fold.split17.i.i
    i32 12290, label %cleanup3.fold.split18.i.i
    i32 8209, label %cleanup3.fold.split19.i.i
    i32 8210, label %cleanup3.fold.split20.i.i
    i32 8207, label %cleanup3.fold.split21.i.i
    i32 8208, label %cleanup3.fold.split22.i.i
  ]

rkisp1_isp_get_pad_fmt.exit.i.lor.lhs.false.i_crit_edge: ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

rkisp1_isp_get_pad_fmt.exit.i.if.then.i_crit_edge: ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

cleanup3.fold.split.i.i:                          ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split8.i.i:                         ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split9.i.i:                         ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split10.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split11.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split12.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split13.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split14.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split15.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split16.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split17.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split18.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split19.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split20.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split21.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

cleanup3.fold.split22.i.i:                        ; preds = %rkisp1_isp_get_pad_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cleanup3.fold.split22.i.i, %cleanup3.fold.split21.i.i, %cleanup3.fold.split20.i.i, %cleanup3.fold.split19.i.i, %cleanup3.fold.split18.i.i, %cleanup3.fold.split17.i.i, %cleanup3.fold.split16.i.i, %cleanup3.fold.split15.i.i, %cleanup3.fold.split14.i.i, %cleanup3.fold.split13.i.i, %cleanup3.fold.split12.i.i, %cleanup3.fold.split11.i.i, %cleanup3.fold.split10.i.i, %cleanup3.fold.split9.i.i, %cleanup3.fold.split8.i.i, %cleanup3.fold.split.i.i, %rkisp1_isp_get_pad_fmt.exit.i.lor.lhs.false.i_crit_edge
  %retval.2.i.ph.i = phi ptr [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 16), %cleanup3.fold.split22.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 15), %cleanup3.fold.split21.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 14), %cleanup3.fold.split20.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 13), %cleanup3.fold.split19.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 12), %cleanup3.fold.split18.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 11), %cleanup3.fold.split17.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 10), %cleanup3.fold.split16.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 9), %cleanup3.fold.split15.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 8), %cleanup3.fold.split14.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 7), %cleanup3.fold.split13.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 6), %cleanup3.fold.split12.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 5), %cleanup3.fold.split11.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 4), %cleanup3.fold.split10.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 3), %cleanup3.fold.split9.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 2), %cleanup3.fold.split8.i.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 1), %cleanup3.fold.split.i.i ], [ @rkisp1_isp_formats, %rkisp1_isp_get_pad_fmt.exit.i.lor.lhs.false.i_crit_edge ]
  %direction.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %retval.2.i.ph.i, i32 0, i32 6
  %13 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %direction.i, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %rkisp1_isp_get_pad_fmt.exit.i.if.then.i_crit_edge
  %15 = ptrtoint ptr %code1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12303, ptr %code1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %mbus_info.0.i = phi ptr [ %retval.2.i.ph.i, %lor.lhs.false.i.if.end.i_crit_edge ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 1), %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sink_fmt9.i = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 3
  %16 = ptrtoint ptr %sink_fmt9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mbus_info.0.i, ptr %sink_fmt9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 32) #8
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 4032) #8
  %21 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %retval.0.i.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 32) #8
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 3024) #8
  %height31.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %height31.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height31.i, align 4
  %27 = call ptr @memcpy(ptr %format, ptr %retval.0.i.i, i32 48)
  %28 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i.i67.not.i = icmp eq i16 %29, 0
  br i1 %cmp.i.i, label %if.then.i68.i, label %if.else.i70.i

if.then.i68.i:                                    ; preds = %if.end10.i
  br i1 %cmp.not.i.i67.not.i, label %do.end.i.i69.i, label %if.then.i68.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, !prof !72

if.then.i68.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %if.then.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i.i

do.end.i.i69.i:                                   ; preds = %if.then.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %do.end.i.i69.i, %if.then.i68.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %31, i32 0, i32 1
  br label %rkisp1_isp_set_sink_fmt.exit

if.else.i70.i:                                    ; preds = %if.end10.i
  br i1 %cmp.not.i.i67.not.i, label %do.end.i9.i71.i, label %if.else.i70.i.v4l2_subdev_get_try_crop.exit12.i.i_crit_edge, !prof !72

if.else.i70.i.v4l2_subdev_get_try_crop.exit12.i.i_crit_edge: ; preds = %if.else.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit12.i.i

do.end.i9.i71.i:                                  ; preds = %if.else.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit12.i.i

v4l2_subdev_get_try_crop.exit12.i.i:              ; preds = %do.end.i9.i71.i, %if.else.i70.i.v4l2_subdev_get_try_crop.exit12.i.i_crit_edge
  %try_crop.i11.i.i = getelementptr %struct.rkisp1_isp, ptr %sd, i32 0, i32 2, i32 0, i32 1
  br label %rkisp1_isp_set_sink_fmt.exit

rkisp1_isp_set_sink_fmt.exit:                     ; preds = %v4l2_subdev_get_try_crop.exit12.i.i, %v4l2_subdev_get_try_crop.exit.i.i
  %retval.0.i72.i = phi ptr [ %try_crop.i.i.i, %v4l2_subdev_get_try_crop.exit.i.i ], [ %try_crop.i11.i.i, %v4l2_subdev_get_try_crop.exit12.i.i ]
  tail call fastcc void @rkisp1_isp_set_sink_crop(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %retval.0.i72.i, i32 noundef %4) #8
  br label %if.end10

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %32 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt, align 4
  tail call fastcc void @rkisp1_isp_set_src_fmt(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %format4, i32 noundef %33)
  br label %if.end10

if.else6:                                         ; preds = %entry
  %format7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt, align 4
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i26 = icmp eq i32 %35, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %36 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.i26, label %if.then.i27, label %if.else.i

if.then.i27:                                      ; preds = %if.else6
  br i1 %cmp.not.i.i, label %if.then.i27.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !73

if.then.i27.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i27.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %if.then.i27.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %38 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %39, i32 %spec.select.i.i
  br label %rkisp1_isp_get_pad_fmt.exit

if.else.i:                                        ; preds = %if.else6
  br i1 %cmp.not.i.i, label %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge, label %do.end.i9.i, !prof !73

if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit12.i

do.end.i9.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit12.i

v4l2_subdev_get_try_format.exit12.i:              ; preds = %do.end.i9.i, %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge
  %spec.select.i10.i = phi i32 [ 0, %do.end.i9.i ], [ %1, %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge ]
  %arrayidx.i11.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i10.i
  br label %rkisp1_isp_get_pad_fmt.exit

rkisp1_isp_get_pad_fmt.exit:                      ; preds = %v4l2_subdev_get_try_format.exit12.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i11.i, %v4l2_subdev_get_try_format.exit12.i ]
  %40 = call ptr @memcpy(ptr %format7, ptr %retval.0.i, i32 48)
  br label %if.end10

if.end10:                                         ; preds = %rkisp1_isp_get_pad_fmt.exit, %if.then3, %rkisp1_isp_set_sink_fmt.exit
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge70
  ]

entry.if.end_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge70
  %ops_lock = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb16
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.bb
  %8 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel, align 4
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %10 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.not.i.i.not = icmp eq i16 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then5
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !72

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %12 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_state, align 4
  br label %rkisp1_isp_get_pad_fmt.exit

if.else.i:                                        ; preds = %if.then5
  br i1 %cmp.not.i.i.not, label %do.end.i9.i, label %if.else.i.rkisp1_isp_get_pad_fmt.exit_crit_edge, !prof !72

if.else.i.rkisp1_isp_get_pad_fmt.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_get_pad_fmt.exit

do.end.i9.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %rkisp1_isp_get_pad_fmt.exit

rkisp1_isp_get_pad_fmt.exit:                      ; preds = %do.end.i9.i, %if.else.i.rkisp1_isp_get_pad_fmt.exit_crit_edge, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %13, %v4l2_subdev_get_try_format.exit.i ], [ %pad_cfg.i, %do.end.i9.i ], [ %pad_cfg.i, %if.else.i.rkisp1_isp_get_pad_fmt.exit_crit_edge ]
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %height7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height7, align 4
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retval.0.i, align 4
  %width9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %width9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width9, align 4
  %20 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %top, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %r12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %22 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i46 = icmp eq i32 %23, 0
  %num_pads.i.i47 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %24 = ptrtoint ptr %num_pads.i.i47 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_pads.i.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.not.i.i49.not = icmp eq i16 %25, 0
  br i1 %cmp.i46, label %if.then.i50, label %if.else.i52

if.then.i50:                                      ; preds = %if.else
  br i1 %cmp.not.i.i49.not, label %do.end.i.i51, label %if.then.i50.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !72

if.then.i50.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i51:                                     ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i51, %if.then.i50.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %26 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %27, i32 0, i32 1
  br label %rkisp1_isp_get_pad_crop.exit

if.else.i52:                                      ; preds = %if.else
  br i1 %cmp.not.i.i49.not, label %do.end.i9.i53, label %if.else.i52.v4l2_subdev_get_try_crop.exit12.i_crit_edge, !prof !72

if.else.i52.v4l2_subdev_get_try_crop.exit12.i_crit_edge: ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit12.i

do.end.i9.i53:                                    ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit12.i

v4l2_subdev_get_try_crop.exit12.i:                ; preds = %do.end.i9.i53, %if.else.i52.v4l2_subdev_get_try_crop.exit12.i_crit_edge
  %try_crop.i11.i = getelementptr %struct.rkisp1_isp, ptr %sd, i32 0, i32 2, i32 0, i32 1
  br label %rkisp1_isp_get_pad_crop.exit

rkisp1_isp_get_pad_crop.exit:                     ; preds = %v4l2_subdev_get_try_crop.exit12.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i54 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %try_crop.i11.i, %v4l2_subdev_get_try_crop.exit12.i ]
  %28 = call ptr @memcpy(ptr %r12, ptr %retval.0.i54, i32 16)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %r17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %29 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pad, align 4
  %31 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel, align 4
  %pad_cfg.i55 = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i56 = icmp eq i32 %32, 0
  %num_pads.i.i57 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %33 = ptrtoint ptr %num_pads.i.i57 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i57, align 4
  %conv.i.i58 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i.i58)
  %cmp.not.i.i59 = icmp ult i32 %30, %conv.i.i58
  br i1 %cmp.i56, label %if.then.i60, label %if.else.i64

if.then.i60:                                      ; preds = %sw.bb16
  br i1 %cmp.not.i.i59, label %if.then.i60.v4l2_subdev_get_try_crop.exit.i63_crit_edge, label %do.end.i.i61, !prof !73

if.then.i60.v4l2_subdev_get_try_crop.exit.i63_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i63

do.end.i.i61:                                     ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i63

v4l2_subdev_get_try_crop.exit.i63:                ; preds = %do.end.i.i61, %if.then.i60.v4l2_subdev_get_try_crop.exit.i63_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i61 ], [ %30, %if.then.i60.v4l2_subdev_get_try_crop.exit.i63_crit_edge ]
  %35 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i62 = getelementptr %struct.v4l2_subdev_pad_config, ptr %36, i32 %spec.select.i.i, i32 1
  br label %rkisp1_isp_get_pad_crop.exit69

if.else.i64:                                      ; preds = %sw.bb16
  br i1 %cmp.not.i.i59, label %if.else.i64.v4l2_subdev_get_try_crop.exit12.i67_crit_edge, label %do.end.i9.i65, !prof !73

if.else.i64.v4l2_subdev_get_try_crop.exit12.i67_crit_edge: ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit12.i67

do.end.i9.i65:                                    ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit12.i67

v4l2_subdev_get_try_crop.exit12.i67:              ; preds = %do.end.i9.i65, %if.else.i64.v4l2_subdev_get_try_crop.exit12.i67_crit_edge
  %spec.select.i10.i = phi i32 [ 0, %do.end.i9.i65 ], [ %30, %if.else.i64.v4l2_subdev_get_try_crop.exit12.i67_crit_edge ]
  %try_crop.i11.i66 = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i55, i32 %spec.select.i10.i, i32 1
  br label %rkisp1_isp_get_pad_crop.exit69

rkisp1_isp_get_pad_crop.exit69:                   ; preds = %v4l2_subdev_get_try_crop.exit12.i67, %v4l2_subdev_get_try_crop.exit.i63
  %retval.0.i68 = phi ptr [ %try_crop.i.i62, %v4l2_subdev_get_try_crop.exit.i63 ], [ %try_crop.i11.i66, %v4l2_subdev_get_try_crop.exit12.i67 ]
  %37 = call ptr @memcpy(ptr %r17, ptr %retval.0.i68, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %rkisp1_isp_get_pad_crop.exit69, %rkisp1_isp_get_pad_crop.exit, %rkisp1_isp_get_pad_fmt.exit, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %rkisp1_isp_get_pad_crop.exit69 ], [ 0, %rkisp1_isp_get_pad_fmt.exit ], [ 0, %rkisp1_isp_get_pad_crop.exit ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isp_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_isp_set_selection.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_isp_set_selection, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !81

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %1, i32 -72
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_isp_set_selection.__UNIQUE_ID_ddebug309, ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %ops_lock = getelementptr inbounds %struct.rkisp1_isp, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %pad12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %16 = ptrtoint ptr %pad12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pad12, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %17, label %do.end.if.end23_crit_edge [
    i32 0, label %if.then14
    i32 2, label %if.then18
  ]

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %r15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %19 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sel, align 4
  tail call fastcc void @rkisp1_isp_set_sink_crop(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %r15, i32 noundef %20)
  br label %if.end23

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %r19 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %21 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sel, align 4
  tail call fastcc void @rkisp1_isp_set_src_crop(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %r19, i32 noundef %22)
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then14, %do.end.if.end23_crit_edge
  %ret.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then18 ], [ -22, %do.end.if.end23_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_isp_set_src_fmt(ptr nocapture noundef %isp, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_isp, ptr %isp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %isp, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.not.i.i = icmp ugt i16 %1, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.then.i60.thread, label %if.then.i60, !prof !73

if.then.i60.thread:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i79 = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 2
  br label %v4l2_subdev_get_try_crop.exit.i

if.else.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.else.i63.thread, label %if.else.i63, !prof !73

if.else.i63.thread:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i11.i84 = getelementptr %struct.rkisp1_isp, ptr %isp, i32 0, i32 2, i32 2
  br label %v4l2_subdev_get_try_crop.exit12.i

if.then.i60:                                      ; preds = %if.then.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %.pr = load i16, ptr %num_pads.i.i, align 4
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.pr)
  %cmp.not.i.i5970 = icmp ugt i16 %.pr, 2
  br i1 %cmp.not.i.i5970, label %if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i61, !prof !73

if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i61:                                     ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i61, %if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge, %if.then.i60.thread
  %arrayidx.i.i81 = phi ptr [ %6, %do.end.i.i61 ], [ %6, %if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge ], [ %arrayidx.i.i79, %if.then.i60.thread ]
  %spec.select.i.i62 = phi i32 [ 0, %do.end.i.i61 ], [ 2, %if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge ], [ 2, %if.then.i60.thread ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i62, i32 1
  br label %rkisp1_isp_get_pad_crop.exit

if.else.i63:                                      ; preds = %if.else.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %.pr82 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.pr82)
  %cmp.not.i.i59 = icmp ugt i16 %.pr82, 2
  br i1 %cmp.not.i.i59, label %if.else.i63.v4l2_subdev_get_try_crop.exit12.i_crit_edge, label %do.end.i9.i64, !prof !73

if.else.i63.v4l2_subdev_get_try_crop.exit12.i_crit_edge: ; preds = %if.else.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit12.i

do.end.i9.i64:                                    ; preds = %if.else.i63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit12.i

v4l2_subdev_get_try_crop.exit12.i:                ; preds = %do.end.i9.i64, %if.else.i63.v4l2_subdev_get_try_crop.exit12.i_crit_edge, %if.else.i63.thread
  %arrayidx.i11.i86 = phi ptr [ %pad_cfg.i, %do.end.i9.i64 ], [ %pad_cfg.i, %if.else.i63.v4l2_subdev_get_try_crop.exit12.i_crit_edge ], [ %arrayidx.i11.i84, %if.else.i63.thread ]
  %spec.select.i10.i65 = phi i32 [ 0, %do.end.i9.i64 ], [ 2, %if.else.i63.v4l2_subdev_get_try_crop.exit12.i_crit_edge ], [ 2, %if.else.i63.thread ]
  %try_crop.i11.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i10.i65, i32 1
  br label %rkisp1_isp_get_pad_crop.exit

rkisp1_isp_get_pad_crop.exit:                     ; preds = %v4l2_subdev_get_try_crop.exit12.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i71 = phi ptr [ %arrayidx.i.i81, %v4l2_subdev_get_try_crop.exit.i ], [ %arrayidx.i11.i86, %v4l2_subdev_get_try_crop.exit12.i ]
  %retval.0.i66 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %try_crop.i11.i, %v4l2_subdev_get_try_crop.exit12.i ]
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  %code2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i71, i32 0, i32 2
  %12 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code2, align 4
  %13 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %11, label %rkisp1_isp_get_pad_crop.exit.if.then_crit_edge [
    i32 8200, label %rkisp1_isp_get_pad_crop.exit.lor.lhs.false_crit_edge
    i32 12303, label %cleanup3.fold.split.i
    i32 12295, label %cleanup3.fold.split8.i
    i32 12302, label %cleanup3.fold.split9.i
    i32 12298, label %cleanup3.fold.split10.i
    i32 12306, label %cleanup3.fold.split11.i
    i32 12296, label %cleanup3.fold.split12.i
    i32 12304, label %cleanup3.fold.split13.i
    i32 12305, label %cleanup3.fold.split14.i
    i32 12308, label %cleanup3.fold.split15.i
    i32 12289, label %cleanup3.fold.split16.i
    i32 12307, label %cleanup3.fold.split17.i
    i32 12290, label %cleanup3.fold.split18.i
    i32 8209, label %cleanup3.fold.split19.i
    i32 8210, label %cleanup3.fold.split20.i
    i32 8207, label %cleanup3.fold.split21.i
    i32 8208, label %cleanup3.fold.split22.i
  ]

rkisp1_isp_get_pad_crop.exit.lor.lhs.false_crit_edge: ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

rkisp1_isp_get_pad_crop.exit.if.then_crit_edge:   ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

cleanup3.fold.split.i:                            ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split8.i:                           ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split9.i:                           ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split10.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split11.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split12.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split13.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split14.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split15.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split16.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split17.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split18.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split19.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split20.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split21.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cleanup3.fold.split22.i:                          ; preds = %rkisp1_isp_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup3.fold.split22.i, %cleanup3.fold.split21.i, %cleanup3.fold.split20.i, %cleanup3.fold.split19.i, %cleanup3.fold.split18.i, %cleanup3.fold.split17.i, %cleanup3.fold.split16.i, %cleanup3.fold.split15.i, %cleanup3.fold.split14.i, %cleanup3.fold.split13.i, %cleanup3.fold.split12.i, %cleanup3.fold.split11.i, %cleanup3.fold.split10.i, %cleanup3.fold.split9.i, %cleanup3.fold.split8.i, %cleanup3.fold.split.i, %rkisp1_isp_get_pad_crop.exit.lor.lhs.false_crit_edge
  %retval.2.i.ph = phi ptr [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 16), %cleanup3.fold.split22.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 15), %cleanup3.fold.split21.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 14), %cleanup3.fold.split20.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 13), %cleanup3.fold.split19.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 12), %cleanup3.fold.split18.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 11), %cleanup3.fold.split17.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 10), %cleanup3.fold.split16.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 9), %cleanup3.fold.split15.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 8), %cleanup3.fold.split14.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 7), %cleanup3.fold.split13.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 6), %cleanup3.fold.split12.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 5), %cleanup3.fold.split11.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 4), %cleanup3.fold.split10.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 3), %cleanup3.fold.split9.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 2), %cleanup3.fold.split8.i ], [ getelementptr inbounds ([17 x %struct.rkisp1_isp_mbus_info], ptr @rkisp1_isp_formats, i32 0, i32 1), %cleanup3.fold.split.i ], [ @rkisp1_isp_formats, %rkisp1_isp_get_pad_crop.exit.lor.lhs.false_crit_edge ]
  %direction = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %retval.2.i.ph, i32 0, i32 6
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %rkisp1_isp_get_pad_crop.exit.if.then_crit_edge
  %16 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8200, ptr %code2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %mbus_info.0 = phi ptr [ %retval.2.i.ph, %lor.lhs.false.if.end_crit_edge ], [ @rkisp1_isp_formats, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %which)
  %cmp = icmp eq i32 %which, 1
  br i1 %cmp, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %src_fmt10 = getelementptr inbounds %struct.rkisp1_isp, ptr %isp, i32 0, i32 4
  %17 = ptrtoint ptr %src_fmt10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mbus_info.0, ptr %src_fmt10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i66, i32 0, i32 2
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %20 = ptrtoint ptr %retval.0.i71 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %retval.0.i71, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i66, i32 0, i32 3
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %height13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i71, i32 0, i32 1
  %23 = ptrtoint ptr %height13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height13, align 4
  %flags = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 8
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool15.not = icmp eq i16 %26, 0
  br i1 %tobool15.not, label %if.end11.if.else_crit_edge, label %land.lhs.true

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 6
  %27 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %quantization, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp17 = icmp eq i16 %28, 1
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true
  %pixel_enc = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %mbus_info.0, i32 0, i32 1
  %29 = ptrtoint ptr %pixel_enc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixel_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp20 = icmp eq i32 %30, 1
  br i1 %cmp20, label %if.then22, label %land.lhs.true19.if.else_crit_edge

land.lhs.true19.if.else_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  %quantization23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i71, i32 0, i32 6
  %31 = ptrtoint ptr %quantization23 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %quantization23, align 2
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true19.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end11.if.else_crit_edge
  %pixel_enc24 = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %mbus_info.0, i32 0, i32 1
  %32 = ptrtoint ptr %pixel_enc24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixel_enc24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp25 = icmp eq i32 %33, 1
  %quantization28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i71, i32 0, i32 6
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %quantization28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %quantization28, align 2
  br label %if.end32

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %quantization28 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %quantization28, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then27, %if.then22
  %36 = call ptr @memcpy(ptr %format, ptr %retval.0.i71, i32 48)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_isp_set_sink_crop(ptr noundef %isp, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %r, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_isp, ptr %isp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %isp, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.i.not = icmp eq i16 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i.not, label %if.then.i32, label %if.then.i32.thread, !prof !72

if.then.i32.thread:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i58 = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 0, i32 1
  br label %v4l2_subdev_get_try_format.exit.i

if.else.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i.not, label %if.else.i34, label %if.else.i34.thread, !prof !72

if.else.i34.thread:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %try_crop.i11.i62 = getelementptr %struct.rkisp1_isp, ptr %isp, i32 0, i32 2, i32 0, i32 1
  br label %rkisp1_isp_get_pad_fmt.exit

if.then.i32:                                      ; preds = %if.then.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %.pr = load i16, ptr %num_pads.i.i, align 4
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.not.i.i3154.not = icmp eq i16 %.pr, 0
  br i1 %cmp.not.i.i3154.not, label %do.end.i.i33, label %if.then.i32.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !72

if.then.i32.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i33:                                     ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i33, %if.then.i32.v4l2_subdev_get_try_format.exit.i_crit_edge, %if.then.i32.thread
  %try_crop.i.i60 = phi ptr [ %try_crop.i.i58, %if.then.i32.thread ], [ %try_crop.i.i, %do.end.i.i33 ], [ %try_crop.i.i, %if.then.i32.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  br label %rkisp1_isp_get_pad_fmt.exit

if.else.i34:                                      ; preds = %if.else.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %.pr61 = load i16, ptr %num_pads.i.i, align 4
  %try_crop.i11.i = getelementptr %struct.rkisp1_isp, ptr %isp, i32 0, i32 2, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr61)
  %cmp.not.i.i31.not = icmp eq i16 %.pr61, 0
  br i1 %cmp.not.i.i31.not, label %do.end.i9.i35, label %if.else.i34.rkisp1_isp_get_pad_fmt.exit_crit_edge, !prof !72

if.else.i34.rkisp1_isp_get_pad_fmt.exit_crit_edge: ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %rkisp1_isp_get_pad_fmt.exit

do.end.i9.i35:                                    ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %rkisp1_isp_get_pad_fmt.exit

rkisp1_isp_get_pad_fmt.exit:                      ; preds = %do.end.i9.i35, %if.else.i34.rkisp1_isp_get_pad_fmt.exit_crit_edge, %v4l2_subdev_get_try_format.exit.i, %if.else.i34.thread
  %retval.0.i55 = phi ptr [ %try_crop.i.i60, %v4l2_subdev_get_try_format.exit.i ], [ %try_crop.i11.i, %do.end.i9.i35 ], [ %try_crop.i11.i, %if.else.i34.rkisp1_isp_get_pad_fmt.exit_crit_edge ], [ %try_crop.i11.i62, %if.else.i34.thread ]
  %retval.0.i36 = phi ptr [ %8, %v4l2_subdev_get_try_format.exit.i ], [ %pad_cfg.i, %do.end.i9.i35 ], [ %pad_cfg.i, %if.else.i34.rkisp1_isp_get_pad_fmt.exit_crit_edge ], [ %pad_cfg.i, %if.else.i34.thread ]
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %add = add i32 %11, 1
  %and = and i32 %add, -2
  %12 = ptrtoint ptr %retval.0.i55 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %retval.0.i55, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %add3 = add i32 %14, 1
  %and4 = and i32 %add3, -2
  %width5 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i55, i32 0, i32 2
  %15 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and4, ptr %width5, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %16 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top, align 4
  %top6 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i55, i32 0, i32 1
  %18 = ptrtoint ptr %top6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %top6, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i55, i32 0, i32 3
  %21 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height7, align 4
  tail call void @rkisp1_sd_adjust_crop(ptr noundef %retval.0.i55, ptr noundef %retval.0.i36) #8
  %22 = call ptr @memcpy(ptr %r, ptr %retval.0.i55, i32 16)
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %cmp.not.i.i41 = icmp ugt i16 %24, 2
  br i1 %cmp.i, label %if.then.i42, label %if.else.i46

if.then.i42:                                      ; preds = %rkisp1_isp_get_pad_fmt.exit
  br i1 %cmp.not.i.i41, label %if.then.i42.v4l2_subdev_get_try_crop.exit.i45_crit_edge, label %do.end.i.i43, !prof !73

if.then.i42.v4l2_subdev_get_try_crop.exit.i45_crit_edge: ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i45

do.end.i.i43:                                     ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i45

v4l2_subdev_get_try_crop.exit.i45:                ; preds = %do.end.i.i43, %if.then.i42.v4l2_subdev_get_try_crop.exit.i45_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i43 ], [ 2, %if.then.i42.v4l2_subdev_get_try_crop.exit.i45_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i44 = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i.i, i32 1
  br label %rkisp1_isp_get_pad_crop.exit51

if.else.i46:                                      ; preds = %rkisp1_isp_get_pad_fmt.exit
  br i1 %cmp.not.i.i41, label %if.else.i46.v4l2_subdev_get_try_crop.exit12.i49_crit_edge, label %do.end.i9.i47, !prof !73

if.else.i46.v4l2_subdev_get_try_crop.exit12.i49_crit_edge: ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit12.i49

do.end.i9.i47:                                    ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit12.i49

v4l2_subdev_get_try_crop.exit12.i49:              ; preds = %do.end.i9.i47, %if.else.i46.v4l2_subdev_get_try_crop.exit12.i49_crit_edge
  %spec.select.i10.i = phi i32 [ 0, %do.end.i9.i47 ], [ 2, %if.else.i46.v4l2_subdev_get_try_crop.exit12.i49_crit_edge ]
  %try_crop.i11.i48 = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i10.i, i32 1
  br label %rkisp1_isp_get_pad_crop.exit51

rkisp1_isp_get_pad_crop.exit51:                   ; preds = %v4l2_subdev_get_try_crop.exit12.i49, %v4l2_subdev_get_try_crop.exit.i45
  %retval.0.i50 = phi ptr [ %try_crop.i.i44, %v4l2_subdev_get_try_crop.exit.i45 ], [ %try_crop.i11.i48, %v4l2_subdev_get_try_crop.exit12.i49 ]
  tail call fastcc void @rkisp1_isp_set_src_crop(ptr noundef %isp, ptr noundef %sd_state, ptr noundef %retval.0.i50, i32 noundef %which)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_sd_adjust_crop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_isp_set_src_crop(ptr noundef %isp, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %r, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_isp, ptr %isp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %isp, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.not.i.i = icmp ugt i16 %1, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.then.i32.thread, label %if.then.i32, !prof !73

if.then.i32.thread:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i63 = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 2, i32 1
  br label %v4l2_subdev_get_try_crop.exit.i36

if.else.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.else.i37.thread, label %if.else.i37, !prof !73

if.else.i37.thread:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %try_crop.i11.i68 = getelementptr %struct.rkisp1_isp, ptr %isp, i32 0, i32 2, i32 2, i32 1
  br label %v4l2_subdev_get_try_crop.exit12.i41

if.then.i32:                                      ; preds = %if.then.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %.pr = load i16, ptr %num_pads.i.i, align 4
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.not.i.i3158.not = icmp eq i16 %.pr, 0
  br i1 %cmp.not.i.i3158.not, label %do.end.i.i33, label %if.then.i32.v4l2_subdev_get_try_crop.exit.i36_crit_edge, !prof !72

if.then.i32.v4l2_subdev_get_try_crop.exit.i36_crit_edge: ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i36

do.end.i.i33:                                     ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i36

v4l2_subdev_get_try_crop.exit.i36:                ; preds = %do.end.i.i33, %if.then.i32.v4l2_subdev_get_try_crop.exit.i36_crit_edge, %if.then.i32.thread
  %try_crop.i.i65 = phi ptr [ %try_crop.i.i63, %if.then.i32.thread ], [ %try_crop.i.i, %do.end.i.i33 ], [ %try_crop.i.i, %if.then.i32.v4l2_subdev_get_try_crop.exit.i36_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i35 = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 0, i32 1
  br label %rkisp1_isp_get_pad_crop.exit43

if.else.i37:                                      ; preds = %if.else.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %.pr66 = load i16, ptr %num_pads.i.i, align 4
  %try_crop.i11.i = getelementptr %struct.rkisp1_isp, ptr %isp, i32 0, i32 2, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr66)
  %cmp.not.i.i31.not = icmp eq i16 %.pr66, 0
  br i1 %cmp.not.i.i31.not, label %do.end.i9.i38, label %if.else.i37.v4l2_subdev_get_try_crop.exit12.i41_crit_edge, !prof !72

if.else.i37.v4l2_subdev_get_try_crop.exit12.i41_crit_edge: ; preds = %if.else.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit12.i41

do.end.i9.i38:                                    ; preds = %if.else.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit12.i41

v4l2_subdev_get_try_crop.exit12.i41:              ; preds = %do.end.i9.i38, %if.else.i37.v4l2_subdev_get_try_crop.exit12.i41_crit_edge, %if.else.i37.thread
  %try_crop.i11.i70 = phi ptr [ %try_crop.i11.i68, %if.else.i37.thread ], [ %try_crop.i11.i, %do.end.i9.i38 ], [ %try_crop.i11.i, %if.else.i37.v4l2_subdev_get_try_crop.exit12.i41_crit_edge ]
  %try_crop.i11.i40 = getelementptr %struct.rkisp1_isp, ptr %isp, i32 0, i32 2, i32 0, i32 1
  br label %rkisp1_isp_get_pad_crop.exit43

rkisp1_isp_get_pad_crop.exit43:                   ; preds = %v4l2_subdev_get_try_crop.exit12.i41, %v4l2_subdev_get_try_crop.exit.i36
  %retval.0.i59 = phi ptr [ %try_crop.i.i65, %v4l2_subdev_get_try_crop.exit.i36 ], [ %try_crop.i11.i70, %v4l2_subdev_get_try_crop.exit12.i41 ]
  %retval.0.i42 = phi ptr [ %try_crop.i.i35, %v4l2_subdev_get_try_crop.exit.i36 ], [ %try_crop.i11.i40, %v4l2_subdev_get_try_crop.exit12.i41 ]
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %add = add i32 %11, 1
  %and = and i32 %add, -2
  %12 = ptrtoint ptr %retval.0.i59 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %retval.0.i59, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %add3 = add i32 %14, 1
  %and4 = and i32 %add3, -2
  %width5 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i59, i32 0, i32 2
  %15 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and4, ptr %width5, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %16 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top, align 4
  %top6 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i59, i32 0, i32 1
  %18 = ptrtoint ptr %top6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %top6, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i59, i32 0, i32 3
  %21 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height7, align 4
  tail call void @rkisp1_sd_adjust_crop_rect(ptr noundef %retval.0.i59, ptr noundef %retval.0.i42) #8
  %22 = call ptr @memcpy(ptr %r, ptr %retval.0.i59, i32 16)
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %cmp.not.i.i48 = icmp ugt i16 %24, 2
  br i1 %cmp.i, label %if.then.i49, label %if.else.i52

if.then.i49:                                      ; preds = %rkisp1_isp_get_pad_crop.exit43
  br i1 %cmp.not.i.i48, label %if.then.i49.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i50, !prof !73

if.then.i49.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i50:                                     ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i50, %if.then.i49.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i51 = phi i32 [ 0, %do.end.i.i50 ], [ 2, %if.then.i49.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i.i51
  br label %rkisp1_isp_get_pad_fmt.exit

if.else.i52:                                      ; preds = %rkisp1_isp_get_pad_crop.exit43
  br i1 %cmp.not.i.i48, label %if.else.i52.v4l2_subdev_get_try_format.exit12.i_crit_edge, label %do.end.i9.i53, !prof !73

if.else.i52.v4l2_subdev_get_try_format.exit12.i_crit_edge: ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit12.i

do.end.i9.i53:                                    ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit12.i

v4l2_subdev_get_try_format.exit12.i:              ; preds = %do.end.i9.i53, %if.else.i52.v4l2_subdev_get_try_format.exit12.i_crit_edge
  %spec.select.i10.i54 = phi i32 [ 0, %do.end.i9.i53 ], [ 2, %if.else.i52.v4l2_subdev_get_try_format.exit12.i_crit_edge ]
  %arrayidx.i11.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i10.i54
  br label %rkisp1_isp_get_pad_fmt.exit

rkisp1_isp_get_pad_fmt.exit:                      ; preds = %v4l2_subdev_get_try_format.exit12.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i55 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i11.i, %v4l2_subdev_get_try_format.exit12.i ]
  tail call fastcc void @rkisp1_isp_set_src_fmt(ptr noundef %isp, ptr noundef %sd_state, ptr noundef %retval.0.i55, i32 noundef %which)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_sd_adjust_crop_rect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_subdev_link_validate(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %index = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp = icmp eq i16 %4, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @v4l2_subdev_link_validate(ptr noundef %link) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1079, i32 20}
!2 = !{ptr @rkisp1_isp_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1090, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1097, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rkisp1_isp_register._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @rkisp1_isp_register._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1196, i32 4}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rkisp1_isp_formats, !17, !"rkisp1_isp_formats", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 57, i32 42}
!18 = !{ptr @rkisp1_isp_ops, !19, !"rkisp1_isp_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1058, i32 37}
!20 = !{ptr @rkisp1_isp_core_ops, !21, !"rkisp1_isp_core_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1053, i32 42}
!22 = !{ptr @rkisp1_isp_video_ops, !23, !"rkisp1_isp_video_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1049, i32 43}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1005, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rkisp1_isp_s_stream._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @rkisp1_isp_s_stream._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 480, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rkisp1_config_cif.__UNIQUE_ID_ddebug300, !31, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 391, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rkisp1_config_dvp._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rkisp1_config_dvp._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 440, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rkisp1_config_mipi.__UNIQUE_ID_ddebug299, !43, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 965, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rkisp1_mipi_csi2_start._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rkisp1_mipi_csi2_start._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 971, i32 3}
!53 = !{ptr @rkisp1_mipi_csi2_start._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rkisp1_mipi_csi2_start._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @rkisp1_isp_pad_ops, !56, !"rkisp1_isp_pad_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 940, i32 41}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 918, i32 2}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rkisp1_isp_set_selection.__UNIQUE_ID_ddebug309, !58, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!61 = !{ptr @rkisp1_isp_media_ops, !62, !"rkisp1_isp_media_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c", i32 1045, i32 45}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 3019218}
!75 = !{i64 2156613453}
!76 = !{i64 2156612588}
!77 = !{i64 3018800}
!78 = !{i8 0, i8 2}
!79 = !{i64 2156632623}
!80 = !{i64 2156633225}
!81 = !{i64 2148734410, i64 2148734415, i64 2148734428, i64 2148734472, i64 2148734506, i64 2148734527}
