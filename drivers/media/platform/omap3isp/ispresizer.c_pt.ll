; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/ispresizer.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/ispresizer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.isprsz_coef = type { [32 x i16], [32 x i16], [32 x i16], [32 x i16] }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.isp_video_operations = type { ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.isp_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, i32, i32, i32, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.isp_res_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, %struct.isp_video, %struct.isp_video, i32, i32, %struct.resizer_ratio, i32, i8, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.95 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.isp_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.isp_pipeline, %struct.mutex, i8, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resizer_ratio = type { i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.95 = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isp_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.isp_device = type { %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, i32, [14 x ptr], i32, ptr, i32, i32, ptr, %struct.spinlock, %struct.mutex, i8, %struct.media_entity_enum, i32, i32, i32, [4 x ptr], [2 x %struct.isp_xclk], %struct.ispstat, %struct.ispstat, %struct.ispstat, %struct.isp_res_device, %struct.isp_prev_device, %struct.isp_ccdc_device, %struct.isp_csi2_device, %struct.isp_csi2_device, %struct.isp_ccp2_device, %struct.isp_csiphy, %struct.isp_csiphy, i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.isp_xclk = type { ptr, %struct.clk_hw, ptr, i32, %struct.spinlock, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ispstat = type { %struct.v4l2_subdev, %struct.media_pad, i8, i8, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.mutex, ptr, i8, i16, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.isp_prev_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_ctrl_handler, i32, i32, %struct.isp_video, %struct.isp_video, %struct.anon.96, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.anon.96 = type { i32, [2 x %struct.prev_params], i32, %struct.spinlock }
%struct.prev_params = type { i32, i32, i32, %struct.omap3isp_prev_cfa, %struct.omap3isp_prev_csup, %struct.omap3isp_prev_luma, %struct.omap3isp_prev_nf, %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_gtables, %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_blkadj, %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_csc, %struct.omap3isp_prev_hmed, %struct.omap3isp_prev_yclimit, i8, i8 }
%struct.omap3isp_prev_cfa = type { i32, i8, i8, [4 x [144 x i32]] }
%struct.omap3isp_prev_csup = type { i8, i8, i8 }
%struct.omap3isp_prev_luma = type { [128 x i32] }
%struct.omap3isp_prev_nf = type { i8, [64 x i32] }
%struct.omap3isp_prev_dcor = type { i8, [4 x i32] }
%struct.omap3isp_prev_gtables = type { [1024 x i32], [1024 x i32], [1024 x i32] }
%struct.omap3isp_prev_wbal = type { i16, i8, i8, i8, i8 }
%struct.omap3isp_prev_blkadj = type { i8, i8, i8 }
%struct.omap3isp_prev_rgbtorgb = type { [3 x [3 x i16]], [3 x i16] }
%struct.omap3isp_prev_csc = type { [3 x [3 x i16]], [3 x i16] }
%struct.omap3isp_prev_hmed = type { i8, i8, i8 }
%struct.omap3isp_prev_yclimit = type { i8, i8, i8, i8 }
%struct.isp_ccdc_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, i32, i32, %struct.isp_video, i8, %struct.omap3isp_ccdc_blcomp, %struct.omap3isp_ccdc_bclamp, %struct.ispccdc_fpc, %struct.ispccdc_lsc, i32, i32, i8, i32, i8, i32, %struct.spinlock, %struct.wait_queue_head, i32, i8, %struct.mutex }
%struct.omap3isp_ccdc_blcomp = type { i8, i8, i8, i8 }
%struct.omap3isp_ccdc_bclamp = type { i8, i8, i8, i8, i16 }
%struct.ispccdc_fpc = type { ptr, i32, i32 }
%struct.ispccdc_lsc = type { i32, %struct.work_struct, %struct.spinlock, ptr, ptr, %struct.list_head }
%struct.isp_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.isp_video, ptr, i8, i8, i8, i32, i8, i32, ptr, [8 x %struct.isp_csi2_ctx_cfg], [2 x %struct.isp_csi2_timing_cfg], %struct.isp_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.isp_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.isp_csi2_timing_cfg = type { i8, i8, i16 }
%struct.isp_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.isp_ccp2_device = type { %struct.v4l2_subdev, [2 x %struct.v4l2_mbus_framefmt], [2 x %struct.media_pad], i32, i32, %struct.isp_interface_lcx_config, %struct.isp_interface_mem_config, %struct.isp_video, ptr, ptr, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.isp_interface_lcx_config = type { i32, i32, i32, i32 }
%struct.isp_interface_mem_config = type { i32, i32, i32, i32, i32 }
%struct.isp_csiphy = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, i8 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@omap3isp_resizer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&res->wait\00", [21 x i8] zeroinitializer }, align 32
@omap3isp_resizer_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&res->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@filter_coefs = internal constant { %struct.isprsz_coef, [64 x i8] } { %struct.isprsz_coef { [32 x i16] [i16 0, i16 256, i16 0, i16 0, i16 1018, i16 246, i16 16, i16 0, i16 1017, i16 219, i16 44, i16 0, i16 1019, i16 179, i16 83, i16 1023, i16 1021, i16 130, i16 132, i16 1021, i16 1023, i16 83, i16 179, i16 1019, i16 0, i16 44, i16 219, i16 1017, i16 0, i16 16, i16 246, i16 1018], [32 x i16] [i16 0, i16 256, i16 0, i16 0, i16 1018, i16 246, i16 16, i16 0, i16 1017, i16 219, i16 44, i16 0, i16 1019, i16 179, i16 83, i16 1023, i16 1021, i16 130, i16 132, i16 1021, i16 1023, i16 83, i16 179, i16 1019, i16 0, i16 44, i16 219, i16 1017, i16 0, i16 16, i16 246, i16 1018], [32 x i16] [i16 4, i16 35, i16 90, i16 88, i16 35, i16 4, i16 0, i16 0, i16 2, i16 24, i16 77, i16 96, i16 49, i16 8, i16 0, i16 0, i16 1, i16 15, i16 63, i16 98, i16 63, i16 15, i16 1, i16 0, i16 0, i16 8, i16 49, i16 96, i16 77, i16 24, i16 2, i16 0], [32 x i16] [i16 4, i16 35, i16 90, i16 88, i16 35, i16 4, i16 0, i16 0, i16 2, i16 24, i16 77, i16 96, i16 49, i16 8, i16 0, i16 0, i16 1, i16 15, i16 63, i16 98, i16 63, i16 15, i16 1, i16 0, i16 0, i16 8, i16 49, i16 96, i16 77, i16 24, i16 2, i16 0] }, [64 x i8] zeroinitializer }, align 32
@resizer_adjust_bandwidth.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"resizer_adjust_bandwidth\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/omap3isp/ispresizer.c\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cycles per request = %u\0A\00", [35 x i8] zeroinitializer }, align 32
@resizer_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @resizer_v4l2_video_ops, ptr null, ptr null, ptr null, ptr @resizer_v4l2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@resizer_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @resizer_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OMAP3 ISP resizer\00", [46 x i8] zeroinitializer }, align 32
@resizer_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @resizer_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@resizer_video_ops = internal constant { %struct.isp_video_operations, [28 x i8] } { %struct.isp_video_operations { ptr @resizer_video_queue }, [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resizer\00", [24 x i8] zeroinitializer }, align 32
@resizer_v4l2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @resizer_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@resizer_v4l2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @resizer_enum_mbus_code, ptr @resizer_enum_frame_size, ptr null, ptr @resizer_get_format, ptr @resizer_set_format, ptr @resizer_get_selection, ptr @resizer_set_selection, ptr null, ptr null, ptr null, ptr null, ptr @resizer_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@resizer_set_stream.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 1, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resizer_set_stream\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: module stop timeout.\0A\00", [38 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"resizer_print_status\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"-------------Resizer Register dump----------\0A\00", [50 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.14, i8 0, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###RSZ PCR=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.15, i8 0, i8 -90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###RSZ CNT=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.16, i8 0, i8 -90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###RSZ OUT_SIZE=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.17, i8 0, i8 -90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###RSZ IN_START=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.18, i8 0, i8 -89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ IN_SIZE=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.19, i8 0, i8 -89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RSZ SDR_INADD=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.20, i8 0, i8 -89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RSZ SDR_INOFF=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.21, i8 0, i8 -89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###RSZ SDR_OUTADD=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.22, i8 0, i8 -88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###RSZ SDR_OUTOFF=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.23, i8 0, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###RSZ YENH=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.24, i8 0, i8 -88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@resizer_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8207, i32 8209], [24 x i8] zeroinitializer }, align 32
@resizer_set_selection.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 1, i8 69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resizer_set_selection\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(%s): req %ux%u -> (%d,%d)/%ux%u -> %ux%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"try\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"act\00", [28 x i8] zeroinitializer }, align 32
@resizer_set_selection.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.6, ptr @.str.29, i8 1, i8 74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(%s): got %ux%u -> (%d,%d)/%ux%u -> %ux%u\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 131072]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1787, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1789, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 998, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"filter_coefs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 63, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 599, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"resizer_v4l2_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1603, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"resizer_v4l2_internal_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1609, i32 46 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1732, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"resizer_media_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1674, i32 45 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"resizer_video_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1115, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1759, i32 44 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"resizer_v4l2_video_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1587, i32 43 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"resizer_v4l2_pad_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1592, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1169, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 662, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 664, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 665, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 666, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 667, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 668, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 669, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 670, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 671, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 672, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 673, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 675, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"resizer_formats\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1350, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1298, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [48 x i8] c"../drivers/media/platform/omap3isp/ispresizer.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1316, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @omap3isp_resizer_init.__key, ptr @.str, ptr @omap3isp_resizer_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @filter_coefs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @resizer_v4l2_ops, ptr @resizer_v4l2_internal_ops, ptr @.str.8, ptr @resizer_media_ops, ptr @resizer_video_ops, ptr @.str.9, ptr @resizer_v4l2_video_ops, ptr @resizer_v4l2_pad_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @resizer_formats, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_resizer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_resizer_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_coefs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_video_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_resizer_max_rate(ptr nocapture noundef readonly %res, ptr nocapture noundef writeonly %max_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %res, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %l3_ick = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %l3_ick to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l3_ick, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 200000000)
  %conv = zext i32 %4 to i64
  %height = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 3
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %conv3 = zext i32 %6 to i64
  %mul = mul nuw nsw i64 %conv, %conv3
  %height4 = getelementptr %struct.isp_res_device, ptr %res, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height4, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !93

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %8
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %mul) #9, !srcloc !94
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t147 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t147, %if.else174.i.i ]
  %div31 = lshr i32 %4, 1
  %10 = tail call i32 @llvm.umin.i32(i32 %div31, i32 %dividend.addr.0.i.i.off0)
  %arrayidx = getelementptr %struct.isp_res_device, ptr %res, i32 0, i32 2, i32 1
  %conv13 = zext i32 %10 to i64
  %width = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 8
  %conv16 = zext i32 %12 to i64
  %mul17 = mul nuw nsw i64 %conv13, %conv16
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul17)
  %cmp164.i.i136 = icmp ult i64 %mul17, 4294967296
  br i1 %cmp164.i.i136, label %if.then168.i.i141, label %if.else174.i.i143, !prof !93

if.then168.i.i141:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i138 = trunc i64 %mul17 to i32
  %div172.i.i139 = udiv i32 %conv169.i.i138, %14
  br label %div_u64.exit145

if.else174.i.i143:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %mul17) #9, !srcloc !94
  %asmresult1.i.i.i142 = extractvalue { i64, i64 } %15, 1
  %extract.t151 = trunc i64 %asmresult1.i.i.i142 to i32
  br label %div_u64.exit145

div_u64.exit145:                                  ; preds = %if.else174.i.i143, %if.then168.i.i141
  %dividend.addr.0.i.i144.off0 = phi i32 [ %div172.i.i139, %if.then168.i.i141 ], [ %extract.t151, %if.else174.i.i143 ]
  %16 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dividend.addr.0.i.i144.off0, ptr %max_rate, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_resizer_busy(ptr nocapture noundef readonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %res, i32 -1532
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !95
  %and = and i32 %2, 2
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_resizer_isr_frame_sync(ptr nocapture noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dmaqueue_flags = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 5, i32 19
  %2 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmaqueue_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr i8, ptr %res, i32 -1532
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !95
  %or.i.i = or i32 %6, 5
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #6, !srcloc !96
  %9 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_resizer_isr(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 12
  %stopping = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 13
  %call = tail call i32 @omap3isp_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %applycrop = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 10
  %0 = ptrtoint ptr %applycrop to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %applycrop, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %do.body1.if.end12_crit_edge, label %if.then7

do.body1.if.end12_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i25 = getelementptr %struct.isp_res_device, ptr %res, i32 0, i32 2, i32 0
  tail call fastcc void @resizer_set_crop_params(ptr noundef %res, ptr noundef %arrayidx.i25)
  %1 = ptrtoint ptr %applycrop to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load11 = load i8, ptr %applycrop, align 4
  %bf.clear = and i8 %bf.load11, 127
  store i8 %bf.clear, ptr %applycrop, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %do.body1.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %pipe1.i = getelementptr inbounds %struct.media_entity, ptr %res, i32 0, i32 14
  %2 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1.i, align 4
  %state.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 11
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end12.cleanup_crit_edge, label %if.end.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %video_out.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 5
  %call.i = tail call ptr @omap3isp_video_buffer_next(ptr noundef %video_out.i) #6
  %cmp2.not.i = icmp eq ptr %call.i, null
  br i1 %cmp2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma.i = getelementptr inbounds %struct.isp_buffer, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma.i, align 8
  %arrayidx.i.i.i = getelementptr i8, ptr %res, i32 -1532
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %7) #6, !srcloc !96
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %state5.i = getelementptr inbounds %struct.isp_pipeline, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state5.i, align 4
  %or.i = or i32 %11, 32
  store i32 %or.i, ptr %state5.i, align 4
  %input.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 3
  %12 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp6.i = icmp eq i32 %13, 2
  br i1 %cmp6.i, label %if.then7.i, label %if.end4.i.if.end15.i_crit_edge

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.end4.i
  %video_in.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 4
  %call8.i = tail call ptr @omap3isp_video_buffer_next(ptr noundef %video_in.i) #6
  %cmp9.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp9.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then10.i

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma11.i = getelementptr inbounds %struct.isp_buffer, ptr %call8.i, i32 0, i32 2
  %14 = ptrtoint ptr %dma11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma11.i, align 8
  %addr_base.i.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 6
  %16 = ptrtoint ptr %addr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr_base.i.i, align 8
  %crop_offset.i.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 7
  %17 = ptrtoint ptr %crop_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crop_offset.i.i, align 4
  %and.i.i = and i32 %18, -32
  %addr.addr.0.i.i = add i32 %and.i.i, %15
  %arrayidx.i.i.i.i = getelementptr i8, ptr %res, i32 -1532
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %addr.addr.0.i.i) #6, !srcloc !96
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end12.i_crit_edge
  %21 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state5.i, align 4
  %or14.i = or i32 %22, 16
  store i32 %or14.i, ptr %state5.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end12.i, %if.end4.i.if.end15.i_crit_edge
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp17.i = icmp eq i32 %24, 2
  br i1 %cmp17.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end15.i
  %25 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %26)
  %cmp.i.not.i = icmp eq i32 %26, 63
  br i1 %cmp.i.not.i, label %if.then20.i, label %if.then18.i.cleanup_crit_edge

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = tail call i32 @omap3isp_pipeline_set_stream(ptr noundef %3, i32 noundef 2) #6
  br label %cleanup

if.else.i:                                        ; preds = %if.end15.i
  br i1 %cmp2.not.i, label %if.else.i.cleanup_crit_edge, label %if.then24.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i43.i = getelementptr i8, ptr %res, i32 -1532
  %27 = ptrtoint ptr %arrayidx.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.i43.i, align 4
  %add.ptr.i.i.i44.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i44.i) #6, !srcloc !95
  %or.i.i.i = or i32 %29, 5
  %30 = ptrtoint ptr %arrayidx.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i43.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %or.i.i.i) #6, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.then24.i, %if.else.i.cleanup_crit_edge, %if.then20.i, %if.then18.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_is_stopping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resizer_set_crop_params(ptr nocapture noundef %res, ptr nocapture noundef readonly %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ratio = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 8
  %arrayidx.i.i = getelementptr i8, ptr %res, i32 -1532
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !95
  %and.i = and i32 %2, -1048576
  %3 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ratio, align 4
  %sub.i = add i32 %4, 1023
  %and1.i = and i32 %sub.i, 1023
  %or.i = or i32 %and1.i, %and.i
  %vert.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %vert.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vert.i, align 4
  %sub2.i = shl i32 %6, 10
  %shl3.i = add i32 %sub2.i, 1047552
  %and4.i = and i32 %shl3.i, 1047552
  %or5.i = or i32 %or.i, %and4.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %or5.i) #6, !srcloc !96
  %9 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %10)
  %cmp.i = icmp ugt i32 %10, 512
  %.filter_coefs.i = select i1 %cmp.i, ptr getelementptr inbounds (%struct.isprsz_coef, ptr @filter_coefs, i32 0, i32 2), ptr @filter_coefs
  %11 = ptrtoint ptr %vert.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vert.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %cmp8.i = icmp ugt i32 %12, 512
  %v_filter.0.i = select i1 %cmp8.i, ptr getelementptr inbounds (%struct.isprsz_coef, ptr @filter_coefs, i32 0, i32 3), ptr getelementptr inbounds (%struct.isprsz_coef, ptr @filter_coefs, i32 0, i32 1)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.027.i.i = phi i32 [ 0, %entry ], [ %add12.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %startaddr_v.026.i.i = phi i32 [ 104, %entry ], [ %add11.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %startaddr_h.025.i.i = phi i32 [ 40, %entry ], [ %add10.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i21.i = getelementptr i16, ptr %.filter_coefs.i, i32 %i.027.i.i
  %13 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i21.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %add.i.i = or i32 %i.027.i.i, 1
  %arrayidx1.i.i = getelementptr i16, ptr %.filter_coefs.i, i32 %add.i.i
  %15 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx1.i.i, align 2
  %conv2.i.i = zext i16 %16 to i32
  %shl.i.i = shl nuw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr i16, ptr %v_filter.0.i, i32 %i.027.i.i
  %17 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i16 %18 to i32
  %arrayidx6.i.i = getelementptr i16, ptr %v_filter.0.i, i32 %add.i.i
  %19 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx6.i.i, align 2
  %conv7.i.i = zext i16 %20 to i32
  %shl8.i.i = shl nuw i32 %conv7.i.i, 16
  %or9.i.i = or i32 %shl8.i.i, %conv4.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %startaddr_h.025.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %or.i.i) #6, !srcloc !96
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %24, i32 %startaddr_v.026.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %or9.i.i) #6, !srcloc !96
  %add10.i.i = add nuw nsw i32 %startaddr_h.025.i.i, 4
  %add11.i.i = add nuw nsw i32 %startaddr_v.026.i.i, 4
  %add12.i.i = add nuw nsw i32 %i.027.i.i, 2
  %cmp.i.i = icmp ult i32 %i.027.i.i, 30
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %resizer_set_ratio.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

resizer_set_ratio.exit:                           ; preds = %for.body.i.i
  %25 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %26)
  %cmp = icmp ugt i32 %26, 255
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i2 = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i2) #6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %resizer_set_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %29, -536870913
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %and.i.i) #6, !srcloc !96
  br label %if.end

if.else:                                          ; preds = %resizer_set_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i5 = or i32 %29, 536870912
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i5) #6, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @resizer_adjust_bandwidth(ptr noundef %res)
  %input2 = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 3
  %34 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %input2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp3 = icmp eq i32 %35, 2
  %active = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1
  br i1 %cmp3, label %if.then4, label %if.else12

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %top = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 1
  %36 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %top, align 4
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %input, align 4
  %mul = mul i32 %39, %37
  %40 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active, align 8
  %add = add i32 %mul, %41
  %mul7 = shl i32 %add, 1
  %crop_offset = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 7
  %42 = ptrtoint ptr %crop_offset to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul7, ptr %crop_offset, align 4
  %and = and i32 %add, 15
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %and) #6, !srcloc !96
  %addr_base = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 6
  %45 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr_base, align 8
  %47 = ptrtoint ptr %crop_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %crop_offset, align 4
  %and10 = and i32 %48, -32
  %add11 = add i32 %and10, %46
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %50, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 %add11) #6, !srcloc !96
  br label %if.end20

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %active, align 8
  %mul16 = shl i32 %52, 1
  %top19 = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 1
  %53 = ptrtoint ptr %top19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %top19, align 4
  %and.i10 = and i32 %mul16, 8190
  %shl1.i = shl i32 %54, 16
  %and2.i = and i32 %shl1.i, 536805376
  %or.i11 = or i32 %and2.i, %and.i10
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %or.i11) #6, !srcloc !96
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 0) #6, !srcloc !96
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %60, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 0) #6, !srcloc !96
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then4
  %width23 = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 2
  %61 = ptrtoint ptr %width23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %width23, align 8
  %height = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 3
  %63 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height, align 4
  %and.i18 = and i32 %62, 8191
  %shl1.i19 = shl i32 %64, 16
  %and2.i20 = and i32 %shl1.i19, 536805376
  %or.i21 = or i32 %and2.i20, %and.i18
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %66, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %or.i21) #6, !srcloc !96
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_resizer_unregister_entities(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %res) #6
  %video_in = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 4
  tail call void @omap3isp_video_unregister(ptr noundef %video_in) #6
  %video_out = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 5
  tail call void @omap3isp_video_unregister(ptr noundef %video_out) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_resizer_register_entities(ptr noundef %res, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %res, i32 0, i32 14
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev1, align 4
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %video_in = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 4
  %call3 = tail call i32 @omap3isp_video_register(ptr noundef %video_in, ptr noundef %vdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end6:                                          ; preds = %if.end
  %video_out = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 5
  %call7 = tail call i32 @omap3isp_video_register(ptr noundef %video_out, ptr noundef %vdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.error_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %if.end6.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call3, %if.end.error_crit_edge ], [ %call7, %if.end6.error_crit_edge ]
  tail call void @v4l2_device_unregister_subdev(ptr noundef %res) #6
  %video_in.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 4
  tail call void @omap3isp_video_unregister(ptr noundef %video_in.i) #6
  %video_out.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 5
  tail call void @omap3isp_video_unregister(ptr noundef %video_out.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_resizer_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_res = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24
  %wait = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @omap3isp_resizer_init.__key) #6
  %stopping = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #6
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %stopping, align 4
  %lock = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @omap3isp_resizer_init.__key.1, i16 noundef signext 3) #6
  %pads1.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 1
  %input.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 3
  %1 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %input.i, align 4
  tail call void @v4l2_subdev_init(ptr noundef %isp_res, ptr noundef nonnull @resizer_v4l2_ops) #6
  %internal_ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 0, i32 7
  %2 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @resizer_v4l2_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.8, i32 noundef 32) #6
  %grp_id.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 0, i32 10
  %3 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %isp_res, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %6, 4
  store i32 %or.i, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %flags3.i, align 4
  %flags5.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 24, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags5.i, align 4
  %ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 0, i32 0, i32 11
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @resizer_media_ops, ptr %ops.i, align 4
  %call6.i = tail call i32 @media_entity_pads_init(ptr noundef %isp_res, i16 noundef zeroext 2, ptr noundef %pads1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %entry.resizer_init_entities.exit_crit_edge, label %if.end.i

entry.resizer_init_entities.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %resizer_init_entities.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #6
  %10 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 84)
  %12 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8209, ptr %code.i.i, align 4
  %14 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i8 = call i32 @resizer_set_format(ptr noundef %isp_res, ptr noundef null, ptr noundef nonnull %format.i.i) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #6
  %video_in.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4
  %type.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %type.i, align 8
  %ops9.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4, i32 20
  %17 = ptrtoint ptr %ops9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @resizer_video_ops, ptr %ops9.i, align 4
  %isp.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4, i32 5
  %18 = ptrtoint ptr %isp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %isp, ptr %isp.i, align 4
  %capture_mem.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4, i32 6
  %19 = ptrtoint ptr %capture_mem.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100663296, ptr %capture_mem.i, align 8
  %bpl_alignment.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4, i32 7
  %20 = ptrtoint ptr %bpl_alignment.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %bpl_alignment.i, align 4
  %type13.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5, i32 1
  %21 = ptrtoint ptr %type13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type13.i, align 8
  %ops15.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5, i32 20
  %22 = ptrtoint ptr %ops15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @resizer_video_ops, ptr %ops15.i, align 4
  %isp20.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5, i32 5
  %23 = ptrtoint ptr %isp20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %isp, ptr %isp20.i, align 4
  %capture_mem22.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5, i32 6
  %24 = ptrtoint ptr %capture_mem22.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 100663296, ptr %capture_mem22.i, align 8
  %bpl_alignment24.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5, i32 7
  %25 = ptrtoint ptr %bpl_alignment24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %bpl_alignment24.i, align 4
  %call26.i = tail call i32 @omap3isp_video_init(ptr noundef %video_in.i, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end.i.resizer_init_entities.exit_crit_edge, label %if.end29.i

if.end.i.resizer_init_entities.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %resizer_init_entities.exit

if.end29.i:                                       ; preds = %if.end.i
  %video_out.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5
  %call31.i = tail call i32 @omap3isp_video_init(ptr noundef %video_out.i, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %error_video_out.i, label %if.end34.i

if.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags37.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %flags37.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags37.i, align 4
  %or38.i = or i32 %27, 1
  store i32 %or38.i, ptr %flags37.i, align 4
  br label %resizer_init_entities.exit

error_video_out.i:                                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @omap3isp_video_cleanup(ptr noundef %video_in.i) #6
  br label %resizer_init_entities.exit

resizer_init_entities.exit:                       ; preds = %error_video_out.i, %if.end34.i, %if.end.i.resizer_init_entities.exit_crit_edge, %entry.resizer_init_entities.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end34.i ], [ %call6.i, %entry.resizer_init_entities.exit_crit_edge ], [ %call26.i, %if.end.i.resizer_init_entities.exit_crit_edge ], [ %call31.i, %error_video_out.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_resizer_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %video_in = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4
  tail call void @omap3isp_video_cleanup(ptr noundef %video_in) #6
  %video_out = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5
  tail call void @omap3isp_video_cleanup(ptr noundef %video_out) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resizer_adjust_bandwidth(ptr nocapture noundef readonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %res, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %input = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr i8, ptr %res, i32 -1528
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !95
  %and.i = and i32 %6, -1047553
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %8, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #6, !srcloc !96
  br label %cleanup

if.end:                                           ; preds = %entry
  %l3_ick5 = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %l3_ick5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l3_ick5, align 4
  %revision = getelementptr i8, ptr %res, i32 -1564
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %12)
  %cond47 = icmp eq i32 %12, 240
  %conv = zext i32 %10 to i64
  %13 = shl nuw nsw i64 %conv, 7
  %mul = and i64 %13, 549755813632
  %max_rate = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_rate, align 4
  %conv7 = zext i32 %15 to i64
  %add = add nsw i64 %conv7, -1
  %sub = add nsw i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !93

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %15
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %sub) #9, !srcloc !94
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t187 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t187, %if.else174.i.i ]
  %add10 = select i1 %cond47, i32 31, i32 1023
  %sub11 = add i32 %add10, %dividend.addr.0.i.i.off0
  %17 = select i1 %cond47, i32 5, i32 10
  %div12189 = lshr i32 %sub11, %17
  %max_timeperframe = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 13
  %width = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 2
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 8
  %mul13 = shl i32 %19, 1
  %sub15 = add i32 %mul13, 255
  %div1667 = lshr i32 %sub15, 8
  %height = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15, i32 1, i32 3
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %mul19 = mul i32 %div1667, %21
  %22 = ptrtoint ptr %max_timeperframe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_timeperframe, align 4
  %conv21 = zext i32 %23 to i64
  %mul22 = mul nuw i64 %conv21, %conv
  %denominator = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul22)
  %cmp164.i.i172 = icmp ult i64 %mul22, 4294967296
  br i1 %cmp164.i.i172, label %if.then168.i.i177, label %if.else174.i.i179, !prof !93

if.then168.i.i177:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i174 = trunc i64 %mul22 to i32
  %div172.i.i175 = udiv i32 %conv169.i.i174, %25
  br label %div_u64.exit181

if.else174.i.i179:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %mul22) #9, !srcloc !94
  %asmresult1.i.i.i178 = extractvalue { i64, i64 } %26, 1
  %extract.t192 = trunc i64 %asmresult1.i.i.i178 to i32
  br label %div_u64.exit181

div_u64.exit181:                                  ; preds = %if.else174.i.i179, %if.then168.i.i177
  %dividend.addr.0.i.i180.off0 = phi i32 [ %div172.i.i175, %if.then168.i.i177 ], [ %extract.t192, %if.else174.i.i179 ]
  %div25 = udiv i32 %dividend.addr.0.i.i180.off0, %mul19
  %div26194 = lshr i32 %div25, %17
  %27 = tail call i32 @llvm.umax.i32(i32 %div12189, i32 %div26194)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_adjust_bandwidth.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_adjust_bandwidth, %do.end)) #6
          to label %if.then35 [label %do.end], !srcloc !97

if.then35:                                        ; preds = %div_u64.exit181
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %res, i32 -1568
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_adjust_bandwidth.__UNIQUE_ID_ddebug304, ptr noundef %29, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %27) #6
  br label %do.end

do.end:                                           ; preds = %if.then35, %div_u64.exit181
  %shl = shl i32 %27, 10
  %arrayidx.i.i182 = getelementptr i8, ptr %res, i32 -1528
  %30 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i182, align 4
  %add.ptr.i.i183 = getelementptr i8, ptr %31, i32 248
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i183) #6, !srcloc !95
  %and.i184 = and i32 %32, -1047553
  %or.i = or i32 %and.i184, %shl
  %33 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i182, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %34, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #6, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_buffer_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_pipeline_set_stream(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #6
  %tobool.not = icmp eq ptr %fh, null
  %cond = zext i1 %tobool.not to i32
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8209, ptr %code, align 4
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %height, align 4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @resizer_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_set_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -2352
  %dev5 = getelementptr i8, ptr %1, i32 -1568
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 8
  %state = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp6 = icmp eq i32 %enable, 0
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @omap3isp_subclk_enable(ptr noundef %add.ptr, i32 noundef 32) #6
  %input.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  %arrayidx.i.i.i.i = getelementptr i8, ptr %1, i32 -1532
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i.i = or i32 %10, 268435456
  %11 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %or.i.i.i) #6, !srcloc !96
  br label %resizer_set_source.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = and i32 %10, -268435457
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %and.i.i.i) #6, !srcloc !96
  br label %resizer_set_source.exit.i

resizer_set_source.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %formats.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %resizer_set_source.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #6, !srcloc !96
  br label %if.end.i

if.else.i:                                        ; preds = %resizer_set_source.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %formats.i, align 4
  %add.i = shl i32 %20, 1
  %and.i = add i32 %add.i, 30
  %mul.i = and i32 %and.i, -32
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %mul.i) #6, !srcloc !96
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i30.i = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i30.i) #6, !srcloc !95
  %and.i.i31.i = and i32 %25, -134217729
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i.i32.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i32.i, i32 %and.i.i31.i) #6, !srcloc !96
  %code.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.end.i.resizer_configure.exit_crit_edge [
    i32 8209, label %sw.bb.i.i
    i32 8207, label %sw.bb1.i.i
  ]

if.end.i.resizer_configure.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %resizer_configure.exit

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i34.i = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i34.i) #6, !srcloc !95
  %or.i.i35.i = or i32 %33, 67108864
  %34 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i36.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i36.i, i32 %or.i.i35.i) #6, !srcloc !96
  br label %resizer_configure.exit

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i.i) #6, !srcloc !95
  %and.i.i37.i = and i32 %38, -67108865
  %39 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i.i38.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i38.i, i32 %and.i.i37.i) #6, !srcloc !96
  br label %resizer_configure.exit

resizer_configure.exit:                           ; preds = %sw.bb1.i.i, %sw.bb.i.i, %if.end.i.resizer_configure.exit_crit_edge
  %arrayidx2.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %42, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40.i) #6, !srcloc !95
  %and.i.i = and i32 %43, -66060289
  %or4.i.i = or i32 %and.i.i, 9437184
  %44 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or4.i.i) #6, !srcloc !96
  %46 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %47, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43.i, i32 0) #6, !srcloc !96
  %48 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i, align 4
  %mul5.i = shl i32 %49, 1
  %add6.i = add i32 %mul5.i, 31
  %and7.i = and i32 %add6.i, -32
  %50 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i45.i = getelementptr i8, ptr %51, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45.i, i32 %and7.i) #6, !srcloc !96
  %52 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.i, align 4
  %height.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1, i32 1
  %54 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i, align 4
  %and.i46.i = and i32 %53, 4095
  %shl1.i.i = shl i32 %55, 16
  %and2.i.i = and i32 %shl1.i.i, 268369920
  %or.i47.i = or i32 %and2.i.i, %and.i46.i
  %56 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i49.i = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i, i32 %or.i47.i) #6, !srcloc !96
  tail call fastcc void @resizer_set_crop_params(ptr noundef %1, ptr noundef %formats.i) #6
  tail call fastcc void @resizer_print_status(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %resizer_configure.exit, %entry.if.end8_crit_edge
  %58 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %enable, label %if.end8.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 0, label %sw.bb17
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 512) #6
  %dmaqueue_flags = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 5, i32 19
  %59 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dmaqueue_flags, align 8
  %and = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then9

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 -1532
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i58 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i58) #6, !srcloc !95
  %or.i.i = or i32 %63, 5
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i59 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i59, i32 %or.i.i) #6, !srcloc !96
  %66 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  %input = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 3
  %67 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp14 = icmp eq i32 %68, 2
  br i1 %cmp14, label %if.then15, label %sw.bb13.if.end16_crit_edge

sw.bb13.if.end16_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 256) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %sw.bb13.if.end16_crit_edge
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 512) #6
  %arrayidx.i.i.i60 = getelementptr i8, ptr %1, i32 -1532
  %69 = ptrtoint ptr %arrayidx.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i.i60, align 4
  %add.ptr.i.i.i61 = getelementptr i8, ptr %70, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i61) #6, !srcloc !95
  %or.i.i62 = or i32 %71, 5
  %72 = ptrtoint ptr %arrayidx.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i60, align 4
  %add.ptr.i2.i.i63 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i63, i32 %or.i.i62) #6, !srcloc !96
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  %wait = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 12
  %stopping = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 13
  %call18 = tail call i32 @omap3isp_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %sw.bb17.if.end29_crit_edge, label %do.body

sw.bb17.if.end29_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.body:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_set_stream.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_set_stream, %if.end29)) #6
          to label %if.then27 [label %if.end29], !srcloc !97

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_set_stream.__UNIQUE_ID_ddebug341, ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %name) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body, %sw.bb17.if.end29_crit_edge
  tail call void @omap3isp_sbl_disable(ptr noundef %add.ptr, i32 noundef 768) #6
  tail call void @omap3isp_subclk_disable(ptr noundef %add.ptr, i32 noundef 32) #6
  %dmaqueue_flags31 = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 5, i32 19
  %74 = ptrtoint ptr %dmaqueue_flags31 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %dmaqueue_flags31, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end29, %if.end16, %if.then9, %sw.bb.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  %75 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %enable, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resizer_print_status(ptr nocapture noundef readonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body5)) #6
          to label %if.then [label %do.body5], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %res, i32 -1568
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.13) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body25)) #6
          to label %if.then19 [label %do.body25], !srcloc !97

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr i8, ptr %res, i32 -1568
  %2 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev20, align 8
  %arrayidx.i = getelementptr i8, ptr %res, i32 -1532
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %6) #6
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body45)) #6
          to label %if.then39 [label %do.body45], !srcloc !97

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %dev40 = getelementptr i8, ptr %res, i32 -1568
  %7 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev40, align 8
  %arrayidx.i278 = getelementptr i8, ptr %res, i32 -1532
  %9 = ptrtoint ptr %arrayidx.i278 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i278, align 4
  %add.ptr.i279 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug307, ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %11) #6
  br label %do.body45

do.body45:                                        ; preds = %if.then39, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body65)) #6
          to label %if.then59 [label %do.body65], !srcloc !97

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %dev60 = getelementptr i8, ptr %res, i32 -1568
  %12 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev60, align 8
  %arrayidx.i280 = getelementptr i8, ptr %res, i32 -1532
  %14 = ptrtoint ptr %arrayidx.i280 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i280, align 4
  %add.ptr.i281 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug308, ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %16) #6
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body85)) #6
          to label %if.then79 [label %do.body85], !srcloc !97

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %dev80 = getelementptr i8, ptr %res, i32 -1568
  %17 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev80, align 8
  %arrayidx.i282 = getelementptr i8, ptr %res, i32 -1532
  %19 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i282, align 4
  %add.ptr.i283 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i283) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug309, ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %21) #6
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body105)) #6
          to label %if.then99 [label %do.body105], !srcloc !97

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  %dev100 = getelementptr i8, ptr %res, i32 -1568
  %22 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev100, align 8
  %arrayidx.i284 = getelementptr i8, ptr %res, i32 -1532
  %24 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i284, align 4
  %add.ptr.i285 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug310, ptr noundef %23, ptr noundef nonnull @.str.18, i32 noundef %26) #6
  br label %do.body105

do.body105:                                       ; preds = %if.then99, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body125)) #6
          to label %if.then119 [label %do.body125], !srcloc !97

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #8
  %dev120 = getelementptr i8, ptr %res, i32 -1568
  %27 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev120, align 8
  %arrayidx.i286 = getelementptr i8, ptr %res, i32 -1532
  %29 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i286, align 4
  %add.ptr.i287 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i287) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug311, ptr noundef %28, ptr noundef nonnull @.str.19, i32 noundef %31) #6
  br label %do.body125

do.body125:                                       ; preds = %if.then119, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body145)) #6
          to label %if.then139 [label %do.body145], !srcloc !97

if.then139:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #8
  %dev140 = getelementptr i8, ptr %res, i32 -1568
  %32 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev140, align 8
  %arrayidx.i288 = getelementptr i8, ptr %res, i32 -1532
  %34 = ptrtoint ptr %arrayidx.i288 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i288, align 4
  %add.ptr.i289 = getelementptr i8, ptr %35, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug312, ptr noundef %33, ptr noundef nonnull @.str.20, i32 noundef %36) #6
  br label %do.body145

do.body145:                                       ; preds = %if.then139, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body165)) #6
          to label %if.then159 [label %do.body165], !srcloc !97

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #8
  %dev160 = getelementptr i8, ptr %res, i32 -1568
  %37 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev160, align 8
  %arrayidx.i290 = getelementptr i8, ptr %res, i32 -1532
  %39 = ptrtoint ptr %arrayidx.i290 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i290, align 4
  %add.ptr.i291 = getelementptr i8, ptr %40, i32 32
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug313, ptr noundef %38, ptr noundef nonnull @.str.21, i32 noundef %41) #6
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body185)) #6
          to label %if.then179 [label %do.body185], !srcloc !97

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %dev180 = getelementptr i8, ptr %res, i32 -1568
  %42 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev180, align 8
  %arrayidx.i292 = getelementptr i8, ptr %res, i32 -1532
  %44 = ptrtoint ptr %arrayidx.i292 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i292, align 4
  %add.ptr.i293 = getelementptr i8, ptr %45, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug314, ptr noundef %43, ptr noundef nonnull @.str.22, i32 noundef %46) #6
  br label %do.body185

do.body185:                                       ; preds = %if.then179, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.body205)) #6
          to label %if.then199 [label %do.body205], !srcloc !97

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #8
  %dev200 = getelementptr i8, ptr %res, i32 -1568
  %47 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev200, align 8
  %arrayidx.i294 = getelementptr i8, ptr %res, i32 -1532
  %49 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i294, align 4
  %add.ptr.i295 = getelementptr i8, ptr %50, i32 168
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i295) #6, !srcloc !95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug315, ptr noundef %48, ptr noundef nonnull @.str.23, i32 noundef %51) #6
  br label %do.body205

do.body205:                                       ; preds = %if.then199, %do.body185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_print_status, %do.end223)) #6
          to label %if.then219 [label %do.end223], !srcloc !97

if.then219:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #8
  %dev220 = getelementptr i8, ptr %res, i32 -1568
  %52 = ptrtoint ptr %dev220 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev220, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug316, ptr noundef %53, ptr noundef nonnull @.str.24) #6
  br label %do.end223

do.end223:                                        ; preds = %if.then219, %do.body205
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp ugt i32 %5, 1
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [2 x i32], ptr @resizer_formats, i32 0, i32 %5
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %if.end8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %6 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end8
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i.i.not = icmp eq i16 %9, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !98

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  br label %__resizer_get_format.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 0
  br label %__resizer_get_format.exit

__resizer_get_format.exit:                        ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %11, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %code10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__resizer_get_format.exit, %if.end
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end ], [ %code10, %__resizer_get_format.exit ]
  %12 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.sink, align 4
  %code4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %14 = ptrtoint ptr %code4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #6
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  %code1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 2
  %8 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %code1, align 4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %height, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %11 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %13 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %which, align 4
  call fastcc void @resizer_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %12, ptr noundef nonnull %format, i32 noundef %14)
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %17 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %min_width, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %min_height, align 4
  %21 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code1, align 4
  %23 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp6.not = icmp eq i32 %22, %24
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %format, align 4
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %height, align 4
  %27 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pad, align 4
  %29 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %which, align 4
  call fastcc void @resizer_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %28, ptr noundef nonnull %format, i32 noundef %30)
  %31 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %format, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %33 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_width, align 4
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %36 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !93

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__resizer_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__resizer_get_format.exit

__resizer_get_format.exit:                        ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__resizer_get_format.exit.cleanup_crit_edge, label %if.end

__resizer_get_format.exit.cleanup_crit_edge:      ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__resizer_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__resizer_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %ratio.i = alloca %struct.resizer_ratio, align 4
  %crop.i82 = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !93

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__resizer_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__resizer_get_format.exit

__resizer_get_format.exit:                        ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__resizer_get_format.exit.cleanup_crit_edge, label %if.end

__resizer_get_format.exit.cleanup_crit_edge:      ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %__resizer_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @resizer_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
  %14 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then8:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i63 = icmp eq i32 %18, 0
  br i1 %cmp.i63, label %if.then.i65, label %if.else.i67

if.then.i65:                                      ; preds = %if.then8
  %num_pads.i.i64 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i64 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.i = icmp eq i16 %20, 0
  br i1 %cmp.i.i, label %do.end.i.i66, label %if.then.i65.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !98

if.then.i65.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i66:                                     ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i66, %if.then.i65.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %22, i32 0, i32 1
  br label %__resizer_get_crop.exit

if.else.i67:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15
  br label %__resizer_get_crop.exit

__resizer_get_crop.exit:                          ; preds = %if.else.i67, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i68 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i67 ]
  %23 = ptrtoint ptr %retval.0.i68 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %retval.0.i68, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i68, i32 0, i32 1
  %24 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %top, align 4
  %25 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format3, align 4
  %width12 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i68, i32 0, i32 2
  %27 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %width12, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %height14 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i68, i32 0, i32 3
  %30 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %height14, align 4
  %31 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i69 = icmp eq i32 %32, 0
  br i1 %cmp.i69, label %if.then.i73, label %if.else.i79

if.then.i73:                                      ; preds = %__resizer_get_crop.exit
  %num_pads.i.i70 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %num_pads.i.i70 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %cmp.not.i.i72 = icmp ugt i16 %34, 1
  br i1 %cmp.not.i.i72, label %if.then.i73.v4l2_subdev_get_try_format.exit.i77_crit_edge, label %do.end.i.i74, !prof !93

if.then.i73.v4l2_subdev_get_try_format.exit.i77_crit_edge: ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i77

do.end.i.i74:                                     ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i77

v4l2_subdev_get_try_format.exit.i77:              ; preds = %do.end.i.i74, %if.then.i73.v4l2_subdev_get_try_format.exit.i77_crit_edge
  %spec.select.i.i75 = phi i32 [ 0, %do.end.i.i74 ], [ 1, %if.then.i73.v4l2_subdev_get_try_format.exit.i77_crit_edge ]
  %35 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i76 = getelementptr %struct.v4l2_subdev_pad_config, ptr %36, i32 %spec.select.i.i75
  br label %__resizer_get_format.exit81

if.else.i79:                                      ; preds = %__resizer_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i78 = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1
  br label %__resizer_get_format.exit81

__resizer_get_format.exit81:                      ; preds = %if.else.i79, %v4l2_subdev_get_try_format.exit.i77
  %retval.0.i80 = phi ptr [ %arrayidx.i.i76, %v4l2_subdev_get_try_format.exit.i77 ], [ %arrayidx.i78, %if.else.i79 ]
  %37 = call ptr @memcpy(ptr %retval.0.i80, ptr %format3, i32 48)
  %38 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fmt, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ratio.i) #6
  %40 = ptrtoint ptr %ratio.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %ratio.i, align 4, !annotation !99
  %41 = getelementptr inbounds %struct.resizer_ratio, ptr %ratio.i, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %crop.i82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i55.i = icmp eq i32 %39, 0
  br i1 %cmp.i55.i, label %if.then.i.i, label %if.else.i62.i

if.then.i.i:                                      ; preds = %__resizer_get_format.exit81
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.not.i.i.not.i = icmp eq i16 %44, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.if.then.i60.i_crit_edge, !prof !98

if.then.i.i.if.then.i60.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i60.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %if.then.i60.i

if.then.i60.i:                                    ; preds = %do.end.i.i.i, %if.then.i.i.if.then.i60.i_crit_edge
  %45 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sd_state, align 4
  %code2765.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %code2765.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %code2765.i, align 4
  %code2866.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i80, i32 0, i32 2
  %49 = ptrtoint ptr %code2866.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %code2866.i, align 4
  %50 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.i.i.i = icmp eq i16 %51, 0
  br i1 %cmp.i.i.i, label %do.end.i.i61.i, label %if.then.i60.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, !prof !98

if.then.i60.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %if.then.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i.i

do.end.i.i61.i:                                   ; preds = %if.then.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %do.end.i.i61.i, %if.then.i60.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge
  %52 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %53, i32 0, i32 1
  br label %resizer_try_format.exit

if.else.i62.i:                                    ; preds = %__resizer_get_format.exit81
  call void @__sanitizer_cov_trace_pc() #8
  %code27.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %code27.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %code27.i, align 4
  %code28.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i80, i32 0, i32 2
  %56 = ptrtoint ptr %code28.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %code28.i, align 4
  %crop.i.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15
  br label %resizer_try_format.exit

resizer_try_format.exit:                          ; preds = %if.else.i62.i, %v4l2_subdev_get_try_crop.exit.i.i
  %retval.0.i63.i = phi ptr [ %try_crop.i.i.i, %v4l2_subdev_get_try_crop.exit.i.i ], [ %crop.i.i, %if.else.i62.i ]
  %57 = call ptr @memcpy(ptr %crop.i82, ptr %retval.0.i63.i, i32 16)
  call fastcc void @resizer_calc_ratios(ptr noundef %1, ptr noundef nonnull %crop.i82, ptr noundef %retval.0.i80, ptr noundef nonnull %ratio.i) #6
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i80, i32 0, i32 4
  %58 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i80, i32 0, i32 3
  %59 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %field.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %crop.i82) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ratio.i) #6
  br label %if.end19

if.end19:                                         ; preds = %resizer_try_format.exit, %if.end.if.end19_crit_edge
  %format.0 = phi ptr [ %retval.0.i80, %resizer_try_format.exit ], [ %retval.0.i, %if.end.if.end19_crit_edge ]
  %60 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp21 = icmp eq i32 %61, 1
  br i1 %cmp21, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %crop23 = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15
  %active = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15, i32 1
  %62 = call ptr @memcpy(ptr %active, ptr %crop23, i32 16)
  %ratio = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 8
  tail call fastcc void @resizer_calc_ratios(ptr noundef %1, ptr noundef %active, ptr noundef %format.0, ptr noundef %ratio)
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %__resizer_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__resizer_get_format.exit.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %ratio = alloca %struct.resizer_ratio, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ratio) #6
  %2 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ratio, align 4, !annotation !99
  %3 = getelementptr inbounds %struct.resizer_ratio, ptr %ratio, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !99
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %__resizer_get_format.exit.thread

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i.i.not = icmp eq i16 %10, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.__resizer_get_format.exit_crit_edge, !prof !98

if.then.i.__resizer_get_format.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__resizer_get_format.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %__resizer_get_format.exit

__resizer_get_format.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 0
  br label %if.else.i45

__resizer_get_format.exit:                        ; preds = %do.end.i.i, %if.then.i.__resizer_get_format.exit_crit_edge
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %13 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i37 = icmp eq i32 %.pr, 0
  br i1 %cmp.i37, label %if.then.i41, label %__resizer_get_format.exit.if.else.i45_crit_edge

__resizer_get_format.exit.if.else.i45_crit_edge:  ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i45

if.then.i41:                                      ; preds = %__resizer_get_format.exit
  %14 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp.not.i.i40 = icmp ugt i16 %15, 1
  br i1 %cmp.not.i.i40, label %if.then.i41.v4l2_subdev_get_try_format.exit.i43_crit_edge, label %do.end.i.i42, !prof !93

if.then.i41.v4l2_subdev_get_try_format.exit.i43_crit_edge: ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i43

do.end.i.i42:                                     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i43

v4l2_subdev_get_try_format.exit.i43:              ; preds = %do.end.i.i42, %if.then.i41.v4l2_subdev_get_try_format.exit.i43_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i42 ], [ 1, %if.then.i41.v4l2_subdev_get_try_format.exit.i43_crit_edge ]
  %16 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %17, i32 %spec.select.i.i
  br label %__resizer_get_format.exit47

if.else.i45:                                      ; preds = %__resizer_get_format.exit.if.else.i45_crit_edge, %__resizer_get_format.exit.thread
  %retval.0.i57 = phi ptr [ %arrayidx.i, %__resizer_get_format.exit.thread ], [ %12, %__resizer_get_format.exit.if.else.i45_crit_edge ]
  %arrayidx.i44 = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1
  br label %__resizer_get_format.exit47

__resizer_get_format.exit47:                      ; preds = %if.else.i45, %v4l2_subdev_get_try_format.exit.i43
  %retval.0.i56 = phi ptr [ %12, %v4l2_subdev_get_try_format.exit.i43 ], [ %retval.0.i57, %if.else.i45 ]
  %retval.0.i46 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i43 ], [ %arrayidx.i44, %if.else.i45 ]
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %18 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %19, label %__resizer_get_format.exit47.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb9
  ]

__resizer_get_format.exit47.cleanup_crit_edge:    ; preds = %__resizer_get_format.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %__resizer_get_format.exit47
  call void @__sanitizer_cov_trace_pc() #8
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %21 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2147483647, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2147483647, ptr %height, align 4
  %25 = ptrtoint ptr %retval.0.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %retval.0.i46, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i46, i32 0, i32 1
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %sub.i = shl i32 %26, 2
  %29 = add i32 %sub.i, 16777212
  %shr14.i = and i32 %29, 16777212
  %sub3.i = shl i32 %28, 2
  %30 = add i32 %sub3.i, 16777212
  %shr21.i = and i32 %30, 16777212
  %31 = add nuw nsw i32 %shr14.i, 7
  store i32 %31, ptr %width, align 4
  %32 = add nuw nsw i32 %shr21.i, 7
  store i32 %32, ptr %height, align 4
  store i32 0, ptr %r, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %31, i32 32) #6
  %34 = ptrtoint ptr %retval.0.i56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %retval.0.i56, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 %35) #6
  %37 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %width, align 4
  %height83.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i56, i32 0, i32 1
  %38 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %top, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %32, i32 32) #6
  %40 = ptrtoint ptr %height83.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height83.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 %41) #6
  %43 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %height, align 4
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %__resizer_get_format.exit47
  %r10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %44 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i48 = icmp eq i32 %45, 0
  br i1 %cmp.i48, label %if.then.i50, label %if.else.i52

if.then.i50:                                      ; preds = %sw.bb9
  %num_pads.i.i49 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %num_pads.i.i49 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_pads.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.i.i = icmp eq i16 %47, 0
  br i1 %cmp.i.i, label %do.end.i.i51, label %if.then.i50.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !98

if.then.i50.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i51:                                     ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i51, %if.then.i50.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %48 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %49, i32 0, i32 1
  br label %__resizer_get_crop.exit

if.else.i52:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15
  br label %__resizer_get_crop.exit

__resizer_get_crop.exit:                          ; preds = %if.else.i52, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i53 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i52 ]
  %50 = call ptr @memcpy(ptr %r10, ptr %retval.0.i53, i32 16)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__resizer_get_crop.exit, %sw.bb
  %r.sink = phi ptr [ %r, %sw.bb ], [ %r10, %__resizer_get_crop.exit ]
  call fastcc void @resizer_calc_ratios(ptr noundef %1, ptr noundef %r.sink, ptr noundef %retval.0.i46, ptr noundef nonnull %ratio)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %__resizer_get_format.exit47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %__resizer_get_format.exit47.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ratio) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %format_source = alloca %struct.v4l2_mbus_framefmt, align 4
  %ratio = alloca %struct.resizer_ratio, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format_source) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ratio) #6
  %2 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ratio, align 8, !annotation !99
  %3 = getelementptr inbounds %struct.resizer_ratio, ptr %ratio, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !99
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %5 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not = icmp eq i32 %8, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %__resizer_get_format.exit.thread

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not.i.i.not = icmp eq i16 %12, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.__resizer_get_format.exit_crit_edge, !prof !98

if.then.i.__resizer_get_format.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__resizer_get_format.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %__resizer_get_format.exit

__resizer_get_format.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 0
  br label %if.else.i144

__resizer_get_format.exit:                        ; preds = %do.end.i.i, %if.then.i.__resizer_get_format.exit_crit_edge
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %15 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i136 = icmp eq i32 %.pr, 0
  br i1 %cmp.i136, label %if.then.i140, label %__resizer_get_format.exit.if.else.i144_crit_edge

__resizer_get_format.exit.if.else.i144_crit_edge: ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i144

if.then.i140:                                     ; preds = %__resizer_get_format.exit
  %16 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp.not.i.i139 = icmp ugt i16 %17, 1
  br i1 %cmp.not.i.i139, label %if.then.i140.v4l2_subdev_get_try_format.exit.i142_crit_edge, label %do.end.i.i141, !prof !93

if.then.i140.v4l2_subdev_get_try_format.exit.i142_crit_edge: ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i142

do.end.i.i141:                                    ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i142

v4l2_subdev_get_try_format.exit.i142:             ; preds = %do.end.i.i141, %if.then.i140.v4l2_subdev_get_try_format.exit.i142_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i141 ], [ 1, %if.then.i140.v4l2_subdev_get_try_format.exit.i142_crit_edge ]
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 %spec.select.i.i
  br label %__resizer_get_format.exit146

if.else.i144:                                     ; preds = %__resizer_get_format.exit.if.else.i144_crit_edge, %__resizer_get_format.exit.thread
  %retval.0.i135179 = phi ptr [ %arrayidx.i, %__resizer_get_format.exit.thread ], [ %14, %__resizer_get_format.exit.if.else.i144_crit_edge ]
  %arrayidx.i143 = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1
  br label %__resizer_get_format.exit146

__resizer_get_format.exit146:                     ; preds = %if.else.i144, %v4l2_subdev_get_try_format.exit.i142
  %retval.0.i135178 = phi ptr [ %14, %v4l2_subdev_get_try_format.exit.i142 ], [ %retval.0.i135179, %if.else.i144 ]
  %retval.0.i145 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i142 ], [ %arrayidx.i143, %if.else.i144 ]
  %20 = call ptr @memcpy(ptr %format_source, ptr %retval.0.i145, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_set_selection.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_set_selection, %do.end)) #6
          to label %if.then10 [label %do.end], !srcloc !97

if.then10:                                        ; preds = %__resizer_get_format.exit146
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %1, i32 -1568
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp12 = icmp eq i32 %24, 0
  %cond = select i1 %cmp12, ptr @.str.27, ptr @.str.28
  %25 = ptrtoint ptr %retval.0.i135178 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %retval.0.i135178, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i135178, i32 0, i32 1
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %29 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %top, align 4
  %width15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %width15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width15, align 4
  %height17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height17, align 4
  %37 = ptrtoint ptr %format_source to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format_source, align 4
  %height19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format_source, i32 0, i32 1
  %39 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_set_selection.__UNIQUE_ID_ddebug366, ptr noundef %22, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %__resizer_get_format.exit146
  %r21 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %41 = ptrtoint ptr %format_source to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format_source, align 4
  %sub.i = add i32 %42, -1
  %43 = lshr i32 %sub.i, 2
  %shr.i = and i32 %43, 16777215
  %add2.i = add nuw nsw i32 %shr.i, 7
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format_source, i32 0, i32 1
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i, align 4
  %sub3.i = add i32 %45, -1
  %46 = lshr i32 %sub3.i, 2
  %shr7.i = and i32 %46, 16777215
  %add8.i = add nuw nsw i32 %shr7.i, 4
  %47 = shl i32 %sub.i, 2
  %shr14.i = and i32 %47, 16777212
  %add15.i = add nuw nsw i32 %shr14.i, 7
  %48 = shl i32 %sub3.i, 2
  %shr21.i = and i32 %48, 16777212
  %add22.i = add nuw nsw i32 %shr21.i, 7
  %width23.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %width23.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width23.i, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %50, i32 %add2.i) #6
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 %add15.i) #6
  %53 = ptrtoint ptr %width23.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %width23.i, align 4
  %height31.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %height31.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height31.i, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %add8.i) #6
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 %add22.i) #6
  %58 = ptrtoint ptr %height31.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %height31.i, align 4
  %59 = ptrtoint ptr %r21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %r21, align 4
  %61 = ptrtoint ptr %retval.0.i135178 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %retval.0.i135178, align 4
  %sub52.i = add i32 %62, -32
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %sub52.i) #6
  %64 = ptrtoint ptr %r21 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %r21, align 4
  %65 = tail call i32 @llvm.umax.i32(i32 %52, i32 32) #6
  %66 = ptrtoint ptr %retval.0.i135178 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %retval.0.i135178, align 4
  %sub69.i = sub i32 %67, %63
  %68 = tail call i32 @llvm.umin.i32(i32 %65, i32 %sub69.i) #6
  %69 = ptrtoint ptr %width23.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %width23.i, align 4
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %top.i, align 4
  %height83.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i135178, i32 0, i32 1
  %72 = ptrtoint ptr %height83.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %height83.i, align 4
  %sub84.i = add i32 %73, -32
  %74 = tail call i32 @llvm.umin.i32(i32 %71, i32 %sub84.i) #6
  %75 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %top.i, align 4
  %76 = tail call i32 @llvm.umax.i32(i32 %57, i32 32) #6
  %77 = ptrtoint ptr %height83.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height83.i, align 4
  %sub101.i = sub i32 %78, %74
  %79 = tail call i32 @llvm.umin.i32(i32 %76, i32 %sub101.i) #6
  %80 = ptrtoint ptr %height31.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %height31.i, align 4
  %81 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i147 = icmp eq i32 %82, 0
  br i1 %cmp.i147, label %if.then.i149, label %if.else.i151

if.then.i149:                                     ; preds = %do.end
  %num_pads.i.i148 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %83 = ptrtoint ptr %num_pads.i.i148 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %num_pads.i.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp.i.i = icmp eq i16 %84, 0
  br i1 %cmp.i.i, label %do.end.i.i150, label %if.then.i149.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !98

if.then.i149.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i150:                                    ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i150, %if.then.i149.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %85 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %86, i32 0, i32 1
  br label %__resizer_get_crop.exit

if.else.i151:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15
  br label %__resizer_get_crop.exit

__resizer_get_crop.exit:                          ; preds = %if.else.i151, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i152 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i151 ]
  %87 = call ptr @memcpy(ptr %retval.0.i152, ptr %r21, i32 16)
  call fastcc void @resizer_calc_ratios(ptr noundef %1, ptr noundef %r21, ptr noundef nonnull %format_source, ptr noundef nonnull %ratio)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_set_selection.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resizer_set_selection, %do.end59)) #6
          to label %if.then40 [label %do.end59], !srcloc !97

if.then40:                                        ; preds = %__resizer_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev41 = getelementptr i8, ptr %1, i32 -1568
  %88 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev41, align 8
  %90 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp43 = icmp eq i32 %91, 0
  %cond44 = select i1 %cmp43, ptr @.str.27, ptr @.str.28
  %92 = ptrtoint ptr %retval.0.i135178 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %retval.0.i135178, align 4
  %94 = ptrtoint ptr %height83.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %height83.i, align 4
  %96 = ptrtoint ptr %r21 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %r21, align 4
  %98 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %top.i, align 4
  %100 = ptrtoint ptr %width23.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %width23.i, align 4
  %102 = ptrtoint ptr %height31.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %height31.i, align 4
  %104 = ptrtoint ptr %format_source to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %format_source, align 4
  %106 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %height.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_set_selection.__UNIQUE_ID_ddebug367, ptr noundef %89, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond44, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then40, %__resizer_get_crop.exit
  %108 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp61 = icmp eq i32 %109, 0
  br i1 %cmp61, label %if.then62, label %do.body67

if.then62:                                        ; preds = %do.end59
  %num_pads.i.i153 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %110 = ptrtoint ptr %num_pads.i.i153 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %num_pads.i.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %111)
  %cmp.not.i.i155 = icmp ugt i16 %111, 1
  br i1 %cmp.not.i.i155, label %if.then62.__resizer_get_format.exit162_crit_edge, label %do.end.i.i157, !prof !93

if.then62.__resizer_get_format.exit162_crit_edge: ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %__resizer_get_format.exit162

do.end.i.i157:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %__resizer_get_format.exit162

__resizer_get_format.exit162:                     ; preds = %do.end.i.i157, %if.then62.__resizer_get_format.exit162_crit_edge
  %spec.select.i.i158 = phi i32 [ 0, %do.end.i.i157 ], [ 1, %if.then62.__resizer_get_format.exit162_crit_edge ]
  %112 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i159 = getelementptr %struct.v4l2_subdev_pad_config, ptr %113, i32 %spec.select.i.i158
  %114 = call ptr @memcpy(ptr %arrayidx.i.i159, ptr %format_source, i32 48)
  br label %cleanup

do.body67:                                        ; preds = %do.end59
  %lock = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 14
  %call71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %115 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i163 = icmp eq i32 %116, 0
  br i1 %cmp.i163, label %if.then.i167, label %if.else.i173

if.then.i167:                                     ; preds = %do.body67
  %num_pads.i.i164 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %117 = ptrtoint ptr %num_pads.i.i164 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %num_pads.i.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %118)
  %cmp.not.i.i166 = icmp ugt i16 %118, 1
  br i1 %cmp.not.i.i166, label %if.then.i167.v4l2_subdev_get_try_format.exit.i171_crit_edge, label %do.end.i.i168, !prof !93

if.then.i167.v4l2_subdev_get_try_format.exit.i171_crit_edge: ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i171

do.end.i.i168:                                    ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i171

v4l2_subdev_get_try_format.exit.i171:             ; preds = %do.end.i.i168, %if.then.i167.v4l2_subdev_get_try_format.exit.i171_crit_edge
  %spec.select.i.i169 = phi i32 [ 0, %do.end.i.i168 ], [ 1, %if.then.i167.v4l2_subdev_get_try_format.exit.i171_crit_edge ]
  %119 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i170 = getelementptr %struct.v4l2_subdev_pad_config, ptr %120, i32 %spec.select.i.i169
  br label %__resizer_get_format.exit175

if.else.i173:                                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i172 = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1
  br label %__resizer_get_format.exit175

__resizer_get_format.exit175:                     ; preds = %if.else.i173, %v4l2_subdev_get_try_format.exit.i171
  %retval.0.i174 = phi ptr [ %arrayidx.i.i170, %v4l2_subdev_get_try_format.exit.i171 ], [ %arrayidx.i172, %if.else.i173 ]
  %121 = call ptr @memcpy(ptr %retval.0.i174, ptr %format_source, i32 48)
  %ratio78 = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 8
  %122 = ptrtoint ptr %ratio to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %ratio, align 8
  %124 = ptrtoint ptr %ratio78 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %ratio78, align 8
  %active = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15, i32 1
  %125 = call ptr @memcpy(ptr %active, ptr %r21, i32 16)
  %state = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 11
  %126 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp80.not = icmp eq i32 %127, 0
  br i1 %cmp80.not, label %__resizer_get_format.exit175.if.end83_crit_edge, label %if.then82

__resizer_get_format.exit175.if.end83_crit_edge:  ; preds = %__resizer_get_format.exit175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then82:                                        ; preds = %__resizer_get_format.exit175
  call void @__sanitizer_cov_trace_pc() #8
  %applycrop = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 10
  %128 = ptrtoint ptr %applycrop to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load = load i8, ptr %applycrop, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %applycrop, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %__resizer_get_format.exit175.if.end83_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call71) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %__resizer_get_format.exit162, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__resizer_get_format.exit162 ], [ 0, %if.end83 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ratio) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format_source) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_link_validate(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 14
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %pipe1.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe1.i, align 4
  %l3_ick.i = getelementptr inbounds %struct.isp_pipeline, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %l3_ick.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l3_ick.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 200000000) #6
  %conv.i = zext i32 %8 to i64
  %height.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15, i32 1, i32 3
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height.i, align 4
  %conv3.i = zext i32 %10 to i64
  %mul.i = mul nuw nsw i64 %conv.i, %conv3.i
  %height4.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !93

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %12
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul.i) #9, !srcloc !94
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %13, 1
  %extract.t147.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t147.i, %if.else174.i.i.i ]
  %div31.i = lshr i32 %8, 1
  %14 = tail call i32 @llvm.umin.i32(i32 %div31.i, i32 %dividend.addr.0.i.i.off0.i) #6
  %arrayidx.i = getelementptr %struct.isp_res_device, ptr %1, i32 0, i32 2, i32 1
  %conv13.i = zext i32 %14 to i64
  %width.i = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 15, i32 1, i32 2
  %15 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width.i, align 8
  %conv16.i = zext i32 %16 to i64
  %mul17.i = mul nuw nsw i64 %conv13.i, %conv16.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul17.i)
  %cmp164.i.i136.i = icmp ult i64 %mul17.i, 4294967296
  br i1 %cmp164.i.i136.i, label %if.then168.i.i141.i, label %if.else174.i.i143.i, !prof !93

if.then168.i.i141.i:                              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i138.i = trunc i64 %mul17.i to i32
  %div172.i.i139.i = udiv i32 %conv169.i.i138.i, %18
  br label %omap3isp_resizer_max_rate.exit

if.else174.i.i143.i:                              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %mul17.i) #9, !srcloc !94
  %asmresult1.i.i.i142.i = extractvalue { i64, i64 } %19, 1
  %extract.t151.i = trunc i64 %asmresult1.i.i.i142.i to i32
  br label %omap3isp_resizer_max_rate.exit

omap3isp_resizer_max_rate.exit:                   ; preds = %if.else174.i.i143.i, %if.then168.i.i141.i
  %dividend.addr.0.i.i144.off0.i = phi i32 [ %div172.i.i139.i, %if.then168.i.i141.i ], [ %extract.t151.i, %if.else174.i.i143.i ]
  %max_rate = getelementptr inbounds %struct.isp_pipeline, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dividend.addr.0.i.i144.off0.i, ptr %max_rate, align 4
  %call2 = tail call i32 @v4l2_subdev_link_validate_default(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resizer_try_format(ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  %ratio = alloca %struct.resizer_ratio, align 4
  %crop = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ratio) #6
  %0 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ratio, align 4, !annotation !99
  %1 = getelementptr inbounds %struct.resizer_ratio, ptr %ratio, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %crop) #6
  %3 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %if.then [
    i32 8209, label %sw.bb.if.end_crit_edge
    i32 8207, label %sw.bb.if.end_crit_edge67
  ]

sw.bb.if.end_crit_edge67:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8209, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge67
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 32)
  %input.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 3
  %11 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.end.resizer_max_in_width.exit_crit_edge, label %if.else.i

if.end.resizer_max_in_width.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %resizer_max_in_width.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %revision.i = getelementptr i8, ptr %res, i32 -1564
  %13 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp1.i = icmp eq i32 %14, 16
  %..i = select i1 %cmp1.i, i32 1280, i32 4095
  br label %resizer_max_in_width.exit

resizer_max_in_width.exit:                        ; preds = %if.else.i, %if.end.resizer_max_in_width.exit_crit_edge
  %retval.0.i = phi i32 [ 4095, %if.end.resizer_max_in_width.exit_crit_edge ], [ %..i, %if.else.i ]
  %15 = tail call i32 @llvm.umin.i32(i32 %10, i32 %retval.0.i)
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 32)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 4095)
  %21 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i55 = icmp eq i32 %which, 0
  br i1 %cmp.i55, label %if.then.i, label %if.else.i62

if.then.i:                                        ; preds = %sw.bb25
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %res, i32 0, i32 5
  %22 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.not.i.i.not = icmp eq i16 %23, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.if.then.i60_crit_edge, !prof !98

if.then.i.if.then.i60_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i60

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %if.then.i60

if.then.i60:                                      ; preds = %do.end.i.i, %if.then.i.if.then.i60_crit_edge
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  %code2765 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %code2765 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code2765, align 4
  %code2866 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %28 = ptrtoint ptr %code2866 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %code2866, align 4
  %29 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.i.i = icmp eq i16 %30, 0
  br i1 %cmp.i.i, label %do.end.i.i61, label %if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !98

if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i61:                                     ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i61, %if.then.i60.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %31 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %32, i32 0, i32 1
  br label %__resizer_get_crop.exit

if.else.i62:                                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %code27 = getelementptr %struct.isp_res_device, ptr %res, i32 0, i32 2, i32 0, i32 2
  %33 = ptrtoint ptr %code27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %code27, align 4
  %code28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %35 = ptrtoint ptr %code28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %code28, align 4
  %crop.i = getelementptr inbounds %struct.isp_res_device, ptr %res, i32 0, i32 15
  br label %__resizer_get_crop.exit

__resizer_get_crop.exit:                          ; preds = %if.else.i62, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i63 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i62 ]
  %36 = call ptr @memcpy(ptr %crop, ptr %retval.0.i63, i32 16)
  call fastcc void @resizer_calc_ratios(ptr noundef %res, ptr noundef nonnull %crop, ptr noundef %fmt, ptr noundef nonnull %ratio)
  br label %sw.epilog

sw.epilog:                                        ; preds = %__resizer_get_crop.exit, %resizer_max_in_width.exit, %entry.sw.epilog_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %37 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %38 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %field, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %crop) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ratio) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @resizer_calc_ratios(ptr nocapture noundef readonly %res, ptr nocapture noundef %input, ptr nocapture noundef %output, ptr nocapture noundef %ratio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %height1 = getelementptr inbounds %struct.v4l2_rect, ptr %input, i32 0, i32 3
  %0 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height1, align 4
  %sub = shl i32 %1, 8
  %sub3 = add i32 %sub, -1888
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %sub3)
  %cmp = icmp ugt i32 %sub3, 2047
  %div301 = lshr i32 %sub3, 10
  %add = add nuw nsw i32 %div301, 1
  %cond = select i1 %cmp, i32 %add, i32 2
  %sub10 = add i32 %sub, -817
  call void @__sanitizer_cov_trace_const_cmp4(i32 262016, i32 %sub10)
  %cmp14 = icmp ult i32 %sub10, 262016
  %div11302 = lshr i32 %sub10, 6
  %add12 = add nuw nsw i32 %div11302, 1
  %cond18 = select i1 %cmp14, i32 %add12, i32 4095
  %height19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %output, i32 0, i32 1
  %2 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height19, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %cond)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 %cond18)
  %6 = ptrtoint ptr %height19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %height19, align 4
  %7 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height1, align 4
  %sub34 = shl i32 %8, 8
  %sub38 = add i32 %sub34, -817
  %sub40 = add nsw i32 %5, -1
  %div41 = udiv i32 %sub38, %sub40
  %vert = getelementptr inbounds %struct.resizer_ratio, ptr %ratio, i32 0, i32 1
  %9 = ptrtoint ptr %vert to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div41, ptr %vert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div41)
  %cmp43 = icmp ugt i32 %div41, 512
  br i1 %cmp43, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height1, align 4
  %sub45 = shl i32 %11, 8
  %sub49 = add i32 %sub45, -1633
  %12 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height19, align 4
  %sub51 = add i32 %13, -1
  %div52 = udiv i32 %sub49, %sub51
  %14 = ptrtoint ptr %vert to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div52, ptr %vert, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %vert to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vert, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 64)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 1024)
  %19 = ptrtoint ptr %vert to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %18)
  %cmp69 = icmp ult i32 %18, 513
  %20 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height19, align 4
  %sub72 = add i32 %21, -1
  %mul74 = mul i32 %sub72, %18
  br i1 %cmp69, label %if.then102, label %if.else105

if.then102:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add76 = add i32 %mul74, 48
  %shr = lshr i32 %add76, 8
  %add77 = add nuw nsw i32 %shr, 4
  %width87315 = getelementptr inbounds %struct.v4l2_rect, ptr %input, i32 0, i32 2
  %22 = ptrtoint ptr %width87315 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width87315, align 4
  %sub88316 = shl i32 %23, 8
  %sub91317 = add i32 %sub88316, -1888
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub91317)
  %cmp95318 = icmp ugt i32 %sub91317, 16383
  %div92303319 = lshr i32 %sub91317, 10
  %add93320 = add nuw nsw i32 %div92303319, 1
  %cond99321 = select i1 %cmp95318, i32 %add93320, i32 16
  %revision = getelementptr i8, ptr %res, i32 -1564
  %24 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %25)
  %switch.selectcmp = icmp eq i32 %25, 240
  %switch.select = select i1 %switch.selectcmp, i32 4096, i32 3312
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %switch.selectcmp307 = icmp eq i32 %25, 16
  %switch.select308 = select i1 %switch.selectcmp307, i32 1280, i32 %switch.select
  br label %if.end112

if.else105:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add83 = add i32 %mul74, 96
  %shr84 = lshr i32 %add83, 8
  %add85 = add nuw nsw i32 %shr84, 7
  %width87 = getelementptr inbounds %struct.v4l2_rect, ptr %input, i32 0, i32 2
  %26 = ptrtoint ptr %width87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width87, align 4
  %sub88 = shl i32 %27, 8
  %sub91 = add i32 %sub88, -1888
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub91)
  %cmp95 = icmp ugt i32 %sub91, 16383
  %div92303 = lshr i32 %sub91, 10
  %add93 = add nuw nsw i32 %div92303, 1
  %cond99 = select i1 %cmp95, i32 %add93, i32 16
  %revision106 = getelementptr i8, ptr %res, i32 -1564
  %28 = ptrtoint ptr %revision106 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %revision106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %29)
  %switch.selectcmp309 = icmp eq i32 %29, 240
  %switch.select310 = select i1 %switch.selectcmp309, i32 2048, i32 1650
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %29)
  %switch.selectcmp311 = icmp eq i32 %29, 16
  %switch.select312 = select i1 %switch.selectcmp311, i32 640, i32 %switch.select310
  br label %if.end112

if.end112:                                        ; preds = %if.else105, %if.then102
  %cond99329 = phi i32 [ %cond99321, %if.then102 ], [ %cond99, %if.else105 ]
  %sub88327 = phi i32 [ %sub88316, %if.then102 ], [ %sub88, %if.else105 ]
  %width87324 = phi ptr [ %width87315, %if.then102 ], [ %width87, %if.else105 ]
  %height.0322 = phi i32 [ %add77, %if.then102 ], [ %add85, %if.else105 ]
  %max_width.0 = phi i32 [ %switch.select308, %if.then102 ], [ %switch.select312, %if.else105 ]
  %sub118 = add i32 %sub88327, -1585
  %div119304 = lshr i32 %sub118, 6
  %add120 = add nuw nsw i32 %div119304, 1
  %30 = tail call i32 @llvm.umin.i32(i32 %add120, i32 %max_width.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %cmp128 = icmp ult i32 %18, 256
  %31 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %output, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 %cond99329)
  %sub137 = select i1 %cmp128, i32 7, i32 1
  %neg = xor i32 %sub137, -1
  %and = and i32 %30, %neg
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %and)
  %add147 = add nuw nsw i32 %34, %sub137
  %and150 = and i32 %add147, %neg
  %35 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and150, ptr %output, align 4
  %36 = ptrtoint ptr %width87324 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width87324, align 4
  %sub153 = shl i32 %37, 8
  %sub157 = add i32 %sub153, -1585
  %sub159 = add nsw i32 %and150, -1
  %div160 = udiv i32 %sub157, %sub159
  %38 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div160, ptr %ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div160)
  %cmp162 = icmp ugt i32 %div160, 512
  br i1 %cmp162, label %if.then163, label %if.end112.if.end174_crit_edge

if.end112.if.end174_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then163:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %width87324 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width87324, align 4
  %sub165 = shl i32 %40, 8
  %sub169 = add i32 %sub165, -1633
  %41 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %output, align 4
  %sub171 = add i32 %42, -1
  %div172 = udiv i32 %sub169, %sub171
  %43 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div172, ptr %ratio, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then163, %if.end112.if.end174_crit_edge
  %44 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ratio, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 64)
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 1024)
  %48 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %47)
  %cmp190 = icmp ult i32 %47, 513
  %49 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %output, align 4
  %sub193 = add i32 %50, -1
  %mul195 = mul i32 %sub193, %47
  %. = select i1 %cmp190, i32 48, i32 96
  %add206 = add i32 %mul195, %.
  %width.0.in = lshr i32 %add206, 8
  %width.0 = add nuw nsw i32 %width.0.in, 7
  %51 = ptrtoint ptr %width87324 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width87324, align 4
  %sub211 = sub i32 %52, %width.0
  %div212305 = lshr i32 %sub211, 1
  %53 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %input, align 4
  %add213 = add i32 %div212305, %54
  store i32 %add213, ptr %input, align 4
  %55 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height1, align 4
  %sub215 = sub i32 %56, %height.0322
  %div216306 = lshr i32 %sub215, 1
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %input, i32 0, i32 1
  %57 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %top, align 4
  %add217 = add i32 %div216306, %58
  store i32 %add217, ptr %top, align 4
  store i32 %width.0, ptr %width87324, align 4
  store i32 %height.0322, ptr %height1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @resizer_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %index2 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index2, align 4
  %conv = zext i16 %3 to i32
  %entity3 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  %or = or i32 %conv, 131072
  %spec.select = select i1 %cmp.i, i32 %or, i32 %conv
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit.thread:          ; preds = %is_media_entity_v4l2_subdev.exit, %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge
  %8 = phi i32 [ %conv, %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge ], [ %spec.select, %is_media_entity_v4l2_subdev.exit ]
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 131072, label %sw.bb18
    i32 1, label %is_media_entity_v4l2_subdev.exit.thread.sw.epilog_crit_edge
  ]

is_media_entity_v4l2_subdev.exit.thread.sw.epilog_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %input11 = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input11, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %input11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %input11, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp12 = icmp eq i32 %11, 2
  br i1 %cmp12, label %if.then14, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %input11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %input11, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %input29 = getelementptr inbounds %struct.isp_res_device, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %input29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input29, align 4
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp23 = icmp eq i32 %15, 2
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.end26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %input29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %input29, align 4
  br label %sw.epilog

if.else28:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %if.then32, label %if.else28.sw.epilog_crit_edge

if.else28.sw.epilog_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %input29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %input29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %if.else28.sw.epilog_crit_edge, %if.end26, %if.then14, %if.else.sw.epilog_crit_edge, %if.end9, %is_media_entity_v4l2_subdev.exit.thread.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then21.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %if.then6.cleanup_crit_edge ], [ -16, %if.then21.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_video_queue(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 5
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %type = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma = getelementptr inbounds %struct.isp_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 8
  %addr_base.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 24, i32 6
  %6 = ptrtoint ptr %addr_base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr_base.i, align 8
  %crop_offset.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 24, i32 7
  %7 = ptrtoint ptr %crop_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crop_offset.i, align 4
  %and.i = and i32 %8, -32
  %addr.addr.0.i = add i32 %and.i, %5
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 6
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %addr.addr.0.i) #6, !srcloc !96
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = phi i32 [ %.pr, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp2 = icmp eq i32 %12, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dma4 = getelementptr inbounds %struct.isp_buffer, ptr %buffer, i32 0, i32 2
  %13 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma4, align 8
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #6, !srcloc !96
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !72, !73, !74, !75, !77, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @omap3isp_resizer_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1787, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @omap3isp_resizer_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1789, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!8 = !{ptr @filter_coefs, !9, !"filter_coefs", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 63, i32 33}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 599, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @resizer_adjust_bandwidth.__UNIQUE_ID_ddebug304, !11, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1732, i32 20}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1759, i32 44}
!20 = !{ptr @resizer_v4l2_ops, !21, !"resizer_v4l2_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1603, i32 37}
!22 = !{ptr @resizer_v4l2_video_ops, !23, !"resizer_v4l2_video_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1587, i32 43}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1169, i32 4}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @resizer_set_stream.__UNIQUE_ID_ddebug341, !25, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 662, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug305, !29, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 664, i32 2}
!34 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug306, !33, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 665, i32 2}
!37 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug307, !36, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 666, i32 2}
!40 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug308, !39, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 667, i32 2}
!43 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug309, !42, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 668, i32 2}
!46 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug310, !45, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 669, i32 2}
!49 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug311, !48, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 670, i32 2}
!52 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug312, !51, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 671, i32 2}
!55 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug313, !54, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 672, i32 2}
!58 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug314, !57, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 673, i32 2}
!61 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug315, !60, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 675, i32 2}
!64 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug316, !63, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!65 = !{ptr @resizer_v4l2_pad_ops, !66, !"resizer_v4l2_pad_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1592, i32 41}
!67 = !{ptr @resizer_formats, !68, !"resizer_formats", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1350, i32 27}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1298, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @resizer_set_selection.__UNIQUE_ID_ddebug366, !70, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!73 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1316, i32 2}
!77 = !{ptr @resizer_set_selection.__UNIQUE_ID_ddebug367, !76, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!78 = !{ptr @resizer_v4l2_internal_ops, !79, !"resizer_v4l2_internal_ops", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1609, i32 46}
!80 = !{ptr @resizer_media_ops, !81, !"resizer_media_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1674, i32 45}
!82 = !{ptr @resizer_video_ops, !83, !"resizer_video_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/omap3isp/ispresizer.c", i32 1115, i32 42}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148356211, i64 2148356491, i64 2148356825, i64 2148357159}
!95 = !{i64 7653539}
!96 = !{i64 7653121}
!97 = !{i64 2148331024, i64 2148331029, i64 2148331042, i64 2148331086, i64 2148331120, i64 2148331141}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"auto-init"}
