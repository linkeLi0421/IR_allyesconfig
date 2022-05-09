; ModuleID = '/llk/IR_all_yes/drivers/staging/media/tegra-video/vi.c_pt.bc'
source_filename = "../drivers/staging/media/tegra-video/vi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_video_format = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_vi_channel = type { %struct.list_head, %struct.video_device, %struct.mutex, %struct.media_pad, ptr, [2 x ptr], [2 x ptr], [2 x %struct.spinlock], ptr, %struct.wait_queue_head, ptr, %struct.wait_queue_head, %struct.v4l2_pix_format, ptr, %struct.vb2_queue, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [2 x i8], i8, i8, ptr, %struct.v4l2_ctrl_handler, i32, [2 x i32], [2 x i32], i32, %struct.v4l2_async_notifier }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.91, i32, i32 }
%union.anon.91 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_vi = type { ptr, %struct.host1x_client, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_video_device = type { %struct.v4l2_device, %struct.media_device, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tegra_csi = type { ptr, %struct.host1x_client, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tegra_csi_channel = type { %struct.list_head, %struct.v4l2_subdev, [2 x %struct.media_pad], i32, ptr, ptr, i8, i32, [2 x i8], i8, %struct.v4l2_mbus_framefmt, i32, i32, i32, ptr, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.tegra_vi_soc = type { ptr, i32, ptr, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.107, [2 x i32] }
%union.anon.107 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.108, [2 x i32] }
%union.anon.108 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_dv_timings = type { i32, %union.anon.109 }
%union.anon.109 = type { [32 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.tegra_channel_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32, [2 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.tegra_vi_ops = type { ptr, ptr }

@tegra_v4l2_nodes_setup_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1466, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register subdev: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_v4l2_nodes_setup_tpg\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/media/tegra-video/vi.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_v4l2_nodes_setup_tpg._entry_ptr = internal global ptr @tegra_v4l2_nodes_setup_tpg._entry, section ".printk_index", align 4
@tegra_v4l2_nodes_setup_tpg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1474, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register video device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_v4l2_nodes_setup_tpg._entry_ptr.7 = internal global ptr @tegra_v4l2_nodes_setup_tpg._entry.5, section ".printk_index", align 4
@tegra_v4l2_nodes_setup_tpg.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra_video\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"creating %s:%u -> %s:%u link\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_v4l2_nodes_setup_tpg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to create %s:%u -> %s:%u link: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tegra_v4l2_nodes_setup_tpg._entry_ptr.12 = internal global ptr @tegra_v4l2_nodes_setup_tpg._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tegra-vi\00", [23 x i8] zeroinitializer }, align 32
@tegra_vi_of_id_table = internal constant { [1 x %struct.of_device_id], [60 x i8] } zeroinitializer, align 32
@tegra_vi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vi_runtime_suspend, ptr @vi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_vi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_vi_probe, ptr @tegra_vi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_vi_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_vi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vi_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vi_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vi_pattern_strings = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@tegra_channel_setup_ctrl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1013, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to add TPG ctrl handler: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_channel_setup_ctrl_handler\00", [63 x i8] zeroinitializer }, align 32
@tegra_channel_setup_ctrl_handler._entry_ptr = internal global ptr @tegra_channel_setup_ctrl_handler._entry, section ".printk_index", align 4
@tegra_channel_setup_ctrl_handler._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1049, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to setup v4l2 ctrl handler: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_channel_setup_ctrl_handler._entry_ptr.18 = internal global ptr @tegra_channel_setup_ctrl_handler._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Black/White Direct Mode\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Color Patch Mode\00", [47 x i8] zeroinitializer }, align 32
@tegra_vi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1987, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get vi clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_vi_probe\00", [17 x i8] zeroinitializer }, align 32
@tegra_vi_probe._entry_ptr = internal global ptr @tegra_vi_probe._entry, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"avdd-dsi-csi\00", [19 x i8] zeroinitializer }, align 32
@tegra_vi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 1994, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get VDD supply: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_vi_probe._entry_ptr.26 = internal global ptr @tegra_vi_probe._entry.24, section ".printk_index", align 4
@tegra_vi_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.2, i32 2000, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PM domain is not attached: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_vi_probe._entry_ptr.30 = internal global ptr @tegra_vi_probe._entry.27, section ".printk_index", align 4
@tegra_vi_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.2, i32 2007, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to populate vi child device: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_vi_probe._entry_ptr.33 = internal global ptr @tegra_vi_probe._entry.31, section ".printk_index", align 4
@vi_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @tegra_vi_init, ptr @tegra_vi_exit, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra_vi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_vi_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.2, i32 2024, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_vi_probe._entry_ptr.36 = internal global ptr @tegra_vi_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@tegra_vi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1917, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate vi channels: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra_vi_init\00", [18 x i8] zeroinitializer }, align 32
@tegra_vi_init._entry_ptr = internal global ptr @tegra_vi_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_vi_channels_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1413, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize channel-%d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_vi_channels_init\00", [41 x i8] zeroinitializer }, align 32
@tegra_vi_channels_init._entry_ptr = internal global ptr @tegra_vi_channels_init._entry, section ".printk_index", align 4
@tegra_channel_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chan->video_lock\00", [46 x i8] zeroinitializer }, align 32
@tegra_channel_init.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chan->start_lock\00", [46 x i8] zeroinitializer }, align 32
@tegra_channel_init.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chan->done_lock\00", [47 x i8] zeroinitializer }, align 32
@tegra_channel_init.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chan->start_wait\00", [46 x i8] zeroinitializer }, align 32
@tegra_channel_init.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chan->done_wait\00", [47 x i8] zeroinitializer }, align 32
@tegra_default_format = internal constant { %struct.tegra_video_format, [40 x i8] } { %struct.tegra_video_format { i32 43, i32 10, i32 12303, i32 2, i32 32, i32 808535890 }, [40 x i8] zeroinitializer }, align 32
@tegra_channel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize media entity: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_channel_init\00", [45 x i8] zeroinitializer }, align 32
@tegra_channel_init._entry_ptr = internal global ptr @tegra_channel_init._entry, section ".printk_index", align 4
@tegra_channel_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vi:1234:(&chan->ctrl_handler)->_lock\00", [59 x i8] zeroinitializer }, align 32
@tegra_channel_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.2, i32 1237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to initialize v4l2 ctrl handler: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_channel_init._entry_ptr.56 = internal global ptr @tegra_channel_init._entry.54, section ".printk_index", align 4
@tegra_channel_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-%s-%u\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@tegra_channel_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @tegra_channel_querycap, ptr @tegra_channel_enum_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_channel_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_channel_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_channel_try_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @tegra_channel_enum_input, ptr @tegra_channel_g_input, ptr @tegra_channel_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_channel_g_selection, ptr @tegra_channel_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_channel_g_parm, ptr @tegra_channel_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_channel_log_status, ptr null, ptr null, ptr null, ptr null, ptr @tegra_channel_enum_framesizes, ptr @tegra_channel_enum_frameintervals, ptr @tegra_channel_s_dv_timings, ptr @tegra_channel_g_dv_timings, ptr @tegra_channel_query_dv_timings, ptr @tegra_channel_enum_dv_timings, ptr @tegra_channel_dv_timings_cap, ptr @tegra_channel_g_edid, ptr @tegra_channel_s_edid, ptr @tegra_channel_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@tegra_channel_queue_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @tegra_channel_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @tegra_channel_buffer_prepare, ptr null, ptr null, ptr @tegra_channel_start_streaming, ptr @tegra_channel_stop_streaming, ptr @tegra_channel_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@tegra_channel_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.2, i32 1270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize vb2 queue: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_channel_init._entry_ptr.61 = internal global ptr @tegra_channel_init._entry.59, section ".printk_index", align 4
@tegra_channel_host1x_syncpt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to request frame start syncpoint\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_channel_host1x_syncpt_init\00", [63 x i8] zeroinitializer }, align 32
@tegra_channel_host1x_syncpt_init._entry_ptr = internal global ptr @tegra_channel_host1x_syncpt_init._entry, section ".printk_index", align 4
@tegra_channel_host1x_syncpt_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 1178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request memory ack syncpoint\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_channel_host1x_syncpt_init._entry_ptr.66 = internal global ptr @tegra_channel_host1x_syncpt_init._entry.64, section ".printk_index", align 4
@tegra_channel_host1x_syncpt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&chan->sp_incr_lock[i]\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-video\00", [20 x i8] zeroinitializer }, align 32
@tegra_channel_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: buffer too small (%lu < %lu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_channel_buffer_prepare\00", [35 x i8] zeroinitializer }, align 32
@tegra_channel_buffer_prepare._entry_ptr = internal global ptr @tegra_channel_buffer_prepare._entry, section ".printk_index", align 4
@tegra_channel_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 302, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra_channel_start_streaming\00", [34 x i8] zeroinitializer }, align 32
@tegra_channel_start_streaming._entry_ptr = internal global ptr @tegra_channel_start_streaming._entry, section ".printk_index", align 4
@tegra_vi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 2043, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_vi_remove\00", [16 x i8] zeroinitializer }, align 32
@tegra_vi_remove._entry_ptr = internal global ptr @tegra_vi_remove._entry, section ".printk_index", align 4
@vi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1516, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable VDD supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vi_runtime_resume\00", [46 x i8] zeroinitializer }, align 32
@vi_runtime_resume._entry_ptr = internal global ptr @vi_runtime_resume._entry, section ".printk_index", align 4
@vi_runtime_resume._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 1522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set vi clock rate: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@vi_runtime_resume._entry_ptr.80 = internal global ptr @vi_runtime_resume._entry.78, section ".printk_index", align 4
@vi_runtime_resume._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.2, i32 1528, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable vi clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@vi_runtime_resume._entry_ptr.83 = internal global ptr @vi_runtime_resume._entry.81, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10096641, i64 10422531]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1465, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1473, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1478, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1486, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2066, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"tegra_vi_of_id_table\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2052, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"tegra_vi_pm_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2060, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"tegra_vi_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2064, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"vi_ctrl_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 979, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"vi_pattern_strings\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 984, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1012, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1048, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 985, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 986, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1987, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1991, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1994, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2000, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2006, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"vi_client_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1964, i32 39 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2021, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2023, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1907, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1916, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1411, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1202, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1205, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1206, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1207, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1208, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [21 x i8] c"tegra_default_format\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 35, i32 40 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1229, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1234, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1236, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"tegra_channel_fops\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 945, i32 42 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1246, i32 55 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1247, i32 23 }
@___asan_gen_.293 = private unnamed_addr constant [24 x i8] c"tegra_channel_ioctl_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 906, i32 36 }
@___asan_gen_.296 = private unnamed_addr constant [25 x i8] c"tegra_channel_queue_qops\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 321, i32 29 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1270, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1171, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1178, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1186, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 339, i32 23 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 127, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 302, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 2042, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1516, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1522, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.375 = private constant [42 x i8] c"../drivers/staging/media/tegra-video/vi.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1528, i32 3 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @tegra_channel_buffer_prepare._entry, ptr @tegra_channel_buffer_prepare._entry_ptr, ptr @tegra_channel_host1x_syncpt_init._entry, ptr @tegra_channel_host1x_syncpt_init._entry.64, ptr @tegra_channel_host1x_syncpt_init._entry_ptr, ptr @tegra_channel_host1x_syncpt_init._entry_ptr.66, ptr @tegra_channel_init._entry, ptr @tegra_channel_init._entry.54, ptr @tegra_channel_init._entry.59, ptr @tegra_channel_init._entry_ptr, ptr @tegra_channel_init._entry_ptr.56, ptr @tegra_channel_init._entry_ptr.61, ptr @tegra_channel_setup_ctrl_handler._entry, ptr @tegra_channel_setup_ctrl_handler._entry.16, ptr @tegra_channel_setup_ctrl_handler._entry_ptr, ptr @tegra_channel_setup_ctrl_handler._entry_ptr.18, ptr @tegra_channel_start_streaming._entry, ptr @tegra_channel_start_streaming._entry_ptr, ptr @tegra_v4l2_nodes_setup_tpg._entry, ptr @tegra_v4l2_nodes_setup_tpg._entry.10, ptr @tegra_v4l2_nodes_setup_tpg._entry.5, ptr @tegra_v4l2_nodes_setup_tpg._entry_ptr, ptr @tegra_v4l2_nodes_setup_tpg._entry_ptr.12, ptr @tegra_v4l2_nodes_setup_tpg._entry_ptr.7, ptr @tegra_vi_channels_init._entry, ptr @tegra_vi_channels_init._entry_ptr, ptr @tegra_vi_init._entry, ptr @tegra_vi_init._entry_ptr, ptr @tegra_vi_probe._entry, ptr @tegra_vi_probe._entry.24, ptr @tegra_vi_probe._entry.27, ptr @tegra_vi_probe._entry.31, ptr @tegra_vi_probe._entry.34, ptr @tegra_vi_probe._entry_ptr, ptr @tegra_vi_probe._entry_ptr.26, ptr @tegra_vi_probe._entry_ptr.30, ptr @tegra_vi_probe._entry_ptr.33, ptr @tegra_vi_probe._entry_ptr.36, ptr @tegra_vi_remove._entry, ptr @tegra_vi_remove._entry_ptr, ptr @vi_runtime_resume._entry, ptr @vi_runtime_resume._entry.78, ptr @vi_runtime_resume._entry.81, ptr @vi_runtime_resume._entry_ptr, ptr @vi_runtime_resume._entry_ptr.80, ptr @vi_runtime_resume._entry_ptr.83, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @tegra_vi_of_id_table, ptr @tegra_vi_pm_ops, ptr @tegra_vi_driver, ptr @vi_ctrl_ops, ptr @vi_pattern_strings, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @vi_client_ops, ptr @tegra_vi_probe.__key, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @tegra_channel_init.__key, ptr @.str.42, ptr @tegra_channel_init.__key.43, ptr @.str.44, ptr @tegra_channel_init.__key.45, ptr @.str.46, ptr @tegra_channel_init.__key.47, ptr @.str.48, ptr @tegra_channel_init.__key.49, ptr @.str.50, ptr @tegra_default_format, ptr @.str.51, ptr @.str.52, ptr @tegra_channel_init._key, ptr @.str.53, ptr @.str.55, ptr @tegra_channel_fops, ptr @.str.57, ptr @.str.58, ptr @tegra_channel_ioctl_ops, ptr @tegra_channel_queue_qops, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @tegra_channel_host1x_syncpt_init.__key, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_v4l2_nodes_setup_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_v4l2_nodes_setup_tpg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_v4l2_nodes_setup_tpg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_of_id_table to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_pattern_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_setup_ctrl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_setup_ctrl_handler._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_channels_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_default_format to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_queue_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_host1x_syncpt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_host1x_syncpt_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_host1x_syncpt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_channel_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_runtime_resume._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_runtime_resume._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_channel_get_remote_csi_subdev(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 3
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %pad1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %entity = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_channel_get_remote_source_subdev(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 3
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra_channel_get_remote_csi_subdev.exit:         ; preds = %entry
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %tegra_channel_get_remote_csi_subdev.exit.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.while.cond_crit_edge

tegra_channel_get_remote_csi_subdev.exit.while.cond_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit
  br label %while.cond

tegra_channel_get_remote_csi_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond:                                       ; preds = %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.while.cond_crit_edge
  %subdev.0 = phi ptr [ %6, %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge ], [ %1, %tegra_channel_get_remote_csi_subdev.exit.while.cond_crit_edge ]
  %pad.0.in = getelementptr inbounds %struct.media_entity, ptr %subdev.0, i32 0, i32 9
  %2 = ptrtoint ptr %pad.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %pad.0 = load ptr, ptr %pad.0.in, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %pad.0, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call3 = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %while.body.cleanup_crit_edge, label %lor.lhs.false

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.body
  %entity5 = getelementptr inbounds %struct.media_pad, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %entity5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entity5, align 4
  %tobool.not.i24 = icmp eq ptr %6, null
  br i1 %tobool.not.i24, label %lor.lhs.false.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %obj_type.i, align 4
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_media_entity_v4l2_subdev.exit.while.cond_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

cleanup:                                          ; preds = %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %subdev.0, %while.body.cleanup_crit_edge ], [ %subdev.0, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ %subdev.0, %while.cond.cleanup_crit_edge ], [ %subdev.0, %lor.lhs.false.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_channel_set_stream(ptr noundef %chan, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %if.then
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.if.end_crit_edge, label %if.else.i

tegra_channel_get_remote_csi_subdev.exit.i.if.end_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else.i:                                        ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i.if.end_crit_edge, label %land.lhs.true.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_stream.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.else6.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not.i = icmp eq ptr %8, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else14.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else14.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_stream9.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %s_stream9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_stream9.i, align 4
  %tobool10.not.i = icmp eq ptr %10, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else14.i_crit_edge, label %land.lhs.true8.i.if.end20.sink.split.i_crit_edge

land.lhs.true8.i.if.end20.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.sink.split.i

land.lhs.true8.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true8.i.if.else14.i_crit_edge, %if.else6.i.if.else14.i_crit_edge
  br label %if.end20.sink.split.i

if.end20.sink.split.i:                            ; preds = %if.else14.i, %land.lhs.true8.i.if.end20.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %7, %if.else14.i ], [ %10, %land.lhs.true8.i.if.end20.sink.split.i_crit_edge ]
  %call18.i = tail call i32 %.sink.i(ptr noundef nonnull %1, i32 noundef 1) #12
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.else.if.end_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

tegra_channel_get_remote_csi_subdev.exit.i.i:     ; preds = %if.else
  %entity.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %entity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entity.i.i.i, align 4
  %tobool.not.i.i3 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i3, label %tegra_channel_get_remote_csi_subdev.exit.i.i.if.end_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i.i
  br label %while.cond.i.i

tegra_channel_get_remote_csi_subdev.exit.i.i.if.end_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.i.i:                                   ; preds = %is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge
  %subdev.0.i.i = phi ptr [ %17, %is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge ], [ %12, %tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge ]
  %pad.0.in.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %pad.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pad.0.i.i = load ptr, ptr %pad.0.in.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i, label %while.cond.i.i.if.else.i7_crit_edge

while.cond.i.i.if.else.i7_crit_edge:              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i7

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call3.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i.i) #12
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %while.body.i.i.if.else.i7_crit_edge, label %lor.lhs.false.i.i

while.body.i.i.if.else.i7_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i7

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  %entity5.i.i = getelementptr inbounds %struct.media_pad, ptr %call3.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %entity5.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity5.i.i, align 4
  %tobool.not.i24.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i24.i.i, label %lor.lhs.false.i.i.if.else.i7_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i

lor.lhs.false.i.i.if.else.i7_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i7

is_media_entity_v4l2_subdev.exit.i.i:             ; preds = %lor.lhs.false.i.i
  %obj_type.i.i.i = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %obj_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %obj_type.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %19, 2
  br i1 %cmp.i.i.i, label %is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i.if.else.i7_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.if.else.i7_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i7

is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.else.i7:                                       ; preds = %is_media_entity_v4l2_subdev.exit.i.i.if.else.i7_crit_edge, %lor.lhs.false.i.i.if.else.i7_crit_edge, %while.body.i.i.if.else.i7_crit_edge, %while.cond.i.i.if.else.i7_crit_edge
  %ops.i4 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev.0.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %ops.i4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i4, align 4
  %video.i5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video.i5, align 4
  %tobool1.not.i6 = icmp eq ptr %23, null
  br i1 %tobool1.not.i6, label %if.else.i7.if.end_crit_edge, label %land.lhs.true.i10

if.else.i7.if.end_crit_edge:                      ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i10:                                ; preds = %if.else.i7
  %s_stream.i8 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_stream.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_stream.i8, align 4
  %tobool4.not.i9 = icmp eq ptr %25, null
  br i1 %tobool4.not.i9, label %land.lhs.true.i10.if.end_crit_edge, label %if.else6.i12

land.lhs.true.i10.if.end_crit_edge:               ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else6.i12:                                     ; preds = %land.lhs.true.i10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not.i11 = icmp eq ptr %26, null
  br i1 %tobool7.not.i11, label %if.else6.i12.if.else14.i16_crit_edge, label %land.lhs.true8.i15

if.else6.i12.if.else14.i16_crit_edge:             ; preds = %if.else6.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14.i16

land.lhs.true8.i15:                               ; preds = %if.else6.i12
  %s_stream9.i13 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %s_stream9.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_stream9.i13, align 4
  %tobool10.not.i14 = icmp eq ptr %28, null
  br i1 %tobool10.not.i14, label %land.lhs.true8.i15.if.else14.i16_crit_edge, label %land.lhs.true8.i15.if.end20.sink.split.i19_crit_edge

land.lhs.true8.i15.if.end20.sink.split.i19_crit_edge: ; preds = %land.lhs.true8.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.sink.split.i19

land.lhs.true8.i15.if.else14.i16_crit_edge:       ; preds = %land.lhs.true8.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14.i16

if.else14.i16:                                    ; preds = %land.lhs.true8.i15.if.else14.i16_crit_edge, %if.else6.i12.if.else14.i16_crit_edge
  br label %if.end20.sink.split.i19

if.end20.sink.split.i19:                          ; preds = %if.else14.i16, %land.lhs.true8.i15.if.end20.sink.split.i19_crit_edge
  %.sink.i17 = phi ptr [ %25, %if.else14.i16 ], [ %28, %land.lhs.true8.i15.if.end20.sink.split.i19_crit_edge ]
  %call18.i18 = tail call i32 %.sink.i17(ptr noundef nonnull %subdev.0.i.i, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.end20.sink.split.i19, %land.lhs.true.i10.if.end_crit_edge, %if.else.i7.if.end_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end20.sink.split.i, %land.lhs.true.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %__result.0.i20.sink26 = phi i32 [ -19, %tegra_channel_get_remote_csi_subdev.exit.i.if.end_crit_edge ], [ -515, %land.lhs.true.i.if.end_crit_edge ], [ -515, %if.else.i.if.end_crit_edge ], [ -19, %if.then.if.end_crit_edge ], [ %call18.i, %if.end20.sink.split.i ], [ -515, %land.lhs.true.i10.if.end_crit_edge ], [ -515, %if.else.i7.if.end_crit_edge ], [ -19, %if.else.if.end_crit_edge ], [ -19, %tegra_channel_get_remote_csi_subdev.exit.i.i.if.end_crit_edge ], [ %call18.i18, %if.end20.sink.split.i19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.i20.sink26)
  %cmp.i21 = icmp sgt i32 %__result.0.i20.sink26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0.i20.sink26)
  %cmp22.not.i22 = icmp eq i32 %__result.0.i20.sink26, -515
  %or.cond.i23 = or i1 %cmp.i21, %cmp22.not.i22
  %retval.0.i24 = select i1 %or.cond.i23, i32 0, i32 %__result.0.i20.sink26
  ret i32 %retval.0.i24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_channel_release_buffers(ptr noundef %chan, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %start_lock = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %start_lock) #12
  %capture = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 16
  %0 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %capture, align 8
  %cmp.not68 = icmp eq ptr %1, %capture
  br i1 %cmp.not68, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in69 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in69, i32 -736
  %2 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in69, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef %state) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in69) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in69, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in69, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn, %capture
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %start_lock) #12
  %done_lock = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %done_lock) #12
  %done = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 18
  %11 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %done, align 4
  %cmp27.not71 = icmp eq ptr %12, %done
  br i1 %cmp27.not71, label %for.end.for.end39_crit_edge, label %for.end.for.body29_crit_edge

for.end.for.body29_crit_edge:                     ; preds = %for.end
  br label %for.body29

for.end.for.end39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

for.body29:                                       ; preds = %list_del.exit67.for.body29_crit_edge, %for.end.for.body29_crit_edge
  %.pn59.in72 = phi ptr [ %.pn59, %list_del.exit67.for.body29_crit_edge ], [ %12, %for.end.for.body29_crit_edge ]
  %buf.1 = getelementptr i8, ptr %.pn59.in72, i32 -736
  %13 = ptrtoint ptr %.pn59.in72 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn59 = load ptr, ptr %.pn59.in72, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.1, i32 noundef %state) #12
  %call.i.i62 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn59.in72) #12
  br i1 %call.i.i62, label %if.end.i.i65, label %for.body29.list_del.exit67_crit_edge

for.body29.list_del.exit67_crit_edge:             ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit67

if.end.i.i65:                                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i63 = getelementptr inbounds %struct.list_head, ptr %.pn59.in72, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i63, align 4
  %16 = ptrtoint ptr %.pn59.in72 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn59.in72, align 4
  %prev1.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i64, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit67

list_del.exit67:                                  ; preds = %if.end.i.i65, %for.body29.list_del.exit67_crit_edge
  %20 = ptrtoint ptr %.pn59.in72 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn59.in72, align 4
  %prev.i66 = getelementptr inbounds %struct.list_head, ptr %.pn59.in72, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i66, align 4
  %cmp27.not = icmp eq ptr %.pn59, %done
  br i1 %cmp27.not, label %list_del.exit67.for.end39_crit_edge, label %list_del.exit67.for.body29_crit_edge

list_del.exit67.for.body29_crit_edge:             ; preds = %list_del.exit67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body29

list_del.exit67.for.end39_crit_edge:              ; preds = %list_del.exit67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

for.end39:                                        ; preds = %list_del.exit67.for.end39_crit_edge, %for.end.for.end39_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %done_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_channels_cleanup(ptr noundef readonly %vi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vi_chans = getelementptr inbounds %struct.tegra_vi, ptr %vi, i32 0, i32 7
  %0 = ptrtoint ptr %vi_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi_chans, align 4
  %cmp.not22 = icmp eq ptr %1, %vi_chans
  br i1 %cmp.not22, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %chan.023 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %chan.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %chan.023, align 8
  %ctrl_handler.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.023, i32 0, i32 24
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #12
  %numgangports.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.023, i32 0, i32 22
  %3 = ptrtoint ptr %numgangports.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %numgangports.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9.not.i.i = icmp eq i8 %4, 0
  br i1 %cmp9.not.i.i, label %for.body.tegra_channel_cleanup.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.tegra_channel_cleanup.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_cleanup.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.023, i32 0, i32 6, i32 %i.010.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %6) #12
  %arrayidx2.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.023, i32 0, i32 5, i32 %i.010.i.i
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2.i.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %8) #12
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %9 = ptrtoint ptr %numgangports.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %numgangports.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.tegra_channel_cleanup.exit_crit_edge

for.body.i.i.tegra_channel_cleanup.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_cleanup.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

tegra_channel_cleanup.exit:                       ; preds = %for.body.i.i.tegra_channel_cleanup.exit_crit_edge, %for.body.tegra_channel_cleanup.exit_crit_edge
  %video_lock.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.023, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %video_lock.i) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan.023) #12
  br i1 %call.i.i, label %if.end.i.i, label %tegra_channel_cleanup.exit.list_del.exit_crit_edge

tegra_channel_cleanup.exit.list_del.exit_crit_edge: ; preds = %tegra_channel_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %tegra_channel_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chan.023, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %chan.023 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %tegra_channel_cleanup.exit.list_del.exit_crit_edge
  %17 = ptrtoint ptr %chan.023 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %chan.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %chan.023, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %chan.023) #12
  %cmp.not = icmp eq ptr %tmp.0, %vi_chans
  br i1 %cmp.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_v4l2_nodes_cleanup_tpg(ptr nocapture noundef readonly %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vi1 = getelementptr inbounds %struct.tegra_video_device, ptr %vid, i32 0, i32 2
  %0 = ptrtoint ptr %vi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi1, align 8
  %csi2 = getelementptr inbounds %struct.tegra_video_device, ptr %vid, i32 0, i32 3
  %2 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csi2, align 4
  %vi_chans = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %vi_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %chan.033 = load ptr, ptr %vi_chans, align 4
  %cmp.not34 = icmp eq ptr %chan.033, %vi_chans
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %chan.035 = phi ptr [ %chan.0, %for.body.for.body_crit_edge ], [ %chan.033, %entry.for.body_crit_edge ]
  %video = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.035, i32 0, i32 1
  tail call void @vb2_video_unregister_device(ptr noundef %video) #12
  %5 = ptrtoint ptr %chan.035 to i32
  call void @__asan_load4_noabort(i32 %5)
  %chan.0 = load ptr, ptr %chan.035, align 4
  %cmp.not = icmp eq ptr %chan.0, %vi_chans
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %csi_chans = getelementptr inbounds %struct.tegra_csi, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %csi_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %csi_chan.036 = load ptr, ptr %csi_chans, align 4
  %cmp16.not37 = icmp eq ptr %csi_chan.036, %csi_chans
  br i1 %cmp16.not37, label %for.end.for.end25_crit_edge, label %for.end.for.body18_crit_edge

for.end.for.body18_crit_edge:                     ; preds = %for.end
  br label %for.body18

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end25

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end.for.body18_crit_edge
  %csi_chan.038 = phi ptr [ %csi_chan.0, %for.body18.for.body18_crit_edge ], [ %csi_chan.036, %for.end.for.body18_crit_edge ]
  %subdev = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.038, i32 0, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #12
  %7 = ptrtoint ptr %csi_chan.038 to i32
  call void @__asan_load4_noabort(i32 %7)
  %csi_chan.0 = load ptr, ptr %csi_chan.038, align 4
  %cmp16.not = icmp eq ptr %csi_chan.0, %csi_chans
  br i1 %cmp16.not, label %for.body18.for.end25_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18

for.body18.for.end25_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end25

for.end25:                                        ; preds = %for.body18.for.end25_crit_edge, %for.end.for.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_v4l2_nodes_setup_tpg(ptr noundef %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vi1 = getelementptr inbounds %struct.tegra_video_device, ptr %vid, i32 0, i32 2
  %0 = ptrtoint ptr %vi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi1, align 8
  %csi2 = getelementptr inbounds %struct.tegra_video_device, ptr %vid, i32 0, i32 3
  %2 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csi2, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

if.end:                                           ; preds = %entry
  %vi_chans = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %vi_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %vi_chan.0157 = load ptr, ptr %vi_chans, align 4
  %cmp.not158 = icmp eq ptr %vi_chan.0157, %vi_chans
  br i1 %cmp.not158, label %if.end.cleanup75_crit_edge, label %for.body.preheader

if.end.cleanup75_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

for.body.preheader:                               ; preds = %if.end
  %csi_chans = getelementptr inbounds %struct.tegra_csi, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %vi_chan.0160 = phi ptr [ %vi_chan.0, %cleanup.for.body_crit_edge ], [ %vi_chan.0157, %for.body.preheader ]
  %csi_chan.0159.in = phi ptr [ %csi_chan.0159, %cleanup.for.body_crit_edge ], [ %csi_chans, %for.body.preheader ]
  %5 = ptrtoint ptr %csi_chan.0159.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %csi_chan.0159 = load ptr, ptr %csi_chan.0159.in, align 4
  %subdev = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.0159, i32 0, i32 1
  %video = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 1
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vid, ptr noundef %subdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call) #15
  br label %cleanup74

if.end13:                                         ; preds = %for.body
  %fops.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %video, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %do.end20, label %do.body23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %call.i) #15
  br label %cleanup74

do.body23:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_v4l2_nodes_setup_tpg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_v4l2_nodes_setup_tpg, %if.then30)) #12
          to label %do.end37 [label %if.then30], !srcloc !182

if.then30:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.0159, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %index = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.0159, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index, align 4
  %conv = zext i16 %19 to i32
  %name32 = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name32, align 4
  %index33 = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %index33 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %index33, align 4
  %conv34 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_v4l2_nodes_setup_tpg.__UNIQUE_ID_ddebug311, ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef %17, i32 noundef %conv, ptr noundef %21, i32 noundef %conv34) #12
  br label %do.end37

do.end37:                                         ; preds = %if.then30, %do.body23
  %index38 = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.0159, i32 0, i32 2, i32 0, i32 2
  %24 = ptrtoint ptr %index38 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index38, align 4
  %index39 = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %index39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index39, align 4
  %call40 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext %25, ptr noundef %video, i16 noundef zeroext %27, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end46, label %if.end54

do.end46:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #14
  %index38.le = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.0159, i32 0, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %name48 = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.0159, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name48, align 4
  %32 = ptrtoint ptr %index38.le to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %index38.le, align 4
  %conv50 = zext i16 %33 to i32
  %name51 = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name51, align 4
  %36 = ptrtoint ptr %index39 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %index39, align 4
  %conv53 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.11, ptr noundef %31, i32 noundef %conv50, ptr noundef %35, i32 noundef %conv53, i32 noundef %call40) #15
  br label %cleanup74

if.end54:                                         ; preds = %do.end37
  %ctrl_handler.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 24
  %call.i118 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @vi_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @vi_pattern_strings) #12
  %error.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 24, i32 9
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %if.end.i, label %tegra_channel_setup_ctrl_handler.exit

if.end.i:                                         ; preds = %if.end54
  %call8.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %tegra_channel_setup_ctrl_handler.exit.thread, label %if.end.i.if.end59_crit_edge

if.end.i.if.end59_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

tegra_channel_setup_ctrl_handler.exit.thread:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %vi13.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 4
  %40 = ptrtoint ptr %vi13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vi13.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.17, i32 noundef %call8.i) #15
  br label %cleanup74

tegra_channel_setup_ctrl_handler.exit:            ; preds = %if.end54
  %vi.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 4
  %44 = ptrtoint ptr %vi.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vi.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.14, i32 noundef %39) #15
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #12
  %48 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp56 = icmp slt i32 %49, 0
  br i1 %cmp56, label %tegra_channel_setup_ctrl_handler.exit.cleanup74_crit_edge, label %tegra_channel_setup_ctrl_handler.exit.if.end59_crit_edge

tegra_channel_setup_ctrl_handler.exit.if.end59_crit_edge: ; preds = %tegra_channel_setup_ctrl_handler.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

tegra_channel_setup_ctrl_handler.exit.cleanup74_crit_edge: ; preds = %tegra_channel_setup_ctrl_handler.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end59:                                         ; preds = %tegra_channel_setup_ctrl_handler.exit.if.end59_crit_edge, %if.end.i.if.end59_crit_edge
  %host_priv.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.0159, i32 0, i32 1, i32 12
  %50 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %vi_chan.0160, ptr %host_priv.i, align 4
  %tpg_fmts_bitmap.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 27
  %51 = ptrtoint ptr %tpg_fmts_bitmap.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 0, ptr %tpg_fmts_bitmap.i, align 4
  %vi.i120 = getelementptr inbounds %struct.tegra_vi_channel, ptr %vi_chan.0160, i32 0, i32 4
  %52 = ptrtoint ptr %vi.i120 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vi.i120, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_vi, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc.i.i, align 4
  %nformats.i.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nformats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp1.not.i.i, label %if.end59.tegra_get_format_idx_by_code.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end59.tegra_get_format_idx_by_code.exit.i_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_get_format_idx_by_code.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end59
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %code2.i.i = getelementptr %struct.tegra_video_format, ptr %59, i32 %i.02.i.i, i32 2
  %60 = ptrtoint ptr %code2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %code2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12303, i32 %61)
  %cmp3.i.i = icmp eq i32 %61, 12303
  br i1 %cmp3.i.i, label %for.body.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_get_format_idx_by_code.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %57
  br i1 %exitcond.not.i.i, label %for.inc.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_get_format_idx_by_code.exit.i

tegra_get_format_idx_by_code.exit.i:              ; preds = %for.inc.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge, %for.body.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge, %if.end59.tegra_get_format_idx_by_code.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %if.end59.tegra_get_format_idx_by_code.exit.i_crit_edge ], [ -1, %for.inc.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge ], [ %i.02.i.i, %for.body.i.i.tegra_get_format_idx_by_code.exit.i_crit_edge ]
  %rem.i.i.i = and i32 %retval.0.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %retval.0.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %tpg_fmts_bitmap.i, i32 %div2.i.i.i
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %63
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %64 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %soc.i.i, align 4
  %nformats.i18.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %nformats.i18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nformats.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1.not.i19.i = icmp eq i32 %67, 0
  br i1 %cmp1.not.i19.i, label %tegra_get_format_idx_by_code.exit.i.cleanup_crit_edge, label %for.body.lr.ph.i20.i

tegra_get_format_idx_by_code.exit.i.cleanup_crit_edge: ; preds = %tegra_get_format_idx_by_code.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i20.i:                             ; preds = %tegra_get_format_idx_by_code.exit.i
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  br label %for.body.i24.i

for.body.i24.i:                                   ; preds = %for.inc.i27.i.for.body.i24.i_crit_edge, %for.body.lr.ph.i20.i
  %i.02.i21.i = phi i32 [ 0, %for.body.lr.ph.i20.i ], [ %inc.i25.i, %for.inc.i27.i.for.body.i24.i_crit_edge ]
  %code2.i22.i = getelementptr %struct.tegra_video_format, ptr %69, i32 %i.02.i21.i, i32 2
  %70 = ptrtoint ptr %code2.i22.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %code2.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4111, i32 %71)
  %cmp3.i23.i = icmp eq i32 %71, 4111
  br i1 %cmp3.i23.i, label %for.body.i24.i.cleanup_crit_edge, label %for.inc.i27.i

for.body.i24.i.cleanup_crit_edge:                 ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i27.i:                                    ; preds = %for.body.i24.i
  %inc.i25.i = add nuw i32 %i.02.i21.i, 1
  %exitcond.not.i26.i = icmp eq i32 %inc.i25.i, %67
  br i1 %exitcond.not.i26.i, label %for.inc.i27.i.cleanup_crit_edge, label %for.inc.i27.i.for.body.i24.i_crit_edge

for.inc.i27.i.for.body.i24.i_crit_edge:           ; preds = %for.inc.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i24.i

for.inc.i27.i.cleanup_crit_edge:                  ; preds = %for.inc.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i27.i.cleanup_crit_edge, %for.body.i24.i.cleanup_crit_edge, %tegra_get_format_idx_by_code.exit.i.cleanup_crit_edge
  %retval.0.i28.i = phi i32 [ -1, %tegra_get_format_idx_by_code.exit.i.cleanup_crit_edge ], [ -1, %for.inc.i27.i.cleanup_crit_edge ], [ %i.02.i21.i, %for.body.i24.i.cleanup_crit_edge ]
  %rem.i.i12.i = and i32 %retval.0.i28.i, 31
  %shl.i.i13.i = shl nuw i32 1, %rem.i.i12.i
  %div2.i.i14.i = lshr i32 %retval.0.i28.i, 5
  %add.ptr.i.i15.i = getelementptr i32, ptr %tpg_fmts_bitmap.i, i32 %div2.i.i14.i
  %72 = ptrtoint ptr %add.ptr.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i15.i, align 4
  %or.i.i16.i = or i32 %shl.i.i13.i, %73
  store i32 %or.i.i16.i, ptr %add.ptr.i.i15.i, align 4
  %74 = ptrtoint ptr %vi_chan.0160 to i32
  call void @__asan_load4_noabort(i32 %74)
  %vi_chan.0 = load ptr, ptr %vi_chan.0160, align 4
  %cmp.not = icmp eq ptr %vi_chan.0, %vi_chans
  br i1 %cmp.not, label %cleanup.cleanup75_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.cleanup75_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

cleanup74:                                        ; preds = %tegra_channel_setup_ctrl_handler.exit.cleanup74_crit_edge, %tegra_channel_setup_ctrl_handler.exit.thread, %do.end46, %do.end20, %do.end
  %ret.0.ph = phi i32 [ %call8.i, %tegra_channel_setup_ctrl_handler.exit.thread ], [ %call40, %do.end46 ], [ %call.i, %do.end20 ], [ %call, %do.end ], [ %49, %tegra_channel_setup_ctrl_handler.exit.cleanup74_crit_edge ]
  %75 = ptrtoint ptr %vi1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vi1, align 8
  %77 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %csi2, align 4
  %vi_chans.i = getelementptr inbounds %struct.tegra_vi, ptr %76, i32 0, i32 7
  %79 = ptrtoint ptr %vi_chans.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %chan.033.i = load ptr, ptr %vi_chans.i, align 4
  %cmp.not34.i = icmp eq ptr %chan.033.i, %vi_chans.i
  br i1 %cmp.not34.i, label %cleanup74.for.end.i_crit_edge, label %cleanup74.for.body.i_crit_edge

cleanup74.for.body.i_crit_edge:                   ; preds = %cleanup74
  br label %for.body.i

cleanup74.for.end.i_crit_edge:                    ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cleanup74.for.body.i_crit_edge
  %chan.035.i = phi ptr [ %chan.0.i, %for.body.i.for.body.i_crit_edge ], [ %chan.033.i, %cleanup74.for.body.i_crit_edge ]
  %video.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.035.i, i32 0, i32 1
  tail call void @vb2_video_unregister_device(ptr noundef %video.i) #12
  %80 = ptrtoint ptr %chan.035.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %chan.0.i = load ptr, ptr %chan.035.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %vi_chans.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %cleanup74.for.end.i_crit_edge
  %csi_chans.i = getelementptr inbounds %struct.tegra_csi, ptr %78, i32 0, i32 6
  %81 = ptrtoint ptr %csi_chans.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %csi_chan.036.i = load ptr, ptr %csi_chans.i, align 4
  %cmp16.not37.i = icmp eq ptr %csi_chan.036.i, %csi_chans.i
  br i1 %cmp16.not37.i, label %for.end.i.cleanup75_crit_edge, label %for.end.i.for.body18.i_crit_edge

for.end.i.for.body18.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body18.i

for.end.i.cleanup75_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.end.i.for.body18.i_crit_edge
  %csi_chan.038.i = phi ptr [ %csi_chan.0.i, %for.body18.i.for.body18.i_crit_edge ], [ %csi_chan.036.i, %for.end.i.for.body18.i_crit_edge ]
  %subdev.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan.038.i, i32 0, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev.i) #12
  %82 = ptrtoint ptr %csi_chan.038.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %csi_chan.0.i = load ptr, ptr %csi_chan.038.i, align 4
  %cmp16.not.i = icmp eq ptr %csi_chan.0.i, %csi_chans.i
  br i1 %cmp16.not.i, label %for.body18.i.cleanup75_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i

for.body18.i.cleanup75_crit_edge:                 ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

cleanup75:                                        ; preds = %for.body18.i.cleanup75_crit_edge, %for.end.i.cleanup75_crit_edge, %cleanup.cleanup75_crit_edge, %if.end.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup75_crit_edge ], [ %ret.0.ph, %for.end.i.cleanup75_crit_edge ], [ 0, %if.end.cleanup75_crit_edge ], [ %ret.0.ph, %for.body18.i.cleanup75_crit_edge ], [ 0, %cleanup.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %iomem = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %iomem, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #12
  %soc = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %soc, align 4
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #12
  %clk = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %clk, align 4
  %cmp.i115 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %4) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call20 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  %vdd = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %vdd, align 4
  %cmp.i116 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %6) #15
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %7 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pm_domain, align 8
  %tobool32.not = icmp eq ptr %8, null
  br i1 %tobool32.not, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef -2) #15
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %call40 = tail call i32 @devm_of_platform_populate(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call40) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call.i, align 4
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %ops = getelementptr inbounds %struct.tegra_vi_soc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %ops50 = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %ops50 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %ops50, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  %client = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %client, ptr %client, align 4
  %prev.i = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %client, ptr %prev.i, align 4
  %ops53 = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %ops53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vi_client_ops, ptr %ops53, align 4
  %dev56 = getelementptr inbounds %struct.tegra_vi, ptr %call.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %dev56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev56, align 4
  tail call void @__host1x_client_init(ptr noundef %client, ptr noundef nonnull @tegra_vi_probe.__key) #12
  %call59 = tail call i32 @__host1x_client_register(ptr noundef %client) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end64:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call59) #15
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.end46.cleanup_crit_edge, %do.end44, %if.then33, %if.then23, %if.then14, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %4, %if.then14 ], [ %6, %if.then23 ], [ %call40, %do.end44 ], [ %call59, %do.end64 ], [ -2, %if.then33 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %client) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %call1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vi_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10422531, label %sw.bb
    i32 10096641, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %6, 1
  %pg_mode = getelementptr i8, ptr %1, i32 204
  %7 = ptrtoint ptr %pg_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %pg_mode, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %syncpt_timeout_retry = getelementptr i8, ptr %1, i32 184
  %10 = ptrtoint ptr %syncpt_timeout_retry to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %syncpt_timeout_retry, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vi_init(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %client, i32 -4
  %soc = getelementptr i8, ptr %client, i32 252
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %hw_revision = getelementptr inbounds %struct.tegra_vi_soc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_revision, align 4
  %hw_revision2 = getelementptr inbounds %struct.tegra_video_device, ptr %3, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %hw_revision2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hw_revision2, align 8
  %bus_info = getelementptr inbounds %struct.tegra_video_device, ptr %3, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %entry.dev_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef %retval.0.i)
  %vi_chans = getelementptr i8, ptr %client, i32 260
  %15 = ptrtoint ptr %vi_chans to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %vi_chans, ptr %vi_chans, align 4
  %prev.i = getelementptr i8, ptr %client, i32 264
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vi_chans, ptr %prev.i, align 4
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc, align 4
  %vi_max_channels.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %vi_max_channels.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vi_max_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11.not.i = icmp eq i32 %20, 0
  br i1 %cmp11.not.i, label %dev_name.exit.for.cond.i.preheader_crit_edge, label %dev_name.exit.for.body.i_crit_edge

dev_name.exit.for.body.i_crit_edge:               ; preds = %dev_name.exit
  br label %for.body.i

dev_name.exit.for.cond.i.preheader_crit_edge:     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %for.inc.i.for.cond.i.preheader_crit_edge, %dev_name.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dev_name.exit.for.body.i_crit_edge
  %port_num.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %dev_name.exit.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 2640) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end, label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i
  %vi1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %call7.i.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %vi1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %vi1.i.i, align 4
  %conv.i.i = trunc i32 %port_num.012.i to i8
  %portnos.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %call7.i.i.i.i, i32 0, i32 20
  %27 = ptrtoint ptr %portnos.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.i, ptr %portnos.i.i, align 8
  %totalports.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %call7.i.i.i.i, i32 0, i32 21
  %28 = ptrtoint ptr %totalports.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %totalports.i.i, align 2
  %numgangports.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %call7.i.i.i.i, i32 0, i32 22
  %29 = ptrtoint ptr %numgangports.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %numgangports.i.i, align 1
  %of_node.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %call7.i.i.i.i, i32 0, i32 23
  %30 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %of_node.i.i, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %32, ptr noundef %vi_chans) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.for.inc.i_crit_edge

for.end.i.i.for.inc.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i.i, ptr %prev.i, align 4
  %34 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %vi_chans, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i.i.i, ptr %32, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %for.end.i.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %port_num.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %20
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.cond.i.preheader_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.38, i32 noundef -12) #15
  br label %free_chans

for.cond.i:                                       ; preds = %tegra_channel_init.exit.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %chan.0.in.i = phi ptr [ %chan.0.i, %tegra_channel_init.exit.i.for.cond.i_crit_edge ], [ %vi_chans, %for.cond.i.preheader ]
  %39 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %vi_chans
  br i1 %cmp.not.i, label %for.cond.i.if.end11_crit_edge, label %for.body.i71

for.cond.i.if.end11_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.body.i71:                                     ; preds = %for.cond.i
  %vi1.i.i69 = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 4
  %40 = ptrtoint ptr %vi1.i.i69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vi1.i.i69, align 4
  %host.i.i = getelementptr inbounds %struct.tegra_vi, ptr %41, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_lock.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %video_lock.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @tegra_channel_init.__key) #12
  %capture.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 16
  %46 = ptrtoint ptr %capture.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %capture.i.i, ptr %capture.i.i, align 4
  %prev.i.i.i70 = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 16, i32 1
  %47 = ptrtoint ptr %prev.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %capture.i.i, ptr %prev.i.i.i70, align 4
  %done.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 18
  %48 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %done.i.i, ptr %done.i.i, align 4
  %prev.i168.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 18, i32 1
  %49 = ptrtoint ptr %prev.i168.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %done.i.i, ptr %prev.i168.i.i, align 4
  %start_lock.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %start_lock.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @tegra_channel_init.__key.43, i16 noundef signext 3) #12
  %done_lock.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %done_lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @tegra_channel_init.__key.45, i16 noundef signext 3) #12
  %start_wait.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %start_wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @tegra_channel_init.__key.47) #12
  %done_wait.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %done_wait.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @tegra_channel_init.__key.49) #12
  %fmtinfo.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 13
  %50 = ptrtoint ptr %fmtinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tegra_default_format, ptr %fmtinfo.i.i, align 8
  %format.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 12
  %pixelformat.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 12, i32 2
  %51 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 808535890, ptr %pixelformat.i.i, align 8
  %colorspace.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 12, i32 6
  %52 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %colorspace.i.i, align 8
  %field.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 12, i32 3
  %53 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %field.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 12, i32 1
  %bytesperline.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 12, i32 4
  %sizeimage.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 12, i32 5
  %54 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1920, ptr %format.i.i, align 4
  %55 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1080, ptr %height.i.i, align 4
  %56 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3840, ptr %bytesperline.i.i, align 4
  %57 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4147200, ptr %sizeimage.i.i, align 4
  %58 = ptrtoint ptr %vi1.i.i69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vi1.i.i69, align 4
  %numgangports.i.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 22
  %60 = ptrtoint ptr %numgangports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %numgangports.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp46.not.i.i.i = icmp eq i8 %61, 0
  br i1 %cmp46.not.i.i.i, label %for.body.i71.if.end.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.body.i71.if.end.i.i_crit_edge:                ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body.i71
  %client.i.i.i = getelementptr inbounds %struct.tegra_vi, ptr %59, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end11.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.047.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %if.end11.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i = tail call ptr @host1x_syncpt_request(ptr noundef %client.i.i.i, i32 noundef 1) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.62) #15
  br label %free_syncpts.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %call4.i.i.i = tail call ptr @host1x_syncpt_request(ptr noundef %client.i.i.i, i32 noundef 1) #12
  %tobool5.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %do.end9.i.i.i, label %if.end11.i.i.i

do.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.65) #15
  tail call void @host1x_syncpt_put(ptr noundef nonnull %call.i.i.i) #12
  br label %free_syncpts.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 5, i32 %i.047.i.i.i
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.i.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx12.i.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 6, i32 %i.047.i.i.i
  %67 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call4.i.i.i, ptr %arrayidx12.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 7, i32 %i.047.i.i.i
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx14.i.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @tegra_channel_host1x_syncpt_init.__key, i16 noundef signext 3) #12
  %inc.i.i.i = add nuw nsw i32 %i.047.i.i.i, 1
  %68 = ptrtoint ptr %numgangports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %numgangports.i.i.i, align 1
  %conv.i.i.i = zext i8 %69 to i32
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %conv.i.i.i
  br i1 %cmp.i.i.i, label %if.end11.i.i.i.for.body.i.i.i_crit_edge, label %if.end11.i.i.i.if.end.i.i_crit_edge

if.end11.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end11.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

free_syncpts.i.i.i:                               ; preds = %do.end9.i.i.i, %do.end.i.i.i
  %70 = ptrtoint ptr %numgangports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %numgangports.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp9.not.i.i.i.i = icmp eq i8 %71, 0
  br i1 %cmp9.not.i.i.i.i, label %free_syncpts.i.i.i.do.end.i_crit_edge, label %free_syncpts.i.i.i.for.body.i.i.i.i_crit_edge

free_syncpts.i.i.i.for.body.i.i.i.i_crit_edge:    ; preds = %free_syncpts.i.i.i
  br label %for.body.i.i.i.i

free_syncpts.i.i.i.do.end.i_crit_edge:            ; preds = %free_syncpts.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %free_syncpts.i.i.i.for.body.i.i.i.i_crit_edge
  %i.010.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %free_syncpts.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 6, i32 %i.010.i.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %73) #12
  %arrayidx2.i.i.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 5, i32 %i.010.i.i.i.i
  %74 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx2.i.i.i.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %75) #12
  %inc.i.i.i.i = add nuw nsw i32 %i.010.i.i.i.i, 1
  %76 = ptrtoint ptr %numgangports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %numgangports.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %77 to i32
  %cmp.i.i.i.i = icmp ult i32 %inc.i.i.i.i, %conv.i.i.i.i
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.body.i.i.i.i.do.end.i_crit_edge

for.body.i.i.i.i.do.end.i_crit_edge:              ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

if.end.i.i:                                       ; preds = %if.end11.i.i.i.if.end.i.i_crit_edge, %for.body.i71.if.end.i.i_crit_edge
  %pad.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 3
  %flags.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 3, i32 4
  %78 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %flags.i.i, align 4
  %video.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1
  %call32.i.i = tail call i32 @media_entity_pads_init(ptr noundef %video.i.i, i16 noundef zeroext 1, ptr noundef %pad.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %cmp.i.i = icmp slt i32 %call32.i.i, 0
  br i1 %cmp.i.i, label %do.end36.i.i, label %if.end37.i.i

do.end36.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.51, i32 noundef %call32.i.i) #15
  br label %free_syncpts.i.i

if.end37.i.i:                                     ; preds = %if.end.i.i
  %ctrl_handler.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 24
  %call38.i.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i.i, i32 noundef 1, ptr noundef nonnull @tegra_channel_init._key, ptr noundef nonnull @.str.53) #12
  %error.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 24, i32 9
  %81 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool40.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool40.not.i.i, label %if.end46.i.i, label %do.end44.i.i

do.end44.i.i:                                     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.55, i32 noundef %call38.i.i) #15
  br label %free_syncpts.i.i

if.end46.i.i:                                     ; preds = %if.end37.i.i
  %fops.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 3
  %85 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tegra_channel_fops, ptr %fops.i.i, align 4
  %v4l2_dev49.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 7
  %86 = ptrtoint ptr %v4l2_dev49.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %45, ptr %v4l2_dev49.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 23
  %87 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @video_device_release_empty, ptr %release.i.i, align 8
  %queue.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14
  %queue52.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 10
  %88 = ptrtoint ptr %queue52.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %queue.i.i, ptr %queue52.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 12
  %89 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %41, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i169.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i169.i.i, label %if.end.i170.i.i, label %if.end46.i.i.dev_name.exit.i.i_crit_edge

if.end46.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i170.i.i:                                  ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i170.i.i, %if.end46.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i171.i.i = phi ptr [ %94, %if.end.i170.i.i ], [ %92, %if.end46.i.i.dev_name.exit.i.i_crit_edge ]
  %portnos.i.i72 = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 20
  %95 = ptrtoint ptr %portnos.i.i72 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %portnos.i.i72, align 8
  %conv.i.i73 = zext i8 %96 to i32
  %call56.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 32, ptr noundef nonnull @.str.57, ptr noundef %retval.0.i171.i.i, ptr noundef nonnull @.str.58, i32 noundef %conv.i.i73) #12
  %vfl_type.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 13
  %97 = ptrtoint ptr %vfl_type.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %vfl_type.i.i, align 8
  %vfl_dir.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 14
  %98 = ptrtoint ptr %vfl_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %vfl_dir.i.i, align 4
  %ioctl_ops.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 24
  %99 = ptrtoint ptr %ioctl_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @tegra_channel_ioctl_ops, ptr %ioctl_ops.i.i, align 4
  %ctrl_handler62.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 9
  %100 = ptrtoint ptr %ctrl_handler62.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %ctrl_handler.i.i, ptr %ctrl_handler62.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 26
  %101 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %video_lock.i.i, ptr %lock.i.i, align 8
  %device_caps.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %device_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 83886081, ptr %device_caps.i.i, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 1, i32 5, i32 8
  %103 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %chan.0.i, ptr %driver_data.i.i.i.i, align 4
  %104 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %queue.i.i, align 4
  %io_modes.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 1
  %105 = ptrtoint ptr %io_modes.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 21, ptr %io_modes.i.i, align 4
  %lock71.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 5
  %106 = ptrtoint ptr %lock71.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %video_lock.i.i, ptr %lock71.i.i, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 10
  %107 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %chan.0.i, ptr %drv_priv.i.i, align 4
  %buf_struct_size.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 12
  %108 = ptrtoint ptr %buf_struct_size.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 760, ptr %buf_struct_size.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 7
  %109 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @tegra_channel_queue_qops, ptr %ops.i.i, align 4
  %mem_ops.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 8
  %110 = ptrtoint ptr %mem_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i.i, align 4
  %timestamp_flags.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 13
  %111 = ptrtoint ptr %timestamp_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 8192, ptr %timestamp_flags.i.i, align 4
  %min_buffers_needed.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 15
  %112 = ptrtoint ptr %min_buffers_needed.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %min_buffers_needed.i.i, align 4
  %113 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %41, align 4
  %dev80.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 14, i32 2
  %115 = ptrtoint ptr %dev80.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %dev80.i.i, align 4
  %call82.i.i = tail call i32 @vb2_queue_init(ptr noundef %queue.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i)
  %cmp83.i.i = icmp slt i32 %call82.i.i, 0
  br i1 %cmp83.i.i, label %do.end88.i.i, label %dev_name.exit.i.i.tegra_channel_init.exit.i_crit_edge

dev_name.exit.i.i.tegra_channel_init.exit.i_crit_edge: ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_init.exit.i

do.end88.i.i:                                     ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.60, i32 noundef %call82.i.i) #15
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i.i) #12
  br label %free_syncpts.i.i

free_syncpts.i.i:                                 ; preds = %do.end88.i.i, %do.end44.i.i, %do.end36.i.i
  %ret.1.i.i = phi i32 [ %call32.i.i, %do.end36.i.i ], [ %call38.i.i, %do.end44.i.i ], [ %call82.i.i, %do.end88.i.i ]
  %118 = ptrtoint ptr %numgangports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %numgangports.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp9.not.i.i.i = icmp eq i8 %119, 0
  br i1 %cmp9.not.i.i.i, label %free_syncpts.i.i.tegra_channel_init.exit.i_crit_edge, label %free_syncpts.i.i.for.body.i177.i.i_crit_edge

free_syncpts.i.i.for.body.i177.i.i_crit_edge:     ; preds = %free_syncpts.i.i
  br label %for.body.i177.i.i

free_syncpts.i.i.tegra_channel_init.exit.i_crit_edge: ; preds = %free_syncpts.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_init.exit.i

for.body.i177.i.i:                                ; preds = %for.body.i177.i.i.for.body.i177.i.i_crit_edge, %free_syncpts.i.i.for.body.i177.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i174.i.i, %for.body.i177.i.i.for.body.i177.i.i_crit_edge ], [ 0, %free_syncpts.i.i.for.body.i177.i.i_crit_edge ]
  %arrayidx.i173.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 6, i32 %i.010.i.i.i
  %120 = ptrtoint ptr %arrayidx.i173.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i173.i.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %121) #12
  %arrayidx2.i.i.i = getelementptr %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 5, i32 %i.010.i.i.i
  %122 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx2.i.i.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %123) #12
  %inc.i174.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %124 = ptrtoint ptr %numgangports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %numgangports.i.i.i, align 1
  %conv.i175.i.i = zext i8 %125 to i32
  %cmp.i176.i.i = icmp ult i32 %inc.i174.i.i, %conv.i175.i.i
  br i1 %cmp.i176.i.i, label %for.body.i177.i.i.for.body.i177.i.i_crit_edge, label %for.body.i177.i.i.tegra_channel_init.exit.i_crit_edge

for.body.i177.i.i.tegra_channel_init.exit.i_crit_edge: ; preds = %for.body.i177.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_init.exit.i

for.body.i177.i.i.for.body.i177.i.i_crit_edge:    ; preds = %for.body.i177.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i177.i.i

tegra_channel_init.exit.i:                        ; preds = %for.body.i177.i.i.tegra_channel_init.exit.i_crit_edge, %free_syncpts.i.i.tegra_channel_init.exit.i_crit_edge, %dev_name.exit.i.i.tegra_channel_init.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %dev_name.exit.i.i.tegra_channel_init.exit.i_crit_edge ], [ %ret.1.i.i, %free_syncpts.i.i.tegra_channel_init.exit.i_crit_edge ], [ %ret.1.i.i, %for.body.i177.i.i.tegra_channel_init.exit.i_crit_edge ]
  %cmp2.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp2.i, label %tegra_channel_init.exit.i.do.end.i_crit_edge, label %tegra_channel_init.exit.i.for.cond.i_crit_edge

tegra_channel_init.exit.i.for.cond.i_crit_edge:   ; preds = %tegra_channel_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

tegra_channel_init.exit.i.do.end.i_crit_edge:     ; preds = %tegra_channel_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %tegra_channel_init.exit.i.do.end.i_crit_edge, %for.body.i.i.i.i.do.end.i_crit_edge, %free_syncpts.i.i.i.do.end.i_crit_edge
  %retval.0.i53.i = phi i32 [ -12, %free_syncpts.i.i.i.do.end.i_crit_edge ], [ -12, %for.body.i.i.i.i.do.end.i_crit_edge ], [ %retval.0.i.i, %tegra_channel_init.exit.i.do.end.i_crit_edge ]
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 4
  %portnos.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.0.i, i32 0, i32 20
  %128 = ptrtoint ptr %portnos.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %portnos.i, align 8
  %conv.i = zext i8 %129 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.40, i32 noundef %conv.i, i32 noundef %retval.0.i53.i) #15
  %chan.1.in68.i = getelementptr inbounds %struct.list_head, ptr %chan.0.i, i32 0, i32 1
  %130 = ptrtoint ptr %chan.1.in68.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %chan.169.i = load ptr, ptr %chan.1.in68.i, align 4
  %cmp15.not70.i = icmp eq ptr %chan.169.i, %vi_chans
  br i1 %cmp15.not70.i, label %do.end.i.free_chans_crit_edge, label %do.end.i.for.body18.i_crit_edge

do.end.i.for.body18.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body18.i

do.end.i.free_chans_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_chans

for.body18.i:                                     ; preds = %tegra_channel_cleanup.exit.i.for.body18.i_crit_edge, %do.end.i.for.body18.i_crit_edge
  %chan.171.i = phi ptr [ %chan.1.i, %tegra_channel_cleanup.exit.i.for.body18.i_crit_edge ], [ %chan.169.i, %do.end.i.for.body18.i_crit_edge ]
  %ctrl_handler.i40.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.171.i, i32 0, i32 24
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i40.i) #12
  %numgangports.i.i41.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.171.i, i32 0, i32 22
  %131 = ptrtoint ptr %numgangports.i.i41.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %numgangports.i.i41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp9.not.i.i42.i = icmp eq i8 %132, 0
  br i1 %cmp9.not.i.i42.i, label %for.body18.i.tegra_channel_cleanup.exit.i_crit_edge, label %for.body18.i.for.body.i.i49.i_crit_edge

for.body18.i.for.body.i.i49.i_crit_edge:          ; preds = %for.body18.i
  br label %for.body.i.i49.i

for.body18.i.tegra_channel_cleanup.exit.i_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_cleanup.exit.i

for.body.i.i49.i:                                 ; preds = %for.body.i.i49.i.for.body.i.i49.i_crit_edge, %for.body18.i.for.body.i.i49.i_crit_edge
  %i.010.i.i43.i = phi i32 [ %inc.i.i46.i, %for.body.i.i49.i.for.body.i.i49.i_crit_edge ], [ 0, %for.body18.i.for.body.i.i49.i_crit_edge ]
  %arrayidx.i.i44.i = getelementptr %struct.tegra_vi_channel, ptr %chan.171.i, i32 0, i32 6, i32 %i.010.i.i43.i
  %133 = ptrtoint ptr %arrayidx.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i44.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %134) #12
  %arrayidx2.i.i45.i = getelementptr %struct.tegra_vi_channel, ptr %chan.171.i, i32 0, i32 5, i32 %i.010.i.i43.i
  %135 = ptrtoint ptr %arrayidx2.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx2.i.i45.i, align 4
  tail call void @host1x_syncpt_put(ptr noundef %136) #12
  %inc.i.i46.i = add nuw nsw i32 %i.010.i.i43.i, 1
  %137 = ptrtoint ptr %numgangports.i.i41.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %numgangports.i.i41.i, align 1
  %conv.i.i47.i = zext i8 %138 to i32
  %cmp.i.i48.i = icmp ult i32 %inc.i.i46.i, %conv.i.i47.i
  br i1 %cmp.i.i48.i, label %for.body.i.i49.i.for.body.i.i49.i_crit_edge, label %for.body.i.i49.i.tegra_channel_cleanup.exit.i_crit_edge

for.body.i.i49.i.tegra_channel_cleanup.exit.i_crit_edge: ; preds = %for.body.i.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_cleanup.exit.i

for.body.i.i49.i.for.body.i.i49.i_crit_edge:      ; preds = %for.body.i.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i49.i

tegra_channel_cleanup.exit.i:                     ; preds = %for.body.i.i49.i.tegra_channel_cleanup.exit.i_crit_edge, %for.body18.i.tegra_channel_cleanup.exit.i_crit_edge
  %video_lock.i50.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan.171.i, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %video_lock.i50.i) #12
  %chan.1.in.i = getelementptr inbounds %struct.list_head, ptr %chan.171.i, i32 0, i32 1
  %139 = ptrtoint ptr %chan.1.in.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %chan.1.i = load ptr, ptr %chan.1.in.i, align 4
  %cmp15.not.i = icmp eq ptr %chan.1.i, %vi_chans
  br i1 %cmp15.not.i, label %tegra_vi_channels_init.exit, label %tegra_channel_cleanup.exit.i.for.body18.i_crit_edge

tegra_channel_cleanup.exit.i.for.body18.i_crit_edge: ; preds = %tegra_channel_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i

tegra_vi_channels_init.exit:                      ; preds = %tegra_channel_cleanup.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i53.i)
  %cmp9 = icmp slt i32 %retval.0.i53.i, 0
  br i1 %cmp9, label %tegra_vi_channels_init.exit.free_chans_crit_edge, label %tegra_vi_channels_init.exit.if.end11_crit_edge

tegra_vi_channels_init.exit.if.end11_crit_edge:   ; preds = %tegra_vi_channels_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

tegra_vi_channels_init.exit.free_chans_crit_edge: ; preds = %tegra_vi_channels_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_chans

if.end11:                                         ; preds = %tegra_vi_channels_init.exit.if.end11_crit_edge, %for.cond.i.if.end11_crit_edge
  %vi12 = getelementptr inbounds %struct.tegra_video_device, ptr %3, i32 0, i32 2
  %140 = ptrtoint ptr %vi12 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr.i, ptr %vi12, align 8
  br label %cleanup

free_chans:                                       ; preds = %tegra_vi_channels_init.exit.free_chans_crit_edge, %do.end.i.free_chans_crit_edge, %do.end
  %ret.0 = phi i32 [ -12, %do.end ], [ %retval.0.i53.i, %tegra_vi_channels_init.exit.free_chans_crit_edge ], [ %retval.0.i53.i, %do.end.i.free_chans_crit_edge ]
  %141 = ptrtoint ptr %vi_chans to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vi_chans, align 4
  %cmp35.not97 = icmp eq ptr %142, %vi_chans
  br i1 %cmp35.not97, label %free_chans.cleanup_crit_edge, label %free_chans.for.body37_crit_edge

free_chans.for.body37_crit_edge:                  ; preds = %free_chans
  br label %for.body37

free_chans.cleanup_crit_edge:                     ; preds = %free_chans
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body37:                                       ; preds = %list_del.exit.for.body37_crit_edge, %free_chans.for.body37_crit_edge
  %chan.098 = phi ptr [ %tmp.0, %list_del.exit.for.body37_crit_edge ], [ %142, %free_chans.for.body37_crit_edge ]
  %143 = ptrtoint ptr %chan.098 to i32
  call void @__asan_load4_noabort(i32 %143)
  %tmp.0 = load ptr, ptr %chan.098, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan.098) #12
  br i1 %call.i.i, label %if.end.i.i75, label %for.body37.list_del.exit_crit_edge

for.body37.list_del.exit_crit_edge:               ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i75:                                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chan.098, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i, align 4
  %146 = ptrtoint ptr %chan.098 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %chan.098, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev1.i.i.i, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %147, ptr %145, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i75, %for.body37.list_del.exit_crit_edge
  %150 = ptrtoint ptr %chan.098 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr inttoptr (i32 256 to ptr), ptr %chan.098, align 4
  %prev.i76 = getelementptr inbounds %struct.list_head, ptr %chan.098, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i76, align 4
  tail call void @kfree(ptr noundef %chan.098) #12
  %cmp35.not = icmp eq ptr %tmp.0, %vi_chans
  br i1 %cmp35.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body37_crit_edge

list_del.exit.for.body37_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %free_chans.cleanup_crit_edge, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %ret.0, %free_chans.cleanup_crit_edge ], [ %ret.0, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_vi_exit(ptr nocapture noundef readnone %client) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @tegra_channel_fmt_align(ptr nocapture noundef %pix, i32 noundef %bpp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 32768)
  %4 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pix, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 32)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 32768)
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height, align 4
  %mul = mul i32 %3, %bpp
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesperline, align 4
  %add = add i32 %11, 63
  %div1 = and i32 %add, -64
  %12 = tail call i32 @llvm.umax.i32(i32 %div1, i32 %mul)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 32768)
  %14 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bytesperline, align 4
  %mul41 = mul nuw nsw i32 %13, %8
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 5
  %15 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul41, ptr %sizeimage, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 909203022, i32 %17)
  %cmp42 = icmp eq i32 %17, 909203022
  br i1 %cmp42, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mul44 = shl nuw i32 %mul41, 1
  %18 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul44, ptr %sizeimage, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.68, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #12
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vi, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_enum_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tpg_fmts_bitmap = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %tpg_fmts_bitmap, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call4.i)
  %cmp.not = icmp ult i32 %3, %call4.i
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp419.not = icmp eq i32 %5, -1
  br i1 %cmp419.not, label %for.cond.preheader.tegra_get_format_fourcc_by_idx.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.tegra_get_format_fourcc_by_idx.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_get_format_fourcc_by_idx.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %index.020 = phi i32 [ %inc6, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call5 = tail call i32 @_find_next_bit_be(ptr noundef %tpg_fmts_bitmap, i32 noundef 64, i32 noundef %index.020) #12
  %inc = add nuw i32 %i.021, 1
  %inc6 = add i32 %call5, 1
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %add = add i32 %7, 1
  %cmp4 = icmp ult i32 %inc, %add
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vi, align 4
  %soc.i = getelementptr inbounds %struct.tegra_vi, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc.i, align 4
  %nformats.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call5)
  %cmp.not.i = icmp ugt i32 %13, %call5
  br i1 %cmp.not.i, label %if.end.i, label %for.end.tegra_get_format_fourcc_by_idx.exit_crit_edge

for.end.tegra_get_format_fourcc_by_idx.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_get_format_fourcc_by_idx.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %fourcc.i = getelementptr %struct.tegra_video_format, ptr %15, i32 %call5, i32 5
  %16 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fourcc.i, align 4
  br label %tegra_get_format_fourcc_by_idx.exit

tegra_get_format_fourcc_by_idx.exit:              ; preds = %if.end.i, %for.end.tegra_get_format_fourcc_by_idx.exit_crit_edge, %for.cond.preheader.tegra_get_format_fourcc_by_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %if.end.i ], [ -22, %for.end.tegra_get_format_fourcc_by_idx.exit_crit_edge ], [ -22, %for.cond.preheader.tegra_get_format_fourcc_by_idx.exit_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %tegra_get_format_fourcc_by_idx.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tegra_get_format_fourcc_by_idx.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_get_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %format1 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12
  %2 = call ptr @memcpy(ptr %fmt, ptr %format1, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_set_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %format) #0 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #12
  %2 = getelementptr inbounds i8, ptr %fmt, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 56)
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %num_buffers.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 14, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @__tegra_channel_try_format(ptr noundef %1, ptr noundef %fmt1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vi, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  %soc.i = getelementptr inbounds %struct.tegra_vi, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc.i, align 4
  %nformats.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.not.i = icmp eq i32 %13, 0
  br i1 %cmp13.not.i, label %if.end5.tegra_get_format_by_fourcc.exit_crit_edge, label %for.body.lr.ph.i

if.end5.tegra_get_format_by_fourcc.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_get_format_by_fourcc.exit

for.body.lr.ph.i:                                 ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fourcc2.i = getelementptr %struct.tegra_video_format, ptr %15, i32 %i.014.i, i32 5
  %16 = ptrtoint ptr %fourcc2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fourcc2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp3.i = icmp eq i32 %17, %9
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.tegra_video_format, ptr %15, i32 %i.014.i
  br label %tegra_get_format_by_fourcc.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.tegra_get_format_by_fourcc.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.tegra_get_format_by_fourcc.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_get_format_by_fourcc.exit

tegra_get_format_by_fourcc.exit:                  ; preds = %for.inc.i.tegra_get_format_by_fourcc.exit_crit_edge, %if.then.i, %if.end5.tegra_get_format_by_fourcc.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ null, %if.end5.tegra_get_format_by_fourcc.exit_crit_edge ], [ null, %for.inc.i.tegra_get_format_by_fourcc.exit_crit_edge ]
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %fmt, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %19 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pad, align 4
  %format7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.tegra_video_format, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code, align 4
  %22 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt1, align 4
  %24 = ptrtoint ptr %format7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %format7, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %colorspace4.i, align 4
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %conv.i = trunc i32 %36 to i16
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %37, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %40 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %41 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %42 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %43 to i16
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv7.i, ptr %2, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %21, ptr %code9.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %tegra_get_format_by_fourcc.exit.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

tegra_get_format_by_fourcc.exit.cleanup_crit_edge: ; preds = %tegra_get_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %tegra_get_format_by_fourcc.exit
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %52, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %47, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %48 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.if.else_crit_edge

while.cond.i.if.else_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.if.else_crit_edge, label %lor.lhs.false.i

while.body.i.if.else_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %51 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %52, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.if.else_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %54, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %while.body.i.if.else_crit_edge, %while.cond.i.if.else_crit_edge
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev.0.i, i32 0, i32 6
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 4
  %pad11 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %pad11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pad11, align 4
  %tobool12.not = icmp eq ptr %58, null
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_fmt, align 4
  %tobool15.not = icmp eq ptr %60, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.else17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else17:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool18.not = icmp eq ptr %61, null
  br i1 %tobool18.not, label %if.else17.if.else25_crit_edge, label %land.lhs.true19

if.else17.if.else25_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

land.lhs.true19:                                  ; preds = %if.else17
  %set_fmt20 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %set_fmt20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_fmt20, align 4
  %tobool21.not = icmp eq ptr %63, null
  br i1 %tobool21.not, label %land.lhs.true19.if.else25_crit_edge, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true19.if.else25_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

if.else25:                                        ; preds = %land.lhs.true19.if.else25_crit_edge, %if.else17.if.else25_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %land.lhs.true19.if.end32_crit_edge
  %.sink = phi ptr [ %60, %if.else25 ], [ %63, %land.lhs.true19.if.end32_crit_edge ]
  %call29 = call i32 %.sink(ptr noundef nonnull %subdev.0.i, ptr noundef null, ptr noundef nonnull %fmt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end32.cleanup_crit_edge, label %if.end34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end32
  %64 = ptrtoint ptr %format7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %format7, align 4
  %66 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %fmt1, align 4
  %67 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height2.i, align 4
  %69 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %height.i, align 4
  %70 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %field3.i, align 4
  %72 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %field.i, align 4
  %73 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %colorspace4.i, align 4
  %75 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %colorspace.i, align 4
  %76 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %37, align 4
  %conv.i74 = zext i16 %77 to i32
  %78 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i74, ptr %34, align 4
  %79 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %quantization6.i, align 2
  %conv5.i76 = zext i16 %80 to i32
  %81 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv5.i76, ptr %quantization.i, align 4
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %2, align 4
  %conv7.i79 = zext i16 %83 to i32
  %84 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv7.i79, ptr %xfer_func.i, align 4
  %bpp = getelementptr inbounds %struct.tegra_video_format, ptr %retval.0.i, i32 0, i32 3
  %85 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bpp, align 4
  %87 = call i32 @llvm.umax.i32(i32 %65, i32 32) #12
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 32768) #12
  %89 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %fmt1, align 4
  %90 = call i32 @llvm.umax.i32(i32 %68, i32 32) #12
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 32768) #12
  %92 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %height.i, align 4
  %mul.i = mul i32 %86, %88
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 4
  %93 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bytesperline.i, align 4
  %add.i = add i32 %94, 63
  %div1.i = and i32 %add.i, -64
  %95 = call i32 @llvm.umax.i32(i32 %div1.i, i32 %mul.i) #12
  %96 = call i32 @llvm.umin.i32(i32 %95, i32 32768) #12
  %97 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %bytesperline.i, align 4
  %mul41.i = mul nuw nsw i32 %96, %91
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5
  %98 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mul41.i, ptr %sizeimage.i, align 4
  %99 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 909203022, i32 %100)
  %cmp42.i = icmp eq i32 %100, 909203022
  br i1 %cmp42.i, label %if.then.i82, label %if.end34.tegra_channel_fmt_align.exit_crit_edge

if.end34.tegra_channel_fmt_align.exit_crit_edge:  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_fmt_align.exit

if.then.i82:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %mul44.i = shl nuw i32 %mul41.i, 1
  %101 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul44.i, ptr %sizeimage.i, align 4
  br label %tegra_channel_fmt_align.exit

tegra_channel_fmt_align.exit:                     ; preds = %if.then.i82, %if.end34.tegra_channel_fmt_align.exit_crit_edge
  %format36 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12
  %102 = call ptr @memcpy(ptr %format36, ptr %fmt1, i32 48)
  %fmtinfo37 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 13
  %103 = ptrtoint ptr %fmtinfo37 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %retval.0.i, ptr %fmtinfo37, align 8
  %104 = ptrtoint ptr %format36 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %format36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %105)
  %cmp.i83 = icmp ult i32 %105, 1921
  br i1 %cmp.i83, label %tegra_channel_fmt_align.exit.tegra_channel_update_gangports.exit_crit_edge, label %if.else.i

tegra_channel_fmt_align.exit.tegra_channel_update_gangports.exit_crit_edge: ; preds = %tegra_channel_fmt_align.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_update_gangports.exit

if.else.i:                                        ; preds = %tegra_channel_fmt_align.exit
  call void @__sanitizer_cov_trace_pc() #14
  %totalports.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 21
  %106 = ptrtoint ptr %totalports.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %totalports.i, align 2
  br label %tegra_channel_update_gangports.exit

tegra_channel_update_gangports.exit:              ; preds = %if.else.i, %tegra_channel_fmt_align.exit.tegra_channel_update_gangports.exit_crit_edge
  %.sink.i = phi i8 [ %107, %if.else.i ], [ 1, %tegra_channel_fmt_align.exit.tegra_channel_update_gangports.exit_crit_edge ]
  %108 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 22
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %.sink.i, ptr %108, align 1
  br label %cleanup

cleanup:                                          ; preds = %tegra_channel_update_gangports.exit, %if.end32.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, %tegra_get_format_by_fourcc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tegra_channel_update_gangports.exit ], [ -16, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call29, %if.end32.cleanup_crit_edge ], [ -19, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge ], [ -19, %tegra_get_format_by_fourcc.exit.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_try_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %call1 = tail call fastcc i32 @__tegra_channel_try_format(ptr noundef %1, ptr noundef %fmt)
  ret i32 %call1
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
define internal i32 @tegra_channel_enum_input(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %inp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %3, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

if.end.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %if.end
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %11, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %6, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %7 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %10 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %11, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %13, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %if.end.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %if.end.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %name2 = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 9
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name2, i32 noundef 32) #12
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pad, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %dv_timings_cap = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %dv_timings_cap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dv_timings_cap, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %20 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %capabilities, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra_channel_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_channel_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %input) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp.not = icmp eq i32 %input, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  %sdsel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #12
  %2 = getelementptr inbounds i8, ptr %fmt, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %fmt, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sdsel) #12
  %5 = getelementptr inbounds i8, ptr %sdsel, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 60)
  %7 = ptrtoint ptr %sdsel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %sdsel, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 2
  %target1 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %8 = ptrtoint ptr %target1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target1, align 4
  %10 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %target, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %17, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %12, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %13 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %16 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %17, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %19, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %get_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %get_selection to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_selection, align 4
  %tobool5.not = icmp eq ptr %25, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %26 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.not = icmp eq i32 %27, 1
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.else19

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else19:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool20.not = icmp eq ptr %28, null
  br i1 %tobool20.not, label %if.else19.if.else27_crit_edge, label %land.lhs.true21

if.else19.if.else27_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else27

land.lhs.true21:                                  ; preds = %if.else19
  %get_selection22 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %get_selection22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_selection22, align 4
  %tobool23.not = icmp eq ptr %30, null
  br i1 %tobool23.not, label %land.lhs.true21.if.else27_crit_edge, label %land.lhs.true21.if.end34_crit_edge

land.lhs.true21.if.end34_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true21.if.else27_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else27

if.else27:                                        ; preds = %land.lhs.true21.if.else27_crit_edge, %if.else19.if.else27_crit_edge
  br label %if.end34

if.end34:                                         ; preds = %if.else27, %land.lhs.true21.if.end34_crit_edge
  %.sink = phi ptr [ %25, %if.else27 ], [ %30, %land.lhs.true21.if.end34_crit_edge ]
  %call31 = call i32 %.sink(ptr noundef nonnull %retval.0.i, ptr noundef null, ptr noundef nonnull %sdsel) #12
  %31 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call31, label %if.end34.cleanup_crit_edge [
    i32 0, label %if.then36
    i32 -515, label %if.else46
  ]

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %r37 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 4
  %32 = call ptr @memcpy(ptr %r, ptr %r37, i32 16)
  br label %cleanup

if.else46:                                        ; preds = %if.end34
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %pad48 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %pad48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pad48, align 4
  %tobool49.not = icmp eq ptr %36, null
  br i1 %tobool49.not, label %if.else46.cleanup_crit_edge, label %land.lhs.true50

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true50:                                  ; preds = %if.else46
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_fmt, align 4
  %tobool53.not = icmp eq ptr %38, null
  br i1 %tobool53.not, label %land.lhs.true50.cleanup_crit_edge, label %if.else55

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else55:                                        ; preds = %land.lhs.true50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool56.not = icmp eq ptr %39, null
  br i1 %tobool56.not, label %if.else55.if.else63_crit_edge, label %land.lhs.true57

if.else55.if.else63_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else63

land.lhs.true57:                                  ; preds = %if.else55
  %get_fmt58 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %get_fmt58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_fmt58, align 4
  %tobool59.not = icmp eq ptr %41, null
  br i1 %tobool59.not, label %land.lhs.true57.if.else63_crit_edge, label %land.lhs.true57.if.end70_crit_edge

land.lhs.true57.if.end70_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true57.if.else63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else63

if.else63:                                        ; preds = %land.lhs.true57.if.else63_crit_edge, %if.else55.if.else63_crit_edge
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %land.lhs.true57.if.end70_crit_edge
  %.sink117 = phi ptr [ %38, %if.else63 ], [ %41, %land.lhs.true57.if.end70_crit_edge ]
  %call67 = call i32 %.sink117(ptr noundef nonnull %retval.0.i, ptr noundef null, ptr noundef nonnull %fmt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp72 = icmp slt i32 %call67, 0
  br i1 %cmp72, label %if.end70.cleanup_crit_edge, label %if.end74

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %r75 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %42 = ptrtoint ptr %r75 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %r75, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %top, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %44 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %format, align 4
  %width78 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %width78 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %width78, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %height81 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %height81 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %height81, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end70.cleanup_crit_edge, %land.lhs.true50.cleanup_crit_edge, %if.else46.cleanup_crit_edge, %if.then36, %if.end34.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end74 ], [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call31, %if.end34.cleanup_crit_edge ], [ 0, %if.then36 ], [ %call67, %if.end70.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -515, %land.lhs.true50.cleanup_crit_edge ], [ -515, %if.else46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sdsel) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %sdsel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sdsel) #12
  %2 = ptrtoint ptr %sdsel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %sdsel, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pad, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 2
  %target1 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %target1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target1, align 4
  %6 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %target, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 3
  %flags2 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 2
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags2, align 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 4
  %r3 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %r, ptr %r3, i32 16)
  %reserved = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 5
  %11 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %18, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %13, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %14 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %17 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %18, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %20, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pad5, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %set_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %set_selection to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_selection, align 4
  %tobool8.not = icmp eq ptr %26, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %27 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.not = icmp eq i32 %28, 1
  br i1 %cmp.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 14, i32 21
  %29 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 0
  br i1 %cmp.i.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %tobool14.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.else25

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else25:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %if.else25.if.else33_crit_edge, label %land.lhs.true27

if.else25.if.else33_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else33

land.lhs.true27:                                  ; preds = %if.else25
  %set_selection28 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %set_selection28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_selection28, align 4
  %tobool29.not = icmp eq ptr %33, null
  br i1 %tobool29.not, label %land.lhs.true27.if.else33_crit_edge, label %land.lhs.true27.if.end40_crit_edge

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true27.if.else33_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else33

if.else33:                                        ; preds = %land.lhs.true27.if.else33_crit_edge, %if.else25.if.else33_crit_edge
  br label %if.end40

if.end40:                                         ; preds = %if.else33, %land.lhs.true27.if.end40_crit_edge
  %.sink = phi ptr [ %26, %if.else33 ], [ %33, %land.lhs.true27.if.end40_crit_edge ]
  %call37 = call i32 %.sink(ptr noundef nonnull %retval.0.i, ptr noundef null, ptr noundef nonnull %sdsel) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool41.not = icmp eq i32 %call37, 0
  br i1 %tobool41.not, label %if.then42, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  %34 = call ptr @memcpy(ptr %r3, ptr %r, i32 16)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #12
  %35 = getelementptr inbounds i8, ptr %fmt.i, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 84)
  %37 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %fmt.i, align 4
  %call.i.i.i = call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then42.tegra_channel_set_subdev_active_fmt.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.i

if.then42.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

tegra_channel_get_remote_csi_subdev.exit.i.i:     ; preds = %if.then42
  %entity.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %entity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %entity.i.i.i, align 4
  %tobool.not.i.i67 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i67, label %tegra_channel_get_remote_csi_subdev.exit.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i.i
  br label %while.cond.i.i

tegra_channel_get_remote_csi_subdev.exit.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

while.cond.i.i:                                   ; preds = %is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge
  %subdev.0.i.i = phi ptr [ %44, %is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge ], [ %39, %tegra_channel_get_remote_csi_subdev.exit.i.i.while.cond.i.i_crit_edge ]
  %pad.0.in.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %pad.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %pad.0.i.i = load ptr, ptr %pad.0.in.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i, label %while.cond.i.i.if.else.i_crit_edge

while.cond.i.i.if.else.i_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call3.i.i = call ptr @media_entity_remote_pad(ptr noundef %pad.0.i.i) #12
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %while.body.i.i.if.else.i_crit_edge, label %lor.lhs.false.i.i

while.body.i.i.if.else.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  %entity5.i.i = getelementptr inbounds %struct.media_pad, ptr %call3.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %entity5.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %entity5.i.i, align 4
  %tobool.not.i24.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i24.i.i, label %lor.lhs.false.i.i.if.else.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i

lor.lhs.false.i.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

is_media_entity_v4l2_subdev.exit.i.i:             ; preds = %lor.lhs.false.i.i
  %obj_type.i.i.i = getelementptr inbounds %struct.media_entity, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %obj_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %obj_type.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %46, 2
  br i1 %cmp.i.i.i, label %is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i.if.else.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.if.else.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

is_media_entity_v4l2_subdev.exit.i.i.while.cond.i.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.else.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i.i.if.else.i_crit_edge, %lor.lhs.false.i.i.if.else.i_crit_edge, %while.body.i.i.if.else.i_crit_edge, %while.cond.i.i.if.else.i_crit_edge
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev.0.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pad.i, align 4
  %tobool1.not.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i, label %if.else.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, label %land.lhs.true.i

if.else.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_fmt.i, align 4
  %tobool4.not.i68 = icmp eq ptr %52, null
  br i1 %tobool4.not.i68, label %land.lhs.true.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, label %if.else6.i

land.lhs.true.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not.i = icmp eq ptr %53, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else14.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else14.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %get_fmt9.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %get_fmt9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_fmt9.i, align 4
  %tobool10.not.i = icmp eq ptr %55, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else14.i_crit_edge, label %land.lhs.true8.i.if.end20.i_crit_edge

land.lhs.true8.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

land.lhs.true8.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true8.i.if.else14.i_crit_edge, %if.else6.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true8.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %52, %if.else14.i ], [ %55, %land.lhs.true8.i.if.end20.i_crit_edge ]
  %call18.i = call i32 %.sink.i(ptr noundef nonnull %subdev.0.i.i, ptr noundef null, ptr noundef nonnull %fmt.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool21.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end20.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge

if.end20.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

if.end23.i:                                       ; preds = %if.end20.i
  %vi.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %vi.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vi.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %code.i, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_vi, ptr %57, i32 0, i32 5
  %60 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %soc.i.i, align 4
  %nformats.i.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nformats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp1.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp1.not.i.i, label %if.end23.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, label %for.body.lr.ph.i.i

if.end23.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

for.body.lr.ph.i.i:                               ; preds = %if.end23.i
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %code2.i.i = getelementptr %struct.tegra_video_format, ptr %65, i32 %i.02.i.i, i32 2
  %66 = ptrtoint ptr %code2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %code2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %59)
  %cmp3.i.i = icmp eq i32 %67, %59
  br i1 %cmp3.i.i, label %tegra_get_format_idx_by_code.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %63
  br i1 %exitcond.not.i.i, label %for.inc.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

tegra_get_format_idx_by_code.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.02.i.i)
  %cmp.i69 = icmp slt i32 %i.02.i.i, 0
  br i1 %cmp.i69, label %tegra_get_format_idx_by_code.exit.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, label %if.end26.i

tegra_get_format_idx_by_code.exit.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge: ; preds = %tegra_get_format_idx_by_code.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_set_subdev_active_fmt.exit

if.end26.i:                                       ; preds = %tegra_get_format_idx_by_code.exit.i
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.tegra_video_format, ptr %65, i32 %i.02.i.i
  %fmtinfo.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 13
  %68 = ptrtoint ptr %fmtinfo.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.i, ptr %fmtinfo.i, align 8
  %format28.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12
  %69 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %format.i, align 4
  %71 = ptrtoint ptr %format28.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %format28.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %height.i.i, align 4
  %height2.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 1
  %74 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %height2.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 3
  %75 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %field.i.i, align 4
  %field3.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 3
  %77 = ptrtoint ptr %field3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %field3.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %colorspace.i.i, align 4
  %colorspace4.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 6
  %80 = ptrtoint ptr %colorspace4.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %colorspace4.i.i, align 4
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %81, align 4
  %conv.i.i = zext i16 %83 to i32
  %84 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 9
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv.i.i, ptr %84, align 4
  %quantization.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 6
  %86 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %quantization.i.i, align 2
  %conv5.i.i = zext i16 %87 to i32
  %quantization6.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 10
  %88 = ptrtoint ptr %quantization6.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv5.i.i, ptr %quantization6.i.i, align 4
  %xfer_func.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 7
  %89 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %xfer_func.i.i, align 4
  %conv7.i.i = zext i16 %90 to i32
  %xfer_func8.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 11
  %91 = ptrtoint ptr %xfer_func8.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv7.i.i, ptr %xfer_func8.i.i, align 4
  %fourcc.i = getelementptr %struct.tegra_video_format, ptr %65, i32 %i.02.i.i, i32 5
  %92 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fourcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 2
  %94 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %pixelformat.i, align 8
  %bpp.i = getelementptr %struct.tegra_video_format, ptr %65, i32 %i.02.i.i, i32 3
  %95 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bpp.i, align 4
  %mul.i = mul i32 %96, %70
  %bytesperline.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 4
  %97 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul.i, ptr %bytesperline.i, align 8
  %mul38.i = mul i32 %mul.i, %73
  %sizeimage.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 5
  %98 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mul38.i, ptr %sizeimage.i, align 4
  %99 = load i32, ptr %bpp.i, align 4
  %100 = call i32 @llvm.umax.i32(i32 %70, i32 32) #12
  %101 = call i32 @llvm.umin.i32(i32 %100, i32 32768) #12
  %102 = ptrtoint ptr %format28.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %format28.i, align 4
  %103 = call i32 @llvm.umax.i32(i32 %73, i32 32) #12
  %104 = call i32 @llvm.umin.i32(i32 %103, i32 32768) #12
  %105 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %height2.i.i, align 4
  %mul.i.i = mul i32 %99, %101
  %add.i.i = add i32 %mul.i, 63
  %div1.i.i = and i32 %add.i.i, -64
  %106 = call i32 @llvm.umax.i32(i32 %div1.i.i, i32 %mul.i.i) #12
  %107 = call i32 @llvm.umin.i32(i32 %106, i32 32768) #12
  %108 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %bytesperline.i, align 4
  %mul41.i.i = mul nuw nsw i32 %107, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 909203022, i32 %93)
  %cmp42.i.i = icmp eq i32 %93, 909203022
  %mul44.i.i = zext i1 %cmp42.i.i to i32
  %spec.select.i = shl nuw i32 %mul41.i.i, %mul44.i.i
  %109 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %spec.select.i, ptr %sizeimage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %101)
  %cmp.i.i70 = icmp ult i32 %101, 1921
  br i1 %cmp.i.i70, label %if.end26.i.tegra_channel_update_gangports.exit.i_crit_edge, label %if.else.i.i

if.end26.i.tegra_channel_update_gangports.exit.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_update_gangports.exit.i

if.else.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %totalports.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 21
  %110 = ptrtoint ptr %totalports.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %totalports.i.i, align 2
  br label %tegra_channel_update_gangports.exit.i

tegra_channel_update_gangports.exit.i:            ; preds = %if.else.i.i, %if.end26.i.tegra_channel_update_gangports.exit.i_crit_edge
  %.sink.i.i = phi i8 [ %111, %if.else.i.i ], [ 1, %if.end26.i.tegra_channel_update_gangports.exit.i_crit_edge ]
  %112 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 22
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %.sink.i.i, ptr %112, align 1
  br label %tegra_channel_set_subdev_active_fmt.exit

tegra_channel_set_subdev_active_fmt.exit:         ; preds = %tegra_channel_update_gangports.exit.i, %tegra_get_format_idx_by_code.exit.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, %for.inc.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, %if.end23.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, %if.end20.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, %land.lhs.true.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, %if.else.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge, %if.then42.tegra_channel_set_subdev_active_fmt.exit_crit_edge
  %retval.0.i71 = phi i32 [ 0, %tegra_channel_update_gangports.exit.i ], [ %call18.i, %if.end20.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge ], [ -22, %tegra_get_format_idx_by_code.exit.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge ], [ -19, %tegra_channel_get_remote_csi_subdev.exit.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge ], [ -19, %if.then42.tegra_channel_set_subdev_active_fmt.exit_crit_edge ], [ -515, %if.else.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge ], [ -515, %land.lhs.true.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge ], [ -22, %if.end23.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge ], [ -22, %for.inc.i.i.tegra_channel_set_subdev_active_fmt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #12
  br label %cleanup

cleanup:                                          ; preds = %tegra_channel_set_subdev_active_fmt.exit, %if.end40.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i71, %tegra_channel_set_subdev_active_fmt.exit ], [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end10.cleanup_crit_edge ], [ %call37, %if.end40.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sdsel) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %video = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @v4l2_g_parm_cap(ptr noundef %video, ptr noundef %retval.0.i, ptr noundef %a) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_s_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %video = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @v4l2_s_parm_cap(ptr noundef %video, ptr noundef %retval.0.i, ptr noundef %a) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_log_status(ptr noundef %file, ptr nocapture noundef readnone %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_dev = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn26 = load ptr, ptr %subdevs, align 4
  %cmp.not29 = icmp eq ptr %.pn26, %subdevs
  br i1 %cmp.not29, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn26, %entry.for.body_crit_edge ]
  %__sd.031 = getelementptr i8, ptr %.pn30, i32 -80
  %ops = getelementptr i8, ptr %.pn30, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 %10(ptr noundef %__sd.031) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn30, align 4
  %12 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2_dev, align 4
  %subdevs4 = getelementptr inbounds %struct.v4l2_device, ptr %13, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %subdevs4
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sizes) #0 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #12
  %2 = getelementptr inbounds i8, ptr %fse, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %6 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fse, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %7 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %which, align 4
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vi, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 1
  %10 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixel_format, align 4
  %soc.i = getelementptr inbounds %struct.tegra_vi, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc.i, align 4
  %nformats.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not.i = icmp eq i32 %15, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fourcc2.i = getelementptr %struct.tegra_video_format, ptr %17, i32 %i.014.i, i32 5
  %18 = ptrtoint ptr %fourcc2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fourcc2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp3.i = icmp eq i32 %19, %11
  br i1 %cmp3.i, label %tegra_get_format_by_fourcc.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra_get_format_by_fourcc.exit:                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_video_format, ptr %17, i32 %i.014.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %tegra_get_format_by_fourcc.exit.cleanup_crit_edge, label %if.end

tegra_get_format_by_fourcc.exit.cleanup_crit_edge: ; preds = %tegra_get_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %tegra_get_format_by_fourcc.exit
  %code = getelementptr %struct.tegra_video_format, ptr %17, i32 %i.014.i, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %22 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %code3, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %if.end
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %29, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %24, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %25 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.if.else_crit_edge

while.cond.i.if.else_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.if.else_crit_edge, label %lor.lhs.false.i

while.body.i.if.else_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %28 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %29, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.if.else_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %31, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %while.body.i.if.else_crit_edge, %while.cond.i.if.else_crit_edge
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev.0.i, i32 0, i32 6
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pad, align 4
  %tobool7.not = icmp eq ptr %35, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enum_frame_size, align 4
  %tobool10.not = icmp eq ptr %37, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.else12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not = icmp eq ptr %38, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %enum_frame_size15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %enum_frame_size15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %enum_frame_size15, align 4
  %tobool16.not = icmp eq ptr %40, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %land.lhs.true14.if.end27_crit_edge
  %.sink = phi ptr [ %37, %if.else20 ], [ %40, %land.lhs.true14.if.end27_crit_edge ]
  %call24 = call i32 %.sink(ptr noundef nonnull %subdev.0.i, ptr noundef null, ptr noundef nonnull %fse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool28.not = icmp eq i32 %call24, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 2
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %42 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_width, align 4
  %44 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %44, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %46 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_height, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 1
  %48 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tegra_get_format_by_fourcc.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %tegra_get_format_by_fourcc.exit.cleanup_crit_edge ], [ %call24, %if.end27.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %ivals) #0 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #12
  %2 = getelementptr inbounds i8, ptr %fie, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %ivals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivals, align 4
  %6 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fie, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %width2 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ivals, i32 0, i32 2
  %7 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width2, align 4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height3 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ivals, i32 0, i32 3
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
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vi, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ivals, i32 0, i32 1
  %16 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixel_format, align 4
  %soc.i = getelementptr inbounds %struct.tegra_vi, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc.i, align 4
  %nformats.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.not.i = icmp eq i32 %21, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fourcc2.i = getelementptr %struct.tegra_video_format, ptr %23, i32 %i.014.i, i32 5
  %24 = ptrtoint ptr %fourcc2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fourcc2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %17)
  %cmp3.i = icmp eq i32 %25, %17
  br i1 %cmp3.i, label %tegra_get_format_by_fourcc.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra_get_format_by_fourcc.exit:                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_video_format, ptr %23, i32 %i.014.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %tegra_get_format_by_fourcc.exit.cleanup_crit_edge, label %if.end

tegra_get_format_by_fourcc.exit.cleanup_crit_edge: ; preds = %tegra_get_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %tegra_get_format_by_fourcc.exit
  %code = getelementptr %struct.tegra_video_format, ptr %23, i32 %i.014.i, i32 2
  %26 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code, align 4
  %code5 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %28 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %code5, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %if.end
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %35, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %30, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %31 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.if.else_crit_edge

while.cond.i.if.else_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.if.else_crit_edge, label %lor.lhs.false.i

while.body.i.if.else_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %34 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %35, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.if.else_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %37, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %while.body.i.if.else_crit_edge, %while.cond.i.if.else_crit_edge
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev.0.i, i32 0, i32 6
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pad, align 4
  %tobool9.not = icmp eq ptr %41, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enum_frame_interval, align 4
  %tobool12.not = icmp eq ptr %43, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.else14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool15.not = icmp eq ptr %44, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %enum_frame_interval17 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %enum_frame_interval17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %enum_frame_interval17, align 4
  %tobool18.not = icmp eq ptr %46, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.if.end29_crit_edge

land.lhs.true16.if.end29_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %land.lhs.true16.if.end29_crit_edge
  %.sink = phi ptr [ %43, %if.else22 ], [ %46, %land.lhs.true16.if.end29_crit_edge ]
  %call26 = call i32 %.sink(ptr noundef nonnull %subdev.0.i, ptr noundef null, ptr noundef nonnull %fie) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool30.not = icmp eq i32 %call26, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ivals, i32 0, i32 4
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %48 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %interval, align 4
  %50 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ivals, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %50, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %denominator, align 4
  %denominator35 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ivals, i32 0, i32 5, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %denominator35 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %denominator35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tegra_get_format_by_fourcc.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %tegra_get_format_by_fourcc.exit.cleanup_crit_edge ], [ %call26, %if.end29.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %timings) #0 align 64 {
entry:
  %curr_timings = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %curr_timings) #12
  %3 = call ptr @memset(ptr %curr_timings, i32 255, i32 132)
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %10, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %5, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %6 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %9 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %10, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %12, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %s_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %s_dv_timings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_dv_timings, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %call5 = call i32 @tegra_channel_g_dv_timings(ptr noundef %file, ptr noundef %fh, ptr noundef nonnull %curr_timings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef nonnull %curr_timings, i32 noundef 0, i1 noundef zeroext false) #12
  br i1 %call9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %num_buffers.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 14, i32 21
  %19 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.not = icmp eq i32 %20, 0
  br i1 %cmp.i.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %v4l2_dev = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1, i32 7
  %21 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v4l2_dev, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn100 = load ptr, ptr %subdevs, align 4
  %cmp.not103 = icmp eq ptr %.pn100, %subdevs
  br i1 %cmp.not103, label %if.end14.if.end48_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.if.end48_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14.for.body_crit_edge
  %.pn105 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn100, %if.end14.for.body_crit_edge ]
  %__err.0104 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %__sd.0106 = getelementptr i8, ptr %.pn105, i32 -80
  %ops20 = getelementptr i8, ptr %.pn105, i32 24
  %24 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops20, align 4
  %video21 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %video21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %video21, align 4
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %for.body.if.end33_crit_edge, label %land.lhs.true23

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true23:                                  ; preds = %for.body
  %s_dv_timings26 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %s_dv_timings26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_dv_timings26, align 4
  %tobool27.not = icmp eq ptr %29, null
  br i1 %tobool27.not, label %land.lhs.true23.if.end33_crit_edge, label %if.then28

land.lhs.true23.if.end33_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then28:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = call i32 %29(ptr noundef %__sd.0106, ptr noundef %timings) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %land.lhs.true23.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %__err.1 = phi i32 [ %call32, %if.then28 ], [ %__err.0104, %land.lhs.true23.if.end33_crit_edge ], [ %__err.0104, %for.body.if.end33_crit_edge ]
  %30 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %__err.1, label %if.end33.cleanup_crit_edge [
    i32 0, label %if.end33.for.inc_crit_edge
    i32 -515, label %if.end33.for.inc_crit_edge117
  ]

if.end33.for.inc_crit_edge117:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end33.for.inc_crit_edge, %if.end33.for.inc_crit_edge117
  %31 = ptrtoint ptr %.pn105 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn105, align 4
  %32 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %v4l2_dev, align 4
  %subdevs19 = getelementptr inbounds %struct.v4l2_device, ptr %33, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %subdevs19
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %34 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %__err.1, label %for.end.cleanup_crit_edge [
    i32 -515, label %for.end.if.end48_crit_edge
    i32 0, label %for.end.if.end48_crit_edge118
  ]

for.end.if.end48_crit_edge118:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %for.end.if.end48_crit_edge, %for.end.if.end48_crit_edge118, %if.end14.if.end48_crit_edge
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %2, align 1
  %format = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12
  %37 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %format, align 8
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %height, align 1
  %height51 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 1
  %40 = ptrtoint ptr %height51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height51, align 4
  %41 = load i32, ptr %2, align 1
  %fmtinfo = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 13
  %42 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fmtinfo, align 8
  %bpp = getelementptr inbounds %struct.tegra_video_format, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bpp, align 4
  %mul = mul i32 %45, %41
  %bytesperline = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 4
  %46 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %bytesperline, align 8
  %47 = load i32, ptr %height, align 1
  %mul57 = mul i32 %47, %mul
  %sizeimage = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 5
  %48 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul57, ptr %sizeimage, align 4
  %49 = load i32, ptr %bpp, align 4
  call fastcc void @tegra_channel_fmt_align(ptr noundef %format, i32 noundef %49)
  %50 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %51)
  %cmp.i99 = icmp ult i32 %51, 1921
  br i1 %cmp.i99, label %if.end48.tegra_channel_update_gangports.exit_crit_edge, label %if.else.i

if.end48.tegra_channel_update_gangports.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_update_gangports.exit

if.else.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %totalports.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 21
  %52 = ptrtoint ptr %totalports.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %totalports.i, align 2
  br label %tegra_channel_update_gangports.exit

tegra_channel_update_gangports.exit:              ; preds = %if.else.i, %if.end48.tegra_channel_update_gangports.exit_crit_edge
  %.sink.i = phi i8 [ %53, %if.else.i ], [ 1, %if.end48.tegra_channel_update_gangports.exit_crit_edge ]
  %54 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 22
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink.i, ptr %54, align 1
  br label %cleanup

cleanup:                                          ; preds = %tegra_channel_update_gangports.exit, %for.end.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tegra_channel_update_gangports.exit ], [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -16, %if.end11.cleanup_crit_edge ], [ %__err.1, %for.end.cleanup_crit_edge ], [ %__err.1, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %curr_timings) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_g_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %g_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %g_dv_timings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_dv_timings, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %v4l2_dev = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %v4l2_dev, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn50 = load ptr, ptr %subdevs, align 4
  %cmp.not53 = icmp eq ptr %.pn50, %subdevs
  br i1 %cmp.not53, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn55 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn50, %if.end.for.body_crit_edge ]
  %__err.054 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.056 = getelementptr i8, ptr %.pn55, i32 -80
  %ops10 = getelementptr i8, ptr %.pn55, i32 24
  %20 = ptrtoint ptr %ops10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops10, align 4
  %video11 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video11, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %for.body.if.end23_crit_edge, label %land.lhs.true13

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true13:                                  ; preds = %for.body
  %g_dv_timings16 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %g_dv_timings16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %g_dv_timings16, align 4
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %land.lhs.true13.if.end23_crit_edge, label %if.then18

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 %25(ptr noundef %__sd.056, ptr noundef %timings) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %land.lhs.true13.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %__err.1 = phi i32 [ %call22, %if.then18 ], [ %__err.054, %land.lhs.true13.if.end23_crit_edge ], [ %__err.054, %for.body.if.end23_crit_edge ]
  %26 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %__err.1, label %if.end23.cleanup_crit_edge [
    i32 0, label %if.end23.for.inc_crit_edge
    i32 -515, label %if.end23.for.inc_crit_edge64
  ]

if.end23.for.inc_crit_edge64:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %if.end23.for.inc_crit_edge64
  %27 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn55, align 4
  %28 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v4l2_dev, align 4
  %subdevs9 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %subdevs9
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp35 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp35, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_query_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %query_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %query_dv_timings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %query_dv_timings, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %v4l2_dev = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %v4l2_dev, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn50 = load ptr, ptr %subdevs, align 4
  %cmp.not53 = icmp eq ptr %.pn50, %subdevs
  br i1 %cmp.not53, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn55 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn50, %if.end.for.body_crit_edge ]
  %__err.054 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.056 = getelementptr i8, ptr %.pn55, i32 -80
  %ops10 = getelementptr i8, ptr %.pn55, i32 24
  %20 = ptrtoint ptr %ops10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops10, align 4
  %video11 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video11, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %for.body.if.end23_crit_edge, label %land.lhs.true13

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true13:                                  ; preds = %for.body
  %query_dv_timings16 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %query_dv_timings16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %query_dv_timings16, align 4
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %land.lhs.true13.if.end23_crit_edge, label %if.then18

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 %25(ptr noundef %__sd.056, ptr noundef %timings) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %land.lhs.true13.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %__err.1 = phi i32 [ %call22, %if.then18 ], [ %__err.054, %land.lhs.true13.if.end23_crit_edge ], [ %__err.054, %for.body.if.end23_crit_edge ]
  %26 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %__err.1, label %if.end23.cleanup_crit_edge [
    i32 0, label %if.end23.for.inc_crit_edge
    i32 -515, label %if.end23.for.inc_crit_edge64
  ]

if.end23.for.inc_crit_edge64:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %if.end23.for.inc_crit_edge64
  %27 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn55, align 4
  %28 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v4l2_dev, align 4
  %subdevs9 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %subdevs9
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp35 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp35, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_enum_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %enum_dv_timings = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %enum_dv_timings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enum_dv_timings, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.else16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else16:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %enum_dv_timings19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %enum_dv_timings19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enum_dv_timings19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.cleanup.sink.split_crit_edge

land.lhs.true18.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else24, %land.lhs.true18.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.else24 ], [ %19, %land.lhs.true18.cleanup.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %retval.0.i, ptr noundef %timings) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call23, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_dv_timings_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %dv_timings_cap = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %dv_timings_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dv_timings_cap, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.else16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else16:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %dv_timings_cap19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %dv_timings_cap19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dv_timings_cap19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.cleanup.sink.split_crit_edge

land.lhs.true18.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else24, %land.lhs.true18.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.else24 ], [ %19, %land.lhs.true18.cleanup.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %retval.0.i, ptr noundef %cap) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call23, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_g_edid(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %edid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %get_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %get_edid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_edid, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.else16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else16:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %get_edid19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %get_edid19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_edid19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.cleanup.sink.split_crit_edge

land.lhs.true18.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else24, %land.lhs.true18.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.else24 ], [ %19, %land.lhs.true18.cleanup.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %retval.0.i, ptr noundef %edid) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call23, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_s_edid(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %edid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %8, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %3, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %4 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %lor.lhs.false.i

while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %7 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %8, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_get_remote_source_subdev.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

tegra_channel_get_remote_source_subdev.exit:      ; preds = %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ null, %tegra_channel_get_remote_csi_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ null, %entry.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %is_media_entity_v4l2_subdev.exit.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %lor.lhs.false.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.body.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ], [ %subdev.0.i, %while.cond.i.tegra_channel_get_remote_source_subdev.exit_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge, label %land.lhs.true

tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_source_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %tegra_channel_get_remote_source_subdev.exit
  %set_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %set_edid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_edid, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.else16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else16:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %set_edid19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %set_edid19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_edid19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.cleanup.sink.split_crit_edge

land.lhs.true18.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else24, %land.lhs.true18.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.else24 ], [ %19, %land.lhs.true18.cleanup.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %retval.0.i, ptr noundef %edid) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %tegra_channel_get_remote_source_subdev.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call23, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 4, ptr noundef null) #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #12
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tegra_channel_try_format(ptr noundef %chan, ptr noundef %pix) unnamed_addr #0 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %sdsel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #12
  %0 = getelementptr inbounds i8, ptr %fmt, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #12
  %2 = call ptr @memset(ptr %fse, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sdsel) #12
  %3 = getelementptr inbounds i8, ptr %sdsel, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 60)
  %5 = ptrtoint ptr %sdsel to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %sdsel, align 4
  %6 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %6, align 4
  %pad1.i.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 3
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra_channel_get_remote_csi_subdev.exit.i:       ; preds = %entry
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, label %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge

tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  br label %while.cond.i

tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge: ; preds = %tegra_channel_get_remote_csi_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge
  %subdev.0.i = phi ptr [ %14, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ], [ %9, %tegra_channel_get_remote_csi_subdev.exit.i.while.cond.i_crit_edge ]
  %pad.0.in.i = getelementptr inbounds %struct.media_entity, ptr %subdev.0.i, i32 0, i32 9
  %10 = ptrtoint ptr %pad.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pad.0.i = load ptr, ptr %pad.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %while.cond.i.if.end_crit_edge

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0.i) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.if.end_crit_edge, label %lor.lhs.false.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %while.body.i
  %entity5.i = getelementptr inbounds %struct.media_pad, ptr %call3.i, i32 0, i32 1
  %13 = ptrtoint ptr %entity5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entity5.i, align 4
  %tobool.not.i24.i = icmp eq ptr %14, null
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i.if.end_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %16, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.if.end_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.end_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end:                                           ; preds = %is_media_entity_v4l2_subdev.exit.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %while.body.i.if.end_crit_edge, %while.cond.i.if.end_crit_edge
  %call1 = tail call ptr @v4l2_subdev_alloc_state(ptr noundef nonnull %subdev.0.i) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 4
  %18 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vi, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat, align 4
  %soc.i = getelementptr inbounds %struct.tegra_vi, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc.i, align 4
  %nformats.i = getelementptr inbounds %struct.tegra_vi_soc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp13.not.i = icmp eq i32 %25, 0
  br i1 %cmp13.not.i, label %if.end5.if.then8_crit_edge, label %for.body.lr.ph.i

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

for.body.lr.ph.i:                                 ; preds = %if.end5
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fourcc2.i = getelementptr %struct.tegra_video_format, ptr %27, i32 %i.014.i, i32 5
  %28 = ptrtoint ptr %fourcc2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fourcc2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp3.i = icmp eq i32 %29, %21
  br i1 %cmp3.i, label %tegra_get_format_by_fourcc.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.if.then8_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then8_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

tegra_get_format_by_fourcc.exit:                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_video_format, ptr %27, i32 %i.014.i
  %tobool7.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool7.not, label %tegra_get_format_by_fourcc.exit.if.then8_crit_edge, label %tegra_get_format_by_fourcc.exit.if.end16_crit_edge

tegra_get_format_by_fourcc.exit.if.end16_crit_edge: ; preds = %tegra_get_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

tegra_get_format_by_fourcc.exit.if.then8_crit_edge: ; preds = %tegra_get_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %tegra_get_format_by_fourcc.exit.if.then8_crit_edge, %for.inc.i.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %pixelformat9 = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 12, i32 2
  %30 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pixelformat9, align 8
  %32 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.tegra_vi_channel, ptr %chan, i32 0, i32 12, i32 6
  %33 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %colorspace, align 8
  %colorspace12 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %35 = ptrtoint ptr %colorspace12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %colorspace12, align 4
  %36 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vi, align 4
  %soc.i208 = getelementptr inbounds %struct.tegra_vi, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %soc.i208 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc.i208, align 4
  %nformats.i209 = getelementptr inbounds %struct.tegra_vi_soc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %nformats.i209 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nformats.i209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp13.not.i210 = icmp eq i32 %41, 0
  br i1 %cmp13.not.i210, label %if.then8.if.end16_crit_edge, label %for.body.lr.ph.i211

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

for.body.lr.ph.i211:                              ; preds = %if.then8
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  br label %for.body.i215

for.body.i215:                                    ; preds = %for.inc.i220.for.body.i215_crit_edge, %for.body.lr.ph.i211
  %i.014.i212 = phi i32 [ 0, %for.body.lr.ph.i211 ], [ %inc.i218, %for.inc.i220.for.body.i215_crit_edge ]
  %fourcc2.i213 = getelementptr %struct.tegra_video_format, ptr %43, i32 %i.014.i212, i32 5
  %44 = ptrtoint ptr %fourcc2.i213 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fourcc2.i213, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %31)
  %cmp3.i214 = icmp eq i32 %45, %31
  br i1 %cmp3.i214, label %if.then.i217, label %for.inc.i220

if.then.i217:                                     ; preds = %for.body.i215
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i216 = getelementptr %struct.tegra_video_format, ptr %43, i32 %i.014.i212
  br label %if.end16

for.inc.i220:                                     ; preds = %for.body.i215
  %inc.i218 = add nuw i32 %i.014.i212, 1
  %exitcond.not.i219 = icmp eq i32 %inc.i218, %41
  br i1 %exitcond.not.i219, label %for.inc.i220.if.end16_crit_edge, label %for.inc.i220.for.body.i215_crit_edge

for.inc.i220.for.body.i215_crit_edge:             ; preds = %for.inc.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i215

for.inc.i220.if.end16_crit_edge:                  ; preds = %for.inc.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %for.inc.i220.if.end16_crit_edge, %if.then.i217, %if.then8.if.end16_crit_edge, %tegra_get_format_by_fourcc.exit.if.end16_crit_edge
  %fmtinfo.0 = phi ptr [ %arrayidx.i, %tegra_get_format_by_fourcc.exit.if.end16_crit_edge ], [ %arrayidx.i216, %if.then.i217 ], [ null, %if.then8.if.end16_crit_edge ], [ null, %for.inc.i220.if.end16_crit_edge ]
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %46 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %field, align 4
  %47 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %fmt, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %48 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %pad, align 4
  %format17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.tegra_video_format, ptr %fmtinfo.0, i32 0, i32 2
  %49 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %code, align 4
  %51 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pix, align 4
  %53 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %format17, align 4
  %height.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %54 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %height2.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %57 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %58 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %colorspace4.i, align 4
  %61 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 9
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %conv.i = trunc i32 %63 to i16
  %64 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i, ptr %64, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 10
  %66 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %67 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %68 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 11
  %69 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %70 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %71 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %50, ptr %code9.i, align 4
  %73 = load i32, ptr %code, align 4
  %code19 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %74 = ptrtoint ptr %code19 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %code19, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev.0.i, i32 0, i32 6
  %75 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops, align 4
  %pad22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %pad22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pad22, align 4
  %tobool23.not = icmp eq ptr %78, null
  br i1 %tobool23.not, label %if.end16.if.then45_crit_edge, label %land.lhs.true

if.end16.if.then45_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

land.lhs.true:                                    ; preds = %if.end16
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %enum_frame_size, align 4
  %tobool26.not = icmp eq ptr %80, null
  br i1 %tobool26.not, label %land.lhs.true.if.then45_crit_edge, label %if.else28

land.lhs.true.if.then45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.else28:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool29.not = icmp eq ptr %81, null
  br i1 %tobool29.not, label %if.else28.if.else36_crit_edge, label %land.lhs.true30

if.else28.if.else36_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else36

land.lhs.true30:                                  ; preds = %if.else28
  %enum_frame_size31 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %enum_frame_size31 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %enum_frame_size31, align 4
  %tobool32.not = icmp eq ptr %83, null
  br i1 %tobool32.not, label %land.lhs.true30.if.else36_crit_edge, label %land.lhs.true30.if.end43_crit_edge

land.lhs.true30.if.end43_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true30.if.else36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true30.if.else36_crit_edge, %if.else28.if.else36_crit_edge
  br label %if.end43

if.end43:                                         ; preds = %if.else36, %land.lhs.true30.if.end43_crit_edge
  %.sink = phi ptr [ %80, %if.else36 ], [ %83, %land.lhs.true30.if.end43_crit_edge ]
  %call40 = call i32 %.sink(ptr noundef nonnull %subdev.0.i, ptr noundef %call1, ptr noundef nonnull %fse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool44.not = icmp eq i32 %call40, 0
  br i1 %tobool44.not, label %if.else101, label %if.end43.if.then45_crit_edge

if.end43.if.then45_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then45:                                        ; preds = %if.end43.if.then45_crit_edge, %land.lhs.true.if.then45_crit_edge, %if.end16.if.then45_crit_edge
  %84 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops, align 4
  %pad47 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %pad47 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pad47, align 4
  %tobool48.not = icmp eq ptr %87, null
  br i1 %tobool48.not, label %if.then45.if.then53_crit_edge, label %land.lhs.true49

if.then45.if.then53_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

land.lhs.true49:                                  ; preds = %if.then45
  %get_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %get_selection to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_selection, align 4
  %tobool52.not = icmp eq ptr %89, null
  br i1 %tobool52.not, label %land.lhs.true49.if.then53_crit_edge, label %if.else71

land.lhs.true49.if.then53_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.then53:                                        ; preds = %land.lhs.true49.if.then53_crit_edge, %if.then45.if.then53_crit_edge
  %90 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call1, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %91, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %width, align 4
  br label %if.else113

if.else71:                                        ; preds = %land.lhs.true49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool72.not = icmp eq ptr %93, null
  br i1 %tobool72.not, label %if.else71.if.else79_crit_edge, label %land.lhs.true73

if.else71.if.else79_crit_edge:                    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else79

land.lhs.true73:                                  ; preds = %if.else71
  %get_selection74 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %get_selection74 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get_selection74, align 4
  %tobool75.not = icmp eq ptr %95, null
  br i1 %tobool75.not, label %land.lhs.true73.if.else79_crit_edge, label %land.lhs.true73.if.end86_crit_edge

land.lhs.true73.if.end86_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.lhs.true73.if.else79_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else79

if.else79:                                        ; preds = %land.lhs.true73.if.else79_crit_edge, %if.else71.if.else79_crit_edge
  br label %if.end86

if.end86:                                         ; preds = %if.else79, %land.lhs.true73.if.end86_crit_edge
  %.sink262 = phi ptr [ %89, %if.else79 ], [ %95, %land.lhs.true73.if.end86_crit_edge ]
  %call83 = call i32 %.sink262(ptr noundef nonnull %subdev.0.i, ptr noundef null, ptr noundef nonnull %sdsel) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool88.not = icmp eq i32 %call83, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %width91 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 4, i32 2
  %96 = ptrtoint ptr %width91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width91, align 4
  %98 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call1, align 4
  %width94 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %99, i32 0, i32 1, i32 2
  %100 = ptrtoint ptr %width94 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %width94, align 4
  %height96 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 4, i32 3
  %101 = ptrtoint ptr %height96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height96, align 4
  br label %if.else113

if.else101:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %103 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_width, align 4
  %105 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call1, align 4
  %width104 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %106, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %width104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %104, ptr %width104, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %108 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_height, align 4
  br label %if.else113

if.else113:                                       ; preds = %if.else101, %if.end90, %if.then53
  %.sink263 = phi i32 [ %109, %if.else101 ], [ %102, %if.end90 ], [ 0, %if.then53 ]
  %110 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call1, align 4
  %height107 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %111, i32 0, i32 1, i32 3
  %112 = ptrtoint ptr %height107 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink263, ptr %height107, align 4
  %113 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops, align 4
  %pad115 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %pad115 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pad115, align 4
  %tobool116.not = icmp eq ptr %116, null
  br i1 %tobool116.not, label %if.else113.cleanup_crit_edge, label %land.lhs.true117

if.else113.cleanup_crit_edge:                     ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true117:                                 ; preds = %if.else113
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_fmt, align 4
  %tobool120.not = icmp eq ptr %118, null
  br i1 %tobool120.not, label %land.lhs.true117.cleanup_crit_edge, label %if.else122

land.lhs.true117.cleanup_crit_edge:               ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else122:                                       ; preds = %land.lhs.true117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool123.not = icmp eq ptr %119, null
  br i1 %tobool123.not, label %if.else122.if.else130_crit_edge, label %land.lhs.true124

if.else122.if.else130_crit_edge:                  ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else130

land.lhs.true124:                                 ; preds = %if.else122
  %set_fmt125 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %set_fmt125 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %set_fmt125, align 4
  %tobool126.not = icmp eq ptr %121, null
  br i1 %tobool126.not, label %land.lhs.true124.if.else130_crit_edge, label %land.lhs.true124.if.end137_crit_edge

land.lhs.true124.if.end137_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true124.if.else130_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else130

if.else130:                                       ; preds = %land.lhs.true124.if.else130_crit_edge, %if.else122.if.else130_crit_edge
  br label %if.end137

if.end137:                                        ; preds = %if.else130, %land.lhs.true124.if.end137_crit_edge
  %.sink265 = phi ptr [ %118, %if.else130 ], [ %121, %land.lhs.true124.if.end137_crit_edge ]
  %call134 = call i32 %.sink265(ptr noundef nonnull %subdev.0.i, ptr noundef %call1, ptr noundef nonnull %fmt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp = icmp slt i32 %call134, 0
  br i1 %cmp, label %if.end137.cleanup_crit_edge, label %if.end140

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end140:                                        ; preds = %if.end137
  %122 = ptrtoint ptr %format17 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %format17, align 4
  %124 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %pix, align 4
  %125 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %height2.i, align 4
  %127 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %height.i, align 4
  %128 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %field3.i, align 4
  %130 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %field, align 4
  %131 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %colorspace4.i, align 4
  %133 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %colorspace.i, align 4
  %134 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %64, align 4
  %conv.i229 = zext i16 %135 to i32
  %136 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %conv.i229, ptr %61, align 4
  %137 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %quantization6.i, align 2
  %conv5.i231 = zext i16 %138 to i32
  %139 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv5.i231, ptr %quantization.i, align 4
  %140 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i234 = zext i16 %141 to i32
  %142 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv7.i234, ptr %xfer_func.i, align 4
  %bpp = getelementptr inbounds %struct.tegra_video_format, ptr %fmtinfo.0, i32 0, i32 3
  %143 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bpp, align 4
  %145 = call i32 @llvm.umax.i32(i32 %123, i32 32) #12
  %146 = call i32 @llvm.umin.i32(i32 %145, i32 32768) #12
  %147 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %pix, align 4
  %148 = call i32 @llvm.umax.i32(i32 %126, i32 32) #12
  %149 = call i32 @llvm.umin.i32(i32 %148, i32 32768) #12
  %150 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %height.i, align 4
  %mul.i = mul i32 %144, %146
  %bytesperline.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 4
  %151 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bytesperline.i, align 4
  %add.i = add i32 %152, 63
  %div1.i = and i32 %add.i, -64
  %153 = call i32 @llvm.umax.i32(i32 %div1.i, i32 %mul.i) #12
  %154 = call i32 @llvm.umin.i32(i32 %153, i32 32768) #12
  %155 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %bytesperline.i, align 4
  %mul41.i = mul nuw nsw i32 %154, %149
  %sizeimage.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 5
  %156 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %mul41.i, ptr %sizeimage.i, align 4
  %157 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 909203022, i32 %158)
  %cmp42.i = icmp eq i32 %158, 909203022
  br i1 %cmp42.i, label %if.then.i237, label %if.end140.tegra_channel_fmt_align.exit_crit_edge

if.end140.tegra_channel_fmt_align.exit_crit_edge: ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra_channel_fmt_align.exit

if.then.i237:                                     ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  %mul44.i = shl nuw i32 %mul41.i, 1
  %159 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %mul44.i, ptr %sizeimage.i, align 4
  br label %tegra_channel_fmt_align.exit

tegra_channel_fmt_align.exit:                     ; preds = %if.then.i237, %if.end140.tegra_channel_fmt_align.exit_crit_edge
  call void @v4l2_subdev_free_state(ptr noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %tegra_channel_fmt_align.exit, %if.end137.cleanup_crit_edge, %land.lhs.true117.cleanup_crit_edge, %if.else113.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then3, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then3 ], [ 0, %tegra_channel_fmt_align.exit ], [ -22, %if.end86.cleanup_crit_edge ], [ %call134, %if.end137.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %tegra_channel_get_remote_csi_subdev.exit.i.cleanup_crit_edge ], [ -515, %land.lhs.true117.cleanup_crit_edge ], [ -515, %if.else113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sdsel) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_subdev_alloc_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_free_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_channel_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef writeonly %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %sizeimage2 = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 12, i32 5
  %9 = ptrtoint ptr %sizeimage2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage2, align 4
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sizes, align 4
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vi, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %alloc_devs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %alloc_devs, align 4
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
define internal i32 @tegra_channel_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.tegra_vi_channel, ptr %3, i32 0, i32 12, i32 5
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
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit26

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp32 = icmp ult i32 %9, %5
  br i1 %cmp32, label %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit26

vb2_plane_size.exit26:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge
  %retval.0.i25 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.tegra_vi_channel, ptr %3, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %name36 = getelementptr inbounds %struct.v4l2_device, ptr %.pn, i32 0, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name36, i32 noundef %retval.0.i25, i32 noundef %5) #15
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %chan6 = getelementptr inbounds %struct.tegra_channel_buffer, ptr %vb, i32 0, i32 2
  %12 = ptrtoint ptr %chan6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %chan6, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #12
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %addr = getelementptr inbounds %struct.tegra_channel_buffer, ptr %vb, i32 0, i32 3
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit26
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit26 ], [ 0, %vb2_set_plane_payload.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_channel_start_streaming(ptr noundef %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vi, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !184
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !185
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %7 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vi, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.72, i32 noundef %call.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vi, align 4
  %ops = getelementptr inbounds %struct.tegra_vi, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call5 = tail call i32 %16(ptr noundef %vq, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vi, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call5, %if.then7 ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_channel_stop_streaming(ptr noundef %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vi = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vi, align 4
  %ops = getelementptr inbounds %struct.tegra_vi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %vi_stop_streaming = getelementptr inbounds %struct.tegra_vi_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vi_stop_streaming to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vi_stop_streaming, align 4
  tail call void %7(ptr noundef %vq) #12
  %8 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vi, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_channel_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %start_lock = getelementptr inbounds %struct.tegra_vi_channel, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %start_lock) #12
  %queue = getelementptr inbounds %struct.tegra_channel_buffer, ptr %vb, i32 0, i32 1
  %capture = getelementptr inbounds %struct.tegra_vi_channel, ptr %3, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %3, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %capture) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %capture, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_channel_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %start_lock) #12
  %start_wait = getelementptr inbounds %struct.tegra_vi_channel, ptr %3, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %start_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #12
  tail call void @clk_unprepare(ptr noundef %3) #12
  %vdd = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vdd = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %call1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %soc = getelementptr inbounds %struct.tegra_vi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %vi_max_clk_hz = getelementptr inbounds %struct.tegra_vi_soc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %vi_max_clk_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vi_max_clk_hz, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %call2) #15
  br label %disable_vdd

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.do.end15_crit_edge

if.end8.do.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %11) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i, %if.end8.do.end15_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end8.do.end15_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %retval.0.i.ph) #15
  br label %disable_vdd

disable_vdd:                                      ; preds = %do.end15, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ %retval.0.i.ph, %do.end15 ]
  %12 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd, align 4
  %call18 = tail call i32 @regulator_disable(ptr noundef %13) #12
  br label %cleanup

cleanup:                                          ; preds = %disable_vdd, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.0, %disable_vdd ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !106, !107, !108, !110, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1465, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra_v4l2_nodes_setup_tpg._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra_v4l2_nodes_setup_tpg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1473, i32 4}
!10 = !{ptr @tegra_v4l2_nodes_setup_tpg._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @tegra_v4l2_nodes_setup_tpg._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1478, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tegra_v4l2_nodes_setup_tpg.__UNIQUE_ID_ddebug311, !13, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1486, i32 4}
!18 = !{ptr @tegra_v4l2_nodes_setup_tpg._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tegra_v4l2_nodes_setup_tpg._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2066, i32 11}
!22 = !{ptr @tegra_vi_driver, !23, !"tegra_vi_driver", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2064, i32 24}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1012, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tegra_channel_setup_ctrl_handler._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra_channel_setup_ctrl_handler._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1048, i32 3}
!31 = !{ptr @tegra_channel_setup_ctrl_handler._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tegra_channel_setup_ctrl_handler._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @vi_ctrl_ops, !34, !"vi_ctrl_ops", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 979, i32 35}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 985, i32 2}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 986, i32 2}
!39 = !{ptr @vi_pattern_strings, !40, !"vi_pattern_strings", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 984, i32 26}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1987, i32 3}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tegra_vi_probe._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_vi_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1991, i32 43}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1994, i32 3}
!50 = !{ptr @tegra_vi_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_vi_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2000, i32 3}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tegra_vi_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tegra_vi_probe._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2006, i32 3}
!59 = !{ptr @tegra_vi_probe._entry.31, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra_vi_probe._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @tegra_vi_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2021, i32 8}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2023, i32 3}
!65 = !{ptr @tegra_vi_probe._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tegra_vi_probe._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @vi_client_ops, !68, !"vi_client_ops", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1964, i32 39}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1907, i32 4}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1916, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tegra_vi_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @tegra_vi_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1411, i32 4}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tegra_vi_channels_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @tegra_vi_channels_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @tegra_channel_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1202, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tegra_channel_init.__key.43, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1205, i32 2}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @tegra_channel_init.__key.45, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1206, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tegra_channel_init.__key.47, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1207, i32 2}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tegra_channel_init.__key.49, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1208, i32 2}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1229, i32 3}
!98 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @tegra_channel_init._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @tegra_channel_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @tegra_channel_init._key, !102, !"_key", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1234, i32 8}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1236, i32 3}
!106 = !{ptr @tegra_channel_init._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tegra_channel_init._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1246, i32 55}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1247, i32 23}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1270, i32 3}
!114 = !{ptr @tegra_channel_init._entry.59, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra_channel_init._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @tegra_default_format, !117, !"tegra_default_format", i1 false, i1 false}
!117 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 35, i32 40}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1171, i32 4}
!120 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @tegra_channel_host1x_syncpt_init._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @tegra_channel_host1x_syncpt_init._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1178, i32 4}
!125 = !{ptr @tegra_channel_host1x_syncpt_init._entry.64, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @tegra_channel_host1x_syncpt_init._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @tegra_channel_host1x_syncpt_init.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1186, i32 3}
!129 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @tegra_channel_fops, !131, !"tegra_channel_fops", i1 false, i1 false}
!131 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 945, i32 42}
!132 = !{ptr @tegra_channel_ioctl_ops, !133, !"tegra_channel_ioctl_ops", i1 false, i1 false}
!133 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 906, i32 36}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 339, i32 23}
!136 = !{ptr @tegra_channel_queue_qops, !137, !"tegra_channel_queue_qops", i1 false, i1 false}
!137 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 321, i32 29}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 127, i32 3}
!140 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @tegra_channel_buffer_prepare._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @tegra_channel_buffer_prepare._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!145 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 302, i32 3}
!148 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @tegra_channel_start_streaming._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @tegra_channel_start_streaming._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2042, i32 3}
!153 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tegra_vi_remove._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @tegra_vi_remove._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @tegra_vi_of_id_table, !157, !"tegra_vi_of_id_table", i1 false, i1 false}
!157 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2052, i32 34}
!158 = !{ptr @tegra_vi_pm_ops, !159, !"tegra_vi_pm_ops", i1 false, i1 false}
!159 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 2060, i32 32}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1516, i32 3}
!162 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @vi_runtime_resume._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @vi_runtime_resume._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1522, i32 3}
!167 = !{ptr @vi_runtime_resume._entry.78, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @vi_runtime_resume._entry_ptr.80, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/staging/media/tegra-video/vi.c", i32 1528, i32 3}
!171 = !{ptr @vi_runtime_resume._entry.81, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @vi_runtime_resume._entry_ptr.83, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 2148832746, i64 2148832751, i64 2148832764, i64 2148832808, i64 2148832842, i64 2148832863}
!183 = !{i64 2148235640}
!184 = !{i64 720463, i64 720488, i64 720510, i64 720526, i64 720538, i64 720558, i64 720582, i64 720598, i64 720610}
!185 = !{i64 2148235828}
