; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/isppreview.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/isppreview.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.preview_update = type { ptr, ptr, i32, i32, i32, i8 }
%struct.omap3isp_prev_rgbtorgb = type { [3 x [3 x i16]], [3 x i16] }
%struct.omap3isp_prev_csc = type { [3 x [3 x i16]], [3 x i16] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.isp_video_operations = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.isp_device = type { %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, i32, [14 x ptr], i32, ptr, i32, i32, ptr, %struct.spinlock, %struct.mutex, i8, %struct.media_entity_enum, i32, i32, i32, [4 x ptr], [2 x %struct.isp_xclk], %struct.ispstat, %struct.ispstat, %struct.ispstat, %struct.isp_res_device, %struct.isp_prev_device, %struct.isp_ccdc_device, %struct.isp_csi2_device, %struct.isp_csi2_device, %struct.isp_ccp2_device, %struct.isp_csiphy, %struct.isp_csiphy, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_enum = type { ptr, i32 }
%struct.isp_xclk = type { ptr, %struct.clk_hw, ptr, i32, %struct.spinlock, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ispstat = type { %struct.v4l2_subdev, %struct.media_pad, i8, i8, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.mutex, ptr, i8, i16, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.isp_res_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, %struct.isp_video, %struct.isp_video, i32, i32, %struct.resizer_ratio, i32, i8, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.96 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.isp_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.isp_pipeline, %struct.mutex, i8, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
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
%struct.isp_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, i32, i32, i32, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.resizer_ratio = type { i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.96 = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isp_prev_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_ctrl_handler, i32, i32, %struct.isp_video, %struct.isp_video, %struct.anon.95, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.95 = type { i32, [2 x %struct.prev_params], i32, %struct.spinlock }
%struct.prev_params = type { i32, i32, i32, %struct.omap3isp_prev_cfa, %struct.omap3isp_prev_csup, %struct.omap3isp_prev_luma, %struct.omap3isp_prev_nf, %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_gtables, %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_blkadj, %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_csc, %struct.omap3isp_prev_hmed, %struct.omap3isp_prev_yclimit, i8, i8 }
%struct.omap3isp_prev_cfa = type { i32, i8, i8, [4 x [144 x i32]] }
%struct.omap3isp_prev_csup = type { i8, i8, i8 }
%struct.omap3isp_prev_luma = type { [128 x i32] }
%struct.omap3isp_prev_nf = type { i8, [64 x i32] }
%struct.omap3isp_prev_dcor = type { i8, [4 x i32] }
%struct.omap3isp_prev_gtables = type { [1024 x i32], [1024 x i32], [1024 x i32] }
%struct.omap3isp_prev_wbal = type { i16, i8, i8, i8, i8 }
%struct.omap3isp_prev_blkadj = type { i8, i8, i8 }
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
%struct.isp_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.omap3isp_prev_update_config = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.isp_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@omap3isp_preview_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&prev->wait\00", [20 x i8] zeroinitializer }, align 32
@update_attrs = internal constant { [19 x %struct.preview_update], [120 x i8] } { [19 x %struct.preview_update] [%struct.preview_update { ptr @preview_config_luma_enhancement, ptr @preview_enable_luma_enhancement, i32 2328, i32 512, i32 12, i8 0 }, %struct.preview_update { ptr null, ptr @preview_enable_invalaw, i32 0, i32 0, i32 0, i8 0 }, %struct.preview_update { ptr @preview_config_hmed, ptr @preview_enable_hmed, i32 15466, i32 3, i32 16, i8 0 }, %struct.preview_update { ptr @preview_config_cfa, ptr null, i32 12, i32 2312, i32 20, i8 0 }, %struct.preview_update { ptr @preview_config_chroma_suppression, ptr @preview_enable_chroma_suppression, i32 2324, i32 3, i32 24, i8 0 }, %struct.preview_update { ptr @preview_config_whitebalance, ptr null, i32 15408, i32 6, i32 28, i8 0 }, %struct.preview_update { ptr @preview_config_blkadj, ptr null, i32 15414, i32 3, i32 32, i8 0 }, %struct.preview_update { ptr @preview_config_rgb_blending, ptr null, i32 15418, i32 24, i32 36, i8 0 }, %struct.preview_update { ptr @preview_config_csc, ptr null, i32 15442, i32 24, i32 40, i8 0 }, %struct.preview_update { ptr @preview_config_yc_range, ptr null, i32 15469, i32 4, i32 44, i8 0 }, %struct.preview_update { ptr @preview_config_dcor, ptr @preview_enable_dcor, i32 3100, i32 20, i32 48, i8 0 }, %struct.preview_update zeroinitializer, %struct.preview_update { ptr null, ptr @preview_enable_drkframe_capture, i32 0, i32 0, i32 0, i8 0 }, %struct.preview_update { ptr null, ptr @preview_enable_drkframe, i32 0, i32 0, i32 0, i8 0 }, %struct.preview_update { ptr null, ptr @preview_enable_drkframe, i32 0, i32 0, i32 0, i8 0 }, %struct.preview_update { ptr @preview_config_noisefilter, ptr @preview_enable_noisefilter, i32 2840, i32 260, i32 52, i8 0 }, %struct.preview_update { ptr @preview_config_gammacorrn, ptr @preview_enable_gammacorrn, i32 3120, i32 12288, i32 56, i8 0 }, %struct.preview_update { ptr @preview_config_contrast, ptr null, i32 0, i32 0, i32 0, i8 1 }, %struct.preview_update { ptr @preview_config_brightness, ptr null, i32 0, i32 0, i32 0, i8 1 }], [120 x i8] zeroinitializer }, align 32
@preview_config_cfa.cfa_coef_order = internal constant { [4 x [4 x i32]], [32 x i8] } { [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 0, i32 3, i32 2], [4 x i32] [i32 2, i32 3, i32 0, i32 1], [4 x i32] [i32 3, i32 2, i32 1, i32 0]], [32 x i8] zeroinitializer }, align 32
@preview_init_params.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&prev->params.lock\00", [45 x i8] zeroinitializer }, align 32
@cfa_coef_table = internal constant { [4 x [144 x i32]], [576 x i8] } { [4 x [144 x i32]] [[144 x i32] [i32 244, i32 0, i32 247, i32 0, i32 12, i32 27, i32 36, i32 247, i32 250, i32 0, i32 27, i32 0, i32 4, i32 250, i32 12, i32 244, i32 248, i32 0, i32 0, i32 0, i32 0, i32 40, i32 0, i32 0, i32 244, i32 12, i32 250, i32 4, i32 0, i32 27, i32 0, i32 250, i32 247, i32 36, i32 27, i32 12, i32 0, i32 247, i32 0, i32 244, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 0, i32 248, i32 244, i32 0, i32 247, i32 0, i32 12, i32 27, i32 36, i32 247, i32 250, i32 0, i32 27, i32 0, i32 4, i32 250, i32 12, i32 244, i32 248, i32 0, i32 0, i32 0, i32 0, i32 40, i32 0, i32 0, i32 244, i32 12, i32 250, i32 4, i32 0, i32 27, i32 0, i32 250, i32 247, i32 36, i32 27, i32 12, i32 0, i32 247, i32 0, i32 244, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 0, i32 248, i32 244, i32 0, i32 247, i32 0, i32 12, i32 27, i32 36, i32 247, i32 250, i32 0, i32 27, i32 0, i32 4, i32 250, i32 12, i32 244, i32 248, i32 0, i32 0, i32 0, i32 0, i32 40, i32 0, i32 0, i32 244, i32 12, i32 250, i32 4, i32 0, i32 27, i32 0, i32 250, i32 247, i32 36, i32 27, i32 12, i32 0, i32 247, i32 0, i32 244, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 0, i32 248], [144 x i32] [i32 0, i32 247, i32 0, i32 244, i32 247, i32 36, i32 27, i32 12, i32 0, i32 27, i32 0, i32 250, i32 244, i32 12, i32 250, i32 4, i32 0, i32 0, i32 0, i32 248, i32 0, i32 0, i32 40, i32 0, i32 4, i32 250, i32 12, i32 244, i32 250, i32 0, i32 27, i32 0, i32 12, i32 27, i32 36, i32 247, i32 244, i32 0, i32 247, i32 0, i32 0, i32 40, i32 0, i32 0, i32 248, i32 0, i32 0, i32 0, i32 0, i32 247, i32 0, i32 244, i32 247, i32 36, i32 27, i32 12, i32 0, i32 27, i32 0, i32 250, i32 244, i32 12, i32 250, i32 4, i32 0, i32 0, i32 0, i32 248, i32 0, i32 0, i32 40, i32 0, i32 4, i32 250, i32 12, i32 244, i32 250, i32 0, i32 27, i32 0, i32 12, i32 27, i32 36, i32 247, i32 244, i32 0, i32 247, i32 0, i32 0, i32 40, i32 0, i32 0, i32 248, i32 0, i32 0, i32 0, i32 0, i32 247, i32 0, i32 244, i32 247, i32 36, i32 27, i32 12, i32 0, i32 27, i32 0, i32 250, i32 244, i32 12, i32 250, i32 4, i32 0, i32 0, i32 0, i32 248, i32 0, i32 0, i32 40, i32 0, i32 4, i32 250, i32 12, i32 244, i32 250, i32 0, i32 27, i32 0, i32 12, i32 27, i32 36, i32 247, i32 244, i32 0, i32 247, i32 0, i32 0, i32 40, i32 0, i32 0, i32 248, i32 0, i32 0, i32 0], [144 x i32] [i32 4, i32 250, i32 12, i32 244, i32 250, i32 0, i32 27, i32 0, i32 12, i32 27, i32 36, i32 247, i32 244, i32 0, i32 247, i32 0, i32 0, i32 0, i32 0, i32 248, i32 0, i32 0, i32 40, i32 0, i32 0, i32 247, i32 0, i32 244, i32 247, i32 36, i32 27, i32 12, i32 0, i32 27, i32 0, i32 250, i32 244, i32 12, i32 250, i32 4, i32 0, i32 40, i32 0, i32 0, i32 248, i32 0, i32 0, i32 0, i32 4, i32 250, i32 12, i32 244, i32 250, i32 0, i32 27, i32 0, i32 12, i32 27, i32 36, i32 247, i32 244, i32 0, i32 247, i32 0, i32 0, i32 0, i32 0, i32 248, i32 0, i32 0, i32 40, i32 0, i32 0, i32 247, i32 0, i32 244, i32 247, i32 36, i32 27, i32 12, i32 0, i32 27, i32 0, i32 250, i32 244, i32 12, i32 250, i32 4, i32 0, i32 40, i32 0, i32 0, i32 248, i32 0, i32 0, i32 0, i32 4, i32 250, i32 12, i32 244, i32 250, i32 0, i32 27, i32 0, i32 12, i32 27, i32 36, i32 247, i32 244, i32 0, i32 247, i32 0, i32 0, i32 0, i32 0, i32 248, i32 0, i32 0, i32 40, i32 0, i32 0, i32 247, i32 0, i32 244, i32 247, i32 36, i32 27, i32 12, i32 0, i32 27, i32 0, i32 250, i32 244, i32 12, i32 250, i32 4, i32 0, i32 40, i32 0, i32 0, i32 248, i32 0, i32 0, i32 0], [144 x i32] [i32 244, i32 12, i32 250, i32 4, i32 0, i32 27, i32 0, i32 250, i32 247, i32 36, i32 27, i32 12, i32 0, i32 247, i32 0, i32 244, i32 248, i32 0, i32 0, i32 0, i32 0, i32 40, i32 0, i32 0, i32 244, i32 0, i32 247, i32 0, i32 12, i32 27, i32 36, i32 247, i32 250, i32 0, i32 27, i32 0, i32 4, i32 250, i32 12, i32 244, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 0, i32 248, i32 244, i32 12, i32 250, i32 4, i32 0, i32 27, i32 0, i32 250, i32 247, i32 36, i32 27, i32 12, i32 0, i32 247, i32 0, i32 244, i32 248, i32 0, i32 0, i32 0, i32 0, i32 40, i32 0, i32 0, i32 244, i32 0, i32 247, i32 0, i32 12, i32 27, i32 36, i32 247, i32 250, i32 0, i32 27, i32 0, i32 4, i32 250, i32 12, i32 244, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 0, i32 248, i32 244, i32 12, i32 250, i32 4, i32 0, i32 27, i32 0, i32 250, i32 247, i32 36, i32 27, i32 12, i32 0, i32 247, i32 0, i32 244, i32 248, i32 0, i32 0, i32 0, i32 0, i32 40, i32 0, i32 0, i32 244, i32 0, i32 247, i32 0, i32 12, i32 27, i32 36, i32 247, i32 250, i32 0, i32 27, i32 0, i32 4, i32 250, i32 12, i32 244, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 0, i32 248]], [576 x i8] zeroinitializer }, align 32
@luma_enhance_table = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1047552, i32 1048575, i32 1047551, i32 1046527, i32 1045503, i32 1044479, i32 1043455, i32 1042431, i32 1041407, i32 1040383, i32 1039359, i32 1038335, i32 1037311, i32 1036287, i32 1035263, i32 1034239, i32 1033215, i32 1032191, i32 1031167, i32 1030143, i32 1028096, i32 1028096, i32 1028096, i32 1028096, i32 1028096, i32 1028096, i32 1028096, i32 1028096, i32 1028096, i32 1028096, i32 1028100, i32 1032196, i32 1036292, i32 1040388, i32 1044484, i32 0, i32 0, i32 0, i32 5, i32 5125, i32 10245, i32 15365, i32 20485, i32 25605, i32 30720, i32 30720, i32 30720, i32 30720, i32 30720, i32 30720, i32 30720, i32 30720, i32 30720, i32 30720, i32 30720, i32 31743, i32 30719, i32 29695, i32 28671, i32 27647, i32 26623, i32 25599, i32 24575, i32 23551, i32 22527, i32 21503, i32 20479, i32 19455, i32 18431, i32 17407, i32 16383, i32 15359, i32 14335, i32 13311, i32 12287, i32 11263, i32 10239, i32 9215, i32 8191, i32 7167, i32 6143, i32 5119, i32 4095, i32 3071, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024], [128 x i8] zeroinitializer }, align 32
@noise_filter_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31], [64 x i8] zeroinitializer }, align 32
@gamma_table = internal constant { [1024 x i32], [1024 x i8] } { [1024 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 23, i32 25, i32 26, i32 28, i32 29, i32 31, i32 32, i32 34, i32 35, i32 36, i32 37, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 63, i32 64, i32 65, i32 66, i32 66, i32 67, i32 68, i32 69, i32 69, i32 70, i32 71, i32 72, i32 72, i32 73, i32 74, i32 75, i32 75, i32 76, i32 77, i32 78, i32 78, i32 79, i32 80, i32 81, i32 81, i32 82, i32 83, i32 84, i32 84, i32 85, i32 86, i32 87, i32 88, i32 88, i32 89, i32 90, i32 91, i32 91, i32 92, i32 93, i32 94, i32 94, i32 95, i32 96, i32 97, i32 97, i32 98, i32 98, i32 99, i32 99, i32 100, i32 100, i32 101, i32 101, i32 102, i32 103, i32 104, i32 104, i32 105, i32 106, i32 107, i32 108, i32 108, i32 109, i32 110, i32 111, i32 111, i32 112, i32 113, i32 114, i32 114, i32 115, i32 116, i32 117, i32 117, i32 118, i32 119, i32 119, i32 120, i32 120, i32 121, i32 121, i32 122, i32 122, i32 123, i32 123, i32 124, i32 124, i32 125, i32 125, i32 126, i32 126, i32 127, i32 127, i32 128, i32 128, i32 129, i32 129, i32 130, i32 130, i32 131, i32 131, i32 132, i32 132, i32 133, i32 133, i32 134, i32 134, i32 135, i32 135, i32 136, i32 136, i32 137, i32 137, i32 138, i32 138, i32 139, i32 139, i32 140, i32 140, i32 141, i32 141, i32 142, i32 142, i32 143, i32 143, i32 144, i32 144, i32 145, i32 145, i32 146, i32 146, i32 147, i32 147, i32 148, i32 148, i32 149, i32 149, i32 150, i32 150, i32 151, i32 151, i32 152, i32 152, i32 153, i32 153, i32 153, i32 153, i32 154, i32 154, i32 154, i32 154, i32 155, i32 155, i32 156, i32 156, i32 157, i32 157, i32 158, i32 158, i32 158, i32 159, i32 159, i32 159, i32 160, i32 160, i32 160, i32 161, i32 161, i32 162, i32 162, i32 163, i32 163, i32 164, i32 164, i32 164, i32 164, i32 165, i32 165, i32 165, i32 165, i32 166, i32 166, i32 167, i32 167, i32 168, i32 168, i32 169, i32 169, i32 170, i32 170, i32 170, i32 170, i32 171, i32 171, i32 171, i32 171, i32 172, i32 172, i32 173, i32 173, i32 174, i32 174, i32 175, i32 175, i32 176, i32 176, i32 176, i32 176, i32 177, i32 177, i32 177, i32 177, i32 178, i32 178, i32 178, i32 178, i32 179, i32 179, i32 179, i32 179, i32 180, i32 180, i32 180, i32 180, i32 181, i32 181, i32 181, i32 181, i32 182, i32 182, i32 182, i32 182, i32 183, i32 183, i32 183, i32 183, i32 184, i32 184, i32 184, i32 184, i32 185, i32 185, i32 185, i32 185, i32 186, i32 186, i32 186, i32 186, i32 187, i32 187, i32 187, i32 187, i32 188, i32 188, i32 188, i32 188, i32 189, i32 189, i32 189, i32 189, i32 190, i32 190, i32 190, i32 190, i32 191, i32 191, i32 191, i32 191, i32 192, i32 192, i32 192, i32 192, i32 193, i32 193, i32 193, i32 193, i32 194, i32 194, i32 194, i32 194, i32 195, i32 195, i32 195, i32 195, i32 196, i32 196, i32 196, i32 196, i32 197, i32 197, i32 197, i32 197, i32 198, i32 198, i32 198, i32 198, i32 199, i32 199, i32 199, i32 199, i32 200, i32 200, i32 200, i32 200, i32 201, i32 201, i32 201, i32 201, i32 202, i32 202, i32 202, i32 203, i32 203, i32 203, i32 203, i32 204, i32 204, i32 204, i32 204, i32 205, i32 205, i32 205, i32 205, i32 206, i32 206, i32 206, i32 206, i32 207, i32 207, i32 207, i32 207, i32 208, i32 208, i32 208, i32 208, i32 209, i32 209, i32 209, i32 209, i32 210, i32 210, i32 210, i32 210, i32 210, i32 210, i32 210, i32 210, i32 210, i32 210, i32 210, i32 210, i32 211, i32 211, i32 211, i32 211, i32 211, i32 211, i32 211, i32 211, i32 211, i32 211, i32 211, i32 212, i32 212, i32 212, i32 212, i32 213, i32 213, i32 213, i32 213, i32 213, i32 213, i32 213, i32 213, i32 213, i32 213, i32 213, i32 213, i32 214, i32 214, i32 214, i32 214, i32 215, i32 215, i32 215, i32 215, i32 215, i32 215, i32 215, i32 215, i32 215, i32 215, i32 215, i32 216, i32 216, i32 216, i32 216, i32 217, i32 217, i32 217, i32 217, i32 218, i32 218, i32 218, i32 218, i32 219, i32 219, i32 219, i32 219, i32 219, i32 219, i32 219, i32 219, i32 219, i32 219, i32 219, i32 219, i32 220, i32 220, i32 220, i32 220, i32 221, i32 221, i32 221, i32 221, i32 221, i32 221, i32 221, i32 221, i32 221, i32 221, i32 221, i32 222, i32 222, i32 222, i32 222, i32 223, i32 223, i32 223, i32 223, i32 223, i32 223, i32 223, i32 223, i32 223, i32 223, i32 223, i32 223, i32 224, i32 224, i32 224, i32 224, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 225, i32 226, i32 226, i32 226, i32 226, i32 227, i32 227, i32 227, i32 227, i32 227, i32 227, i32 227, i32 227, i32 227, i32 227, i32 227, i32 227, i32 228, i32 228, i32 228, i32 229, i32 229, i32 229, i32 229, i32 229, i32 229, i32 229, i32 229, i32 229, i32 229, i32 229, i32 229, i32 230, i32 230, i32 230, i32 230, i32 231, i32 231, i32 231, i32 231, i32 231, i32 231, i32 231, i32 231, i32 231, i32 231, i32 231, i32 231, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 232, i32 233, i32 233, i32 233, i32 233, i32 234, i32 234, i32 234, i32 234, i32 234, i32 234, i32 234, i32 234, i32 234, i32 234, i32 234, i32 235, i32 235, i32 235, i32 235, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 236, i32 237, i32 237, i32 237, i32 237, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 238, i32 239, i32 239, i32 239, i32 239, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 241, i32 241, i32 241, i32 241, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 243, i32 243, i32 243, i32 243, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 244, i32 245, i32 245, i32 245, i32 245, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 246, i32 247, i32 247, i32 247, i32 247, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 249, i32 249, i32 249, i32 249, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 250, i32 251, i32 251, i32 251, i32 251, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 252, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 253, i32 254, i32 254, i32 254, i32 254, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], [1024 x i8] zeroinitializer }, align 32
@flr_rgb2rgb = internal constant { %struct.omap3isp_prev_rgbtorgb, [40 x i8] } { %struct.omap3isp_prev_rgbtorgb { [3 x [3 x i16]] [[3 x i16] [i16 482, i16 3888, i16 4078], [3 x i16] [i16 3995, i16 428, i16 4025], [3 x i16] [i16 4064, i16 3776, i16 608]], [3 x i16] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@flr_prev_csc = internal constant { %struct.omap3isp_prev_csc, [40 x i8] } { %struct.omap3isp_prev_csc { [3 x [3 x i16]] [[3 x i16] [i16 66, i16 129, i16 25], [3 x i16] [i16 -38, i16 -75, i16 112], [3 x i16] [i16 112, i16 -94, i16 -18]], [3 x i16] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@preview_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @preview_v4l2_core_ops, ptr null, ptr null, ptr @preview_v4l2_video_ops, ptr null, ptr null, ptr null, ptr @preview_v4l2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@preview_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @preview_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OMAP3 ISP preview\00", [46 x i8] zeroinitializer }, align 32
@preview_init_entities._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"isppreview:2284:(&prev->ctrls)->_lock\00", [58 x i8] zeroinitializer }, align 32
@preview_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @preview_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@preview_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @preview_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@preview_video_ops = internal constant { %struct.isp_video_operations, [28 x i8] } { %struct.isp_video_operations { ptr @preview_video_queue }, [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"preview\00", [24 x i8] zeroinitializer }, align 32
@preview_v4l2_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @preview_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@preview_v4l2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @preview_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@preview_v4l2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @preview_enum_mbus_code, ptr @preview_enum_frame_size, ptr null, ptr @preview_get_format, ptr @preview_set_format, ptr @preview_get_selection, ptr @preview_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@preview_set_stream.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 1, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"preview_set_stream\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/omap3isp/isppreview.c\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: stop timeout.\0A\00", [45 x i8] zeroinitializer }, align 32
@preview_adjust_bandwidth.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.12, ptr @.str.10, ptr @.str.13, i8 1, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"preview_adjust_bandwidth\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cycles per request = %u\0A\00", [35 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.15, i8 1, i8 56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"preview_print_status\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"-------------Preview Register dump----------\0A\00", [50 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.16, i8 1, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###PRV PCR=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.17, i8 1, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###PRV HORZ_INFO=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.18, i8 1, i8 57, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###PRV VERT_INFO=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.19, i8 1, i8 58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###PRV RSDR_ADDR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.20, i8 1, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###PRV RADR_OFFSET=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.21, i8 1, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###PRV DSDR_ADDR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.22, i8 1, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###PRV DRKF_OFFSET=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.23, i8 1, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###PRV WSDR_ADDR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.24, i8 1, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###PRV WADD_OFFSET=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.25, i8 1, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###PRV AVE=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.26, i8 1, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###PRV HMED=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.27, i8 1, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"###PRV NF=0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.28, i8 1, i8 60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV WB_DGAIN=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.29, i8 1, i8 60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###PRV WBGAIN=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.30, i8 1, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###PRV WBSEL=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.31, i8 1, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###PRV CFA=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.32, i8 1, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###PRV BLKADJOFF=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.33, i8 1, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV RGB_MAT1=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.34, i8 1, i8 61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV RGB_MAT2=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.35, i8 1, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV RGB_MAT3=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.36, i8 1, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV RGB_MAT4=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.37, i8 1, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV RGB_MAT5=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.38, i8 1, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV RGB_OFF1=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.39, i8 1, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV RGB_OFF2=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.40, i8 1, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###PRV CSC0=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.41, i8 1, i8 63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###PRV CSC1=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.42, i8 1, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###PRV CSC2=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.43, i8 1, i8 64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###PRV CSC_OFFSET=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.44, i8 1, i8 64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###PRV CNT_BRT=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.45, i8 1, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###PRV CSUP=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.46, i8 1, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV SETUP_YC=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.47, i8 1, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"###PRV SET_TBL_ADDR=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.48, i8 1, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV CDC_THR0=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.49, i8 1, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV CDC_THR1=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.50, i8 1, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV CDC_THR2=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.51, i8 1, i8 66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###PRV CDC_THR3=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@preview_print_status.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.52, i8 1, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@preview_input_fmts = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 8193, i32 12290, i32 12308, i32 12289, i32 12307, i32 8202, i32 12298, i32 12303, i32 12295, i32 12302], [56 x i8] zeroinitializer }, align 32
@preview_output_fmts = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8207, i32 8209], [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 8193, i64 8202]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 8193, i64 8202]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 8193, i64 8202]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 8193, i64 8202]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [12 x i64] [i64 10, i64 32, i64 8193, i64 8202, i64 12289, i64 12290, i64 12295, i64 12298, i64 12302, i64 12303, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 9963776, i64 9963777]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 131072, i64 131073]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2348, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"update_attrs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 751, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"cfa_coef_order\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 236, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1302, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"cfa_coef_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 120, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"luma_enhance_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 141, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"noise_filter_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 134, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"gamma_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 127, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"flr_rgb2rgb\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 25, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"flr_prev_csc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 35, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"preview_v4l2_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2126, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [26 x i8] c"preview_v4l2_internal_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2133, i32 46 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2279, i32 20 }
@___asan_gen_.112 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2284, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"preview_ctrl_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1598, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"preview_media_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2221, i32 45 }
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"preview_video_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1569, i32 42 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2320, i32 45 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"preview_v4l2_core_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2106, i32 42 }
@___asan_gen_.133 = private unnamed_addr constant [23 x i8] c"preview_v4l2_video_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2111, i32 43 }
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"preview_v4l2_pad_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2116, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 230, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 214, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 156, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1669, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1206, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1251, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1253, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1254, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1255, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1256, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1257, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1258, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1259, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1260, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1261, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1262, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1263, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1264, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1265, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1266, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1267, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1268, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1269, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1270, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1271, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1272, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1273, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1274, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1275, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1276, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1277, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1278, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1279, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1280, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1281, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1282, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1283, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1284, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1285, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1286, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1287, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1288, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1290, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [19 x i8] c"preview_input_fmts\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1706, i32 27 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c"preview_output_fmts\00", align 1
@___asan_gen_.287 = private constant [48 x i8] c"../drivers/media/platform/omap3isp/isppreview.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1719, i32 27 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 998, i32 6 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @omap3isp_preview_init.__key, ptr @.str, ptr @update_attrs, ptr @preview_config_cfa.cfa_coef_order, ptr @preview_init_params.__key, ptr @.str.1, ptr @cfa_coef_table, ptr @luma_enhance_table, ptr @noise_filter_table, ptr @gamma_table, ptr @flr_rgb2rgb, ptr @flr_prev_csc, ptr @preview_v4l2_ops, ptr @preview_v4l2_internal_ops, ptr @.str.2, ptr @preview_init_entities._key, ptr @.str.3, ptr @preview_ctrl_ops, ptr @preview_media_ops, ptr @preview_video_ops, ptr @.str.4, ptr @preview_v4l2_core_ops, ptr @preview_v4l2_video_ops, ptr @preview_v4l2_pad_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @preview_input_fmts, ptr @preview_output_fmts, ptr @.str.53], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_preview_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_attrs to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_config_cfa.cfa_coef_order to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_init_params.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfa_coef_table to i32), i32 2304, i32 2880, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luma_enhance_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noise_filter_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_table to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flr_rgb2rgb to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flr_prev_csc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_init_entities._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_video_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_v4l2_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_v4l2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_v4l2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_input_fmts to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preview_output_fmts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_preview_busy(ptr nocapture noundef readonly %prev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !193
  %and = and i32 %2, 2
  ret i32 %and
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_preview_restore_context(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_prev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25
  %active = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 2
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  %and = and i32 %1, 524287
  %update3 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %update3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %update3, align 4
  %and6 = xor i32 %and, 524287
  %update10 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %update10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and6, ptr %update10, align 4
  %4 = xor i32 %1, -1
  br label %if.end3.i

if.end3.i:                                        ; preds = %cleanup.i.if.end3.i_crit_edge, %entry
  %i.048.i = phi i32 [ 0, %entry ], [ %inc.i, %cleanup.i.if.end3.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.048.i
  %5 = lshr i32 %4, %i.048.i
  %6 = and i32 %5, 1
  %arrayidx8.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 %6
  %features.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 %6, i32 2
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features.i, align 4
  %and9.i = and i32 %8, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end3.i
  %arrayidx.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.048.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %10, null
  br i1 %tobool12.not.i, label %if.then11.i.if.end15.i_crit_edge, label %if.then13.i

if.then11.i.if.end15.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %10(ptr noundef %isp_prev, ptr noundef %arrayidx8.i) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.then11.i.if.end15.i_crit_edge
  %11 = lshr i32 396264, %i.048.i
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not.not.i = icmp eq i32 %12, 0
  br i1 %tobool16.not.not.i, label %if.end15.i.cleanup.sink.split.i_crit_edge, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end3.i
  %13 = lshr i32 396264, %i.048.i
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not.not.i = icmp eq i32 %14, 0
  br i1 %tobool21.not.not.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.cleanup.i_crit_edge

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.end15.i.cleanup.sink.split.i_crit_edge
  %15 = xor i1 %tobool10.not.i, true
  %enable.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.048.i, i32 1
  %16 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable.i, align 4
  tail call void %17(ptr noundef %isp_prev, i1 noundef zeroext %15) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.else.i.cleanup.i_crit_edge, %if.end15.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %preview_setup_hw.exit, label %cleanup.i.if.end3.i_crit_edge

cleanup.i.if.end3.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

preview_setup_hw.exit:                            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %update3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %update3, align 4
  %19 = ptrtoint ptr %update10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %update10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_preview_isr_frame_sync(ptr nocapture noundef %prev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dmaqueue_flags = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 8, i32 19
  %2 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmaqueue_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %input.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 5
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %if.then.i, label %if.then.preview_enable_oneshot.exit_crit_edge

if.then.preview_enable_oneshot.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_enable_oneshot.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr i8, ptr %prev, i32 -6088
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !193
  %or.i.i = or i32 %8, 4
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #7, !srcloc !194
  br label %preview_enable_oneshot.exit

preview_enable_oneshot.exit:                      ; preds = %if.then.i, %if.then.preview_enable_oneshot.exit_crit_edge
  %arrayidx.i.i3.i = getelementptr i8, ptr %prev, i32 -6088
  %11 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #7, !srcloc !193
  %or.i5.i = or i32 %13, 9
  %14 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i3.i, align 4
  %add.ptr.i2.i6.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i6.i, i32 %or.i5.i) #7, !srcloc !194
  %16 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %if.end

if.end:                                           ; preds = %preview_enable_oneshot.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_preview_isr(ptr noundef %prev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 11
  %stopping = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 12
  %call = tail call i32 @omap3isp_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %params1.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1
  %update.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %update.i, align 4
  %active.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active.i, align 4
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %1, %neg.i
  %arrayidx5.i = getelementptr %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1, i32 1
  %update6.i = getelementptr %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %update6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %update6.i, align 4
  %and9.i = and i32 %5, %3
  %or.i = or i32 %and9.i, %and.i
  %6 = ptrtoint ptr %params1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params1.i, align 4
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  %or17.i = or i32 %9, %7
  %neg18.i = xor i32 %or17.i, -1
  %and19.i = and i32 %or.i, %neg18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %cmp.i = icmp eq i32 %and19.i, 0
  br i1 %cmp.i, label %do.body1.preview_params_switch.exit_crit_edge, label %if.end.i

do.body1.preview_params_switch.exit_crit_edge:    ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_params_switch.exit

if.end.i:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %xor.i = xor i32 %and19.i, %3
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor.i, ptr %active.i, align 4
  %and9.not.i = xor i32 %and9.i, -1
  %neg26.i = or i32 %or17.i, %and9.not.i
  %and31.i = and i32 %neg26.i, %1
  %11 = ptrtoint ptr %update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and31.i, ptr %update.i, align 4
  %and34.i = and i32 %xor.i, %and19.i
  %neg35.i = xor i32 %and34.i, -1
  %and40.i = and i32 %5, %neg35.i
  %12 = ptrtoint ptr %update6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and40.i, ptr %update6.i, align 4
  br label %preview_params_switch.exit

preview_params_switch.exit:                       ; preds = %if.end.i, %do.body1.preview_params_switch.exit_crit_edge
  %13 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active.i, align 4
  %15 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %update.i, align 4
  %and14.i = and i32 %16, %14
  %17 = ptrtoint ptr %update6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %update6.i, align 4
  %neg19.i = xor i32 %14, -1
  %and20.i = and i32 %18, %neg19.i
  %or21.i = or i32 %and20.i, %and14.i
  %or27.i = or i32 %and14.i, %7
  %19 = ptrtoint ptr %params1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or27.i, ptr %params1.i, align 4
  %or34.i = or i32 %and20.i, %9
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or34.i, ptr %arrayidx5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21.i)
  %cmp.i59 = icmp eq i32 %or21.i, 0
  br i1 %cmp.i59, label %preview_params_switch.exit.preview_setup_hw.exit_crit_edge, label %preview_params_switch.exit.for.body.i_crit_edge

preview_params_switch.exit.for.body.i_crit_edge:  ; preds = %preview_params_switch.exit
  br label %for.body.i

preview_params_switch.exit.preview_setup_hw.exit_crit_edge: ; preds = %preview_params_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_setup_hw.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %preview_params_switch.exit.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %preview_params_switch.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.048.i
  %shl.i = shl nuw nsw i32 1, %i.048.i
  %and.i60 = and i32 %shl.i, %or21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end3.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end3.i:                                        ; preds = %for.body.i
  %21 = lshr i32 %neg19.i, %i.048.i
  %22 = and i32 %21, 1
  %arrayidx8.i = getelementptr %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1, i32 %22
  %features.i = getelementptr %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1, i32 %22, i32 2
  %23 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %features.i, align 4
  %and9.i61 = and i32 %24, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i61)
  %tobool10.not.i = icmp eq i32 %and9.i61, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %26, null
  br i1 %tobool12.not.i, label %if.then11.i.if.end15.i_crit_edge, label %if.then13.i

if.then11.i.if.end15.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %26(ptr noundef %prev, ptr noundef %arrayidx8.i) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.then11.i.if.end15.i_crit_edge
  %27 = lshr i32 396264, %i.048.i
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not.not.i = icmp eq i32 %28, 0
  br i1 %tobool16.not.not.i, label %if.end15.i.cleanup.sink.split.i_crit_edge, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end3.i
  %29 = lshr i32 396264, %i.048.i
  %30 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool21.not.not.i = icmp eq i32 %30, 0
  br i1 %tobool21.not.not.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.cleanup.i_crit_edge

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.end15.i.cleanup.sink.split.i_crit_edge
  %31 = xor i1 %tobool10.not.i, true
  %enable.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.048.i, i32 1
  %32 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enable.i, align 4
  tail call void %33(ptr noundef %prev, i1 noundef zeroext %31) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.else.i.cleanup.i_crit_edge, %if.end15.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %cleanup.i.preview_setup_hw.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.preview_setup_hw.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_setup_hw.exit

preview_setup_hw.exit:                            ; preds = %cleanup.i.preview_setup_hw.exit_crit_edge, %preview_params_switch.exit.preview_setup_hw.exit_crit_edge
  tail call fastcc void @preview_config_input_size(ptr noundef %prev, i32 noundef %14)
  %input = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 5
  %34 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp11 = icmp eq i32 %35, 2
  br i1 %cmp11, label %preview_setup_hw.exit.if.then14_crit_edge, label %lor.lhs.false

preview_setup_hw.exit.if.then14_crit_edge:        ; preds = %preview_setup_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

lor.lhs.false:                                    ; preds = %preview_setup_hw.exit
  %output = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 6
  %36 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %output, align 8
  %and = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %preview_setup_hw.exit.if.then14_crit_edge
  %pipe1.i = getelementptr inbounds %struct.media_entity, ptr %prev, i32 0, i32 14
  %38 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pipe1.i, align 4
  %output.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 6
  %40 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %output.i, align 8
  %and.i62 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %if.then14.if.end3.i66_crit_edge, label %if.then.i

if.then14.if.end3.i66_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i66

if.then.i:                                        ; preds = %if.then14
  %video_out.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 8
  %call.i = tail call ptr @omap3isp_video_buffer_next(ptr noundef %video_out.i) #7
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.then.i.if.end.i65_crit_edge, label %if.then2.i

if.then.i.if.end.i65_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i65

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma.i = getelementptr inbounds %struct.isp_buffer, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma.i, align 8
  %arrayidx.i.i.i = getelementptr i8, ptr %prev, i32 -6088
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %43) #7, !srcloc !194
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.then2.i, %if.then.i.if.end.i65_crit_edge
  %restart.0.i = phi i32 [ 1, %if.then2.i ], [ 0, %if.then.i.if.end.i65_crit_edge ]
  %state.i = getelementptr inbounds %struct.isp_pipeline, ptr %39, i32 0, i32 2
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state.i, align 4
  %or.i64 = or i32 %47, 32
  store i32 %or.i64, ptr %state.i, align 4
  br label %if.end3.i66

if.end3.i66:                                      ; preds = %if.end.i65, %if.then14.if.end3.i66_crit_edge
  %restart.1.i = phi i32 [ %restart.0.i, %if.end.i65 ], [ 0, %if.then14.if.end3.i66_crit_edge ]
  %48 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp4.i = icmp eq i32 %49, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end3.i66.if.end13.i_crit_edge

if.end3.i66.if.end13.i_crit_edge:                 ; preds = %if.end3.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i66
  %video_in.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 7
  %call6.i = tail call ptr @omap3isp_video_buffer_next(ptr noundef %video_in.i) #7
  %cmp7.not.i = icmp eq ptr %call6.i, null
  br i1 %cmp7.not.i, label %if.then5.i.if.end10.i_crit_edge, label %if.then8.i

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma9.i = getelementptr inbounds %struct.isp_buffer, ptr %call6.i, i32 0, i32 2
  %50 = ptrtoint ptr %dma9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma9.i, align 8
  %arrayidx.i.i41.i = getelementptr i8, ptr %prev, i32 -6088
  %52 = ptrtoint ptr %arrayidx.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i41.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42.i, i32 %51) #7, !srcloc !194
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then5.i.if.end10.i_crit_edge
  %state11.i = getelementptr inbounds %struct.isp_pipeline, ptr %39, i32 0, i32 2
  %54 = ptrtoint ptr %state11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state11.i, align 4
  %or12.i = or i32 %55, 16
  store i32 %or12.i, ptr %state11.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end10.i, %if.end3.i66.if.end13.i_crit_edge
  %state14.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 10
  %56 = ptrtoint ptr %state14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state14.i, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %if.end13.i.do.body21_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb20.i
  ]

if.end13.i.do.body21_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

sw.bb.i:                                          ; preds = %if.end13.i
  %state.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %39, i32 0, i32 2
  %59 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %60)
  %cmp.i.not.i = icmp eq i32 %60, 63
  br i1 %cmp.i.not.i, label %if.then17.i, label %sw.bb.i.do.body21_crit_edge

sw.bb.i.do.body21_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.then17.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 @omap3isp_pipeline_set_stream(ptr noundef %39, i32 noundef 2) #7
  br label %do.body21

sw.bb20.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.1.i)
  %tobool21.not.i = icmp eq i32 %restart.1.i, 0
  br i1 %tobool21.not.i, label %sw.bb20.i.do.body21_crit_edge, label %if.then22.i

sw.bb20.i.do.body21_crit_edge:                    ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.then22.i:                                      ; preds = %sw.bb20.i
  %61 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i43.i = icmp eq i32 %62, 2
  br i1 %cmp.i43.i, label %if.then.i.i, label %if.then22.i.preview_enable_oneshot.exit.i_crit_edge

if.then22.i.preview_enable_oneshot.exit.i_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_enable_oneshot.exit.i

if.then.i.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i.i = getelementptr i8, ptr %prev, i32 -6088
  %63 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %64, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !193
  %or.i.i.i = or i32 %65, 4
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %or.i.i.i) #7, !srcloc !194
  br label %preview_enable_oneshot.exit.i

preview_enable_oneshot.exit.i:                    ; preds = %if.then.i.i, %if.then22.i.preview_enable_oneshot.exit.i_crit_edge
  %arrayidx.i.i3.i.i = getelementptr i8, ptr %prev, i32 -6088
  %68 = ptrtoint ptr %arrayidx.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i3.i.i, align 4
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i.i) #7, !srcloc !193
  %or.i5.i.i = or i32 %70, 9
  %71 = ptrtoint ptr %arrayidx.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i3.i.i, align 4
  %add.ptr.i2.i6.i.i = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i6.i.i, i32 %or.i5.i.i) #7, !srcloc !194
  br label %do.body21

if.else:                                          ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 10
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp15 = icmp eq i32 %74, 1
  br i1 %cmp15, label %preview_enable_oneshot.exit, label %if.else.do.body21_crit_edge

if.else.do.body21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

preview_enable_oneshot.exit:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i3.i = getelementptr i8, ptr %prev, i32 -6088
  %75 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #7, !srcloc !193
  %or.i5.i = or i32 %77, 9
  %78 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i3.i, align 4
  %add.ptr.i2.i6.i = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i6.i, i32 %or.i5.i) #7, !srcloc !194
  br label %do.body21

do.body21:                                        ; preds = %preview_enable_oneshot.exit, %if.else.do.body21_crit_edge, %preview_enable_oneshot.exit.i, %sw.bb20.i.do.body21_crit_edge, %if.then17.i, %sw.bb.i.do.body21_crit_edge, %if.end13.i.do.body21_crit_edge
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %80 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %active.i, align 4
  %and21.i = and i32 %81, %or21.i
  %neg22.i = xor i32 %and21.i, -1
  %82 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %update.i, align 4
  %and27.i = and i32 %83, %neg22.i
  store i32 %and27.i, ptr %update.i, align 4
  %neg28.i = xor i32 %81, -1
  %update.not.i = xor i32 %or21.i, -1
  %neg30.i = or i32 %81, %update.not.i
  %84 = ptrtoint ptr %update6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %update6.i, align 4
  %and35.i = and i32 %85, %neg30.i
  store i32 %and35.i, ptr %update6.i, align 4
  %86 = ptrtoint ptr %params1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %params1.i, align 4
  %and41.i = and i32 %87, %neg28.i
  store i32 %and41.i, ptr %params1.i, align 4
  %88 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx5.i, align 4
  %and46.i = and i32 %89, %81
  store i32 %and46.i, ptr %arrayidx5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body21, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_is_stopping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @preview_config_input_size(ptr nocapture noundef readonly %prev, i32 noundef %active) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crop = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 3
  %0 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crop, align 4
  %width = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %add = add i32 %3, %1
  %sub = add i32 %add, -1
  %top = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %top, align 4
  %height = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %add8 = add i32 %7, %5
  %sub9 = add i32 %add8, -1
  %code = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %if.then [
    i32 8193, label %entry.if.end_crit_edge
    i32 8202, label %entry.if.end_crit_edge72
  ]

entry.if.end_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub12 = add i32 %1, -2
  %add13 = add i32 %add, 1
  %sub14 = add i32 %5, -2
  %add15 = add i32 %add8, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge72
  %sph.0 = phi i32 [ %sub12, %if.then ], [ %1, %entry.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge72 ]
  %eph.0 = phi i32 [ %add13, %if.then ], [ %sub, %entry.if.end_crit_edge ], [ %sub, %entry.if.end_crit_edge72 ]
  %slv.0 = phi i32 [ %sub14, %if.then ], [ %5, %entry.if.end_crit_edge ], [ %5, %entry.if.end_crit_edge72 ]
  %elv.0 = phi i32 [ %add15, %if.then ], [ %sub9, %entry.if.end_crit_edge ], [ %sub9, %entry.if.end_crit_edge72 ]
  %features18 = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %features18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features18, align 4
  %and = and i32 %12, %active
  %features22 = getelementptr %struct.isp_prev_device, ptr %prev, i32 0, i32 9, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %features22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features22, align 4
  %neg = xor i32 %active, -1
  %and23 = and i32 %14, %neg
  %or = or i32 %and23, %and
  %and24 = and i32 %or, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %if.then25

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub26 = add i32 %sph.0, -2
  %add27 = add i32 %eph.0, 2
  %sub28 = add i32 %slv.0, -2
  %add29 = add i32 %elv.0, 2
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end.if.end30_crit_edge
  %sph.1 = phi i32 [ %sub26, %if.then25 ], [ %sph.0, %if.end.if.end30_crit_edge ]
  %eph.1 = phi i32 [ %add27, %if.then25 ], [ %eph.0, %if.end.if.end30_crit_edge ]
  %slv.1 = phi i32 [ %sub28, %if.then25 ], [ %slv.0, %if.end.if.end30_crit_edge ]
  %elv.1 = phi i32 [ %add29, %if.then25 ], [ %elv.0, %if.end.if.end30_crit_edge ]
  %and31 = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %add35 = add i32 %eph.1, 2
  %eph.2 = select i1 %tobool32.not, i32 %eph.1, i32 %add35
  %and37 = and i32 %or, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %15 = shl i32 %sph.1, 16
  %16 = add i32 %15, -131072
  %17 = select i1 %tobool32.not, i32 %15, i32 %16
  %18 = add i32 %17, -131072
  %shl = select i1 %tobool38.not, i32 %17, i32 %18
  %or42 = or i32 %shl, %eph.2
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or42) #7, !srcloc !194
  %shl43 = shl i32 %slv.1, 16
  %or44 = or i32 %shl43, %elv.1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %or44) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_preview_unregister_entities(ptr noundef %prev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %prev) #7
  %video_in = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 7
  tail call void @omap3isp_video_unregister(ptr noundef %video_in) #7
  %video_out = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 8
  tail call void @omap3isp_video_unregister(ptr noundef %video_out) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_preview_register_entities(ptr noundef %prev, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %prev, i32 0, i32 14
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev1, align 4
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %prev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %video_in = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 7
  %call3 = tail call i32 @omap3isp_video_register(ptr noundef %video_in, ptr noundef %vdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %if.end
  %video_out = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 8
  %call7 = tail call i32 @omap3isp_video_register(ptr noundef %video_out, ptr noundef %vdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.error_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end6.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call3, %if.end.error_crit_edge ], [ %call7, %if.end6.error_crit_edge ]
  tail call void @v4l2_device_unregister_subdev(ptr noundef %prev) #7
  %video_in.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 7
  tail call void @omap3isp_video_unregister(ptr noundef %video_in.i) #7
  %video_out.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 8
  tail call void @omap3isp_video_unregister(ptr noundef %video_out.i) #7
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
define dso_local i32 @omap3isp_preview_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_prev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25
  %wait = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @omap3isp_preview_init.__key) #7
  %lock.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @preview_init_params.__key, i16 noundef signext 3) #7
  %active.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 2
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %active.i, align 4
  %params4.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1
  %1 = ptrtoint ptr %params4.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %params4.i, align 4
  %update.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %update.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 524287, ptr %update.i, align 4
  %arrayidx10.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx10.i, align 4
  %update15.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %update15.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %update15.i, align 4
  %contrast.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 15
  %5 = ptrtoint ptr %contrast.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %contrast.i, align 1
  %brightness.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 16
  %6 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %brightness.i, align 2
  %cfa.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %cfa.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cfa.i, align 4
  %table.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 3, i32 3
  %8 = call ptr @memcpy(ptr %table.i, ptr @cfa_coef_table, i32 2304)
  %gradthrs_horz.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %gradthrs_horz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 40, ptr %gradthrs_horz.i, align 1
  %gradthrs_vert.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %gradthrs_vert.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 40, ptr %gradthrs_vert.i, align 4
  %csup.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %csup.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 13, ptr %csup.i, align 4
  %thres.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %thres.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -21, ptr %thres.i, align 1
  %hypf_en.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %hypf_en.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %hypf_en.i, align 2
  %luma.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 5
  %14 = call ptr @memcpy(ptr %luma.i, ptr @luma_enhance_table, i32 512)
  %nf.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %nf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %nf.i, align 4
  %table27.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 6, i32 1
  %16 = call ptr @memcpy(ptr %table27.i, ptr @noise_filter_table, i32 256)
  %dcor.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 7
  %17 = ptrtoint ptr %dcor.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %dcor.i, align 4
  %arrayidx30.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 14, ptr %arrayidx30.i, align 4
  %arrayidx30.1.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 7, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 14, ptr %arrayidx30.1.i, align 4
  %arrayidx30.2.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 7, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 14, ptr %arrayidx30.2.i, align 4
  %arrayidx30.3.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 7, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 14, ptr %arrayidx30.3.i, align 4
  %gamma.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 8
  %blue.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 8, i32 2
  %22 = call ptr @memcpy(ptr %blue.i, ptr @gamma_table, i32 4096)
  %green.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 8, i32 1
  %23 = call ptr @memcpy(ptr %green.i, ptr @gamma_table, i32 4096)
  %24 = call ptr @memcpy(ptr %gamma.i, ptr @gamma_table, i32 4096)
  %wbal.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 9
  %25 = ptrtoint ptr %wbal.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 256, ptr %wbal.i, align 4
  %coef3.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 9, i32 1
  %blkadj.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 10
  %26 = ptrtoint ptr %coef3.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 538976288, ptr %coef3.i, align 2
  %27 = ptrtoint ptr %blkadj.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %blkadj.i, align 2
  %green42.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %green42.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %green42.i, align 1
  %blue44.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 10, i32 2
  %29 = ptrtoint ptr %blue44.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %blue44.i, align 2
  %rgb2rgb.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 11
  %30 = call ptr @memcpy(ptr %rgb2rgb.i, ptr @flr_rgb2rgb, i32 24)
  %csc.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 12
  %31 = call ptr @memcpy(ptr %csc.i, ptr @flr_prev_csc, i32 24)
  %yclimit.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 14
  %32 = ptrtoint ptr %yclimit.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %yclimit.i, align 1
  %maxC.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %maxC.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %maxC.i, align 1
  %minY.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 14, i32 2
  %34 = ptrtoint ptr %minY.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %minY.i, align 1
  %maxY.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 14, i32 3
  %35 = ptrtoint ptr %maxY.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %maxY.i, align 1
  %features.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 9, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 493544, ptr %features.i, align 4
  %pads1.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 1
  %input.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 5
  %37 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %input.i, align 4
  tail call void @v4l2_subdev_init(ptr noundef %isp_prev, ptr noundef nonnull @preview_v4l2_ops) #7
  %internal_ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 7
  %38 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @preview_v4l2_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.2, i32 noundef 32) #7
  %grp_id.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 10
  %39 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 11
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %isp_prev, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 4
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %42, 4
  store i32 %or.i, ptr %flags.i, align 4
  %ctrls.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 4
  %call3.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls.i, i32 noundef 2, ptr noundef nonnull @preview_init_entities._key, ptr noundef nonnull @.str.3) #7
  %call5.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @preview_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #7
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @preview_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 16) #7
  %call9.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls.i) #7
  %ctrl_handler.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 8
  %43 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ctrls.i, ptr %ctrl_handler.i, align 4
  %flags11.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %flags11.i, align 4
  %flags13.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 25, i32 1, i32 1, i32 4
  %45 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %flags13.i, align 4
  %ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 0, i32 11
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @preview_media_ops, ptr %ops.i, align 4
  %call14.i = tail call i32 @media_entity_pads_init(ptr noundef %isp_prev, i16 noundef zeroext 2, ptr noundef %pads1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i = icmp slt i32 %call14.i, 0
  br i1 %cmp.i, label %entry.error_handler_free.i_crit_edge, label %if.end.i

entry.error_handler_free.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #7
  %47 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 84)
  %49 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12298, ptr %code.i.i, align 4
  %51 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i = call i32 @preview_set_format(ptr noundef %isp_prev, ptr noundef null, ptr noundef nonnull %format.i.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #7
  %video_in.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7
  %type.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7, i32 1
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %type.i, align 8
  %ops17.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7, i32 20
  %54 = ptrtoint ptr %ops17.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @preview_video_ops, ptr %ops17.i, align 4
  %isp.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7, i32 5
  %55 = ptrtoint ptr %isp.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %isp, ptr %isp.i, align 4
  %capture_mem.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7, i32 6
  %56 = ptrtoint ptr %capture_mem.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 100663296, ptr %capture_mem.i, align 8
  %bpl_alignment.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7, i32 7
  %57 = ptrtoint ptr %bpl_alignment.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 64, ptr %bpl_alignment.i, align 4
  %type22.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8, i32 1
  %58 = ptrtoint ptr %type22.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type22.i, align 8
  %ops24.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8, i32 20
  %59 = ptrtoint ptr %ops24.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @preview_video_ops, ptr %ops24.i, align 4
  %isp29.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8, i32 5
  %60 = ptrtoint ptr %isp29.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %isp, ptr %isp29.i, align 4
  %capture_mem31.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8, i32 6
  %61 = ptrtoint ptr %capture_mem31.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 100663296, ptr %capture_mem31.i, align 8
  %bpl_alignment33.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8, i32 7
  %62 = ptrtoint ptr %bpl_alignment33.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 32, ptr %bpl_alignment33.i, align 4
  %call35.i = tail call i32 @omap3isp_video_init(ptr noundef %video_in.i, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end.i.error_handler_free.i_crit_edge, label %if.end38.i

if.end.i.error_handler_free.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free.i

if.end38.i:                                       ; preds = %if.end.i
  %video_out.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8
  %call40.i = tail call i32 @omap3isp_video_init(ptr noundef %video_out.i, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %error_video_out.i, label %if.end38.i.preview_init_entities.exit_crit_edge

if.end38.i.preview_init_entities.exit_crit_edge:  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_init_entities.exit

error_video_out.i:                                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap3isp_video_cleanup(ptr noundef %video_in.i) #7
  br label %error_handler_free.i

error_handler_free.i:                             ; preds = %error_video_out.i, %if.end.i.error_handler_free.i_crit_edge, %entry.error_handler_free.i_crit_edge
  %ret.1.i = phi i32 [ %call14.i, %entry.error_handler_free.i_crit_edge ], [ %call35.i, %if.end.i.error_handler_free.i_crit_edge ], [ %call40.i, %error_video_out.i ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls.i) #7
  br label %preview_init_entities.exit

preview_init_entities.exit:                       ; preds = %error_handler_free.i, %if.end38.i.preview_init_entities.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %error_handler_free.i ], [ 0, %if.end38.i.preview_init_entities.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_preview_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  %video_in = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7
  tail call void @omap3isp_video_cleanup(ptr noundef %video_in) #7
  %video_out = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8
  tail call void @omap3isp_video_cleanup(ptr noundef %video_out) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_luma_enhancement(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %luma = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 5
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4096) #7, !srcloc !194
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %luma, i32 0, i32 %i.06
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #7, !srcloc !194
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_luma_enhancement(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 32768
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -32769
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_invalaw(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 32
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -33
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_hmed(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hmed1 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 13
  %0 = ptrtoint ptr %hmed1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hmed1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %cond = select i1 %cmp, i32 0, i32 512
  %evendist = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %evendist to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %evendist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp4 = icmp eq i8 %3, 1
  %cond6 = select i1 %cmp4, i32 0, i32 256
  %or = or i32 %cond6, %cond
  %thres = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %thres to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %thres, align 1
  %conv7 = zext i8 %5 to i32
  %or8 = or i32 %or, %conv7
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or8) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_hmed(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 256
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -257
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_cfa(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 9
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params1, align 8
  %arrayidx = getelementptr [4 x [4 x i32]], ptr @preview_config_cfa.cfa_coef_order, i32 0, i32 %1
  %gradthrs_vert = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %gradthrs_vert to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gradthrs_vert, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %gradthrs_horz = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %gradthrs_horz to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gradthrs_horz, align 1
  %conv3 = zext i8 %5 to i32
  %or = or i32 %shl, %conv3
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #7, !srcloc !194
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 5120) #7, !srcloc !194
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 3, i32 3, i32 %11
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %entry
  %j.030 = phi i32 [ 0, %entry ], [ %inc, %for.body12.for.body12_crit_edge ]
  %arrayidx13 = getelementptr i32, ptr %arrayidx7, i32 %j.030
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %13) #7, !srcloc !194
  %inc = add nuw nsw i32 %j.030, 1
  %exitcond.not = icmp eq i32 %inc, 144
  br i1 %exitcond.not, label %for.end, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end:                                          ; preds = %for.body12
  %arrayidx6.1 = getelementptr i32, ptr %arrayidx, i32 1
  %16 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.1, align 4
  %arrayidx7.1 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 3, i32 3, i32 %17
  br label %for.body12.1

for.body12.1:                                     ; preds = %for.body12.1.for.body12.1_crit_edge, %for.end
  %j.030.1 = phi i32 [ 0, %for.end ], [ %inc.1, %for.body12.1.for.body12.1_crit_edge ]
  %arrayidx13.1 = getelementptr i32, ptr %arrayidx7.1, i32 %j.030.1
  %18 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.1, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i29.1 = getelementptr i8, ptr %21, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.1, i32 %19) #7, !srcloc !194
  %inc.1 = add nuw nsw i32 %j.030.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 144
  br i1 %exitcond.1.not, label %for.end.1, label %for.body12.1.for.body12.1_crit_edge

for.body12.1.for.body12.1_crit_edge:              ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.1

for.end.1:                                        ; preds = %for.body12.1
  %arrayidx6.2 = getelementptr i32, ptr %arrayidx, i32 2
  %22 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6.2, align 4
  %arrayidx7.2 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 3, i32 3, i32 %23
  br label %for.body12.2

for.body12.2:                                     ; preds = %for.body12.2.for.body12.2_crit_edge, %for.end.1
  %j.030.2 = phi i32 [ 0, %for.end.1 ], [ %inc.2, %for.body12.2.for.body12.2_crit_edge ]
  %arrayidx13.2 = getelementptr i32, ptr %arrayidx7.2, i32 %j.030.2
  %24 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13.2, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i29.2 = getelementptr i8, ptr %27, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.2, i32 %25) #7, !srcloc !194
  %inc.2 = add nuw nsw i32 %j.030.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 144
  br i1 %exitcond.2.not, label %for.end.2, label %for.body12.2.for.body12.2_crit_edge

for.body12.2.for.body12.2_crit_edge:              ; preds = %for.body12.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.2

for.end.2:                                        ; preds = %for.body12.2
  %arrayidx6.3 = getelementptr i32, ptr %arrayidx, i32 3
  %28 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.3, align 4
  %arrayidx7.3 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 3, i32 3, i32 %29
  br label %for.body12.3

for.body12.3:                                     ; preds = %for.body12.3.for.body12.3_crit_edge, %for.end.2
  %j.030.3 = phi i32 [ 0, %for.end.2 ], [ %inc.3, %for.body12.3.for.body12.3_crit_edge ]
  %arrayidx13.3 = getelementptr i32, ptr %arrayidx7.3, i32 %j.030.3
  %30 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx13.3, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i29.3 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.3, i32 %31) #7, !srcloc !194
  %inc.3 = add nuw nsw i32 %j.030.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 144
  br i1 %exitcond.3.not, label %for.end.3, label %for.body12.3.for.body12.3_crit_edge

for.body12.3.for.body12.3_crit_edge:              ; preds = %for.body12.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.3

for.end.3:                                        ; preds = %for.body12.3
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_chroma_suppression(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csup = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 4
  %0 = ptrtoint ptr %csup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %csup, align 1
  %conv = zext i8 %1 to i32
  %thres = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %thres to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %thres, align 1
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv1, 8
  %or = or i32 %shl, %conv
  %hypf_en = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %hypf_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hypf_en, align 1
  %conv2 = zext i8 %5 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or4 = or i32 %or, %shl3
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or4) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_chroma_suppression(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 65536
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -65537
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_whitebalance(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wbal1 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 9
  %0 = ptrtoint ptr %wbal1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wbal1, align 2
  %conv = zext i16 %1 to i32
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv) #7, !srcloc !194
  %coef0 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %coef0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %coef0, align 1
  %conv2 = zext i8 %5 to i32
  %coef1 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %coef1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coef1, align 2
  %conv3 = zext i8 %7 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %conv2
  %coef2 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %coef2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %coef2, align 1
  %conv5 = zext i8 %9 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %coef3 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %coef3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %coef3, align 2
  %conv8 = zext i8 %11 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or7, %shl9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %or10) #7, !srcloc !194
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 -297472444) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_blkadj(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blkadj1 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 10
  %blue = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %blue to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blue, align 1
  %conv = zext i8 %1 to i32
  %green = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %green to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %green, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %conv
  %4 = ptrtoint ptr %blkadj1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %blkadj1, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or6) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_rgb_blending(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rgb2rgb = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 11
  %0 = ptrtoint ptr %rgb2rgb to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rgb2rgb, align 2
  %2 = and i16 %1, 4095
  %and = zext i16 %2 to i32
  %arrayidx4 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx4, align 2
  %5 = and i16 %4, 4095
  %and6 = zext i16 %5 to i32
  %shl7 = shl nuw nsw i32 %and6, 16
  %or = or i32 %shl7, %and
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #7, !srcloc !194
  %arrayidx10 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx10, align 2
  %10 = and i16 %9, 4095
  %and12 = zext i16 %10 to i32
  %arrayidx15 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx15, align 2
  %13 = and i16 %12, 4095
  %and18 = zext i16 %13 to i32
  %shl19 = shl nuw nsw i32 %and18, 16
  %or20 = or i32 %shl19, %and12
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %or20) #7, !srcloc !194
  %arrayidx23 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx23, align 2
  %18 = and i16 %17, 4095
  %and25 = zext i16 %18 to i32
  %arrayidx29 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx29, align 2
  %21 = and i16 %20, 4095
  %and31 = zext i16 %21 to i32
  %shl32 = shl nuw nsw i32 %and31, 16
  %or33 = or i32 %shl32, %and25
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %or33) #7, !srcloc !194
  %arrayidx35 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx35, align 2
  %26 = and i16 %25, 4095
  %and38 = zext i16 %26 to i32
  %arrayidx42 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx42, align 2
  %29 = and i16 %28, 4095
  %and44 = zext i16 %29 to i32
  %shl45 = shl nuw nsw i32 %and44, 16
  %or46 = or i32 %shl45, %and38
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %31, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %or46) #7, !srcloc !194
  %arrayidx49 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx49, align 2
  %34 = and i16 %33, 4095
  %and51 = zext i16 %34 to i32
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %and51) #7, !srcloc !194
  %offset = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %offset, align 2
  %39 = and i16 %38, 1023
  %and55 = zext i16 %39 to i32
  %shl56 = shl nuw nsw i32 %and55, 16
  %arrayidx58 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx58, align 2
  %42 = and i16 %41, 1023
  %and60 = zext i16 %42 to i32
  %or62 = or i32 %shl56, %and60
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %44, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %or62) #7, !srcloc !194
  %arrayidx64 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 11, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx64, align 2
  %47 = and i16 %46, 1023
  %and66 = zext i16 %47 to i32
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %49, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %and66) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_csc(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csc1 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 12
  %0 = ptrtoint ptr %csc1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %csc1, align 2
  %2 = and i16 %1, 1023
  %and = zext i16 %2 to i32
  %arrayidx5 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx5, align 2
  %5 = and i16 %4, 1023
  %and7 = zext i16 %5 to i32
  %shl8 = shl nuw nsw i32 %and7, 10
  %or = or i32 %shl8, %and
  %arrayidx11 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx11, align 2
  %8 = and i16 %7, 1023
  %and13 = zext i16 %8 to i32
  %shl14 = shl nuw nsw i32 %and13, 20
  %or15 = or i32 %or, %shl14
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or15) #7, !srcloc !194
  %arrayidx17 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx17, align 2
  %13 = and i16 %12, 1023
  %and20 = zext i16 %13 to i32
  %arrayidx24 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx24, align 2
  %16 = and i16 %15, 1023
  %and26 = zext i16 %16 to i32
  %shl27 = shl nuw nsw i32 %and26, 10
  %or28 = or i32 %shl27, %and20
  %arrayidx31 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx31, align 2
  %19 = and i16 %18, 1023
  %and33 = zext i16 %19 to i32
  %shl34 = shl nuw nsw i32 %and33, 20
  %or35 = or i32 %or28, %shl34
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %21, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %or35) #7, !srcloc !194
  %arrayidx37 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx37, align 2
  %24 = and i16 %23, 1023
  %and40 = zext i16 %24 to i32
  %arrayidx44 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx44, align 2
  %27 = and i16 %26, 1023
  %and46 = zext i16 %27 to i32
  %shl47 = shl nuw nsw i32 %and46, 10
  %or48 = or i32 %shl47, %and40
  %arrayidx51 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx51, align 2
  %30 = and i16 %29, 1023
  %and53 = zext i16 %30 to i32
  %shl54 = shl nuw nsw i32 %and53, 20
  %or55 = or i32 %or48, %shl54
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %32, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %or55) #7, !srcloc !194
  %offset = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 12, i32 1
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %offset, align 2
  %35 = and i16 %34, 255
  %and58 = zext i16 %35 to i32
  %shl59 = shl nuw nsw i32 %and58, 16
  %arrayidx61 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx61, align 2
  %38 = shl i16 %37, 8
  %shl64 = zext i16 %38 to i32
  %or65 = or i32 %shl59, %shl64
  %arrayidx67 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 12, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx67, align 2
  %41 = and i16 %40, 255
  %and69 = zext i16 %41 to i32
  %or71 = or i32 %or65, %and69
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %43, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %or71) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_yc_range(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %yclimit = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 14
  %maxC = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %maxC to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %maxC, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %maxY = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %maxY to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %maxY, align 1
  %conv1 = zext i8 %3 to i32
  %shl2 = shl nuw i32 %conv1, 24
  %or = or i32 %shl2, %shl
  %4 = ptrtoint ptr %yclimit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %yclimit, align 1
  %conv3 = zext i8 %5 to i32
  %or5 = or i32 %or, %conv3
  %minY = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %minY to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minY, align 1
  %conv6 = zext i8 %7 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or5, %shl7
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or8) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_dcor(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dcor1 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 7
  %detect_correct = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %detect_correct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %detect_correct, align 4
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !194
  %arrayidx3 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 7, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %5) #7, !srcloc !194
  %arrayidx5 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 7, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %9) #7, !srcloc !194
  %arrayidx7 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 7, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %15, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %13) #7, !srcloc !194
  %16 = ptrtoint ptr %dcor1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dcor1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool.not, i32 0, i32 268435456
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !193
  %and.i = and i32 %20, -268435457
  %or.i = or i32 %and.i, %cond
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %or.i) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_dcor(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 134217728
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -134217729
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_drkframe_capture(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 128
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -129
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_drkframe(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 64
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -65
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_noisefilter(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nf1 = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 6
  %0 = ptrtoint ptr %nf1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nf1, align 4
  %conv = zext i8 %1 to i32
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv) #7, !srcloc !194
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 3072) #7, !srcloc !194
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prev_params, ptr %params, i32 0, i32 6, i32 1, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %7) #7, !srcloc !194
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_noisefilter(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 512
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -513
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_gammacorrn(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gamma = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 8
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !194
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [1024 x i32], ptr %gamma, i32 0, i32 %i.040
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %3) #7, !srcloc !194
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 1024) #7, !srcloc !194
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.end
  %i.141 = phi i32 [ 0, %for.end ], [ %inc6, %for.body3.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 8, i32 1, i32 %i.141
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %11, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %9) #7, !srcloc !194
  %inc6 = add nuw nsw i32 %i.141, 1
  %exitcond43.not = icmp eq i32 %inc6, 1024
  br i1 %exitcond43.not, label %for.end7, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end7:                                         ; preds = %for.body3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %13, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 2048) #7, !srcloc !194
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.end7
  %i.242 = phi i32 [ 0, %for.end7 ], [ %inc13, %for.body10.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.prev_params, ptr %params, i32 0, i32 8, i32 2, i32 %i.242
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %17, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %15) #7, !srcloc !194
  %inc13 = add nuw nsw i32 %i.242, 1
  %exitcond44.not = icmp eq i32 %inc13, 1024
  br i1 %exitcond44.not, label %for.end14, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.end14:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_enable_gammacorrn(ptr nocapture noundef readonly %prev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %2, -67108865
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %2, 67108864
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_contrast(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %contrast = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 15
  %0 = ptrtoint ptr %contrast to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %contrast, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !193
  %and.i = and i32 %4, -65281
  %or.i = or i32 %and.i, %shl
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %or.i) #7, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preview_config_brightness(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr inbounds %struct.prev_params, ptr %params, i32 0, i32 16
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %brightness, align 2
  %conv = zext i8 %1 to i32
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6088
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !193
  %and.i = and i32 %4, -256
  %or.i = or i32 %and.i, %conv
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %or.i) #7, !srcloc !194
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_buffer_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_pipeline_set_stream(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #7
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
  store i32 12298, ptr %code, align 4
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %height, align 4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @preview_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_ioctl(ptr nocapture noundef readonly %sd, i32 noundef %cmd, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1069787454, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1069787454
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %do.body2.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2.i:                                       ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  %active1.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %active1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active1.i.i, align 4
  %neg.i.i = xor i32 %7, -1
  %and.i.i = and i32 %5, %neg.i.i
  %params3.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %params3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params3.i.i, align 4
  %or.i.i = or i32 %9, %and.i.i
  store i32 %or.i.i, ptr %params3.i.i, align 4
  %and4.i.i = and i32 %7, %5
  %arrayidx17.sink50.i.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx17.sink50.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx17.sink50.i.i, align 4
  %or34.i.i = or i32 %11, %and4.i.i
  store i32 %or34.i.i, ptr %arrayidx17.sink50.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  %flag.i = getelementptr inbounds %struct.omap3isp_prev_update_config, ptr %arg, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body2.i
  %update.0136.i = phi i32 [ 0, %do.body2.i ], [ %update.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0132.i = phi i32 [ 0, %do.body2.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.0132.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.0132.i)
  %12 = icmp ult i32 %i.0132.i, 17
  br i1 %12, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 4
  %and.i = and i32 %14, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end20.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %15 = lshr i32 %7, %i.0132.i
  %16 = and i32 %15, 1
  %17 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flag.i, align 4
  %and27.i = and i32 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end20.i
  %arrayidx26.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 %16
  %config_offset.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.0132.i, i32 4
  %19 = ptrtoint ptr %config_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %config_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %arg, i32 %20
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %param_offset.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.0132.i, i32 2
  %23 = ptrtoint ptr %param_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %param_offset.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %arrayidx26.i, i32 %24
  %param_size.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.0132.i, i32 3
  %25 = ptrtoint ptr %param_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %param_size.i, align 4
  %tobool31.not.i = icmp eq ptr %add.ptr30.i, null
  %tobool32.not.i = icmp eq ptr %22, null
  %or.cond.i = select i1 %tobool31.not.i, i1 true, i1 %tobool32.not.i
  br i1 %or.cond.i, label %if.then29.i.cleanup.thread.i_crit_edge, label %land.lhs.true33.i

if.then29.i.cleanup.thread.i_crit_edge:           ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

land.lhs.true33.i:                                ; preds = %if.then29.i
  %27 = lshr i32 423938, %i.0132.i
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool34.not.not.i = icmp eq i32 %28, 0
  br i1 %tobool34.not.not.i, label %if.then.i.i.i.i, label %land.lhs.true33.i.cleanup.thread.i_crit_edge

land.lhs.true33.i.cleanup.thread.i_crit_edge:     ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true33.i
  tail call void @__check_object_size(ptr noundef nonnull %add.ptr30.i, i32 noundef %26, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %22, i32 %26, i32 -1226833920) #10, !srcloc !195
  %asmresult.i.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !196

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr30.i, i32 noundef %26) #7
  %30 = tail call i32 @llvm.read_register.i32(metadata !183) #7
  %and.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !197
  %and.i.i.i.i.i = and i32 %32, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %add.ptr30.i, ptr noundef nonnull %22, i32 noundef %26) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %26, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %26, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.cleanup.thread.i_crit_edge, label %if.then11.i.i.i, !prof !196

if.end.i.i.i.cleanup.thread.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = sub i32 %26, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr30.i, i32 %sub.i.i.i
  %33 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %do.body53.i

cleanup.thread.i:                                 ; preds = %if.end.i.i.i.cleanup.thread.i_crit_edge, %land.lhs.true33.i.cleanup.thread.i_crit_edge, %if.then29.i.cleanup.thread.i_crit_edge
  %features.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 %16, i32 2
  %34 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %features.i, align 4
  %or.i = or i32 %35, %shl.i
  store i32 %or.i, ptr %features.i, align 4
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = xor i32 %shl.i, -1
  %features43.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 %16, i32 2
  %36 = ptrtoint ptr %features43.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %features43.i, align 4
  %and44.i = and i32 %37, %neg.i
  store i32 %and44.i, ptr %features43.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %cleanup.thread.i
  %or46.i = or i32 %shl.i, %update.0136.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %update.1.i = phi i32 [ %or46.i, %if.end45.i ], [ %update.0136.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %update.0136.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0132.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %for.inc.i.do.body53.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.body53.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53.i

do.body53.i:                                      ; preds = %for.inc.i.do.body53.i_crit_edge, %if.then11.i.i.i
  %update.0127.i = phi i32 [ %update.0136.i, %if.then11.i.i.i ], [ %update.1.i, %for.inc.i.do.body53.i_crit_edge ]
  %rval.4.i = phi i32 [ -14, %if.then11.i.i.i ], [ 0, %for.inc.i.do.body53.i_crit_edge ]
  %call62.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %38 = ptrtoint ptr %active1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %active1.i.i, align 4
  %neg.i108.i = xor i32 %39, -1
  %and.i109.i = and i32 %update.0127.i, %neg.i108.i
  %update4.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %update4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %update4.i.i, align 4
  %or.i110.i = or i32 %41, %and.i109.i
  store i32 %or.i110.i, ptr %update4.i.i, align 4
  %and5.i.i = and i32 %39, %update.0127.i
  %update9.i.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 1, i32 1
  %42 = ptrtoint ptr %update9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %update9.i.i, align 4
  %or10.i.i = or i32 %43, %and5.i.i
  store i32 %or10.i.i, ptr %update9.i.i, align 4
  %44 = ptrtoint ptr %params3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %params3.i.i, align 4
  %and41.i.i = and i32 %45, %39
  store i32 %and41.i.i, ptr %params3.i.i, align 4
  %46 = ptrtoint ptr %arrayidx17.sink50.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx17.sink50.i.i, align 4
  %and46.i.i = and i32 %47, %neg.i108.i
  store i32 %and46.i.i, ptr %arrayidx17.sink50.i.i, align 4
  %and.i113.i = and i32 %or.i110.i, %neg.i108.i
  %and9.i.i = and i32 %or10.i.i, %39
  %or.i114.i = or i32 %and9.i.i, %and.i113.i
  %or17.i.i = or i32 %and46.i.i, %and41.i.i
  %neg18.i.i = xor i32 %or17.i.i, -1
  %and19.i.i = and i32 %or.i114.i, %neg18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %cmp.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %cmp.i.i, label %do.body53.i.preview_params_switch.exit.i_crit_edge, label %if.end.i.i

do.body53.i.preview_params_switch.exit.i_crit_edge: ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_params_switch.exit.i

if.end.i.i:                                       ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  %xor.i.i = xor i32 %and19.i.i, %39
  %48 = ptrtoint ptr %active1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %xor.i.i, ptr %active1.i.i, align 4
  %and9.not.i.i = xor i32 %and9.i.i, -1
  %neg26.i.i = or i32 %or17.i.i, %and9.not.i.i
  %and31.i.i = and i32 %neg26.i.i, %or.i110.i
  %49 = ptrtoint ptr %update4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and31.i.i, ptr %update4.i.i, align 4
  %and34.i.i = and i32 %xor.i.i, %and19.i.i
  %neg35.i.i = xor i32 %and34.i.i, -1
  %and40.i.i = and i32 %or10.i.i, %neg35.i.i
  %50 = ptrtoint ptr %update9.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and40.i.i, ptr %update9.i.i, align 4
  br label %preview_params_switch.exit.i

preview_params_switch.exit.i:                     ; preds = %if.end.i.i, %do.body53.i.preview_params_switch.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call62.i) #7
  br label %cleanup

cleanup:                                          ; preds = %preview_params_switch.exit.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup_crit_edge ], [ %rval.4.i, %preview_params_switch.exit.i ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_set_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -6904
  %dev5 = getelementptr i8, ptr %1, i32 -6120
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 8
  %state = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp6 = icmp eq i32 %enable, 0
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @omap3isp_subclk_enable(ptr noundef %add.ptr, i32 noundef 16) #7
  %lock.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %active1.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %active1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active1.i.i, align 4
  %params11.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1
  %update13.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %update13.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %update13.i.i, align 4
  %and14.i.i = and i32 %9, %7
  %update18.i.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %update18.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %update18.i.i, align 4
  %neg19.i.i = xor i32 %7, -1
  %and20.i.i = and i32 %11, %neg19.i.i
  %or21.i.i = or i32 %and20.i.i, %and14.i.i
  %12 = ptrtoint ptr %params11.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params11.i.i, align 4
  %or27.i.i = or i32 %13, %and14.i.i
  store i32 %or27.i.i, ptr %params11.i.i, align 4
  %arrayidx17.sink50.i.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx17.sink50.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17.sink50.i.i, align 4
  %or34.i.i = or i32 %15, %and20.i.i
  store i32 %or34.i.i, ptr %arrayidx17.sink50.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  %code.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code.i, align 4
  %call11.i = tail call ptr @omap3isp_video_format_info(i32 noundef %17) #7
  tail call fastcc void @preview_adjust_bandwidth(ptr noundef %1) #7
  %width.i.i = getelementptr inbounds %struct.isp_format_info, ptr %call11.i, i32 0, i32 5
  %18 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 8
  %arrayidx.i.i.i.i = getelementptr i8, ptr %1, i32 -6088
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i = or i32 %22, 16
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %or.i.i.i) #7, !srcloc !194
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i = and i32 %22, -17
  %25 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %and.i.i.i) #7, !srcloc !194
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %flavor.i.i = getelementptr inbounds %struct.isp_format_info, ptr %call11.i, i32 0, i32 3
  %27 = ptrtoint ptr %flavor.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flavor.i.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %28, label %sw.default.i.i [
    i32 12290, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i32 12308, label %sw.bb2.i.i
    i32 12289, label %sw.bb5.i.i
    i32 12307, label %sw.bb8.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i34.i.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i.i) #7, !srcloc !193
  %and.i35.i.i = and i32 %32, -1025
  %33 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i36.i.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i36.i.i, i32 %and.i35.i.i) #7, !srcloc !194
  br label %preview_config_input_format.exit.i

sw.epilog.i.i:                                    ; preds = %sw.bb8.i.i, %sw.bb5.i.i, %sw.bb2.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i32 [ 3, %sw.bb8.i.i ], [ 2, %sw.bb5.i.i ], [ 1, %sw.bb2.i.i ], [ 0, %if.end.i.i.sw.epilog.i.i_crit_edge ]
  %params9.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %params9.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i.i, ptr %params9.i.i, align 8
  %36 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i38.i.i = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38.i.i) #7, !srcloc !193
  %or.i39.i.i = or i32 %38, 1024
  %39 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i40.i.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i40.i.i, i32 %or.i39.i.i) #7, !srcloc !194
  %41 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i42.i.i = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42.i.i) #7, !srcloc !193
  %and.i43.i.i = and i32 %43, -30721
  %44 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i44.i.i = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i44.i.i, i32 %and.i43.i.i) #7, !srcloc !194
  %46 = ptrtoint ptr %active1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active1.i.i, align 4
  %and.i.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr %arrayidx17.sink50.i.i, ptr %params11.i.i
  tail call void @preview_config_cfa(ptr noundef %1, ptr noundef %cond.i.i) #7
  br label %preview_config_input_format.exit.i

preview_config_input_format.exit.i:               ; preds = %sw.epilog.i.i, %sw.default.i.i
  tail call fastcc void @preview_config_input_size(ptr noundef %1, i32 noundef %7) #7
  %input.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp12.i = icmp eq i32 %49, 1
  br i1 %cmp12.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %preview_config_input_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !194
  br label %if.end.i

if.else.i:                                        ; preds = %preview_config_input_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %formats.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %formats.i, align 4
  %add.i = add i32 %53, 31
  %and.i = and i32 %add.i, 65504
  %bpp.i = getelementptr inbounds %struct.isp_format_info, ptr %call11.i, i32 0, i32 6
  %54 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bpp.i, align 4
  %mul.i = mul i32 %and.i, %55
  %and.i85.i = and i32 %mul.i, 65504
  %56 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i87.i = getelementptr i8, ptr %57, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87.i, i32 %and.i85.i) #7, !srcloc !194
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21.i.i)
  %cmp.i88.i = icmp eq i32 %or21.i.i, 0
  br i1 %cmp.i88.i, label %if.end.i.preview_setup_hw.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.preview_setup_hw.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_setup_hw.exit.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.048.i.i
  %shl.i.i = shl nuw nsw i32 1, %i.048.i.i
  %and.i89.i = and i32 %shl.i.i, %or21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.i)
  %tobool.not.i90.i = icmp eq i32 %and.i89.i, 0
  br i1 %tobool.not.i90.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end3.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i
  %58 = lshr i32 %neg19.i.i, %i.048.i.i
  %59 = and i32 %58, 1
  %arrayidx8.i.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 %59
  %features.i.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 9, i32 1, i32 %59, i32 2
  %60 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %features.i.i, align 4
  %and9.i.i = and i32 %61, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else.i91.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end3.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %63, null
  br i1 %tobool12.not.i.i, label %if.then11.i.i.if.end15.i.i_crit_edge, label %if.then13.i.i

if.then11.i.i.if.end15.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %63(ptr noundef %1, ptr noundef %arrayidx8.i.i) #7
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %if.then11.i.i.if.end15.i.i_crit_edge
  %64 = lshr i32 396264, %i.048.i.i
  %65 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool16.not.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool16.not.not.i.i, label %if.end15.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end15.i.i.cleanup.i.i_crit_edge

if.end15.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.end15.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.else.i91.i:                                    ; preds = %if.end3.i.i
  %66 = lshr i32 396264, %i.048.i.i
  %67 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool21.not.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool21.not.not.i.i, label %if.else.i91.i.cleanup.sink.split.i.i_crit_edge, label %if.else.i91.i.cleanup.i.i_crit_edge

if.else.i91.i.cleanup.i.i_crit_edge:              ; preds = %if.else.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.else.i91.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.else.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else.i91.i.cleanup.sink.split.i.i_crit_edge, %if.end15.i.i.cleanup.sink.split.i.i_crit_edge
  %68 = xor i1 %tobool10.not.i.i, true
  %enable.i.i = getelementptr [19 x %struct.preview_update], ptr @update_attrs, i32 0, i32 %i.048.i.i, i32 1
  %69 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %enable.i.i, align 4
  tail call void %70(ptr noundef %1, i1 noundef zeroext %68) #7
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.sink.split.i.i, %if.else.i91.i.cleanup.i.i_crit_edge, %if.end15.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.048.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 19
  br i1 %exitcond.not.i.i, label %cleanup.i.i.preview_setup_hw.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

cleanup.i.i.preview_setup_hw.exit.i_crit_edge:    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_setup_hw.exit.i

preview_setup_hw.exit.i:                          ; preds = %cleanup.i.i.preview_setup_hw.exit.i_crit_edge, %if.end.i.preview_setup_hw.exit.i_crit_edge
  %arrayidx15.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 1
  %output.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 6
  %71 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %output.i, align 8
  %and16.i = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  %73 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i95.i = getelementptr i8, ptr %74, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95.i) #7
  br i1 %tobool.not.i, label %if.else18.i, label %if.then17.i

if.then17.i:                                      ; preds = %preview_setup_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %75, 1048576
  %76 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #7, !srcloc !194
  br label %if.end19.i

if.else18.i:                                      ; preds = %preview_setup_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i96.i = and i32 %75, -1048577
  %78 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %and.i96.i) #7, !srcloc !194
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else18.i, %if.then17.i
  %80 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %output.i, align 8
  %and21.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %82 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i102.i = getelementptr i8, ptr %83, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i102.i) #7
  br i1 %tobool22.not.i, label %if.else24.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i99.i = or i32 %84, 524288
  %85 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i100.i = getelementptr i8, ptr %86, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i100.i, i32 %or.i99.i) #7, !srcloc !194
  br label %if.end25.i

if.else24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i103.i = and i32 %84, -524289
  %87 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i104.i = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i104.i, i32 %and.i103.i) #7, !srcloc !194
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else24.i, %if.then23.i
  %89 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %output.i, align 8
  %and27.i = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end34.i_crit_edge, label %if.then29.i

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx15.i, align 4
  %add31.i = shl i32 %92, 1
  %and32.i = add i32 %add31.i, 30
  %and.i105.i = and i32 %and32.i, 65504
  %93 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i107.i = getelementptr i8, ptr %94, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i107.i, i32 %and.i105.i) #7, !srcloc !194
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.end25.i.if.end34.i_crit_edge
  %95 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i109.i = getelementptr i8, ptr %96, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109.i, i32 20) #7, !srcloc !194
  %code35.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 1, i32 2
  %97 = ptrtoint ptr %code35.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %code35.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %98, label %if.end34.i.preview_configure.exit_crit_edge [
    i32 8209, label %if.end34.i.sw.epilog.i115.i_crit_edge
    i32 8207, label %sw.bb1.i.i
  ]

if.end34.i.sw.epilog.i115.i_crit_edge:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i115.i

if.end34.i.preview_configure.exit_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_configure.exit

sw.bb1.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i115.i

sw.epilog.i115.i:                                 ; preds = %sw.bb1.i.i, %if.end34.i.sw.epilog.i115.i_crit_edge
  %mode.0.i.i = phi i32 [ 0, %sw.bb1.i.i ], [ 393216, %if.end34.i.sw.epilog.i115.i_crit_edge ]
  %100 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i111.i = getelementptr i8, ptr %101, i32 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i111.i) #7, !srcloc !193
  %and.i.i112.i = and i32 %102, -393217
  %or.i.i113.i = or i32 %and.i.i112.i, %mode.0.i.i
  %103 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i.i114.i = getelementptr i8, ptr %104, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i114.i, i32 %or.i.i113.i) #7, !srcloc !194
  br label %preview_configure.exit

preview_configure.exit:                           ; preds = %sw.epilog.i115.i, %if.end34.i.preview_configure.exit_crit_edge
  %call46.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %105 = ptrtoint ptr %active1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %active1.i.i, align 4
  %and21.i.i = and i32 %106, %or21.i.i
  %neg22.i.i = xor i32 %and21.i.i, -1
  %107 = ptrtoint ptr %update13.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %update13.i.i, align 4
  %and27.i.i = and i32 %108, %neg22.i.i
  store i32 %and27.i.i, ptr %update13.i.i, align 4
  %neg28.i.i = xor i32 %106, -1
  %update.not.i.i = xor i32 %or21.i.i, -1
  %neg30.i.i = or i32 %106, %update.not.i.i
  %109 = ptrtoint ptr %update18.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %update18.i.i, align 4
  %and35.i.i = and i32 %110, %neg30.i.i
  store i32 %and35.i.i, ptr %update18.i.i, align 4
  %111 = ptrtoint ptr %params11.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %params11.i.i, align 4
  %and41.i.i = and i32 %112, %neg28.i.i
  store i32 %and41.i.i, ptr %params11.i.i, align 4
  %113 = ptrtoint ptr %arrayidx17.sink50.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx17.sink50.i.i, align 4
  %and46.i.i = and i32 %114, %106
  store i32 %and46.i.i, ptr %arrayidx17.sink50.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call46.i) #7
  %stopping = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #7
  %115 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %stopping, align 4
  tail call fastcc void @preview_print_status(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %preview_configure.exit, %entry.if.end8_crit_edge
  %116 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %enable, label %if.end8.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 0, label %sw.bb29
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  %output = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 6
  %117 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %output, align 8
  %and = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end10_crit_edge, label %if.then9

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 128) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb.if.end10_crit_edge
  %dmaqueue_flags = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 8, i32 19
  %119 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dmaqueue_flags, align 8
  %and11 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end10.if.then16_crit_edge

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end10
  %121 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %output, align 8
  %and14 = and i32 %122, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  %input.i76 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %123 = ptrtoint ptr %input.i76 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %input.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp.i = icmp eq i32 %124, 2
  br i1 %cmp.i, label %if.then.i80, label %if.then16.preview_enable_oneshot.exit_crit_edge

if.then16.preview_enable_oneshot.exit_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_enable_oneshot.exit

if.then.i80:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 -6088
  %125 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i77 = getelementptr i8, ptr %126, i32 4
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i77) #7, !srcloc !193
  %or.i.i78 = or i32 %127, 4
  %128 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i79 = getelementptr i8, ptr %129, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i79, i32 %or.i.i78) #7, !srcloc !194
  br label %preview_enable_oneshot.exit

preview_enable_oneshot.exit:                      ; preds = %if.then.i80, %if.then16.preview_enable_oneshot.exit_crit_edge
  %arrayidx.i.i3.i = getelementptr i8, ptr %1, i32 -6088
  %130 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %131, i32 4
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #7, !srcloc !193
  %or.i5.i = or i32 %132, 9
  %133 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i3.i, align 4
  %add.ptr.i2.i6.i = getelementptr i8, ptr %134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i6.i, i32 %or.i5.i) #7, !srcloc !194
  br label %if.end17

if.end17:                                         ; preds = %preview_enable_oneshot.exit, %lor.lhs.false.if.end17_crit_edge
  %135 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end8
  %input = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %136 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %137)
  %cmp21 = icmp eq i32 %137, 2
  br i1 %cmp21, label %if.then22, label %sw.bb20.if.end23_crit_edge

sw.bb20.if.end23_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 64) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %sw.bb20.if.end23_crit_edge
  %output24 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 6
  %138 = ptrtoint ptr %output24 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %output24, align 8
  %and25 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end28_crit_edge, label %if.then27

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 128) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23.if.end28_crit_edge
  %140 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %141)
  %cmp.i83 = icmp eq i32 %141, 2
  br i1 %cmp.i83, label %if.then.i88, label %if.end28.preview_enable_oneshot.exit94_crit_edge

if.end28.preview_enable_oneshot.exit94_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_enable_oneshot.exit94

if.then.i88:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i84 = getelementptr i8, ptr %1, i32 -6088
  %142 = ptrtoint ptr %arrayidx.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i.i.i84, align 4
  %add.ptr.i.i.i85 = getelementptr i8, ptr %143, i32 4
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i85) #7, !srcloc !193
  %or.i.i86 = or i32 %144, 4
  %145 = ptrtoint ptr %arrayidx.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i.i.i84, align 4
  %add.ptr.i2.i.i87 = getelementptr i8, ptr %146, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i87, i32 %or.i.i86) #7, !srcloc !194
  br label %preview_enable_oneshot.exit94

preview_enable_oneshot.exit94:                    ; preds = %if.then.i88, %if.end28.preview_enable_oneshot.exit94_crit_edge
  %arrayidx.i.i3.i89 = getelementptr i8, ptr %1, i32 -6088
  %147 = ptrtoint ptr %arrayidx.i.i3.i89 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i3.i89, align 4
  %add.ptr.i.i4.i90 = getelementptr i8, ptr %148, i32 4
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i90) #7, !srcloc !193
  %or.i5.i91 = or i32 %149, 9
  %150 = ptrtoint ptr %arrayidx.i.i3.i89 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i3.i89, align 4
  %add.ptr.i2.i6.i92 = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i6.i92, i32 %or.i5.i91) #7, !srcloc !194
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end8
  %wait = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 11
  %stopping30 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 12
  %call31 = tail call i32 @omap3isp_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %sw.bb29.if.end42_crit_edge, label %do.body

sw.bb29.if.end42_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_set_stream.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_set_stream, %if.end42)) #7
          to label %if.then40 [label %if.end42], !srcloc !200

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_set_stream.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %name) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %do.body, %sw.bb29.if.end42_crit_edge
  tail call void @omap3isp_sbl_disable(ptr noundef %add.ptr, i32 noundef 64) #7
  tail call void @omap3isp_sbl_disable(ptr noundef %add.ptr, i32 noundef 128) #7
  tail call void @omap3isp_subclk_disable(ptr noundef %add.ptr, i32 noundef 16) #7
  %dmaqueue_flags44 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 8, i32 19
  %152 = ptrtoint ptr %dmaqueue_flags44 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %dmaqueue_flags44, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end42, %preview_enable_oneshot.exit94, %if.end17, %if.end8.sw.epilog_crit_edge
  %153 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %enable, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @preview_print_status(ptr noundef readonly %prev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %prev, i32 -6120
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.15) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body25)) #7
          to label %if.then19 [label %do.body25], !srcloc !200

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr i8, ptr %prev, i32 -6120
  %2 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev20, align 8
  %arrayidx.i = getelementptr i8, ptr %prev, i32 -6088
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %6) #7
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body45)) #7
          to label %if.then39 [label %do.body45], !srcloc !200

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %dev40 = getelementptr i8, ptr %prev, i32 -6120
  %7 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev40, align 8
  %arrayidx.i928 = getelementptr i8, ptr %prev, i32 -6088
  %9 = ptrtoint ptr %arrayidx.i928 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i928, align 4
  %add.ptr.i929 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i929) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug303, ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef %11) #7
  br label %do.body45

do.body45:                                        ; preds = %if.then39, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body65)) #7
          to label %if.then59 [label %do.body65], !srcloc !200

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %dev60 = getelementptr i8, ptr %prev, i32 -6120
  %12 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev60, align 8
  %arrayidx.i930 = getelementptr i8, ptr %prev, i32 -6088
  %14 = ptrtoint ptr %arrayidx.i930 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i930, align 4
  %add.ptr.i931 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i931) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug304, ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %16) #7
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body85)) #7
          to label %if.then79 [label %do.body85], !srcloc !200

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %dev80 = getelementptr i8, ptr %prev, i32 -6120
  %17 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev80, align 8
  %arrayidx.i932 = getelementptr i8, ptr %prev, i32 -6088
  %19 = ptrtoint ptr %arrayidx.i932 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i932, align 4
  %add.ptr.i933 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i933) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug305, ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef %21) #7
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body105)) #7
          to label %if.then99 [label %do.body105], !srcloc !200

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %dev100 = getelementptr i8, ptr %prev, i32 -6120
  %22 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev100, align 8
  %arrayidx.i934 = getelementptr i8, ptr %prev, i32 -6088
  %24 = ptrtoint ptr %arrayidx.i934 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i934, align 4
  %add.ptr.i935 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i935) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug306, ptr noundef %23, ptr noundef nonnull @.str.20, i32 noundef %26) #7
  br label %do.body105

do.body105:                                       ; preds = %if.then99, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body125)) #7
          to label %if.then119 [label %do.body125], !srcloc !200

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  %dev120 = getelementptr i8, ptr %prev, i32 -6120
  %27 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev120, align 8
  %arrayidx.i936 = getelementptr i8, ptr %prev, i32 -6088
  %29 = ptrtoint ptr %arrayidx.i936 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i936, align 4
  %add.ptr.i937 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i937) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug307, ptr noundef %28, ptr noundef nonnull @.str.21, i32 noundef %31) #7
  br label %do.body125

do.body125:                                       ; preds = %if.then119, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body145)) #7
          to label %if.then139 [label %do.body145], !srcloc !200

if.then139:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  %dev140 = getelementptr i8, ptr %prev, i32 -6120
  %32 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev140, align 8
  %arrayidx.i938 = getelementptr i8, ptr %prev, i32 -6088
  %34 = ptrtoint ptr %arrayidx.i938 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i938, align 4
  %add.ptr.i939 = getelementptr i8, ptr %35, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i939) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug308, ptr noundef %33, ptr noundef nonnull @.str.22, i32 noundef %36) #7
  br label %do.body145

do.body145:                                       ; preds = %if.then139, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body165)) #7
          to label %if.then159 [label %do.body165], !srcloc !200

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  %dev160 = getelementptr i8, ptr %prev, i32 -6120
  %37 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev160, align 8
  %arrayidx.i940 = getelementptr i8, ptr %prev, i32 -6088
  %39 = ptrtoint ptr %arrayidx.i940 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i940, align 4
  %add.ptr.i941 = getelementptr i8, ptr %40, i32 32
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i941) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug309, ptr noundef %38, ptr noundef nonnull @.str.23, i32 noundef %41) #7
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body185)) #7
          to label %if.then179 [label %do.body185], !srcloc !200

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #9
  %dev180 = getelementptr i8, ptr %prev, i32 -6120
  %42 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev180, align 8
  %arrayidx.i942 = getelementptr i8, ptr %prev, i32 -6088
  %44 = ptrtoint ptr %arrayidx.i942 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i942, align 4
  %add.ptr.i943 = getelementptr i8, ptr %45, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i943) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug310, ptr noundef %43, ptr noundef nonnull @.str.24, i32 noundef %46) #7
  br label %do.body185

do.body185:                                       ; preds = %if.then179, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body205)) #7
          to label %if.then199 [label %do.body205], !srcloc !200

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #9
  %dev200 = getelementptr i8, ptr %prev, i32 -6120
  %47 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev200, align 8
  %arrayidx.i944 = getelementptr i8, ptr %prev, i32 -6088
  %49 = ptrtoint ptr %arrayidx.i944 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i944, align 4
  %add.ptr.i945 = getelementptr i8, ptr %50, i32 40
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i945) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug311, ptr noundef %48, ptr noundef nonnull @.str.25, i32 noundef %51) #7
  br label %do.body205

do.body205:                                       ; preds = %if.then199, %do.body185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body225)) #7
          to label %if.then219 [label %do.body225], !srcloc !200

if.then219:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #9
  %dev220 = getelementptr i8, ptr %prev, i32 -6120
  %52 = ptrtoint ptr %dev220 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev220, align 8
  %arrayidx.i946 = getelementptr i8, ptr %prev, i32 -6088
  %54 = ptrtoint ptr %arrayidx.i946 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i946, align 4
  %add.ptr.i947 = getelementptr i8, ptr %55, i32 44
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i947) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug312, ptr noundef %53, ptr noundef nonnull @.str.26, i32 noundef %56) #7
  br label %do.body225

do.body225:                                       ; preds = %if.then219, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body245)) #7
          to label %if.then239 [label %do.body245], !srcloc !200

if.then239:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #9
  %dev240 = getelementptr i8, ptr %prev, i32 -6120
  %57 = ptrtoint ptr %dev240 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev240, align 8
  %arrayidx.i948 = getelementptr i8, ptr %prev, i32 -6088
  %59 = ptrtoint ptr %arrayidx.i948 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i948, align 4
  %add.ptr.i949 = getelementptr i8, ptr %60, i32 48
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i949) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug313, ptr noundef %58, ptr noundef nonnull @.str.27, i32 noundef %61) #7
  br label %do.body245

do.body245:                                       ; preds = %if.then239, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body265)) #7
          to label %if.then259 [label %do.body265], !srcloc !200

if.then259:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #9
  %dev260 = getelementptr i8, ptr %prev, i32 -6120
  %62 = ptrtoint ptr %dev260 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev260, align 8
  %arrayidx.i950 = getelementptr i8, ptr %prev, i32 -6088
  %64 = ptrtoint ptr %arrayidx.i950 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i950, align 4
  %add.ptr.i951 = getelementptr i8, ptr %65, i32 52
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i951) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug314, ptr noundef %63, ptr noundef nonnull @.str.28, i32 noundef %66) #7
  br label %do.body265

do.body265:                                       ; preds = %if.then259, %do.body245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body285)) #7
          to label %if.then279 [label %do.body285], !srcloc !200

if.then279:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #9
  %dev280 = getelementptr i8, ptr %prev, i32 -6120
  %67 = ptrtoint ptr %dev280 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev280, align 8
  %arrayidx.i952 = getelementptr i8, ptr %prev, i32 -6088
  %69 = ptrtoint ptr %arrayidx.i952 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i952, align 4
  %add.ptr.i953 = getelementptr i8, ptr %70, i32 56
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i953) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug315, ptr noundef %68, ptr noundef nonnull @.str.29, i32 noundef %71) #7
  br label %do.body285

do.body285:                                       ; preds = %if.then279, %do.body265
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body305)) #7
          to label %if.then299 [label %do.body305], !srcloc !200

if.then299:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #9
  %dev300 = getelementptr i8, ptr %prev, i32 -6120
  %72 = ptrtoint ptr %dev300 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev300, align 8
  %arrayidx.i954 = getelementptr i8, ptr %prev, i32 -6088
  %74 = ptrtoint ptr %arrayidx.i954 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i954, align 4
  %add.ptr.i955 = getelementptr i8, ptr %75, i32 60
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i955) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug316, ptr noundef %73, ptr noundef nonnull @.str.30, i32 noundef %76) #7
  br label %do.body305

do.body305:                                       ; preds = %if.then299, %do.body285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body325)) #7
          to label %if.then319 [label %do.body325], !srcloc !200

if.then319:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #9
  %dev320 = getelementptr i8, ptr %prev, i32 -6120
  %77 = ptrtoint ptr %dev320 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev320, align 8
  %arrayidx.i956 = getelementptr i8, ptr %prev, i32 -6088
  %79 = ptrtoint ptr %arrayidx.i956 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i956, align 4
  %add.ptr.i957 = getelementptr i8, ptr %80, i32 64
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i957) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug317, ptr noundef %78, ptr noundef nonnull @.str.31, i32 noundef %81) #7
  br label %do.body325

do.body325:                                       ; preds = %if.then319, %do.body305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body345)) #7
          to label %if.then339 [label %do.body345], !srcloc !200

if.then339:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #9
  %dev340 = getelementptr i8, ptr %prev, i32 -6120
  %82 = ptrtoint ptr %dev340 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev340, align 8
  %arrayidx.i958 = getelementptr i8, ptr %prev, i32 -6088
  %84 = ptrtoint ptr %arrayidx.i958 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i958, align 4
  %add.ptr.i959 = getelementptr i8, ptr %85, i32 68
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i959) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug318, ptr noundef %83, ptr noundef nonnull @.str.32, i32 noundef %86) #7
  br label %do.body345

do.body345:                                       ; preds = %if.then339, %do.body325
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body365)) #7
          to label %if.then359 [label %do.body365], !srcloc !200

if.then359:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #9
  %dev360 = getelementptr i8, ptr %prev, i32 -6120
  %87 = ptrtoint ptr %dev360 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev360, align 8
  %arrayidx.i960 = getelementptr i8, ptr %prev, i32 -6088
  %89 = ptrtoint ptr %arrayidx.i960 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i960, align 4
  %add.ptr.i961 = getelementptr i8, ptr %90, i32 72
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i961) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug319, ptr noundef %88, ptr noundef nonnull @.str.33, i32 noundef %91) #7
  br label %do.body365

do.body365:                                       ; preds = %if.then359, %do.body345
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body385)) #7
          to label %if.then379 [label %do.body385], !srcloc !200

if.then379:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #9
  %dev380 = getelementptr i8, ptr %prev, i32 -6120
  %92 = ptrtoint ptr %dev380 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev380, align 8
  %arrayidx.i962 = getelementptr i8, ptr %prev, i32 -6088
  %94 = ptrtoint ptr %arrayidx.i962 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i962, align 4
  %add.ptr.i963 = getelementptr i8, ptr %95, i32 76
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i963) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug320, ptr noundef %93, ptr noundef nonnull @.str.34, i32 noundef %96) #7
  br label %do.body385

do.body385:                                       ; preds = %if.then379, %do.body365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body405)) #7
          to label %if.then399 [label %do.body405], !srcloc !200

if.then399:                                       ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #9
  %dev400 = getelementptr i8, ptr %prev, i32 -6120
  %97 = ptrtoint ptr %dev400 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev400, align 8
  %arrayidx.i964 = getelementptr i8, ptr %prev, i32 -6088
  %99 = ptrtoint ptr %arrayidx.i964 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i964, align 4
  %add.ptr.i965 = getelementptr i8, ptr %100, i32 80
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i965) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug321, ptr noundef %98, ptr noundef nonnull @.str.35, i32 noundef %101) #7
  br label %do.body405

do.body405:                                       ; preds = %if.then399, %do.body385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body425)) #7
          to label %if.then419 [label %do.body425], !srcloc !200

if.then419:                                       ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #9
  %dev420 = getelementptr i8, ptr %prev, i32 -6120
  %102 = ptrtoint ptr %dev420 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev420, align 8
  %arrayidx.i966 = getelementptr i8, ptr %prev, i32 -6088
  %104 = ptrtoint ptr %arrayidx.i966 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i966, align 4
  %add.ptr.i967 = getelementptr i8, ptr %105, i32 84
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i967) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug322, ptr noundef %103, ptr noundef nonnull @.str.36, i32 noundef %106) #7
  br label %do.body425

do.body425:                                       ; preds = %if.then419, %do.body405
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body445)) #7
          to label %if.then439 [label %do.body445], !srcloc !200

if.then439:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #9
  %dev440 = getelementptr i8, ptr %prev, i32 -6120
  %107 = ptrtoint ptr %dev440 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev440, align 8
  %arrayidx.i968 = getelementptr i8, ptr %prev, i32 -6088
  %109 = ptrtoint ptr %arrayidx.i968 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i968, align 4
  %add.ptr.i969 = getelementptr i8, ptr %110, i32 88
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i969) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug323, ptr noundef %108, ptr noundef nonnull @.str.37, i32 noundef %111) #7
  br label %do.body445

do.body445:                                       ; preds = %if.then439, %do.body425
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body465)) #7
          to label %if.then459 [label %do.body465], !srcloc !200

if.then459:                                       ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #9
  %dev460 = getelementptr i8, ptr %prev, i32 -6120
  %112 = ptrtoint ptr %dev460 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev460, align 8
  %arrayidx.i970 = getelementptr i8, ptr %prev, i32 -6088
  %114 = ptrtoint ptr %arrayidx.i970 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i970, align 4
  %add.ptr.i971 = getelementptr i8, ptr %115, i32 92
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i971) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug324, ptr noundef %113, ptr noundef nonnull @.str.38, i32 noundef %116) #7
  br label %do.body465

do.body465:                                       ; preds = %if.then459, %do.body445
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body485)) #7
          to label %if.then479 [label %do.body485], !srcloc !200

if.then479:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #9
  %dev480 = getelementptr i8, ptr %prev, i32 -6120
  %117 = ptrtoint ptr %dev480 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev480, align 8
  %arrayidx.i972 = getelementptr i8, ptr %prev, i32 -6088
  %119 = ptrtoint ptr %arrayidx.i972 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i972, align 4
  %add.ptr.i973 = getelementptr i8, ptr %120, i32 96
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i973) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug325, ptr noundef %118, ptr noundef nonnull @.str.39, i32 noundef %121) #7
  br label %do.body485

do.body485:                                       ; preds = %if.then479, %do.body465
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body505)) #7
          to label %if.then499 [label %do.body505], !srcloc !200

if.then499:                                       ; preds = %do.body485
  call void @__sanitizer_cov_trace_pc() #9
  %dev500 = getelementptr i8, ptr %prev, i32 -6120
  %122 = ptrtoint ptr %dev500 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev500, align 8
  %arrayidx.i974 = getelementptr i8, ptr %prev, i32 -6088
  %124 = ptrtoint ptr %arrayidx.i974 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i974, align 4
  %add.ptr.i975 = getelementptr i8, ptr %125, i32 100
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i975) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug326, ptr noundef %123, ptr noundef nonnull @.str.40, i32 noundef %126) #7
  br label %do.body505

do.body505:                                       ; preds = %if.then499, %do.body485
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body525)) #7
          to label %if.then519 [label %do.body525], !srcloc !200

if.then519:                                       ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #9
  %dev520 = getelementptr i8, ptr %prev, i32 -6120
  %127 = ptrtoint ptr %dev520 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev520, align 8
  %arrayidx.i976 = getelementptr i8, ptr %prev, i32 -6088
  %129 = ptrtoint ptr %arrayidx.i976 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i976, align 4
  %add.ptr.i977 = getelementptr i8, ptr %130, i32 104
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i977) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug327, ptr noundef %128, ptr noundef nonnull @.str.41, i32 noundef %131) #7
  br label %do.body525

do.body525:                                       ; preds = %if.then519, %do.body505
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body545)) #7
          to label %if.then539 [label %do.body545], !srcloc !200

if.then539:                                       ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #9
  %dev540 = getelementptr i8, ptr %prev, i32 -6120
  %132 = ptrtoint ptr %dev540 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev540, align 8
  %arrayidx.i978 = getelementptr i8, ptr %prev, i32 -6088
  %134 = ptrtoint ptr %arrayidx.i978 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i978, align 4
  %add.ptr.i979 = getelementptr i8, ptr %135, i32 108
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i979) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug328, ptr noundef %133, ptr noundef nonnull @.str.42, i32 noundef %136) #7
  br label %do.body545

do.body545:                                       ; preds = %if.then539, %do.body525
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body565)) #7
          to label %if.then559 [label %do.body565], !srcloc !200

if.then559:                                       ; preds = %do.body545
  call void @__sanitizer_cov_trace_pc() #9
  %dev560 = getelementptr i8, ptr %prev, i32 -6120
  %137 = ptrtoint ptr %dev560 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev560, align 8
  %arrayidx.i980 = getelementptr i8, ptr %prev, i32 -6088
  %139 = ptrtoint ptr %arrayidx.i980 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i980, align 4
  %add.ptr.i981 = getelementptr i8, ptr %140, i32 112
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i981) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug329, ptr noundef %138, ptr noundef nonnull @.str.43, i32 noundef %141) #7
  br label %do.body565

do.body565:                                       ; preds = %if.then559, %do.body545
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body585)) #7
          to label %if.then579 [label %do.body585], !srcloc !200

if.then579:                                       ; preds = %do.body565
  call void @__sanitizer_cov_trace_pc() #9
  %dev580 = getelementptr i8, ptr %prev, i32 -6120
  %142 = ptrtoint ptr %dev580 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev580, align 8
  %arrayidx.i982 = getelementptr i8, ptr %prev, i32 -6088
  %144 = ptrtoint ptr %arrayidx.i982 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i982, align 4
  %add.ptr.i983 = getelementptr i8, ptr %145, i32 116
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i983) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug330, ptr noundef %143, ptr noundef nonnull @.str.44, i32 noundef %146) #7
  br label %do.body585

do.body585:                                       ; preds = %if.then579, %do.body565
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body605)) #7
          to label %if.then599 [label %do.body605], !srcloc !200

if.then599:                                       ; preds = %do.body585
  call void @__sanitizer_cov_trace_pc() #9
  %dev600 = getelementptr i8, ptr %prev, i32 -6120
  %147 = ptrtoint ptr %dev600 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev600, align 8
  %arrayidx.i984 = getelementptr i8, ptr %prev, i32 -6088
  %149 = ptrtoint ptr %arrayidx.i984 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i984, align 4
  %add.ptr.i985 = getelementptr i8, ptr %150, i32 120
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i985) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug331, ptr noundef %148, ptr noundef nonnull @.str.45, i32 noundef %151) #7
  br label %do.body605

do.body605:                                       ; preds = %if.then599, %do.body585
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body625)) #7
          to label %if.then619 [label %do.body625], !srcloc !200

if.then619:                                       ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #9
  %dev620 = getelementptr i8, ptr %prev, i32 -6120
  %152 = ptrtoint ptr %dev620 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev620, align 8
  %arrayidx.i986 = getelementptr i8, ptr %prev, i32 -6088
  %154 = ptrtoint ptr %arrayidx.i986 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i986, align 4
  %add.ptr.i987 = getelementptr i8, ptr %155, i32 124
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i987) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug332, ptr noundef %153, ptr noundef nonnull @.str.46, i32 noundef %156) #7
  br label %do.body625

do.body625:                                       ; preds = %if.then619, %do.body605
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body645)) #7
          to label %if.then639 [label %do.body645], !srcloc !200

if.then639:                                       ; preds = %do.body625
  call void @__sanitizer_cov_trace_pc() #9
  %dev640 = getelementptr i8, ptr %prev, i32 -6120
  %157 = ptrtoint ptr %dev640 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev640, align 8
  %arrayidx.i988 = getelementptr i8, ptr %prev, i32 -6088
  %159 = ptrtoint ptr %arrayidx.i988 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i988, align 4
  %add.ptr.i989 = getelementptr i8, ptr %160, i32 128
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i989) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug333, ptr noundef %158, ptr noundef nonnull @.str.47, i32 noundef %161) #7
  br label %do.body645

do.body645:                                       ; preds = %if.then639, %do.body625
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body665)) #7
          to label %if.then659 [label %do.body665], !srcloc !200

if.then659:                                       ; preds = %do.body645
  call void @__sanitizer_cov_trace_pc() #9
  %dev660 = getelementptr i8, ptr %prev, i32 -6120
  %162 = ptrtoint ptr %dev660 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev660, align 8
  %arrayidx.i990 = getelementptr i8, ptr %prev, i32 -6088
  %164 = ptrtoint ptr %arrayidx.i990 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i990, align 4
  %add.ptr.i991 = getelementptr i8, ptr %165, i32 144
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i991) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug334, ptr noundef %163, ptr noundef nonnull @.str.48, i32 noundef %166) #7
  br label %do.body665

do.body665:                                       ; preds = %if.then659, %do.body645
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body685)) #7
          to label %if.then679 [label %do.body685], !srcloc !200

if.then679:                                       ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #9
  %dev680 = getelementptr i8, ptr %prev, i32 -6120
  %167 = ptrtoint ptr %dev680 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev680, align 8
  %arrayidx.i992 = getelementptr i8, ptr %prev, i32 -6088
  %169 = ptrtoint ptr %arrayidx.i992 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i992, align 4
  %add.ptr.i993 = getelementptr i8, ptr %170, i32 148
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i993) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug335, ptr noundef %168, ptr noundef nonnull @.str.49, i32 noundef %171) #7
  br label %do.body685

do.body685:                                       ; preds = %if.then679, %do.body665
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body705)) #7
          to label %if.then699 [label %do.body705], !srcloc !200

if.then699:                                       ; preds = %do.body685
  call void @__sanitizer_cov_trace_pc() #9
  %dev700 = getelementptr i8, ptr %prev, i32 -6120
  %172 = ptrtoint ptr %dev700 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev700, align 8
  %arrayidx.i994 = getelementptr i8, ptr %prev, i32 -6088
  %174 = ptrtoint ptr %arrayidx.i994 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i994, align 4
  %add.ptr.i995 = getelementptr i8, ptr %175, i32 152
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i995) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug336, ptr noundef %173, ptr noundef nonnull @.str.50, i32 noundef %176) #7
  br label %do.body705

do.body705:                                       ; preds = %if.then699, %do.body685
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.body725)) #7
          to label %if.then719 [label %do.body725], !srcloc !200

if.then719:                                       ; preds = %do.body705
  call void @__sanitizer_cov_trace_pc() #9
  %dev720 = getelementptr i8, ptr %prev, i32 -6120
  %177 = ptrtoint ptr %dev720 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev720, align 8
  %arrayidx.i996 = getelementptr i8, ptr %prev, i32 -6088
  %179 = ptrtoint ptr %arrayidx.i996 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i996, align 4
  %add.ptr.i997 = getelementptr i8, ptr %180, i32 156
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i997) #7, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug337, ptr noundef %178, ptr noundef nonnull @.str.51, i32 noundef %181) #7
  br label %do.body725

do.body725:                                       ; preds = %if.then719, %do.body705
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_print_status.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_print_status, %do.end743)) #7
          to label %if.then739 [label %do.end743], !srcloc !200

if.then739:                                       ; preds = %do.body725
  call void @__sanitizer_cov_trace_pc() #9
  %dev740 = getelementptr i8, ptr %prev, i32 -6120
  %182 = ptrtoint ptr %dev740 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev740, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_print_status.__UNIQUE_ID_ddebug338, ptr noundef %183, ptr noundef nonnull @.str.52) #7
  br label %do.end743

do.end743:                                        ; preds = %if.then739, %do.body725
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @preview_adjust_bandwidth(ptr nocapture noundef readonly %prev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 5
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %prev, i32 -6080
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !193
  %and.i = and i32 %4, -1072693249
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i) #7, !srcloc !194
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %prev, i32 0, i32 14
  %7 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe1, align 4
  %l3_ick5 = getelementptr inbounds %struct.isp_pipeline, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %l3_ick5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l3_ick5, align 4
  %formats = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 2
  %conv = zext i32 %10 to i64
  %11 = shl nuw nsw i64 %conv, 7
  %mul = and i64 %11, 549755813632
  %max_rate = getelementptr inbounds %struct.isp_pipeline, ptr %8, i32 0, i32 8
  %12 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_rate, align 4
  %conv6 = zext i32 %13 to i64
  %add = add nsw i64 %conv6, -1
  %sub = add nsw i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !196

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %13
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %sub) #10, !srcloc !201
  %asmresult1.i.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t183 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t183, %if.else174.i.i ]
  %sub10 = add i32 %dividend.addr.0.i.i.off0, 31
  %div1160 = lshr i32 %sub10, 5
  %max_timeperframe = getelementptr inbounds %struct.isp_pipeline, ptr %8, i32 0, i32 13
  %15 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %formats, align 4
  %mul12 = shl i32 %16, 1
  %sub14 = add i32 %mul12, 255
  %div1561 = lshr i32 %sub14, 8
  %height = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %mul16 = mul i32 %div1561, %18
  %19 = ptrtoint ptr %max_timeperframe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_timeperframe, align 4
  %conv18 = zext i32 %20 to i64
  %mul19 = mul nuw i64 %conv18, %conv
  %denominator = getelementptr inbounds %struct.isp_pipeline, ptr %8, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul19)
  %cmp164.i.i167 = icmp ult i64 %mul19, 4294967296
  br i1 %cmp164.i.i167, label %if.then168.i.i172, label %if.else174.i.i174, !prof !196

if.then168.i.i172:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i169 = trunc i64 %mul19 to i32
  %div172.i.i170 = udiv i32 %conv169.i.i169, %22
  br label %div_u64.exit176

if.else174.i.i174:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %mul19) #10, !srcloc !201
  %asmresult1.i.i.i173 = extractvalue { i64, i64 } %23, 1
  %extract.t187 = trunc i64 %asmresult1.i.i.i173 to i32
  br label %div_u64.exit176

div_u64.exit176:                                  ; preds = %if.else174.i.i174, %if.then168.i.i172
  %dividend.addr.0.i.i175.off0 = phi i32 [ %div172.i.i170, %if.then168.i.i172 ], [ %extract.t187, %if.else174.i.i174 ]
  %div22 = udiv i32 %dividend.addr.0.i.i175.off0, %mul16
  %div2362 = lshr i32 %div22, 5
  %24 = tail call i32 @llvm.umax.i32(i32 %div1160, i32 %div2362)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @preview_adjust_bandwidth.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@preview_adjust_bandwidth, %do.end)) #7
          to label %if.then32 [label %do.end], !srcloc !200

if.then32:                                        ; preds = %div_u64.exit176
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %prev, i32 -6120
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @preview_adjust_bandwidth.__UNIQUE_ID_ddebug300, ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %24) #7
  br label %do.end

do.end:                                           ; preds = %if.then32, %div_u64.exit176
  %shl = shl i32 %24, 20
  %arrayidx.i.i177 = getelementptr i8, ptr %prev, i32 -6080
  %27 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i177, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %28, i32 248
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #7, !srcloc !193
  %and.i179 = and i32 %29, -1072693249
  %or.i = or i32 %and.i179, %shl
  %30 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i177, align 4
  %add.ptr.i5.i180 = getelementptr i8, ptr %31, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i180, i32 %or.i) #7, !srcloc !194
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @preview_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp = icmp ugt i32 %4, 9
  br i1 %cmp, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [10 x i32], ptr @preview_input_fmts, i32 0, i32 %4
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  %index4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %5 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp ugt i32 %6, 1
  br i1 %cmp5, label %sw.bb3.return_crit_edge, label %if.end7

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr [2 x i32], ptr @preview_output_fmts, i32 0, i32 %6
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end7, %if.end
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end ], [ %arrayidx9, %if.end7 ]
  %7 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.sink, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %9 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %code2, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb3.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb3.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #7
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call fastcc void @preview_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %12, ptr noundef nonnull %format, i32 noundef %14)
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  call fastcc void @preview_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %28, ptr noundef nonnull %format, i32 noundef %30)
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !196

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__preview_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__preview_get_format.exit

__preview_get_format.exit:                        ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__preview_get_format.exit.cleanup_crit_edge, label %if.end

__preview_get_format.exit.cleanup_crit_edge:      ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__preview_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__preview_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !196

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__preview_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__preview_get_format.exit

__preview_get_format.exit:                        ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__preview_get_format.exit.cleanup_crit_edge, label %if.end

__preview_get_format.exit.cleanup_crit_edge:      ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__preview_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @preview_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
  %14 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i49 = icmp eq i32 %18, 0
  br i1 %cmp.i49, label %if.then.i51, label %if.else.i53

if.then.i51:                                      ; preds = %if.then8
  %num_pads.i.i50 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i50 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.i = icmp eq i16 %20, 0
  br i1 %cmp.i.i, label %do.end.i.i52, label %if.then.i51.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !202

if.then.i51.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i52:                                     ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i52, %if.then.i51.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %22, i32 0, i32 1
  br label %__preview_get_crop.exit

if.else.i53:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 3
  br label %__preview_get_crop.exit

__preview_get_crop.exit:                          ; preds = %if.else.i53, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i54 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i53 ]
  %23 = ptrtoint ptr %retval.0.i54 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %retval.0.i54, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i54, i32 0, i32 1
  %24 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %top, align 4
  %25 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format3, align 4
  %width12 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i54, i32 0, i32 2
  %27 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %width12, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %height14 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i54, i32 0, i32 3
  %30 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %height14, align 4
  %31 = load i32, ptr %format3, align 4
  %32 = load i32, ptr %height, align 4
  %sub1.i = add i32 %32, -2
  %input.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i55 = icmp eq i32 %34, 1
  %spec.select.v.i = select i1 %cmp.i55, i32 -6, i32 -4
  %spec.select.i = add i32 %spec.select.v.i, %31
  %spec.select114.i = select i1 %cmp.i55, i32 8, i32 6
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %code.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %36, label %if.then6.i [
    i32 8193, label %__preview_get_crop.exit.preview_try_crop.exit_crit_edge
    i32 8202, label %__preview_get_crop.exit.preview_try_crop.exit_crit_edge77
  ]

__preview_get_crop.exit.preview_try_crop.exit_crit_edge77: ; preds = %__preview_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_try_crop.exit

__preview_get_crop.exit.preview_try_crop.exit_crit_edge: ; preds = %__preview_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_try_crop.exit

if.then6.i:                                       ; preds = %__preview_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add7.i = add nuw nsw i32 %spec.select114.i, 2
  %sub8.i = add i32 %spec.select.i, -2
  %sub10.i = add i32 %32, -4
  br label %preview_try_crop.exit

preview_try_crop.exit:                            ; preds = %if.then6.i, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge77
  %bottom.0.i = phi i32 [ %sub10.i, %if.then6.i ], [ %sub1.i, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge ], [ %sub1.i, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge77 ]
  %top.0.i = phi i32 [ 4, %if.then6.i ], [ 2, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge ], [ 2, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge77 ]
  %right.1.i = phi i32 [ %sub8.i, %if.then6.i ], [ %spec.select.i, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge ], [ %spec.select.i, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge77 ]
  %left.1.i = phi i32 [ %add7.i, %if.then6.i ], [ %spec.select114.i, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge ], [ %spec.select114.i, %__preview_get_crop.exit.preview_try_crop.exit_crit_edge77 ]
  %38 = tail call i32 @llvm.umin.i32(i32 %left.1.i, i32 %right.1.i) #7
  %39 = ptrtoint ptr %retval.0.i54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %retval.0.i54, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %top.0.i, i32 %bottom.0.i) #7
  %41 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %top, align 4
  %sub48.i = sub i32 %right.1.i, %38
  %42 = tail call i32 @llvm.umin.i32(i32 %26, i32 %sub48.i) #7
  %43 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %width12, align 4
  %sub64.i = sub i32 %bottom.0.i, %40
  %44 = tail call i32 @llvm.umin.i32(i32 %29, i32 %sub64.i) #7
  %45 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %height14, align 4
  %46 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i56 = icmp eq i32 %47, 0
  br i1 %cmp.i56, label %if.then.i60, label %__preview_get_format.exit68.thread

if.then.i60:                                      ; preds = %preview_try_crop.exit
  %num_pads.i.i57 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %num_pads.i.i57 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_pads.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %cmp.not.i.i59 = icmp ugt i16 %49, 1
  br i1 %cmp.not.i.i59, label %if.then.i60.__preview_get_format.exit68_crit_edge, label %do.end.i.i61, !prof !196

if.then.i60.__preview_get_format.exit68_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %__preview_get_format.exit68

do.end.i.i61:                                     ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %__preview_get_format.exit68

__preview_get_format.exit68.thread:               ; preds = %preview_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i65 = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 1
  %code31.i72 = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 1, i32 2
  %50 = ptrtoint ptr %code31.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %code31.i72, align 4
  br label %if.else.i.i

__preview_get_format.exit68:                      ; preds = %do.end.i.i61, %if.then.i60.__preview_get_format.exit68_crit_edge
  %spec.select.i.i62 = phi i32 [ 0, %do.end.i.i61 ], [ 1, %if.then.i60.__preview_get_format.exit68_crit_edge ]
  %52 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i63 = getelementptr %struct.v4l2_subdev_pad_config, ptr %53, i32 %spec.select.i.i62
  %54 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load i32, ptr %fmt, align 4
  %code31.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i63, i32 0, i32 2
  %55 = ptrtoint ptr %code31.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %code31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i.i69 = icmp eq i32 %.pr, 0
  br i1 %cmp.i.i69, label %if.then.i.i, label %__preview_get_format.exit68.if.else.i.i_crit_edge

__preview_get_format.exit68.if.else.i.i_crit_edge: ; preds = %__preview_get_format.exit68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %__preview_get_format.exit68
  %57 = ptrtoint ptr %num_pads.i.i57 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_pads.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp.not.i.i.not.i = icmp eq i16 %58, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !202

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %59 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sd_state, align 4
  %61 = call ptr @memcpy(ptr %arrayidx.i.i63, ptr %60, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %56)
  %switch.selectcmp.c.i = icmp eq i32 %56, 8207
  %switch.select.c.i = select i1 %switch.selectcmp.c.i, i32 8207, i32 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %56)
  %switch.selectcmp76.c.i = icmp eq i32 %56, 8209
  %switch.select77.c.i = select i1 %switch.selectcmp76.c.i, i32 8209, i32 %switch.select.c.i
  %62 = ptrtoint ptr %code31.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %switch.select77.c.i, ptr %code31.i, align 4
  %63 = ptrtoint ptr %num_pads.i.i57 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %num_pads.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp.i.i.i = icmp eq i16 %64, 0
  br i1 %cmp.i.i.i, label %do.end.i.i81.i, label %v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, !prof !202

v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i.i

if.else.i.i:                                      ; preds = %__preview_get_format.exit68.if.else.i.i_crit_edge, %__preview_get_format.exit68.thread
  %65 = phi i32 [ %51, %__preview_get_format.exit68.thread ], [ %56, %__preview_get_format.exit68.if.else.i.i_crit_edge ]
  %code31.i76 = phi ptr [ %code31.i72, %__preview_get_format.exit68.thread ], [ %code31.i, %__preview_get_format.exit68.if.else.i.i_crit_edge ]
  %retval.0.i6774 = phi ptr [ %arrayidx.i65, %__preview_get_format.exit68.thread ], [ %arrayidx.i.i63, %__preview_get_format.exit68.if.else.i.i_crit_edge ]
  %arrayidx.i.i70 = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 0
  %66 = call ptr @memcpy(ptr %retval.0.i6774, ptr %arrayidx.i.i70, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %65)
  %switch.selectcmp.c85.i = icmp eq i32 %65, 8207
  %switch.select.c86.i = select i1 %switch.selectcmp.c85.i, i32 8207, i32 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %65)
  %switch.selectcmp76.c87.i = icmp eq i32 %65, 8209
  %switch.select77.c88.i = select i1 %switch.selectcmp76.c87.i, i32 8209, i32 %switch.select.c86.i
  %67 = ptrtoint ptr %code31.i76 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %switch.select77.c88.i, ptr %code31.i76, align 4
  %crop.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 3
  br label %preview_try_format.exit

do.end.i.i81.i:                                   ; preds = %v4l2_subdev_get_try_format.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %do.end.i.i81.i, %v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge
  %68 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %69, i32 0, i32 1
  br label %preview_try_format.exit

preview_try_format.exit:                          ; preds = %v4l2_subdev_get_try_crop.exit.i.i, %if.else.i.i
  %retval.0.i6775 = phi ptr [ %arrayidx.i.i63, %v4l2_subdev_get_try_crop.exit.i.i ], [ %retval.0.i6774, %if.else.i.i ]
  %retval.0.i83.i = phi ptr [ %try_crop.i.i.i, %v4l2_subdev_get_try_crop.exit.i.i ], [ %crop.i.i, %if.else.i.i ]
  %width37.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i83.i, i32 0, i32 2
  %70 = ptrtoint ptr %width37.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %width37.i, align 4
  %72 = ptrtoint ptr %retval.0.i6775 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %retval.0.i6775, align 4
  %height39.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i83.i, i32 0, i32 3
  %73 = ptrtoint ptr %height39.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height39.i, align 4
  %height40.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i6775, i32 0, i32 1
  %75 = ptrtoint ptr %height40.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %height40.i, align 4
  %colorspace41.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i6775, i32 0, i32 4
  %76 = ptrtoint ptr %colorspace41.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 7, ptr %colorspace41.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i6775, i32 0, i32 3
  %77 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %preview_try_format.exit, %if.end.cleanup_crit_edge, %__preview_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__preview_get_format.exit.cleanup_crit_edge ], [ 0, %preview_try_format.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2147483647, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2147483647, ptr %height, align 4
  %11 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i.i.not = icmp eq i16 %14, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !202

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  br label %__preview_get_format.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 0
  br label %__preview_get_format.exit

__preview_get_format.exit:                        ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %16, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retval.0.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %sub1.i = add i32 %20, -2
  %input.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i23 = icmp eq i32 %22, 1
  %spec.select.v.i = select i1 %cmp.i23, i32 -6, i32 -4
  %spec.select.i = add i32 %spec.select.v.i, %18
  %spec.select114.i = select i1 %cmp.i23, i32 8, i32 6
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %24, label %if.then6.i [
    i32 8193, label %__preview_get_format.exit.preview_try_crop.exit_crit_edge
    i32 8202, label %__preview_get_format.exit.preview_try_crop.exit_crit_edge30
  ]

__preview_get_format.exit.preview_try_crop.exit_crit_edge30: ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_try_crop.exit

__preview_get_format.exit.preview_try_crop.exit_crit_edge: ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_try_crop.exit

if.then6.i:                                       ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add7.i = add nuw nsw i32 %spec.select114.i, 2
  %sub8.i = add i32 %spec.select.i, -2
  %sub10.i = add i32 %20, -4
  br label %preview_try_crop.exit

preview_try_crop.exit:                            ; preds = %if.then6.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge, %__preview_get_format.exit.preview_try_crop.exit_crit_edge30
  %bottom.0.i = phi i32 [ %sub10.i, %if.then6.i ], [ %sub1.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ %sub1.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge30 ]
  %top.0.i = phi i32 [ 4, %if.then6.i ], [ 2, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ 2, %__preview_get_format.exit.preview_try_crop.exit_crit_edge30 ]
  %right.1.i = phi i32 [ %sub8.i, %if.then6.i ], [ %spec.select.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ %spec.select.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge30 ]
  %left.1.i = phi i32 [ %add7.i, %if.then6.i ], [ %spec.select114.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ %spec.select114.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge30 ]
  %26 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r, align 4
  %and.i = and i32 %27, -2
  %28 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top, align 4
  %and14.i = and i32 %29, -2
  %30 = tail call i32 @llvm.umax.i32(i32 %and.i, i32 %left.1.i) #7
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %right.1.i) #7
  %32 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %r, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %and14.i, i32 %top.0.i) #7
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %bottom.0.i) #7
  %35 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %top, align 4
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  %sub48.i = sub i32 %right.1.i, %31
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %sub48.i) #7
  %39 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %width, align 4
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %sub64.i = sub i32 %bottom.0.i, %34
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %sub64.i) #7
  %43 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %height, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %r7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %44 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i24 = icmp eq i32 %45, 0
  br i1 %cmp.i24, label %if.then.i26, label %if.else.i28

if.then.i26:                                      ; preds = %sw.bb6
  %num_pads.i.i25 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %num_pads.i.i25 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_pads.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.i.i = icmp eq i16 %47, 0
  br i1 %cmp.i.i, label %do.end.i.i27, label %if.then.i26.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !202

if.then.i26.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i27:                                     ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i27, %if.then.i26.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %48 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %49, i32 0, i32 1
  br label %__preview_get_crop.exit

if.else.i28:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 3
  br label %__preview_get_crop.exit

__preview_get_crop.exit:                          ; preds = %if.else.i28, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i29 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i28 ]
  %50 = call ptr @memcpy(ptr %r7, ptr %retval.0.i29, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %__preview_get_crop.exit, %preview_try_crop.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %__preview_get_crop.exit ], [ 0, %preview_try_crop.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then5
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i.i = icmp eq i16 %13, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !202

if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %15, i32 0, i32 1
  br label %__preview_get_crop.exit

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 3
  br label %__preview_get_crop.exit

__preview_get_crop.exit:                          ; preds = %if.else.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i ]
  %16 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %17 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i39 = icmp eq i32 %18, 0
  br i1 %cmp.i39, label %if.then.i41, label %if.else.i43

if.then.i41:                                      ; preds = %if.end7
  %num_pads.i.i40 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i40 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.not.i.i.not = icmp eq i16 %20, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i42, label %if.then.i41.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !202

if.then.i41.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i42:                                     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i42, %if.then.i41.v4l2_subdev_get_try_format.exit.i_crit_edge
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  br label %__preview_get_format.exit

if.else.i43:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 0
  br label %__preview_get_format.exit

__preview_get_format.exit:                        ; preds = %if.else.i43, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i44 = phi ptr [ %22, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i43 ]
  %r10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %23 = ptrtoint ptr %retval.0.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retval.0.i44, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 1
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  %sub1.i = add i32 %26, -2
  %input.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i45 = icmp eq i32 %28, 1
  %spec.select.v.i = select i1 %cmp.i45, i32 -6, i32 -4
  %spec.select.i = add i32 %spec.select.v.i, %24
  %spec.select114.i = select i1 %cmp.i45, i32 8, i32 6
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 2
  %29 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %30, label %if.then6.i [
    i32 8193, label %__preview_get_format.exit.preview_try_crop.exit_crit_edge
    i32 8202, label %__preview_get_format.exit.preview_try_crop.exit_crit_edge76
  ]

__preview_get_format.exit.preview_try_crop.exit_crit_edge76: ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_try_crop.exit

__preview_get_format.exit.preview_try_crop.exit_crit_edge: ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_try_crop.exit

if.then6.i:                                       ; preds = %__preview_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add7.i = add nuw nsw i32 %spec.select114.i, 2
  %sub8.i = add i32 %spec.select.i, -2
  %sub10.i = add i32 %26, -4
  br label %preview_try_crop.exit

preview_try_crop.exit:                            ; preds = %if.then6.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge, %__preview_get_format.exit.preview_try_crop.exit_crit_edge76
  %bottom.0.i = phi i32 [ %sub10.i, %if.then6.i ], [ %sub1.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ %sub1.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge76 ]
  %top.0.i = phi i32 [ 4, %if.then6.i ], [ 2, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ 2, %__preview_get_format.exit.preview_try_crop.exit_crit_edge76 ]
  %right.1.i = phi i32 [ %sub8.i, %if.then6.i ], [ %spec.select.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ %spec.select.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge76 ]
  %left.1.i = phi i32 [ %add7.i, %if.then6.i ], [ %spec.select114.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge ], [ %spec.select114.i, %__preview_get_format.exit.preview_try_crop.exit_crit_edge76 ]
  %32 = ptrtoint ptr %r10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r10, align 4
  %and.i = and i32 %33, -2
  %top13.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %top13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %top13.i, align 4
  %and14.i = and i32 %35, -2
  %36 = tail call i32 @llvm.umax.i32(i32 %and.i, i32 %left.1.i) #7
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %right.1.i) #7
  %38 = ptrtoint ptr %r10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %r10, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %and14.i, i32 %top.0.i) #7
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %bottom.0.i) #7
  %41 = ptrtoint ptr %top13.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %top13.i, align 4
  %width40.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %width40.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width40.i, align 4
  %sub48.i = sub i32 %right.1.i, %37
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %sub48.i) #7
  %45 = ptrtoint ptr %width40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %width40.i, align 4
  %height56.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %height56.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height56.i, align 4
  %sub64.i = sub i32 %bottom.0.i, %40
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %sub64.i) #7
  %49 = ptrtoint ptr %height56.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %height56.i, align 4
  %50 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i46 = icmp eq i32 %51, 0
  br i1 %cmp.i46, label %if.then.i49, label %if.else.i54

if.then.i49:                                      ; preds = %preview_try_crop.exit
  %num_pads.i.i47 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %num_pads.i.i47 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_pads.i.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp.i.i48 = icmp eq i16 %53, 0
  br i1 %cmp.i.i48, label %do.end.i.i50, label %if.then.i49.v4l2_subdev_get_try_crop.exit.i52_crit_edge, !prof !202

if.then.i49.v4l2_subdev_get_try_crop.exit.i52_crit_edge: ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i52

do.end.i.i50:                                     ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i52

v4l2_subdev_get_try_crop.exit.i52:                ; preds = %do.end.i.i50, %if.then.i49.v4l2_subdev_get_try_crop.exit.i52_crit_edge
  %54 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i51 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %55, i32 0, i32 1
  br label %__preview_get_crop.exit56

if.else.i54:                                      ; preds = %preview_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i53 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 3
  br label %__preview_get_crop.exit56

__preview_get_crop.exit56:                        ; preds = %if.else.i54, %v4l2_subdev_get_try_crop.exit.i52
  %retval.0.i55 = phi ptr [ %try_crop.i.i51, %v4l2_subdev_get_try_crop.exit.i52 ], [ %crop.i53, %if.else.i54 ]
  %56 = call ptr @memcpy(ptr %retval.0.i55, ptr %r10, i32 16)
  %57 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i57 = icmp eq i32 %58, 0
  br i1 %cmp.i57, label %if.then.i61, label %__preview_get_format.exit67.thread

if.then.i61:                                      ; preds = %__preview_get_crop.exit56
  %num_pads.i.i58 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %num_pads.i.i58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_pads.i.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %60)
  %cmp.not.i.i60 = icmp ugt i16 %60, 1
  br i1 %cmp.not.i.i60, label %if.then.i61.__preview_get_format.exit67_crit_edge, label %do.end.i.i62, !prof !196

if.then.i61.__preview_get_format.exit67_crit_edge: ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %__preview_get_format.exit67

do.end.i.i62:                                     ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %__preview_get_format.exit67

__preview_get_format.exit67.thread:               ; preds = %__preview_get_crop.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i64 = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 1
  %code31.i71 = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 1, i32 2
  %61 = ptrtoint ptr %code31.i71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %code31.i71, align 4
  br label %if.else.i.i

__preview_get_format.exit67:                      ; preds = %do.end.i.i62, %if.then.i61.__preview_get_format.exit67_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i62 ], [ 1, %if.then.i61.__preview_get_format.exit67_crit_edge ]
  %63 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %64, i32 %spec.select.i.i
  %65 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %sel, align 4
  %code31.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %code31.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %code31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i.i68 = icmp eq i32 %.pr, 0
  br i1 %cmp.i.i68, label %if.then.i.i, label %__preview_get_format.exit67.if.else.i.i_crit_edge

__preview_get_format.exit67.if.else.i.i_crit_edge: ; preds = %__preview_get_format.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %__preview_get_format.exit67
  %68 = ptrtoint ptr %num_pads.i.i58 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %num_pads.i.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp.not.i.i.not.i = icmp eq i16 %69, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !202

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %70 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sd_state, align 4
  %72 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %71, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %67)
  %switch.selectcmp.c.i = icmp eq i32 %67, 8207
  %switch.select.c.i = select i1 %switch.selectcmp.c.i, i32 8207, i32 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %67)
  %switch.selectcmp76.c.i = icmp eq i32 %67, 8209
  %switch.select77.c.i = select i1 %switch.selectcmp76.c.i, i32 8209, i32 %switch.select.c.i
  %73 = ptrtoint ptr %code31.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %switch.select77.c.i, ptr %code31.i, align 4
  %74 = ptrtoint ptr %num_pads.i.i58 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %num_pads.i.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp.i.i.i = icmp eq i16 %75, 0
  br i1 %cmp.i.i.i, label %do.end.i.i81.i, label %v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, !prof !202

v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i.i

if.else.i.i:                                      ; preds = %__preview_get_format.exit67.if.else.i.i_crit_edge, %__preview_get_format.exit67.thread
  %76 = phi i32 [ %62, %__preview_get_format.exit67.thread ], [ %67, %__preview_get_format.exit67.if.else.i.i_crit_edge ]
  %code31.i75 = phi ptr [ %code31.i71, %__preview_get_format.exit67.thread ], [ %code31.i, %__preview_get_format.exit67.if.else.i.i_crit_edge ]
  %retval.0.i6673 = phi ptr [ %arrayidx.i64, %__preview_get_format.exit67.thread ], [ %arrayidx.i.i, %__preview_get_format.exit67.if.else.i.i_crit_edge ]
  %arrayidx.i.i69 = getelementptr %struct.isp_prev_device, ptr %1, i32 0, i32 2, i32 0
  %77 = call ptr @memcpy(ptr %retval.0.i6673, ptr %arrayidx.i.i69, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %76)
  %switch.selectcmp.c85.i = icmp eq i32 %76, 8207
  %switch.select.c86.i = select i1 %switch.selectcmp.c85.i, i32 8207, i32 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %76)
  %switch.selectcmp76.c87.i = icmp eq i32 %76, 8209
  %switch.select77.c88.i = select i1 %switch.selectcmp76.c87.i, i32 8209, i32 %switch.select.c86.i
  %78 = ptrtoint ptr %code31.i75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %switch.select77.c88.i, ptr %code31.i75, align 4
  %crop.i.i = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 3
  br label %preview_try_format.exit

do.end.i.i81.i:                                   ; preds = %v4l2_subdev_get_try_format.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %do.end.i.i81.i, %v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge
  %79 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %80, i32 0, i32 1
  br label %preview_try_format.exit

preview_try_format.exit:                          ; preds = %v4l2_subdev_get_try_crop.exit.i.i, %if.else.i.i
  %retval.0.i6674 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_crop.exit.i.i ], [ %retval.0.i6673, %if.else.i.i ]
  %retval.0.i83.i = phi ptr [ %try_crop.i.i.i, %v4l2_subdev_get_try_crop.exit.i.i ], [ %crop.i.i, %if.else.i.i ]
  %width37.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i83.i, i32 0, i32 2
  %81 = ptrtoint ptr %width37.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %width37.i, align 4
  %83 = ptrtoint ptr %retval.0.i6674 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %retval.0.i6674, align 4
  %height39.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i83.i, i32 0, i32 3
  %84 = ptrtoint ptr %height39.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %height39.i, align 4
  %height40.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i6674, i32 0, i32 1
  %86 = ptrtoint ptr %height40.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %height40.i, align 4
  %colorspace41.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i6674, i32 0, i32 4
  %87 = ptrtoint ptr %colorspace41.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 7, ptr %colorspace41.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i6674, i32 0, i32 3
  %88 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %preview_try_format.exit, %__preview_get_crop.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__preview_get_crop.exit ], [ 0, %preview_try_format.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @preview_try_format(ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %pad, label %entry.sw.epilog42_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
  ]

entry.sw.epilog42_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

sw.bb:                                            ; preds = %entry
  %input = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 5
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmt, align 4
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 64)
  %revision.i = getelementptr i8, ptr %prev, i32 -6116
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %7)
  %switch.selectcmp.i = icmp eq i32 %7, 240
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4096, i32 3300
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %switch.selectcmp3.i = icmp eq i32 %7, 16
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 1280, i32 %switch.select.i
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %switch.select4.i)
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 8)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 16384)
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %colorspace, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %16 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %17, label %for.cond.9 [
    i32 8193, label %if.end.sw.epilog42_crit_edge
    i32 12290, label %if.end.sw.epilog42_crit_edge90
    i32 12308, label %if.end.sw.epilog42_crit_edge91
    i32 12289, label %if.end.sw.epilog42_crit_edge92
    i32 12307, label %if.end.sw.epilog42_crit_edge93
    i32 8202, label %if.end.sw.epilog42_crit_edge94
    i32 12298, label %if.end.sw.epilog42_crit_edge95
    i32 12303, label %if.end.sw.epilog42_crit_edge96
    i32 12295, label %if.end.sw.epilog42_crit_edge97
    i32 12302, label %if.end.sw.epilog42_crit_edge98
  ]

if.end.sw.epilog42_crit_edge98:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge97:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge96:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge95:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge94:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge93:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge92:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge91:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge90:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.sw.epilog42_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

for.cond.9:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12298, ptr %code, align 4
  br label %sw.epilog42

sw.bb30:                                          ; preds = %entry
  %code31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %20 = ptrtoint ptr %code31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb30
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %prev, i32 0, i32 5
  %22 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.not.i.i.not = icmp eq i16 %23, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !202

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  %26 = call ptr @memcpy(ptr %fmt, ptr %25, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %21)
  %switch.selectcmp.c = icmp eq i32 %21, 8207
  %switch.select.c = select i1 %switch.selectcmp.c, i32 8207, i32 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %21)
  %switch.selectcmp76.c = icmp eq i32 %21, 8209
  %switch.select77.c = select i1 %switch.selectcmp76.c, i32 8209, i32 %switch.select.c
  %27 = ptrtoint ptr %code31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %switch.select77.c, ptr %code31, align 4
  %28 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i.i = icmp eq i16 %29, 0
  br i1 %cmp.i.i, label %do.end.i.i81, label %v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !202

v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

if.else.i:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.isp_prev_device, ptr %prev, i32 0, i32 2, i32 0
  %30 = call ptr @memcpy(ptr %fmt, ptr %arrayidx.i, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %21)
  %switch.selectcmp.c85 = icmp eq i32 %21, 8207
  %switch.select.c86 = select i1 %switch.selectcmp.c85, i32 8207, i32 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %21)
  %switch.selectcmp76.c87 = icmp eq i32 %21, 8209
  %switch.select77.c88 = select i1 %switch.selectcmp76.c87, i32 8209, i32 %switch.select.c86
  %31 = ptrtoint ptr %code31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %switch.select77.c88, ptr %code31, align 4
  %crop.i = getelementptr inbounds %struct.isp_prev_device, ptr %prev, i32 0, i32 3
  br label %__preview_get_crop.exit

do.end.i.i81:                                     ; preds = %v4l2_subdev_get_try_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i81, %v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %32 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %33, i32 0, i32 1
  br label %__preview_get_crop.exit

__preview_get_crop.exit:                          ; preds = %v4l2_subdev_get_try_crop.exit.i, %if.else.i
  %retval.0.i83 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i ]
  %width37 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i83, i32 0, i32 2
  %34 = ptrtoint ptr %width37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width37, align 4
  %36 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %fmt, align 4
  %height39 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i83, i32 0, i32 3
  %37 = ptrtoint ptr %height39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height39, align 4
  %height40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %39 = ptrtoint ptr %height40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %height40, align 4
  %colorspace41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %40 = ptrtoint ptr %colorspace41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %colorspace41, align 4
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %__preview_get_crop.exit, %for.cond.9, %if.end.sw.epilog42_crit_edge, %if.end.sw.epilog42_crit_edge90, %if.end.sw.epilog42_crit_edge91, %if.end.sw.epilog42_crit_edge92, %if.end.sw.epilog42_crit_edge93, %if.end.sw.epilog42_crit_edge94, %if.end.sw.epilog42_crit_edge95, %if.end.sw.epilog42_crit_edge96, %if.end.sw.epilog42_crit_edge97, %if.end.sw.epilog42_crit_edge98, %entry.sw.epilog42_crit_edge
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %41 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %field, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %lock.i = getelementptr i8, ptr %1, i32 35188
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %active.i = getelementptr i8, ptr %1, i32 35184
  %7 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active.i, align 4
  %and.i = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i.v = select i1 %tobool.not.i, i32 19708, i32 4232
  %cond.i = getelementptr i8, ptr %1, i32 %cond.i.v
  %brightness12.i = getelementptr inbounds %struct.prev_params, ptr %cond.i, i32 0, i32 16
  %9 = ptrtoint ptr %brightness12.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %brightness12.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %conv)
  %cmp15.not.i = icmp eq i8 %10, %conv
  br i1 %cmp15.not.i, label %sw.bb.preview_update_brightness.exit_crit_edge, label %if.then.i

sw.bb.preview_update_brightness.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_update_brightness.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %brightness12.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %brightness12.i, align 2
  %update.i = getelementptr inbounds %struct.prev_params, ptr %cond.i, i32 0, i32 1
  %12 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %update.i, align 4
  %or.i = or i32 %13, 262144
  store i32 %or.i, ptr %update.i, align 4
  br label %preview_update_brightness.exit

preview_update_brightness.exit:                   ; preds = %if.then.i, %sw.bb.preview_update_brightness.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %15 to i8
  %lock.i8 = getelementptr i8, ptr %1, i32 35188
  %call3.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i8) #7
  %active.i10 = getelementptr i8, ptr %1, i32 35184
  %16 = ptrtoint ptr %active.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active.i10, align 4
  %and.i11 = and i32 %17, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  %cond.i15.v = select i1 %tobool.not.i12, i32 19708, i32 4232
  %cond.i15 = getelementptr i8, ptr %1, i32 %cond.i15.v
  %contrast12.i = getelementptr inbounds %struct.prev_params, ptr %cond.i15, i32 0, i32 15
  %18 = ptrtoint ptr %contrast12.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %contrast12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %conv3)
  %cmp15.not.i16 = icmp eq i8 %19, %conv3
  br i1 %cmp15.not.i16, label %sw.bb1.preview_update_contrast.exit_crit_edge, label %if.then.i19

sw.bb1.preview_update_contrast.exit_crit_edge:    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %preview_update_contrast.exit

if.then.i19:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %contrast12.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3, ptr %contrast12.i, align 1
  %update.i17 = getelementptr inbounds %struct.prev_params, ptr %cond.i15, i32 0, i32 1
  %21 = ptrtoint ptr %update.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %update.i17, align 4
  %or.i18 = or i32 %22, 131072
  store i32 %or.i18, ptr %update.i17, align 4
  br label %preview_update_contrast.exit

preview_update_contrast.exit:                     ; preds = %if.then.i19, %sw.bb1.preview_update_contrast.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i8, i32 noundef %call3.i9) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %preview_update_contrast.exit, %preview_update_brightness.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @preview_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 131072, label %sw.bb18
    i32 1, label %sw.bb36
    i32 131073, label %sw.bb50
  ]

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %input11 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input11, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %input11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %input11, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp12 = icmp eq i32 %11, 2
  br i1 %cmp12, label %if.then14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %input11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %input11, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %input29 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %input29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input29, align 4
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp23 = icmp eq i32 %15, 2
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.end26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %input29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %input29, align 4
  br label %cleanup

if.else28:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %if.then32, label %if.else28.cleanup_crit_edge

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %input29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %input29, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and37 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %output47 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %output47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output47, align 8
  %and48 = and i32 %19, -5
  br i1 %tobool38.not, label %if.else46, label %if.then39

if.then39:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool41.not = icmp eq i32 %and48, 0
  br i1 %tobool41.not, label %if.end43, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %or45 = or i32 %19, 4
  %20 = ptrtoint ptr %output47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or45, ptr %output47, align 8
  br label %cleanup

if.else46:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %output47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and48, ptr %output47, align 8
  br label %cleanup

sw.bb50:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and51 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %output62 = getelementptr inbounds %struct.isp_prev_device, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %output62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %output62, align 8
  %and63 = and i32 %23, -3
  br i1 %tobool52.not, label %if.else61, label %if.then53

if.then53:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool56.not = icmp eq i32 %and63, 0
  br i1 %tobool56.not, label %if.end58, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %or60 = or i32 %23, 2
  %24 = ptrtoint ptr %output62 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or60, ptr %output62, align 8
  br label %cleanup

if.else61:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %output62 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and63, ptr %output62, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else61, %if.end58, %if.then53.cleanup_crit_edge, %if.else46, %if.end43, %if.then39.cleanup_crit_edge, %if.then32, %if.else28.cleanup_crit_edge, %if.end26, %if.then21.cleanup_crit_edge, %if.then14, %if.else.cleanup_crit_edge, %if.end9, %if.then6.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then6.cleanup_crit_edge ], [ -16, %if.then21.cleanup_crit_edge ], [ -16, %if.then39.cleanup_crit_edge ], [ -16, %if.then53.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge ], [ 0, %if.end58 ], [ 0, %if.else61 ], [ 0, %if.end43 ], [ 0, %if.else46 ], [ 0, %if.end26 ], [ 0, %if.then32 ], [ 0, %if.else28.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %if.then14 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preview_video_queue(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma = getelementptr inbounds %struct.isp_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 8
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #7, !srcloc !194
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = phi i32 [ %.pr, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2 = icmp eq i32 %9, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dma4 = getelementptr inbounds %struct.isp_buffer, ptr %buffer, i32 0, i32 2
  %10 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma4, align 8
  %arrayidx.i.i10 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 5
  %12 = ptrtoint ptr %arrayidx.i.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i10, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 %11) #7, !srcloc !194
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !171, !173, !175, !177, !179, !181}
!llvm.named.register.sp = !{!183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @omap3isp_preview_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2348, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @update_attrs, !4, !"update_attrs", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 751, i32 36}
!5 = !{ptr @preview_config_cfa.cfa_coef_order, !6, !"cfa_coef_order", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 236, i32 28}
!7 = !{ptr @preview_init_params.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1302, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cfa_coef_table, !11, !"cfa_coef_table", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 120, i32 12}
!12 = !{ptr @luma_enhance_table, !13, !"luma_enhance_table", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 141, i32 12}
!14 = !{ptr @noise_filter_table, !15, !"noise_filter_table", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 134, i32 12}
!16 = !{ptr @gamma_table, !17, !"gamma_table", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 127, i32 12}
!18 = !{ptr @flr_rgb2rgb, !19, !"flr_rgb2rgb", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 25, i32 44}
!20 = !{ptr @flr_prev_csc, !21, !"flr_prev_csc", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 35, i32 39}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2279, i32 20}
!24 = !{ptr @preview_init_entities._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2284, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2320, i32 45}
!29 = !{ptr @preview_v4l2_ops, !30, !"preview_v4l2_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2126, i32 37}
!31 = !{ptr @preview_v4l2_core_ops, !32, !"preview_v4l2_core_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2106, i32 42}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!40 = !{ptr @preview_v4l2_video_ops, !41, !"preview_v4l2_video_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2111, i32 43}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1669, i32 4}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @preview_set_stream.__UNIQUE_ID_ddebug339, !43, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1206, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @preview_adjust_bandwidth.__UNIQUE_ID_ddebug300, !49, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1251, i32 2}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug301, !53, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1253, i32 2}
!58 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug302, !57, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1254, i32 2}
!61 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug303, !60, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1255, i32 2}
!64 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug304, !63, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1256, i32 2}
!67 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug305, !66, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1257, i32 2}
!70 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug306, !69, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1258, i32 2}
!73 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug307, !72, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1259, i32 2}
!76 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug308, !75, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1260, i32 2}
!79 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug309, !78, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1261, i32 2}
!82 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug310, !81, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1262, i32 2}
!85 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug311, !84, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1263, i32 2}
!88 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug312, !87, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1264, i32 2}
!91 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug313, !90, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1265, i32 2}
!94 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug314, !93, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1266, i32 2}
!97 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug315, !96, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1267, i32 2}
!100 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug316, !99, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1268, i32 2}
!103 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug317, !102, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1269, i32 2}
!106 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug318, !105, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1270, i32 2}
!109 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug319, !108, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1271, i32 2}
!112 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug320, !111, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1272, i32 2}
!115 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug321, !114, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1273, i32 2}
!118 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug322, !117, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1274, i32 2}
!121 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug323, !120, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1275, i32 2}
!124 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug324, !123, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1276, i32 2}
!127 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug325, !126, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1277, i32 2}
!130 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug326, !129, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1278, i32 2}
!133 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug327, !132, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1279, i32 2}
!136 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug328, !135, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1280, i32 2}
!139 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug329, !138, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1281, i32 2}
!142 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug330, !141, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1282, i32 2}
!145 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug331, !144, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1283, i32 2}
!148 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug332, !147, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!149 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1284, i32 2}
!151 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug333, !150, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1285, i32 2}
!154 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug334, !153, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!155 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1286, i32 2}
!157 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug335, !156, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1287, i32 2}
!160 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug336, !159, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!161 = !{ptr @.str.51, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1288, i32 2}
!163 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug337, !162, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!164 = !{ptr @.str.52, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1290, i32 2}
!166 = !{ptr @preview_print_status.__UNIQUE_ID_ddebug338, !165, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!167 = !{ptr @preview_v4l2_pad_ops, !168, !"preview_v4l2_pad_ops", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2116, i32 41}
!169 = !{ptr @preview_input_fmts, !170, !"preview_input_fmts", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1706, i32 27}
!171 = !{ptr @preview_output_fmts, !172, !"preview_output_fmts", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1719, i32 27}
!173 = !{ptr @.str.53, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!175 = !{ptr @preview_v4l2_internal_ops, !176, !"preview_v4l2_internal_ops", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2133, i32 46}
!177 = !{ptr @preview_ctrl_ops, !178, !"preview_ctrl_ops", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1598, i32 35}
!179 = !{ptr @preview_media_ops, !180, !"preview_media_ops", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 2221, i32 45}
!181 = !{ptr @preview_video_ops, !182, !"preview_video_ops", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/omap3isp/isppreview.c", i32 1569, i32 42}
!183 = !{!"sp"}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i64 7668165}
!194 = !{i64 7667747}
!195 = !{i64 2153241666, i64 2153241691}
!196 = !{!"branch_weights", i32 2000, i32 1}
!197 = !{i64 5737221}
!198 = !{i64 5737418}
!199 = !{i64 2153222651}
!200 = !{i64 2148345650, i64 2148345655, i64 2148345668, i64 2148345712, i64 2148345746, i64 2148345767}
!201 = !{i64 2148370837, i64 2148371117, i64 2148371451, i64 2148371785}
!202 = !{!"branch_weights", i32 1, i32 2000}
