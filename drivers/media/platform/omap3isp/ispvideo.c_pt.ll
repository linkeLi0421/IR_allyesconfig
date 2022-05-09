; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/ispvideo.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/ispvideo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.isp_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.isp_video_operations = type { ptr }
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
%struct.isp_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.isp_pipeline, %struct.mutex, i8, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, i32, ptr }
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
%struct.isp_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, i32, i32, i32, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.isp_device = type { %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, i32, [14 x ptr], i32, ptr, i32, i32, ptr, %struct.spinlock, %struct.mutex, i8, %struct.media_entity_enum, i32, i32, i32, [4 x ptr], [2 x %struct.isp_xclk], %struct.ispstat, %struct.ispstat, %struct.ispstat, %struct.isp_res_device, %struct.isp_prev_device, %struct.isp_ccdc_device, %struct.isp_csi2_device, %struct.isp_csi2_device, %struct.isp_ccp2_device, %struct.isp_csiphy, %struct.isp_csiphy, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.isp_xclk = type { ptr, %struct.clk_hw, ptr, i32, %struct.spinlock, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ispstat = type { %struct.v4l2_subdev, %struct.media_pad, i8, i8, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.mutex, ptr, i8, i16, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.isp_res_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, %struct.isp_video, %struct.isp_video, i32, i32, %struct.resizer_ratio, i32, i8, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.120 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.resizer_ratio = type { i32, i32 }
%struct.anon.120 = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isp_prev_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_ctrl_handler, i32, i32, %struct.isp_video, %struct.isp_video, %struct.anon.121, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.121 = type { i32, [2 x %struct.prev_params], i32, %struct.spinlock }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.isp_video_fh = type { %struct.v4l2_fh, ptr, %struct.vb2_queue, %struct.v4l2_format, %struct.v4l2_fract }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }
%struct.isp_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ext_controls = type { %union.anon.108, i32, i32, i32, [1 x i32], ptr }
%union.anon.108 = type { i32 }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.109 }>
%union.anon.109 = type { i64 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.117 }
%union.anon.117 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }

@formats = internal global { [24 x %struct.isp_format_info], [160 x i8] } { [24 x %struct.isp_format_info] [%struct.isp_format_info { i32 8193, i32 8193, i32 8193, i32 8193, i32 1497715271, i32 8, i32 1 }, %struct.isp_format_info { i32 8202, i32 8202, i32 8202, i32 8193, i32 540029273, i32 10, i32 2 }, %struct.isp_format_info { i32 8211, i32 8202, i32 8211, i32 8193, i32 540160345, i32 12, i32 2 }, %struct.isp_format_info { i32 12289, i32 12289, i32 12289, i32 12289, i32 825770306, i32 8, i32 1 }, %struct.isp_format_info { i32 12307, i32 12307, i32 12307, i32 12307, i32 1196573255, i32 8, i32 1 }, %struct.isp_format_info { i32 12290, i32 12290, i32 12290, i32 12290, i32 1195528775, i32 8, i32 1 }, %struct.isp_format_info { i32 12308, i32 12308, i32 12308, i32 12308, i32 1111967570, i32 8, i32 1 }, %struct.isp_format_info { i32 12299, i32 12299, i32 12295, i32 0, i32 943800930, i32 8, i32 1 }, %struct.isp_format_info { i32 12300, i32 12300, i32 12302, i32 0, i32 943802210, i32 8, i32 1 }, %struct.isp_format_info { i32 12297, i32 12297, i32 12298, i32 0, i32 808535106, i32 8, i32 1 }, %struct.isp_format_info { i32 12301, i32 12301, i32 12303, i32 0, i32 943805026, i32 8, i32 1 }, %struct.isp_format_info { i32 12295, i32 12295, i32 12295, i32 12289, i32 808535874, i32 10, i32 2 }, %struct.isp_format_info { i32 12302, i32 12302, i32 12302, i32 12307, i32 808534599, i32 10, i32 2 }, %struct.isp_format_info { i32 12298, i32 12298, i32 12298, i32 12290, i32 808534338, i32 10, i32 2 }, %struct.isp_format_info { i32 12303, i32 12303, i32 12303, i32 12308, i32 808535890, i32 10, i32 2 }, %struct.isp_format_info { i32 12296, i32 12295, i32 12296, i32 12289, i32 842090306, i32 12, i32 2 }, %struct.isp_format_info { i32 12304, i32 12302, i32 12304, i32 12307, i32 842089031, i32 12, i32 2 }, %struct.isp_format_info { i32 12305, i32 12298, i32 12305, i32 12290, i32 842088770, i32 12, i32 2 }, %struct.isp_format_info { i32 12306, i32 12303, i32 12306, i32 12308, i32 842090322, i32 12, i32 2 }, %struct.isp_format_info { i32 8207, i32 8207, i32 8207, i32 0, i32 1498831189, i32 16, i32 2 }, %struct.isp_format_info { i32 8209, i32 8209, i32 8209, i32 0, i32 1448695129, i32 16, i32 2 }, %struct.isp_format_info { i32 8198, i32 8198, i32 8198, i32 0, i32 1498831189, i32 8, i32 2 }, %struct.isp_format_info { i32 8200, i32 8200, i32 8200, i32 0, i32 1448695129, i32 8, i32 2 }, %struct.isp_format_info zeroinitializer], [160 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/omap3isp/ispvideo.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@omap3isp_video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&video->mutex\00", [18 x i8] zeroinitializer }, align 32
@omap3isp_video_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&video->pipe.lock\00", [46 x i8] zeroinitializer }, align 32
@omap3isp_video_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&video->stream_lock\00", [44 x i8] zeroinitializer }, align 32
@omap3isp_video_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&video->queue_lock\00", [45 x i8] zeroinitializer }, align 32
@omap3isp_video_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&video->irqlock\00", [16 x i8] zeroinitializer }, align 32
@isp_video_dummy_ops = internal constant { %struct.isp_video_operations, [28 x i8] } zeroinitializer, align 32
@isp_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @isp_video_poll, ptr @video_ioctl2, ptr null, ptr @isp_video_mmap, ptr @isp_video_open, ptr @isp_video_release }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OMAP3 ISP %s %s\00", [16 x i8] zeroinitializer }, align 32
@isp_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @isp_video_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_get_format, ptr null, ptr @isp_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_set_format, ptr null, ptr @isp_video_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_try_format, ptr null, ptr @isp_video_try_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_reqbufs, ptr @isp_video_querybuf, ptr @isp_video_qbuf, ptr null, ptr @isp_video_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_streamon, ptr @isp_video_streamoff, ptr null, ptr null, ptr null, ptr @isp_video_enum_input, ptr @isp_video_g_input, ptr @isp_video_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_get_selection, ptr @isp_video_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_get_param, ptr @isp_video_set_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@omap3isp_video_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 1490, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: could not register video device (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap3isp_video_register\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap3isp_video_register._entry_ptr = internal global ptr @omap3isp_video_register._entry, section ".printk_index", align 4
@isp_video_queue_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @isp_video_queue_setup, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_buffer_prepare, ptr null, ptr null, ptr @isp_video_start_streaming, ptr null, ptr @isp_video_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isp_video_buffer_prepare.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str, ptr @.str.19, i8 0, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"isp_video_buffer_prepare\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Buffer address must be aligned to 32 bytes boundary.\0A\00", [42 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ispvideo\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"media\00", [26 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/media/media-entity.h\00", [35 x i8] zeroinitializer }, align 32
@isp_video_check_external_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 994, ptr @.str.26, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't find source, failing now\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"isp_video_check_external_subdevs\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@isp_video_check_external_subdevs._entry_ptr = internal global ptr @isp_video_check_external_subdevs._entry, section ".printk_index", align 4
@isp_video_check_external_subdevs._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str, i32 1008, ptr @.str.26, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get_fmt returned null!\0A\00", [40 x i8] zeroinitializer }, align 32
@isp_video_check_external_subdevs._entry_ptr.29 = internal global ptr @isp_video_check_external_subdevs._entry.27, section ".printk_index", align 4
@isp_video_check_external_subdevs._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str, i32 1026, ptr @.str.26, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no pixel rate control in subdev %s\0A\00", [60 x i8] zeroinitializer }, align 32
@isp_video_check_external_subdevs._entry_ptr.32 = internal global ptr @isp_video_check_external_subdevs._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.40 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 39, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 521, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1421, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1426, i32 15 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1440, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1443, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1444, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1445, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1446, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"isp_video_dummy_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1411, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"isp_video_fops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1398, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1454, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"isp_video_ioctl_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1266, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1488, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"isp_video_queue_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 490, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 365, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1163, i32 7 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 653, i32 23 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 655, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant [32 x i8] c"../include/media/media-entity.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 468, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 994, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1008, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1025, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [46 x i8] c"../drivers/media/platform/omap3isp/ispvideo.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1246, i32 23 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @isp_video_check_external_subdevs._entry, ptr @isp_video_check_external_subdevs._entry.27, ptr @isp_video_check_external_subdevs._entry.30, ptr @isp_video_check_external_subdevs._entry_ptr, ptr @isp_video_check_external_subdevs._entry_ptr.29, ptr @isp_video_check_external_subdevs._entry_ptr.32, ptr @omap3isp_video_register._entry, ptr @omap3isp_video_register._entry_ptr, ptr @formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @omap3isp_video_init.__key, ptr @.str.3, ptr @omap3isp_video_init.__key.4, ptr @.str.5, ptr @omap3isp_video_init.__key.6, ptr @.str.7, ptr @omap3isp_video_init.__key.8, ptr @.str.9, ptr @omap3isp_video_init.__key.10, ptr @.str.11, ptr @isp_video_dummy_ops, ptr @isp_video_fops, ptr @.str.12, ptr @isp_video_ioctl_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @isp_video_queue_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_video_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_video_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_video_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_video_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_dummy_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_video_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_check_external_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_check_external_subdevs._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_check_external_subdevs._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap3isp_video_format_info(i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %code)
  %cmp2 = icmp eq i32 %0, %code
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %code)
  %cmp2.1 = icmp eq i32 %1, %code
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %2 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %code)
  %cmp2.2 = icmp eq i32 %2, %code
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %code)
  %cmp2.3 = icmp eq i32 %3, %code
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %code)
  %cmp2.4 = icmp eq i32 %4, %code
  br i1 %cmp2.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %code)
  %cmp2.5 = icmp eq i32 %5, %code
  br i1 %cmp2.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %code)
  %cmp2.6 = icmp eq i32 %6, %code
  br i1 %cmp2.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %code)
  %cmp2.7 = icmp eq i32 %7, %code
  br i1 %cmp2.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %8 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %code)
  %cmp2.8 = icmp eq i32 %8, %code
  br i1 %cmp2.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %9 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %code)
  %cmp2.9 = icmp eq i32 %9, %code
  br i1 %cmp2.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %10 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %code)
  %cmp2.10 = icmp eq i32 %10, %code
  br i1 %cmp2.10, label %for.cond.9.cleanup_crit_edge, label %for.cond.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %11 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %code)
  %cmp2.11 = icmp eq i32 %11, %code
  br i1 %cmp2.11, label %for.cond.10.cleanup_crit_edge, label %for.cond.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %12 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %code)
  %cmp2.12 = icmp eq i32 %12, %code
  br i1 %cmp2.12, label %for.cond.11.cleanup_crit_edge, label %for.cond.12

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %13 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %code)
  %cmp2.13 = icmp eq i32 %13, %code
  br i1 %cmp2.13, label %for.cond.12.cleanup_crit_edge, label %for.cond.13

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %14 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %code)
  %cmp2.14 = icmp eq i32 %14, %code
  br i1 %cmp2.14, label %for.cond.13.cleanup_crit_edge, label %for.cond.14

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  %15 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %code)
  %cmp2.15 = icmp eq i32 %15, %code
  br i1 %cmp2.15, label %for.cond.14.cleanup_crit_edge, label %for.cond.15

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.15:                                      ; preds = %for.cond.14
  %16 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %code)
  %cmp2.16 = icmp eq i32 %16, %code
  br i1 %cmp2.16, label %for.cond.15.cleanup_crit_edge, label %for.cond.16

for.cond.15.cleanup_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.16:                                      ; preds = %for.cond.15
  %17 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %code)
  %cmp2.17 = icmp eq i32 %17, %code
  br i1 %cmp2.17, label %for.cond.16.cleanup_crit_edge, label %for.cond.17

for.cond.16.cleanup_crit_edge:                    ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.17:                                      ; preds = %for.cond.16
  %18 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 18), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %code)
  %cmp2.18 = icmp eq i32 %18, %code
  br i1 %cmp2.18, label %for.cond.17.cleanup_crit_edge, label %for.cond.18

for.cond.17.cleanup_crit_edge:                    ; preds = %for.cond.17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.18:                                      ; preds = %for.cond.17
  %19 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %code)
  %cmp2.19 = icmp eq i32 %19, %code
  br i1 %cmp2.19, label %for.cond.18.cleanup_crit_edge, label %for.cond.19

for.cond.18.cleanup_crit_edge:                    ; preds = %for.cond.18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.19:                                      ; preds = %for.cond.18
  %20 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 20), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %code)
  %cmp2.20 = icmp eq i32 %20, %code
  br i1 %cmp2.20, label %for.cond.19.cleanup_crit_edge, label %for.cond.20

for.cond.19.cleanup_crit_edge:                    ; preds = %for.cond.19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.20:                                      ; preds = %for.cond.19
  %21 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %code)
  %cmp2.21 = icmp eq i32 %21, %code
  br i1 %cmp2.21, label %for.cond.20.cleanup_crit_edge, label %for.cond.21

for.cond.20.cleanup_crit_edge:                    ; preds = %for.cond.20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.21:                                      ; preds = %for.cond.20
  %22 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 22), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %code)
  %cmp2.22 = icmp eq i32 %22, %code
  br i1 %cmp2.22, label %for.cond.21.cleanup_crit_edge, label %for.cond.22

for.cond.21.cleanup_crit_edge:                    ; preds = %for.cond.21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.22:                                      ; preds = %for.cond.21
  call void @__sanitizer_cov_trace_pc() #15
  %23 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %code)
  %cmp2.23 = icmp eq i32 %23, %code
  %spec.select = select i1 %cmp2.23, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 23), ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.22, %for.cond.21.cleanup_crit_edge, %for.cond.20.cleanup_crit_edge, %for.cond.19.cleanup_crit_edge, %for.cond.18.cleanup_crit_edge, %for.cond.17.cleanup_crit_edge, %for.cond.16.cleanup_crit_edge, %for.cond.15.cleanup_crit_edge, %for.cond.14.cleanup_crit_edge, %for.cond.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @formats, %entry.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 1), %for.cond.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 2), %for.cond.1.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 3), %for.cond.2.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 4), %for.cond.3.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 5), %for.cond.4.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 6), %for.cond.5.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 7), %for.cond.6.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 8), %for.cond.7.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 9), %for.cond.8.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 10), %for.cond.9.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 11), %for.cond.10.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 12), %for.cond.11.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 13), %for.cond.12.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 14), %for.cond.13.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 15), %for.cond.14.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 16), %for.cond.15.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 17), %for.cond.16.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 18), %for.cond.17.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 19), %for.cond.18.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 20), %for.cond.19.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 21), %for.cond.20.cleanup_crit_edge ], [ getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 22), %for.cond.21.cleanup_crit_edge ], [ %spec.select, %for.cond.22 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap3isp_video_buffer_next(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe2 = getelementptr inbounds %struct.media_entity, ptr %video, i32 0, i32 14
  %0 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe2, align 4
  %irqlock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 17
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #13
  %dmaqueue = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 18
  %2 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i.not = icmp eq ptr %3, %dmaqueue
  br i1 %cmp.i.not, label %do.end19, label %if.end35, !prof !79

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 9, ptr noundef null) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call5) #13
  br label %cleanup

if.end35:                                         ; preds = %entry
  %add.ptr39 = getelementptr i8, ptr %3, i32 -736
  %call.i.i184 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i184, label %if.end.i.i, label %if.end35.list_del.exit_crit_edge

if.end35.list_del.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
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
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call5) #13
  %call.i = tail call i64 @ktime_get() #13
  %timestamp = getelementptr i8, ptr %3, i32 -712
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %timestamp, align 8
  %output = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %output, align 4
  %cmp42 = icmp eq ptr %14, %video
  br i1 %cmp42, label %land.lhs.true, label %list_del.exit.if.else_crit_edge

list_del.exit.if.else_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %list_del.exit
  %do_propagation = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %do_propagation to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %do_propagation, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool44.not = icmp eq i8 %16, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %frame_number = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_number, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %frame_number, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_number, ptr %frame_number, i32 1, ptr elementtype(i32) %frame_number) #13, !srcloc !82
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %list_del.exit.if.else_crit_edge
  %frame_number48 = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 10
  %call.i.i183 = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_number48, i32 noundef 4) #13
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
  %field = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp53.not = icmp eq i32 %22, 1
  br i1 %cmp53.not, label %if.end52.if.end58_crit_edge, label %if.then55

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %sequence57 = getelementptr i8, ptr %3, i32 -272
  %23 = ptrtoint ptr %sequence57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sequence57, align 8
  %div182 = lshr i32 %24, 1
  store i32 %div182, ptr %sequence57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52.if.end58_crit_edge
  %25 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %field, align 4
  %field61 = getelementptr i8, ptr %3, i32 -292
  %27 = ptrtoint ptr %field61 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %field61, align 4
  %type = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp62 = icmp eq i32 %29, 1
  br i1 %cmp62, label %land.lhs.true64, label %if.end58.if.end70_crit_edge

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

land.lhs.true64:                                  ; preds = %if.end58
  %error = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %error, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool65.not = icmp eq i8 %31, 0
  br i1 %tobool65.not, label %land.lhs.true64.if.end70_crit_edge, label %if.then67

land.lhs.true64.if.end70_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %error, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %land.lhs.true64.if.end70_crit_edge, %if.end58.if.end70_crit_edge
  %vb_state.0 = phi i32 [ 6, %if.then67 ], [ 5, %land.lhs.true64.if.end70_crit_edge ], [ 5, %if.end58.if.end70_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %add.ptr39, i32 noundef %vb_state.0) #13
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #13
  %33 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i185.not = icmp eq ptr %34, %dmaqueue
  br i1 %cmp.i185.not, label %if.then90, label %if.end118

if.then90:                                        ; preds = %if.end70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call82) #13
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp93 = icmp eq i32 %36, 1
  %. = select i1 %cmp93, i32 -73, i32 -69
  %lock = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 1
  %call106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state111 = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %state111 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state111, align 4
  %and = and i32 %38, %.
  store i32 %and, ptr %state111, align 4
  %stream_state = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 12, i32 3
  %39 = ptrtoint ptr %stream_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stream_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp113 = icmp eq i32 %40, 1
  br i1 %cmp113, label %if.then115, label %if.then90.if.end116_crit_edge

if.then90.if.end116_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then115:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  %dmaqueue_flags = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 19
  %41 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dmaqueue_flags, align 8
  %or = or i32 %42, 1
  store i32 %or, ptr %dmaqueue_flags, align 8
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.then90.if.end116_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call106) #13
  br label %cleanup

if.end118:                                        ; preds = %if.end70
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp120 = icmp eq i32 %44, 1
  br i1 %cmp120, label %land.lhs.true122, label %if.end118.if.end130_crit_edge

if.end118.if.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

land.lhs.true122:                                 ; preds = %if.end118
  %input = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input, align 4
  %cmp123.not = icmp eq ptr %46, null
  br i1 %cmp123.not, label %land.lhs.true122.if.end130_crit_edge, label %if.then125

land.lhs.true122.if.end130_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then125:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #15
  %lock126 = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock126) #13
  %state127 = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %state127 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state127, align 4
  %and128 = and i32 %48, -65
  store i32 %and128, ptr %state127, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock126) #13
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %land.lhs.true122.if.end130_crit_edge, %if.end118.if.end130_crit_edge
  %49 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dmaqueue, align 8
  %add.ptr135 = getelementptr i8, ptr %50, i32 -736
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call82) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.end116, %do.end19
  %retval.0 = phi ptr [ null, %do.end19 ], [ null, %if.end116 ], [ %add.ptr135, %if.end130 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_video_cancel_stream(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #13
  %dmaqueue.i = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 18
  %0 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dmaqueue.i, align 4
  %cmp.i.not4.i = icmp eq ptr %1, %dmaqueue.i
  br i1 %cmp.i.not4.i, label %entry.omap3isp_video_return_buffers.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.omap3isp_video_return_buffers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %omap3isp_video_return_buffers.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #13
  %11 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dmaqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %dmaqueue.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.omap3isp_video_return_buffers.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

list_del.exit.i.omap3isp_video_return_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %omap3isp_video_return_buffers.exit

omap3isp_video_return_buffers.exit:               ; preds = %list_del.exit.i.omap3isp_video_return_buffers.exit_crit_edge, %entry.omap3isp_video_return_buffers.exit_crit_edge
  %error = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 14
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %error, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_video_resume(ptr noundef %video, i32 noundef %continuous) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %continuous)
  %tobool.not = icmp eq i32 %continuous, 0
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 15
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  tail call void @vb2_discard_done(ptr noundef %3) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %dmaqueue = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 18
  %4 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i.not = icmp eq ptr %5, %dmaqueue
  br i1 %cmp.i.not, label %if.end.if.end12.sink.split_crit_edge, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end.if.end12.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.sink.split

if.end.thread:                                    ; preds = %entry
  %dmaqueue23 = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 18
  %6 = ptrtoint ptr %dmaqueue23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %dmaqueue23, align 4
  %cmp.i24.not = icmp eq ptr %7, %dmaqueue23
  br i1 %cmp.i24.not, label %if.end.thread.if.end12_crit_edge, label %if.end.thread.if.then3_crit_edge

if.end.thread.if.then3_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end.thread.if.end12_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then3:                                         ; preds = %if.end.thread.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %8 = phi ptr [ %7, %if.end.thread.if.then3_crit_edge ], [ %5, %if.end.if.then3_crit_edge ]
  %add.ptr = getelementptr i8, ptr %8, i32 -736
  %ops = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 20
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call6 = tail call i32 %12(ptr noundef %video, ptr noundef %add.ptr) #13
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then3, %if.end.if.end12.sink.split_crit_edge
  %.sink27 = phi i32 [ 2, %if.then3 ], [ 1, %if.end.if.end12.sink.split_crit_edge ]
  %dmaqueue_flags = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 19
  %13 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dmaqueue_flags, align 8
  %or10 = or i32 %14, %.sink27
  store i32 %or10, ptr %dmaqueue_flags, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.end.thread.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_discard_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_video_init(ptr noundef %video, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %flags, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags3 = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %flags3, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 14
  %5 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %vfl_dir, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %direction.0 = phi ptr [ @.str.2, %sw.bb1 ], [ @.str.1, %sw.bb ]
  %pad6 = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 2
  %call = tail call i32 @media_entity_pads_init(ptr noundef %video, i16 noundef zeroext 1, ptr noundef %pad6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  %mutex = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @omap3isp_video_init.__key) #13
  %active = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  %6 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %active, align 4
  %lock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 12, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @omap3isp_video_init.__key.4, i16 noundef signext 3) #13
  %stream_lock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %stream_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @omap3isp_video_init.__key.6) #13
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @omap3isp_video_init.__key.8) #13
  %irqlock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.11, ptr noundef nonnull @omap3isp_video_init.__key.10, i16 noundef signext 3) #13
  %ops = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 20
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %cmp21 = icmp eq ptr %8, null
  br i1 %cmp21, label %if.then22, label %do.body.if.end24_crit_edge

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @isp_video_dummy_ops, ptr %ops, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body.if.end24_crit_edge
  %fops = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 3
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @isp_video_fops, ptr %fops, align 4
  %name27 = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 12
  %call28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name27, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull %direction.0)
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 13
  %11 = ptrtoint ptr %vfl_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vfl_type, align 8
  %release = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 23
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @video_device_release_empty, ptr %release, align 8
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 24
  %13 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @isp_video_ioctl_ops, ptr %ioctl_ops, align 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp33 = icmp eq i32 %15, 1
  %spec.select = select i1 %cmp33, i32 67108865, i32 67108866
  %16 = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %16, align 8
  %stream_state = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 12, i32 3
  %18 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %stream_state, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %video, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_video_cleanup(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 16
  tail call void @mutex_destroy(ptr noundef %queue_lock) #13
  %stream_lock = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %stream_lock) #13
  %mutex = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_video_register(ptr noundef %video, ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %vdev, ptr %v4l2_dev, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %video, i32 0, i32 3
  %1 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %video, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %isp = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 5
  %5 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_video_unregister(ptr noundef %video) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @video_unregister_device(ptr noundef %video) #13
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
define internal i32 @isp_video_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %3, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @vb2_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %1, i32 0, i32 2
  %call = tail call i32 @vb2_mmap(ptr noundef %queue, ptr noundef %vma) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 920) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %1) #13
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #13
  %isp = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isp, align 4
  %call4 = tail call ptr @omap3isp_get(ptr noundef %4) #13
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.end.if.then30_crit_edge, label %if.end7

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.if.then30.sink.split_crit_edge, label %if.end13

if.end7.if.then30.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30.sink.split

if.end13:                                         ; preds = %if.end7
  %queue14 = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2
  %type = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 8
  %7 = ptrtoint ptr %queue14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %queue14, align 4
  %io_modes = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %io_modes, align 8
  %drv_priv = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 10
  %9 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @isp_video_queue_ops, ptr %ops, align 8
  %mem_ops = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 12
  %12 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 752, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 13
  %13 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8192, ptr %timestamp_flags, align 8
  %14 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %dev17 = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dev17, align 4
  %call19 = tail call i32 @vb2_queue_init(ptr noundef %queue14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end13.if.then30.sink.split_crit_edge, label %done

if.end13.if.then30.sink.split_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30.sink.split

done:                                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %format = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 3, i32 1
  %20 = call ptr @memset(ptr %19, i32 0, i32 200)
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 8
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %format, align 4
  %denominator = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %denominator, align 4
  %video27 = getelementptr inbounds %struct.isp_video_fh, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %video27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %video27, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %26 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

if.then30.sink.split:                             ; preds = %if.end13.if.then30.sink.split_crit_edge, %if.end7.if.then30.sink.split_crit_edge
  %ret.0.ph.ph = phi i32 [ %call9, %if.end7.if.then30.sink.split_crit_edge ], [ %call19, %if.end13.if.then30.sink.split_crit_edge ]
  %27 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %isp, align 4
  tail call void @omap3isp_put(ptr noundef %28) #13
  br label %if.then30

if.then30:                                        ; preds = %if.then30.sink.split, %if.end.if.then30_crit_edge
  %ret.0.ph = phi i32 [ -16, %if.end.if.then30_crit_edge ], [ %ret.0.ph.ph, %if.then30.sink.split ]
  tail call void @v4l2_fh_del(ptr noundef nonnull %call7.i.i) #13
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.0.ph, %if.then30 ], [ %call19, %done ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  %call1 = tail call i32 @isp_video_streamoff(ptr noundef %file, ptr noundef %3, i32 noundef %5)
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %3, i32 0, i32 2
  tail call void @vb2_queue_release(ptr noundef %queue) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  tail call void @v4l2_pipeline_pm_put(ptr noundef %1) #13
  tail call void @v4l2_fh_del(ptr noundef %3) #13
  tail call void @v4l2_fh_exit(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %3) #13
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data, align 4
  %isp = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp, align 4
  tail call void @omap3isp_put(ptr noundef %8) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isp_video_queue_setup(ptr nocapture noundef readonly %queue, ptr nocapture noundef %count, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %video1 = getelementptr inbounds %struct.isp_video_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %video1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video1, align 4
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_planes, align 4
  %sizeimage = getelementptr inbounds %struct.isp_video_fh, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %capture_mem = getelementptr inbounds %struct.isp_video, ptr %3, i32 0, i32 6
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
define internal i32 @isp_video_buffer_prepare(ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %video4 = getelementptr inbounds %struct.isp_video_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %video4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video4, align 4
  %error = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %error, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !84

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %buf, i32 noundef 0) #13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %and = and i32 %9, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end22, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_video_buffer_prepare.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_video_buffer_prepare, %cleanup)) #13
          to label %if.then20 [label %cleanup], !srcloc !85

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %isp = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_video_buffer_prepare.__UNIQUE_ID_ddebug304, ptr noundef %13, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.end22.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.end22.vb2_set_plane_payload.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.end22
  %sizeimage = getelementptr inbounds %struct.isp_video_fh, ptr %3, i32 0, i32 3, i32 1, i32 0, i32 5
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp1.i = icmp ult i32 %19, %17
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !84

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1163, i32 noundef 9, ptr noundef null) #13
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %21, %if.then38.i ], [ %17, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %22 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end22.vb2_set_plane_payload.exit_crit_edge
  %dma = getelementptr inbounds %struct.isp_buffer, ptr %buf, i32 0, i32 2
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %dma, align 8
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %if.then20, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.then20 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_start_streaming(ptr nocapture noundef readonly %queue, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %video1 = getelementptr inbounds %struct.isp_video_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %video1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video1, align 4
  %pipe3 = getelementptr inbounds %struct.media_entity, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %pipe3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe3, align 4
  %input = getelementptr inbounds %struct.isp_pipeline, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @omap3isp_pipeline_set_stream(ptr noundef %5, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  %irqlock = getelementptr inbounds %struct.isp_video, ptr %3, i32 0, i32 17
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #13
  %dmaqueue.i = getelementptr inbounds %struct.isp_video, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %dmaqueue.i, align 4
  %cmp.i.not4.i = icmp eq ptr %9, %dmaqueue.i
  br i1 %cmp, label %do.body6, label %do.body16

do.body6:                                         ; preds = %if.end
  br i1 %cmp.i.not4.i, label %do.body6.cleanup.sink.split_crit_edge, label %do.body6.while.body.i_crit_edge

do.body6.while.body.i_crit_edge:                  ; preds = %do.body6
  br label %while.body.i

do.body6.cleanup.sink.split_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.body6.while.body.i_crit_edge
  %10 = phi ptr [ %20, %list_del.exit.i.while.body.i_crit_edge ], [ %9, %do.body6.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 3) #13
  %19 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %dmaqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %dmaqueue.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.cleanup.sink.split_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

list_del.exit.i.cleanup.sink.split_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body16:                                        ; preds = %if.end
  br i1 %cmp.i.not4.i, label %if.then31, label %do.body16.cleanup.sink.split_crit_edge

do.body16.cleanup.sink.split_crit_edge:           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then31:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %dmaqueue_flags = getelementptr inbounds %struct.isp_video, ptr %3, i32 0, i32 19
  %21 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dmaqueue_flags, align 8
  %or = or i32 %22, 1
  store i32 %or, ptr %dmaqueue_flags, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then31, %do.body16.cleanup.sink.split_crit_edge, %list_del.exit.i.cleanup.sink.split_crit_edge, %do.body6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call4, %do.body6.cleanup.sink.split_crit_edge ], [ 0, %if.then31 ], [ 0, %do.body16.cleanup.sink.split_crit_edge ], [ %call4, %list_del.exit.i.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call10) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp_video_buffer_queue(ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %video4 = getelementptr inbounds %struct.isp_video_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %video4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video4, align 4
  %pipe7 = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %pipe7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe7, align 4
  %irqlock = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 17
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #13
  %error = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %error, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @vb2_buffer_done(ptr noundef %buf, i32 noundef 6) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call13) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmaqueue = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dmaqueue, align 4
  %cmp.i.not = icmp eq ptr %11, %dmaqueue
  %irqlist = getelementptr inbounds %struct.isp_buffer, ptr %buf, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %irqlist, ptr noundef %13, ptr noundef %dmaqueue) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %irqlist, ptr %prev.i, align 4
  %15 = ptrtoint ptr %irqlist to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dmaqueue, ptr %irqlist, align 4
  %prev3.i.i = getelementptr inbounds %struct.isp_buffer, ptr %buf, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %irqlist, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call13) #13
  br i1 %cmp.i.not, label %if.then23, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then23:                                        ; preds = %list_add_tail.exit
  %type = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp24 = icmp eq i32 %19, 1
  %. = select i1 %cmp24, i32 8, i32 4
  %lock = getelementptr inbounds %struct.isp_pipeline, ptr %7, i32 0, i32 1
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state41 = getelementptr inbounds %struct.isp_pipeline, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %state41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state41, align 4
  %or = or i32 %21, %.
  store i32 %or, ptr %state41, align 4
  %ops = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 20
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call42 = tail call i32 %25(ptr noundef %5, ptr noundef %buf) #13
  %dmaqueue_flags = getelementptr inbounds %struct.isp_video, ptr %5, i32 0, i32 19
  %26 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dmaqueue_flags, align 8
  %or43 = or i32 %27, 2
  store i32 %or43, ptr %dmaqueue_flags, align 8
  %28 = ptrtoint ptr %state41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %29)
  %cmp.i85.not = icmp eq i32 %29, 63
  br i1 %cmp.i85.not, label %if.then46, label %if.end55.critedge

if.then46:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %state41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 127, ptr %state41, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call36) #13
  %call53 = tail call i32 @omap3isp_pipeline_set_stream(ptr noundef %7, i32 noundef 2) #13
  br label %cleanup

if.end55.critedge:                                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call36) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end55.critedge, %if.then46, %list_add_tail.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_pipeline_set_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_streamoff(ptr noundef %file, ptr noundef %fh, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pipe3 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pipe3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe3, align 4
  %type6 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %type)
  %cmp.not = icmp eq i32 %5, %type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #13
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 2
  %streaming.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 2, i32 28
  %6 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  br i1 %tobool.i, label %if.end10, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp12 = icmp eq i32 %8, 1
  %. = select i1 %cmp12, i32 -11, i32 -6
  %lock = getelementptr inbounds %struct.isp_pipeline, ptr %3, i32 0, i32 1
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state24 = getelementptr inbounds %struct.isp_pipeline, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state24, align 4
  %and = and i32 %10, %.
  store i32 %and, ptr %state24, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #13
  %call26 = tail call i32 @omap3isp_pipeline_set_stream(ptr noundef %3, i32 noundef 0) #13
  %irqlock.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #13
  %dmaqueue.i.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %dmaqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dmaqueue.i.i, align 4
  %cmp.i.not4.i.i = icmp eq ptr %12, %dmaqueue.i.i
  br i1 %cmp.i.not4.i.i, label %if.end10.omap3isp_video_cancel_stream.exit_crit_edge, label %if.end10.while.body.i.i_crit_edge

if.end10.while.body.i.i_crit_edge:                ; preds = %if.end10
  br label %while.body.i.i

if.end10.omap3isp_video_cancel_stream.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %omap3isp_video_cancel_stream.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %if.end10.while.body.i.i_crit_edge
  %13 = phi ptr [ %23, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %12, %if.end10.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -736
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i.i, i32 noundef 6) #13
  %22 = ptrtoint ptr %dmaqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %dmaqueue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %dmaqueue.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.omap3isp_video_cancel_stream.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

list_del.exit.i.i.omap3isp_video_cancel_stream.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %omap3isp_video_cancel_stream.exit

omap3isp_video_cancel_stream.exit:                ; preds = %list_del.exit.i.i.omap3isp_video_cancel_stream.exit_crit_edge, %if.end10.omap3isp_video_cancel_stream.exit_crit_edge
  %error.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %error.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call2.i) #13
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %call29 = tail call i32 @vb2_streamoff(ptr noundef %queue, i32 noundef %type) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  %queue31 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %queue31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %queue31, align 4
  %26 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %error.i, align 8
  tail call void @media_pipeline_stop(ptr noundef %1) #13
  %ent_enum = getelementptr inbounds %struct.isp_pipeline, ptr %3, i32 0, i32 6
  tail call void @media_entity_enum_cleanup(ptr noundef %ent_enum) #13
  br label %done

done:                                             ; preds = %omap3isp_video_cancel_stream.exit, %if.end.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_enum_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.21, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 12
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.22, i32 noundef 32) #13
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2080374781, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_get_format(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %type1 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mutex = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %format2 = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %format, ptr %format2, i32 204)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_set_format(ptr noundef %file, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %format) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fmt) #13
  %2 = call ptr @memset(ptr %fmt, i32 255, i32 48)
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %type1 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %field, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %8, label %if.end.sw.epilog.sink.split_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 7, label %sw.bb
    i32 4, label %sw.bb9
    i32 8, label %if.end.sw.bb12_crit_edge
    i32 9, label %if.end.sw.bb12_crit_edge42
  ]

if.end.sw.bb12_crit_edge42:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %field, align 4
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb9, %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge42
  %isp = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp, align 4
  %video_out = getelementptr inbounds %struct.isp_device, ptr %12, i32 0, i32 26, i32 6
  %cmp13.not = icmp eq ptr %1, %video_out
  br i1 %cmp13.not, label %sw.bb12.sw.epilog_crit_edge, label %sw.bb12.sw.epilog.sink.split_crit_edge

sw.bb12.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb12.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge, %if.end.sw.epilog.sink.split_crit_edge
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb12.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  call fastcc void @isp_video_pix_to_mbus(ptr noundef %fmt2, ptr noundef nonnull %fmt)
  %call23 = call fastcc i32 @isp_video_mbus_to_pix(ptr noundef %1, ptr noundef nonnull %fmt, ptr noundef %fmt2)
  %mutex = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %format24 = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %format24, ptr %format, i32 204)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fmt) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_try_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #13
  %2 = getelementptr inbounds i8, ptr %fmt, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %type1 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pad1.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 2
  %call.i57 = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #13
  %tobool.not.i = icmp eq ptr %call.i57, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i57, i32 0, i32 1
  %8 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i, label %if.end5, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i57, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %13 to i32
  %fmt6 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %format7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  call fastcc void @isp_video_pix_to_mbus(ptr noundef %fmt6, ptr noundef %format7)
  %pad8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %14 = ptrtoint ptr %pad8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %pad8, align 4
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
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_fmt, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %if.else16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %get_fmt19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %get_fmt19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_fmt19, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.if.end31_crit_edge

land.lhs.true18.if.end31_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %land.lhs.true18.if.end31_crit_edge
  %.sink = phi ptr [ %21, %if.else24 ], [ %24, %land.lhs.true18.if.end31_crit_edge ]
  %call28 = call i32 %.sink(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %fmt) #13
  %25 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call28, label %cond.false [
    i32 0, label %if.end35
    i32 -515, label %if.end31.cleanup_crit_edge
  ]

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = call fastcc i32 @isp_video_mbus_to_pix(ptr noundef %1, ptr noundef %format7, ptr noundef %fmt6)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %cond.false, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ %call28, %cond.false ], [ -25, %if.end31.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -25, %land.lhs.true.cleanup_crit_edge ], [ -25, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_reqbufs(ptr noundef %file, ptr noundef %fh, ptr noundef %rb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 2
  %call1 = tail call i32 @vb2_reqbufs(ptr noundef %queue, ptr noundef %rb) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_querybuf(ptr noundef %file, ptr noundef %fh, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 2
  %call1 = tail call i32 @vb2_querybuf(ptr noundef %queue, ptr noundef %b) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_qbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 2
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %call2 = tail call i32 @vb2_qbuf(ptr noundef %queue, ptr noundef %5, ptr noundef %b) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_dqbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call1 = tail call i32 @vb2_dqbuf(ptr noundef %queue, ptr noundef %b, i1 noundef zeroext %tobool) #13
  tail call void @mutex_unlock(ptr noundef %queue_lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_streamon(ptr noundef %file, ptr noundef %fh, i32 noundef %type) #2 align 64 {
entry:
  %fmt.i135 = alloca %struct.v4l2_subdev_format, align 4
  %ctrls.i = alloca %struct.v4l2_ext_controls, align 4
  %ctrl.i = alloca %struct.v4l2_ext_control, align 4
  %rate.i = alloca i32, align 4
  %graph.i = alloca %struct.media_graph, align 4
  %fmt.i.i = alloca %struct.v4l2_subdev_format, align 4
  %format.i = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type1 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp.not = icmp eq i32 %3, %type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #13
  %pipe3 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %pipe3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe3, align 4
  %tobool.not = icmp eq ptr %5, null
  %pipe10 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 12
  %cond = select i1 %tobool.not, ptr %pipe10, ptr %5
  %ent_enum = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 6
  %isp = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp, align 4
  %entity_internal_idx_max.i = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %entity_internal_idx_max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entity_internal_idx_max.i, align 8
  %add.i = add i32 %9, 1
  %call.i130 = tail call i32 @__media_entity_enum_init(ptr noundef %ent_enum, i32 noundef %add.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool12.not = icmp eq i32 %call.i130, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end
  %10 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp, align 4
  %arrayidx = getelementptr %struct.isp_device, ptr %11, i32 0, i32 19, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 @clk_get_rate(ptr noundef %13) #13
  %l3_ick = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 7
  %14 = ptrtoint ptr %l3_ick to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call16, ptr %l3_ick, align 4
  %max_rate = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 8
  %15 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call16, ptr %max_rate, align 4
  %call21 = tail call i32 @media_pipeline_start(ptr noundef %1, ptr noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end14.err_pipeline_start_crit_edge, label %if.end24

if.end14.err_pipeline_start_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pipeline_start

if.end24:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %format.i) #13
  %format1.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %format.i, ptr %format1.i, i32 204)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i.i) #13
  %17 = getelementptr inbounds i8, ptr %fmt.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 255, i32 80)
  %pad1.i.i.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i.i) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end24.__isp_video_get_format.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end24.__isp_video_get_format.exit.thread.i_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %__isp_video_get_format.exit.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end24
  %entity.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %entity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entity.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i.i

lor.lhs.false.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__isp_video_get_format.exit.thread.i

is_media_entity_v4l2_subdev.exit.i.i.i:           ; preds = %lor.lhs.false.i.i.i
  %obj_type.i.i.i.i = getelementptr inbounds %struct.media_entity, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %obj_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %obj_type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 2
  br i1 %cmp.i.i.i.i, label %if.end.i.i, label %is_media_entity_v4l2_subdev.exit.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__isp_video_get_format.exit.thread.i

if.end.i.i:                                       ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i
  %index.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %index.i.i.i, align 4
  %conv.i.i.i = zext i16 %24 to i32
  %pad1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %pad1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i.i.i, ptr %pad1.i.i, align 4
  %26 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %fmt.i.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #13
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %20, i32 0, i32 6
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 4
  %pad3.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %pad3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad3.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end24.thread.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end24.thread.i.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %get_fmt.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %get_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_fmt.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %32, null
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.if.end24.thread.i.i_crit_edge, label %if.else9.i.i

land.lhs.true.i.i.if.end24.thread.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.thread.i.i

if.else9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not.i.i = icmp eq ptr %33, null
  br i1 %tobool10.not.i.i, label %if.else9.i.i.if.else17.i.i_crit_edge, label %land.lhs.true11.i.i

if.else9.i.i.if.else17.i.i_crit_edge:             ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else17.i.i

land.lhs.true11.i.i:                              ; preds = %if.else9.i.i
  %get_fmt12.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %get_fmt12.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_fmt12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %35, null
  br i1 %tobool13.not.i.i, label %land.lhs.true11.i.i.if.else17.i.i_crit_edge, label %land.lhs.true11.i.i.if.end24.i.i_crit_edge

land.lhs.true11.i.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i.i

land.lhs.true11.i.i.if.else17.i.i_crit_edge:      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else17.i.i

if.else17.i.i:                                    ; preds = %land.lhs.true11.i.i.if.else17.i.i_crit_edge, %if.else9.i.i.if.else17.i.i_crit_edge
  br label %if.end24.i.i

if.end24.thread.i.i:                              ; preds = %land.lhs.true.i.i.if.end24.thread.i.i_crit_edge, %if.end.i.i.if.end24.thread.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  br label %__isp_video_get_format.exit.thread.i

if.end24.i.i:                                     ; preds = %if.else17.i.i, %land.lhs.true11.i.i.if.end24.i.i_crit_edge
  %.sink.i.i = phi ptr [ %32, %if.else17.i.i ], [ %35, %land.lhs.true11.i.i.if.end24.i.i_crit_edge ]
  %call21.i.i = call i32 %.sink.i.i(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %fmt.i.i) #13
  call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool26.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %if.end24.i.i.__isp_video_get_format.exit.i_crit_edge

if.end24.i.i.__isp_video_get_format.exit.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__isp_video_get_format.exit.i

if.end28.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type1, align 8
  %38 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %format.i, align 4
  %fmt31.i.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1
  %call32.i.i = call fastcc i32 @isp_video_mbus_to_pix(ptr noundef %1, ptr noundef %17, ptr noundef %fmt31.i.i) #13
  br label %__isp_video_get_format.exit.i

__isp_video_get_format.exit.thread.i:             ; preds = %if.end24.thread.i.i, %is_media_entity_v4l2_subdev.exit.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge, %if.end24.__isp_video_get_format.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %lor.lhs.false.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge ], [ -22, %if.end24.__isp_video_get_format.exit.thread.i_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.i.i.i.__isp_video_get_format.exit.thread.i_crit_edge ], [ -515, %if.end24.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i.i) #13
  br label %isp_video_check_format.exit.thread

__isp_video_get_format.exit.i:                    ; preds = %if.end28.i.i, %if.end24.i.i.__isp_video_get_format.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call32.i.i, %if.end28.i.i ], [ %call21.i.i, %if.end24.i.i.__isp_video_get_format.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %__isp_video_get_format.exit.i.isp_video_check_format.exit.thread_crit_edge, label %if.end.i

__isp_video_get_format.exit.i.isp_video_check_format.exit.thread_crit_edge: ; preds = %__isp_video_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_format.exit.thread

if.end.i:                                         ; preds = %__isp_video_get_format.exit.i
  %fmt.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3, i32 1
  %pixelformat.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixelformat.i, align 4
  %fmt3.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1
  %pixelformat4.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %pixelformat4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixelformat4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp5.not.i = icmp eq i32 %40, %42
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.i.isp_video_check_format.exit.thread_crit_edge

if.end.i.isp_video_check_format.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_format.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height.i, align 4
  %height9.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %height9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp10.not.i = icmp eq i32 %44, %46
  br i1 %cmp10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.isp_video_check_format.exit.thread_crit_edge

lor.lhs.false.i.isp_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_format.exit.thread

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %47 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fmt.i, align 4
  %49 = ptrtoint ptr %fmt3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fmt3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp16.not.i = icmp eq i32 %48, %50
  br i1 %cmp16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false11.i.isp_video_check_format.exit.thread_crit_edge

lor.lhs.false11.i.isp_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_format.exit.thread

lor.lhs.false17.i:                                ; preds = %lor.lhs.false11.i
  %bytesperline.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 4
  %51 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytesperline.i, align 4
  %bytesperline21.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 4
  %53 = ptrtoint ptr %bytesperline21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytesperline21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp22.not.i = icmp eq i32 %52, %54
  br i1 %cmp22.not.i, label %lor.lhs.false23.i, label %lor.lhs.false17.i.isp_video_check_format.exit.thread_crit_edge

lor.lhs.false17.i.isp_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_format.exit.thread

lor.lhs.false23.i:                                ; preds = %lor.lhs.false17.i
  %sizeimage.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 5
  %55 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sizeimage.i, align 4
  %sizeimage27.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 5
  %57 = ptrtoint ptr %sizeimage27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sizeimage27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp28.not.i = icmp eq i32 %56, %58
  br i1 %cmp28.not.i, label %lor.lhs.false29.i, label %lor.lhs.false23.i.isp_video_check_format.exit.thread_crit_edge

lor.lhs.false23.i.isp_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_format.exit.thread

lor.lhs.false29.i:                                ; preds = %lor.lhs.false23.i
  %field.i = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 3, i32 1, i32 0, i32 3
  %59 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %field.i, align 4
  %field33.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 3
  %61 = ptrtoint ptr %field33.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %field33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp34.not.i = icmp eq i32 %60, %62
  br i1 %cmp34.not.i, label %if.end28, label %lor.lhs.false29.i.isp_video_check_format.exit.thread_crit_edge

lor.lhs.false29.i.isp_video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_format.exit.thread

isp_video_check_format.exit.thread:               ; preds = %lor.lhs.false29.i.isp_video_check_format.exit.thread_crit_edge, %lor.lhs.false23.i.isp_video_check_format.exit.thread_crit_edge, %lor.lhs.false17.i.isp_video_check_format.exit.thread_crit_edge, %lor.lhs.false11.i.isp_video_check_format.exit.thread_crit_edge, %lor.lhs.false.i.isp_video_check_format.exit.thread_crit_edge, %if.end.i.isp_video_check_format.exit.thread_crit_edge, %__isp_video_get_format.exit.i.isp_video_check_format.exit.thread_crit_edge, %__isp_video_get_format.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %__isp_video_get_format.exit.thread.i ], [ -22, %lor.lhs.false29.i.isp_video_check_format.exit.thread_crit_edge ], [ -22, %if.end.i.isp_video_check_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.isp_video_check_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false11.i.isp_video_check_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false17.i.isp_video_check_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false23.i.isp_video_check_format.exit.thread_crit_edge ], [ %retval.0.i.i, %__isp_video_get_format.exit.i.isp_video_check_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format.i) #13
  br label %err_check_format

if.end28:                                         ; preds = %lor.lhs.false29.i
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format.i) #13
  %bpl_padding = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %bpl_padding to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %bpl_padding, align 4
  %64 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bytesperline.i, align 4
  %bpl_value = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 10
  %66 = ptrtoint ptr %bpl_value to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %bpl_value, align 8
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %graph.i) #13
  %67 = call ptr @memset(ptr %graph.i, i32 255, i32 140)
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %graph_mutex.i = getelementptr inbounds %struct.media_device, ptr %69, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #13
  %call.i131 = call i32 @media_graph_walk_init(ptr noundef nonnull %graph.i, ptr noundef %69) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i, label %if.end.i132, label %isp_video_get_graph_data.exit

if.end.i132:                                      ; preds = %if.end28
  call void @media_graph_walk_start(ptr noundef nonnull %graph.i, ptr noundef %1) #13
  %call561.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i) #13
  %tobool6.not62.i = icmp eq ptr %call561.i, null
  br i1 %tobool6.not62.i, label %if.end.i132.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i132.while.end.i_crit_edge:                ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i132
  %idx_max.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 6, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call564.i = phi ptr [ %call561.i, %while.body.lr.ph.i ], [ %call5.i, %cleanup.i.while.body.i_crit_edge ]
  %far_end.063.i = phi ptr [ null, %while.body.lr.ph.i ], [ %far_end.2.i, %cleanup.i.while.body.i_crit_edge ]
  %internal_idx.i.i = getelementptr inbounds %struct.media_entity, ptr %call564.i, i32 0, i32 8
  %70 = ptrtoint ptr %internal_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %internal_idx.i.i, align 4
  %72 = ptrtoint ptr %idx_max.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %idx_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.not.i.i = icmp slt i32 %71, %73
  br i1 %cmp.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !84

do.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 468, i32 noundef 9, ptr noundef null) #13
  br label %media_entity_enum_set.exit.i

if.end21.critedge.i.i:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ent_enum, align 4
  %rem.i.i.i = and i32 %71, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %71, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %75, i32 %div2.i.i.i
  %76 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %77, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %media_entity_enum_set.exit.i

media_entity_enum_set.exit.i:                     ; preds = %if.end21.critedge.i.i, %do.end.i.i
  %cmp.not.i = icmp eq ptr %far_end.063.i, null
  br i1 %cmp.not.i, label %if.end8.i, label %media_entity_enum_set.exit.i.cleanup.i_crit_edge

media_entity_enum_set.exit.i.cleanup.i_crit_edge: ; preds = %media_entity_enum_set.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end8.i:                                        ; preds = %media_entity_enum_set.exit.i
  %cmp11.i = icmp eq ptr %call564.i, %1
  br i1 %cmp11.i, label %if.end8.i.cleanup.i_crit_edge, label %is_media_entity_v4l2_video_device.exit.i

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

is_media_entity_v4l2_video_device.exit.i:         ; preds = %if.end8.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %call564.i, i32 0, i32 2
  %78 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i.i = icmp eq i32 %79, 1
  br i1 %cmp.i.i, label %if.end16.i, label %is_media_entity_v4l2_video_device.exit.i.cleanup.i_crit_edge

is_media_entity_v4l2_video_device.exit.i.cleanup.i_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end16.i:                                       ; preds = %is_media_entity_v4l2_video_device.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.isp_video, ptr %call564.i, i32 0, i32 1
  %80 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type.i, align 8
  %82 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp21.not.i = icmp eq i32 %81, %83
  %spec.select.i133 = select i1 %cmp21.not.i, ptr null, ptr %call564.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end16.i, %is_media_entity_v4l2_video_device.exit.i.cleanup.i_crit_edge, %if.end8.i.cleanup.i_crit_edge, %media_entity_enum_set.exit.i.cleanup.i_crit_edge
  %far_end.2.i = phi ptr [ %spec.select.i133, %if.end16.i ], [ %far_end.063.i, %media_entity_enum_set.exit.i.cleanup.i_crit_edge ], [ null, %if.end8.i.cleanup.i_crit_edge ], [ null, %is_media_entity_v4l2_video_device.exit.i.cleanup.i_crit_edge ]
  %call5.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i) #13
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end.i132.while.end.i_crit_edge
  %far_end.0.lcssa.i = phi ptr [ null, %if.end.i132.while.end.i_crit_edge ], [ %far_end.2.i, %cleanup.i.while.end.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %graph_mutex.i) #13
  call void @media_graph_walk_cleanup(ptr noundef nonnull %graph.i) #13
  %84 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp26.i = icmp eq i32 %85, 1
  br i1 %cmp26.i, label %while.end.i.isp_video_get_graph_data.exit.thread_crit_edge, label %if.else.i

while.end.i.isp_video_get_graph_data.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_get_graph_data.exit.thread

if.else.i:                                        ; preds = %while.end.i
  %cmp28.i = icmp eq ptr %far_end.0.lcssa.i, null
  br i1 %cmp28.i, label %isp_video_get_graph_data.exit.thread151, label %if.else.i.isp_video_get_graph_data.exit.thread_crit_edge

if.else.i.isp_video_get_graph_data.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_get_graph_data.exit.thread

isp_video_get_graph_data.exit.thread151:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i) #13
  br label %err_check_format

isp_video_get_graph_data.exit.thread:             ; preds = %if.else.i.isp_video_get_graph_data.exit.thread_crit_edge, %while.end.i.isp_video_get_graph_data.exit.thread_crit_edge
  %.sink = phi ptr [ %far_end.0.lcssa.i, %while.end.i.isp_video_get_graph_data.exit.thread_crit_edge ], [ %1, %if.else.i.isp_video_get_graph_data.exit.thread_crit_edge ]
  %far_end.0.lcssa.i.sink = phi ptr [ %1, %while.end.i.isp_video_get_graph_data.exit.thread_crit_edge ], [ %far_end.0.lcssa.i, %if.else.i.isp_video_get_graph_data.exit.thread_crit_edge ]
  %input31.i = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 4
  %86 = ptrtoint ptr %input31.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %.sink, ptr %input31.i, align 4
  %output32.i = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 5
  %87 = ptrtoint ptr %output32.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %far_end.0.lcssa.i.sink, ptr %output32.i, align 4
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i) #13
  br label %if.end32

isp_video_get_graph_data.exit:                    ; preds = %if.end28
  call void @mutex_unlock(ptr noundef %graph_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp30 = icmp slt i32 %call.i131, 0
  br i1 %cmp30, label %isp_video_get_graph_data.exit.err_check_format_crit_edge, label %isp_video_get_graph_data.exit.if.end32_crit_edge

isp_video_get_graph_data.exit.if.end32_crit_edge: ; preds = %isp_video_get_graph_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

isp_video_get_graph_data.exit.err_check_format_crit_edge: ; preds = %isp_video_get_graph_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_check_format

if.end32:                                         ; preds = %isp_video_get_graph_data.exit.if.end32_crit_edge, %isp_video_get_graph_data.exit.thread
  %88 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp34 = icmp eq i32 %89, 1
  %. = select i1 %cmp34, i32 34, i32 17
  %90 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %isp, align 4
  %isp_csi2a.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 27
  %isp_csi2c.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 28
  %isp_ccp2.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 29
  %isp_ccdc.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i135) #13
  %92 = getelementptr inbounds i8, ptr %fmt.i135, i32 8
  %93 = call ptr @memset(ptr %92, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctrls.i) #13
  %94 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls.i, i32 0, i32 1
  %95 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctrl.i) #13
  %96 = getelementptr inbounds %struct.v4l2_ext_control, ptr %ctrl.i, i32 0, i32 3
  %input.i136 = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 4
  %97 = ptrtoint ptr %input.i136 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %input.i136, align 4
  %cmp.not.i137 = icmp eq ptr %98, null
  br i1 %cmp.not.i137, label %for.cond.preheader.i, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

for.cond.preheader.i:                             ; preds = %if.end32
  %idx_max.i.i138 = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 6, i32 1
  %internal_idx.i.i140 = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 27, i32 0, i32 0, i32 8
  %99 = ptrtoint ptr %internal_idx.i.i140 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %internal_idx.i.i140, align 4
  %101 = ptrtoint ptr %idx_max.i.i138 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %idx_max.i.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp.not.i.i141 = icmp slt i32 %100, %102
  br i1 %cmp.not.i.i141, label %media_entity_enum_test.exit.i, label %media_entity_enum_test.exit.thread.i, !prof !84

media_entity_enum_test.exit.thread.i:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 500, i32 noundef 9, ptr noundef null) #13
  br label %if.end12.i

media_entity_enum_test.exit.i:                    ; preds = %for.cond.preheader.i
  %103 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ent_enum, align 4
  %div3.i.i.i = lshr i32 %100, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %104, i32 %div3.i.i.i
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %100, 31
  %107 = shl nuw i32 1, %and.i.i.i
  %108 = and i32 %106, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool23.i.not.i = icmp eq i32 %108, 0
  br i1 %tobool23.i.not.i, label %media_entity_enum_test.exit.i.for.inc.i_crit_edge, label %media_entity_enum_test.exit.i.if.end12.i_crit_edge

media_entity_enum_test.exit.i.if.end12.i_crit_edge: ; preds = %media_entity_enum_test.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

media_entity_enum_test.exit.i.for.inc.i_crit_edge: ; preds = %media_entity_enum_test.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end12.i:                                       ; preds = %media_entity_enum_test.exit.i.if.end12.i_crit_edge, %media_entity_enum_test.exit.thread.i
  %pads.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 27, i32 0, i32 0, i32 9
  %109 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pads.i, align 4
  %call15.i = call ptr @media_entity_remote_pad(ptr noundef %110) #13
  %cmp16.i = icmp eq ptr %call15.i, null
  br i1 %cmp16.i, label %if.end12.i.for.inc.i_crit_edge, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i.for.inc.i_crit_edge, %media_entity_enum_test.exit.i.for.inc.i_crit_edge
  %internal_idx.i.1.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 28, i32 0, i32 0, i32 8
  %111 = ptrtoint ptr %internal_idx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %internal_idx.i.1.i, align 4
  %113 = ptrtoint ptr %idx_max.i.i138 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %idx_max.i.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp.not.i.1.i = icmp slt i32 %112, %114
  br i1 %cmp.not.i.1.i, label %media_entity_enum_test.exit.1.i, label %media_entity_enum_test.exit.thread.1.i, !prof !84

media_entity_enum_test.exit.thread.1.i:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 500, i32 noundef 9, ptr noundef null) #13
  br label %if.end12.1.i

media_entity_enum_test.exit.1.i:                  ; preds = %for.inc.i
  %115 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ent_enum, align 4
  %div3.i.i.1.i = lshr i32 %112, 5
  %arrayidx.i.i.1.i = getelementptr i32, ptr %116, i32 %div3.i.i.1.i
  %117 = ptrtoint ptr %arrayidx.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %arrayidx.i.i.1.i, align 4
  %and.i.i.1.i = and i32 %112, 31
  %119 = shl nuw i32 1, %and.i.i.1.i
  %120 = and i32 %118, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool23.i.not.1.i = icmp eq i32 %120, 0
  br i1 %tobool23.i.not.1.i, label %media_entity_enum_test.exit.1.i.for.inc.1.i_crit_edge, label %media_entity_enum_test.exit.1.i.if.end12.1.i_crit_edge

media_entity_enum_test.exit.1.i.if.end12.1.i_crit_edge: ; preds = %media_entity_enum_test.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.1.i

media_entity_enum_test.exit.1.i.for.inc.1.i_crit_edge: ; preds = %media_entity_enum_test.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end12.1.i:                                     ; preds = %media_entity_enum_test.exit.1.i.if.end12.1.i_crit_edge, %media_entity_enum_test.exit.thread.1.i
  %pads.1.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 28, i32 0, i32 0, i32 9
  %121 = ptrtoint ptr %pads.1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pads.1.i, align 4
  %call15.1.i = call ptr @media_entity_remote_pad(ptr noundef %122) #13
  %cmp16.1.i = icmp eq ptr %call15.1.i, null
  br i1 %cmp16.1.i, label %if.end12.1.i.for.inc.1.i_crit_edge, label %if.end12.1.i.for.end.i_crit_edge

if.end12.1.i.for.end.i_crit_edge:                 ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end12.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end12.1.i.for.inc.1.i_crit_edge, %media_entity_enum_test.exit.1.i.for.inc.1.i_crit_edge
  %internal_idx.i.2.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 29, i32 0, i32 0, i32 8
  %123 = ptrtoint ptr %internal_idx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %internal_idx.i.2.i, align 4
  %125 = ptrtoint ptr %idx_max.i.i138 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %idx_max.i.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp.not.i.2.i = icmp slt i32 %124, %126
  br i1 %cmp.not.i.2.i, label %media_entity_enum_test.exit.2.i, label %media_entity_enum_test.exit.thread.2.i, !prof !84

media_entity_enum_test.exit.thread.2.i:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 500, i32 noundef 9, ptr noundef null) #13
  br label %if.end12.2.i

media_entity_enum_test.exit.2.i:                  ; preds = %for.inc.1.i
  %127 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ent_enum, align 4
  %div3.i.i.2.i = lshr i32 %124, 5
  %arrayidx.i.i.2.i = getelementptr i32, ptr %128, i32 %div3.i.i.2.i
  %129 = ptrtoint ptr %arrayidx.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %arrayidx.i.i.2.i, align 4
  %and.i.i.2.i = and i32 %124, 31
  %131 = shl nuw i32 1, %and.i.i.2.i
  %132 = and i32 %130, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool23.i.not.2.i = icmp eq i32 %132, 0
  br i1 %tobool23.i.not.2.i, label %media_entity_enum_test.exit.2.i.for.inc.2.i_crit_edge, label %media_entity_enum_test.exit.2.i.if.end12.2.i_crit_edge

media_entity_enum_test.exit.2.i.if.end12.2.i_crit_edge: ; preds = %media_entity_enum_test.exit.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.2.i

media_entity_enum_test.exit.2.i.for.inc.2.i_crit_edge: ; preds = %media_entity_enum_test.exit.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end12.2.i:                                     ; preds = %media_entity_enum_test.exit.2.i.if.end12.2.i_crit_edge, %media_entity_enum_test.exit.thread.2.i
  %pads.2.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 29, i32 0, i32 0, i32 9
  %133 = ptrtoint ptr %pads.2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pads.2.i, align 4
  %call15.2.i = call ptr @media_entity_remote_pad(ptr noundef %134) #13
  %cmp16.2.i = icmp eq ptr %call15.2.i, null
  br i1 %cmp16.2.i, label %if.end12.2.i.for.inc.2.i_crit_edge, label %if.end12.2.i.for.end.i_crit_edge

if.end12.2.i.for.end.i_crit_edge:                 ; preds = %if.end12.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end12.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end12.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end12.2.i.for.inc.2.i_crit_edge, %media_entity_enum_test.exit.2.i.for.inc.2.i_crit_edge
  %internal_idx.i.3.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 26, i32 0, i32 0, i32 8
  %135 = ptrtoint ptr %internal_idx.i.3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %internal_idx.i.3.i, align 4
  %137 = ptrtoint ptr %idx_max.i.i138 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %idx_max.i.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp.not.i.3.i = icmp slt i32 %136, %138
  br i1 %cmp.not.i.3.i, label %media_entity_enum_test.exit.3.i, label %media_entity_enum_test.exit.thread.3.i, !prof !84

media_entity_enum_test.exit.thread.3.i:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 500, i32 noundef 9, ptr noundef null) #13
  br label %if.end12.3.i

media_entity_enum_test.exit.3.i:                  ; preds = %for.inc.2.i
  %139 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ent_enum, align 4
  %div3.i.i.3.i = lshr i32 %136, 5
  %arrayidx.i.i.3.i = getelementptr i32, ptr %140, i32 %div3.i.i.3.i
  %141 = ptrtoint ptr %arrayidx.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %arrayidx.i.i.3.i, align 4
  %and.i.i.3.i = and i32 %136, 31
  %143 = shl nuw i32 1, %and.i.i.3.i
  %144 = and i32 %142, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool23.i.not.3.i = icmp eq i32 %144, 0
  br i1 %tobool23.i.not.3.i, label %media_entity_enum_test.exit.3.i.do.end.i_crit_edge, label %media_entity_enum_test.exit.3.i.if.end12.3.i_crit_edge

media_entity_enum_test.exit.3.i.if.end12.3.i_crit_edge: ; preds = %media_entity_enum_test.exit.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.3.i

media_entity_enum_test.exit.3.i.do.end.i_crit_edge: ; preds = %media_entity_enum_test.exit.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end12.3.i:                                     ; preds = %media_entity_enum_test.exit.3.i.if.end12.3.i_crit_edge, %media_entity_enum_test.exit.thread.3.i
  %pads.3.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 26, i32 0, i32 0, i32 9
  %145 = ptrtoint ptr %pads.3.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pads.3.i, align 4
  %call15.3.i = call ptr @media_entity_remote_pad(ptr noundef %146) #13
  %cmp16.3.i = icmp eq ptr %call15.3.i, null
  br i1 %cmp16.3.i, label %if.end12.3.i.do.end.i_crit_edge, label %if.end12.3.i.for.end.i_crit_edge

if.end12.3.i.for.end.i_crit_edge:                 ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end12.3.i.do.end.i_crit_edge:                  ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

for.end.i:                                        ; preds = %if.end12.3.i.for.end.i_crit_edge, %if.end12.2.i.for.end.i_crit_edge, %if.end12.1.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %isp_csi2a.i, %if.end12.i.for.end.i_crit_edge ], [ %isp_csi2c.i, %if.end12.1.i.for.end.i_crit_edge ], [ %isp_ccp2.i, %if.end12.2.i.for.end.i_crit_edge ], [ %isp_ccdc.i, %if.end12.3.i.for.end.i_crit_edge ]
  %call15.lcssa.i = phi ptr [ %call15.i, %if.end12.i.for.end.i_crit_edge ], [ %call15.1.i, %if.end12.1.i.for.end.i_crit_edge ], [ %call15.2.i, %if.end12.2.i.for.end.i_crit_edge ], [ %call15.3.i, %if.end12.3.i.for.end.i_crit_edge ]
  %entity19.i = getelementptr inbounds %struct.media_pad, ptr %call15.lcssa.i, i32 0, i32 1
  %147 = ptrtoint ptr %entity19.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %entity19.i, align 4
  %tobool.not.i142 = icmp eq ptr %148, null
  br i1 %tobool.not.i142, label %for.end.i.do.end.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %if.end12.3.i.do.end.i_crit_edge, %media_entity_enum_test.exit.3.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 3
  %149 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %150, ptr noundef nonnull @.str.24) #16
  br label %isp_video_check_external_subdevs.exit.thread

is_media_entity_v4l2_subdev.exit.i:               ; preds = %for.end.i
  %obj_type.i.i143 = getelementptr inbounds %struct.media_entity, ptr %148, i32 0, i32 2
  %151 = ptrtoint ptr %obj_type.i.i143 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %obj_type.i.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %152)
  %cmp.i.i144 = icmp eq i32 %152, 2
  br i1 %cmp.i.i144, label %cond.end.i, label %is_media_entity_v4l2_subdev.exit.i.if.end40_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.end40_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

cond.end.i:                                       ; preds = %is_media_entity_v4l2_subdev.exit.i
  %external.i = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 14
  %153 = ptrtoint ptr %external.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %148, ptr %external.i, align 4
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call15.lcssa.i, i32 0, i32 2
  %154 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %155 to i32
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i135, i32 0, i32 1
  %156 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv.i, ptr %pad.i, align 4
  %157 = ptrtoint ptr %fmt.i135 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %fmt.i135, align 4
  %tobool30.not.i = icmp eq ptr %.lcssa.i, null
  br i1 %tobool30.not.i, label %cond.end.i.do.end70.i_crit_edge, label %if.else.i145

cond.end.i.do.end70.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70.i

if.else.i145:                                     ; preds = %cond.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %.lcssa.i, i32 0, i32 6
  %158 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ops.i, align 4
  %pad40.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %159, i32 0, i32 7
  %160 = ptrtoint ptr %pad40.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pad40.i, align 4
  %tobool41.not.i = icmp eq ptr %161, null
  br i1 %tobool41.not.i, label %if.else.i145.do.end70.i_crit_edge, label %land.lhs.true.i

if.else.i145.do.end70.i_crit_edge:                ; preds = %if.else.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70.i

land.lhs.true.i:                                  ; preds = %if.else.i145
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %get_fmt.i, align 4
  %tobool44.not.i = icmp eq ptr %163, null
  br i1 %tobool44.not.i, label %land.lhs.true.i.do.end70.i_crit_edge, label %if.else46.i

land.lhs.true.i.do.end70.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70.i

if.else46.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool47.not.i = icmp eq ptr %164, null
  br i1 %tobool47.not.i, label %if.else46.i.if.else54.i_crit_edge, label %land.lhs.true48.i

if.else46.i.if.else54.i_crit_edge:                ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else54.i

land.lhs.true48.i:                                ; preds = %if.else46.i
  %get_fmt49.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %get_fmt49.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %get_fmt49.i, align 4
  %tobool50.not.i = icmp eq ptr %166, null
  br i1 %tobool50.not.i, label %land.lhs.true48.i.if.else54.i_crit_edge, label %land.lhs.true48.i.if.end61.i_crit_edge

land.lhs.true48.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i

land.lhs.true48.i.if.else54.i_crit_edge:          ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else54.i

if.else54.i:                                      ; preds = %land.lhs.true48.i.if.else54.i_crit_edge, %if.else46.i.if.else54.i_crit_edge
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.else54.i, %land.lhs.true48.i.if.end61.i_crit_edge
  %.sink.i = phi ptr [ %163, %if.else54.i ], [ %166, %land.lhs.true48.i.if.end61.i_crit_edge ]
  %call58.i = call i32 %.sink.i(ptr noundef nonnull %.lcssa.i, ptr noundef null, ptr noundef nonnull %fmt.i135) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp63.i = icmp slt i32 %call58.i, 0
  br i1 %cmp63.i, label %if.end61.i.do.end70.i_crit_edge, label %if.end72.i, !prof !79

if.end61.i.do.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70.i

do.end70.i:                                       ; preds = %if.end61.i.do.end70.i_crit_edge, %land.lhs.true.i.do.end70.i_crit_edge, %if.else.i145.do.end70.i_crit_edge, %cond.end.i.do.end70.i_crit_edge
  %__result.0166.i = phi i32 [ %call58.i, %if.end61.i.do.end70.i_crit_edge ], [ -515, %if.else.i145.do.end70.i_crit_edge ], [ -515, %land.lhs.true.i.do.end70.i_crit_edge ], [ -19, %cond.end.i.do.end70.i_crit_edge ]
  %dev71.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 3
  %167 = ptrtoint ptr %dev71.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev71.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.28) #16
  br label %isp_video_check_external_subdevs.exit.thread

if.end72.i:                                       ; preds = %if.end61.i
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i135, i32 0, i32 2, i32 2
  %169 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %code.i, align 4
  %call73.i = call ptr @omap3isp_video_format_info(i32 noundef %170) #13
  %width.i = getelementptr inbounds %struct.isp_format_info, ptr %call73.i, i32 0, i32 5
  %171 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %width.i, align 4
  %external_width.i = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 16
  %173 = ptrtoint ptr %external_width.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %external_width.i, align 4
  %174 = call ptr @memset(ptr %ctrls.i, i32 0, i32 20)
  %175 = getelementptr inbounds i8, ptr %ctrl.i, i32 4
  %176 = call ptr @memset(ptr %175, i32 0, i32 16)
  %177 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 10422530, ptr %ctrl.i, align 4
  %178 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %94, align 4
  %179 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %ctrl.i, ptr %95, align 4
  %180 = ptrtoint ptr %external.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %external.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %181, i32 0, i32 8
  %182 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ctrl_handler.i, align 4
  %call76.i = call i32 @v4l2_g_ext_ctrls(ptr noundef %183, ptr noundef %1, ptr noundef null, ptr noundef nonnull %ctrls.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %do.end82.i, label %if.end85.i

do.end82.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev83.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 3
  %184 = ptrtoint ptr %dev83.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev83.i, align 8
  %186 = ptrtoint ptr %external.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %external.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %187, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %185, ptr noundef nonnull @.str.31, ptr noundef %name.i) #16
  br label %isp_video_check_external_subdevs.exit.thread

if.end85.i:                                       ; preds = %if.end72.i
  %188 = ptrtoint ptr %96 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 8)
  %189 = load i64, ptr %96, align 4
  %conv86.i = trunc i64 %189 to i32
  %external_rate.i = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 15
  %190 = ptrtoint ptr %external_rate.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %conv86.i, ptr %external_rate.i, align 4
  %internal_idx.i148.i = getelementptr inbounds %struct.isp_device, ptr %91, i32 0, i32 26, i32 0, i32 0, i32 8
  %191 = ptrtoint ptr %internal_idx.i148.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %internal_idx.i148.i, align 4
  %193 = ptrtoint ptr %idx_max.i.i138 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %idx_max.i.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %194)
  %cmp.not.i150.i = icmp slt i32 %192, %194
  br i1 %cmp.not.i150.i, label %media_entity_enum_test.exit158.i, label %media_entity_enum_test.exit158.thread.i, !prof !84

media_entity_enum_test.exit158.thread.i:          ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 500, i32 noundef 9, ptr noundef null) #13
  br label %if.then92.i

media_entity_enum_test.exit158.i:                 ; preds = %if.end85.i
  %195 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ent_enum, align 4
  %div3.i.i152.i = lshr i32 %192, 5
  %arrayidx.i.i153.i = getelementptr i32, ptr %196, i32 %div3.i.i152.i
  %197 = ptrtoint ptr %arrayidx.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %arrayidx.i.i153.i, align 4
  %and.i.i154.i = and i32 %192, 31
  %199 = shl nuw i32 1, %and.i.i154.i
  %200 = and i32 %198, %199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool23.i155.not.i = icmp eq i32 %200, 0
  br i1 %tobool23.i155.not.i, label %media_entity_enum_test.exit158.i.if.end40_crit_edge, label %media_entity_enum_test.exit158.i.if.then92.i_crit_edge

media_entity_enum_test.exit158.i.if.then92.i_crit_edge: ; preds = %media_entity_enum_test.exit158.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then92.i

media_entity_enum_test.exit158.i.if.end40_crit_edge: ; preds = %media_entity_enum_test.exit158.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then92.i:                                      ; preds = %media_entity_enum_test.exit158.i.if.then92.i_crit_edge, %media_entity_enum_test.exit158.thread.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #13
  %201 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -1, ptr %rate.i, align 4
  call void @omap3isp_ccdc_max_rate(ptr noundef %isp_ccdc.i, ptr noundef nonnull %rate.i) #13
  %202 = ptrtoint ptr %external_rate.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %external_rate.i, align 4
  %204 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %205)
  %cmp95.i = icmp ugt i32 %203, %205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #13
  br i1 %cmp95.i, label %if.then92.i.isp_video_check_external_subdevs.exit.thread_crit_edge, label %if.then92.i.if.end40_crit_edge

if.then92.i.if.end40_crit_edge:                   ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then92.i.isp_video_check_external_subdevs.exit.thread_crit_edge: ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %isp_video_check_external_subdevs.exit.thread

isp_video_check_external_subdevs.exit.thread:     ; preds = %if.then92.i.isp_video_check_external_subdevs.exit.thread_crit_edge, %do.end82.i, %do.end70.i, %do.end.i
  %retval.1.i.ph = phi i32 [ -22, %do.end.i ], [ -28, %if.then92.i.isp_video_check_external_subdevs.exit.thread_crit_edge ], [ %call76.i, %do.end82.i ], [ %__result.0166.i, %do.end70.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctrl.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctrls.i) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i135) #13
  br label %err_check_format

if.end40:                                         ; preds = %if.then92.i.if.end40_crit_edge, %media_entity_enum_test.exit158.i.if.end40_crit_edge, %is_media_entity_v4l2_subdev.exit.i.if.end40_crit_edge, %if.end32.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctrl.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctrls.i) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i135) #13
  %error = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 12
  %206 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %error, align 1
  %lock = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 1
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state48 = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 2
  %207 = ptrtoint ptr %state48 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %state48, align 4
  %and = and i32 %208, -65
  %or = or i32 %and, %.
  store i32 %or, ptr %state48, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call45) #13
  %209 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %cmp52 = icmp eq i32 %210, 2
  br i1 %cmp52, label %if.then54, label %if.end40.if.end55_crit_edge

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %max_timeperframe = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 13
  %timeperframe = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 4
  %211 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %211, i32 8)
  %212 = load i64, ptr %timeperframe, align 4
  %213 = ptrtoint ptr %max_timeperframe to i32
  call void @__asan_storeN_noabort(i32 %213, i32 8)
  store i64 %212, ptr %max_timeperframe, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end40.if.end55_crit_edge
  %queue = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 2
  %queue56 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 15
  %214 = ptrtoint ptr %queue56 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %queue, ptr %queue56, align 4
  %dmaqueue = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 18
  %215 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_store4_noabort(i32 %215)
  store volatile ptr %dmaqueue, ptr %dmaqueue, align 4
  %prev.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 18, i32 1
  %216 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %dmaqueue, ptr %prev.i, align 4
  %frame_number = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %frame_number, i32 noundef 4) #13
  %217 = ptrtoint ptr %frame_number to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 -1, ptr %frame_number, align 4
  %218 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %field.i, align 4
  %field59 = getelementptr inbounds %struct.isp_pipeline, ptr %cond, i32 0, i32 9
  %220 = ptrtoint ptr %field59 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %field59, align 4
  %queue_lock = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #13
  %call61 = call i32 @vb2_streamon(ptr noundef %queue, i32 noundef %type) #13
  call void @mutex_unlock(ptr noundef %queue_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp63 = icmp slt i32 %call61, 0
  br i1 %cmp63, label %if.end55.err_check_format_crit_edge, label %if.end55.cleanup.sink.split_crit_edge

if.end55.cleanup.sink.split_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end55.err_check_format_crit_edge:              ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_check_format

err_check_format:                                 ; preds = %if.end55.err_check_format_crit_edge, %isp_video_check_external_subdevs.exit.thread, %isp_video_get_graph_data.exit.err_check_format_crit_edge, %isp_video_get_graph_data.exit.thread151, %isp_video_check_format.exit.thread
  %ret.0 = phi i32 [ %call.i131, %isp_video_get_graph_data.exit.err_check_format_crit_edge ], [ %call61, %if.end55.err_check_format_crit_edge ], [ %retval.0.i.ph, %isp_video_check_format.exit.thread ], [ -32, %isp_video_get_graph_data.exit.thread151 ], [ %retval.1.i.ph, %isp_video_check_external_subdevs.exit.thread ]
  call void @media_pipeline_stop(ptr noundef %1) #13
  br label %err_pipeline_start

err_pipeline_start:                               ; preds = %err_check_format, %if.end14.err_pipeline_start_crit_edge
  %ret.1 = phi i32 [ %call21, %if.end14.err_pipeline_start_crit_edge ], [ %ret.0, %err_check_format ]
  %dmaqueue70 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 18
  %221 = ptrtoint ptr %dmaqueue70 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %dmaqueue70, ptr %dmaqueue70, align 4
  %prev.i146 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 18, i32 1
  %222 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %dmaqueue70, ptr %prev.i146, align 4
  %queue71 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 15
  %223 = ptrtoint ptr %queue71 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %queue71, align 4
  call void @media_entity_enum_cleanup(ptr noundef %ent_enum) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_pipeline_start, %if.end55.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end55.cleanup.sink.split_crit_edge ], [ %call.i130, %if.end.cleanup.sink.split_crit_edge ], [ %ret.1, %err_pipeline_start ]
  call void @mutex_unlock(ptr noundef %stream_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.33, i32 noundef 32) #13
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
define internal i32 @isp_video_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %input) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %input, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isp_video_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %input) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp = icmp eq i32 %input, 0
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_get_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  %sdsel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #13
  %2 = getelementptr inbounds i8, ptr %format, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sdsel) #13
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
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge139
    i32 1, label %entry.sw.bb_crit_edge140
    i32 256, label %entry.sw.bb3_crit_edge
    i32 258, label %entry.sw.bb3_crit_edge141
    i32 257, label %entry.sw.bb3_crit_edge142
  ]

entry.sw.bb3_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb_crit_edge140:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge139:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge139, %entry.sw.bb_crit_edge140
  %type = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge141, %entry.sw.bb3_crit_edge142
  %type4 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp5 = icmp eq i32 %14, 1
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %pad1.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 2
  %call.i122 = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #13
  %tobool.not.i = icmp eq ptr %call.i122, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i122, i32 0, i32 1
  %15 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 2
  br i1 %cmp.i.i, label %if.end11, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i122, i32 0, i32 2
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %20 to i32
  %pad12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 1
  %21 = ptrtoint ptr %pad12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %pad12, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %pad14 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %pad14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pad14, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %if.end11.if.end42_crit_edge, label %land.lhs.true

if.end11.if.end42_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end11
  %get_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %get_selection to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_selection, align 4
  %tobool18.not = icmp eq ptr %27, null
  br i1 %tobool18.not, label %land.lhs.true.if.end42_crit_edge, label %if.else20

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.else20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %if.else20.if.else28_crit_edge, label %land.lhs.true22

if.else20.if.else28_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %get_selection23 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %get_selection23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_selection23, align 4
  %tobool24.not = icmp eq ptr %30, null
  br i1 %tobool24.not, label %land.lhs.true22.if.else28_crit_edge, label %land.lhs.true22.if.end35_crit_edge

land.lhs.true22.if.end35_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true22.if.else28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else28

if.else28:                                        ; preds = %land.lhs.true22.if.else28_crit_edge, %if.else20.if.else28_crit_edge
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %land.lhs.true22.if.end35_crit_edge
  %.sink = phi ptr [ %27, %if.else28 ], [ %30, %land.lhs.true22.if.end35_crit_edge ]
  %call32 = call i32 %.sink(ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %sdsel) #13
  %31 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call32, label %if.end35.cleanup_crit_edge [
    i32 0, label %if.then37
    i32 -515, label %if.end35.if.end42_crit_edge
  ]

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %r38 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sdsel, i32 0, i32 4
  %32 = call ptr @memcpy(ptr %r, ptr %r38, i32 16)
  br label %cleanup

if.end42:                                         ; preds = %if.end35.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.end11.if.end42_crit_edge
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.thread

land.lhs.true53:                                  ; preds = %if.end42
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_fmt, align 4
  %tobool56.not = icmp eq ptr %40, null
  br i1 %tobool56.not, label %land.lhs.true53.if.then76.thread_crit_edge, label %if.else58

land.lhs.true53.if.then76.thread_crit_edge:       ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.thread

if.else58:                                        ; preds = %land.lhs.true53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool59.not = icmp eq ptr %41, null
  br i1 %tobool59.not, label %if.else58.if.else66_crit_edge, label %land.lhs.true60

if.else58.if.else66_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else66

land.lhs.true60:                                  ; preds = %if.else58
  %get_fmt61 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %get_fmt61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_fmt61, align 4
  %tobool62.not = icmp eq ptr %43, null
  br i1 %tobool62.not, label %land.lhs.true60.if.else66_crit_edge, label %land.lhs.true60.if.end73_crit_edge

land.lhs.true60.if.end73_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

land.lhs.true60.if.else66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else66

if.else66:                                        ; preds = %land.lhs.true60.if.else66_crit_edge, %if.else58.if.else66_crit_edge
  br label %if.end73

if.end73:                                         ; preds = %if.else66, %land.lhs.true60.if.end73_crit_edge
  %.sink138 = phi ptr [ %40, %if.else66 ], [ %43, %land.lhs.true60.if.end73_crit_edge ]
  %call70 = call i32 %.sink138(ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %format) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp75 = icmp slt i32 %call70, 0
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call70)
  %cmp77 = icmp eq i32 %call70, -515
  br i1 %cmp77, label %if.then76.if.then76.thread_crit_edge, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then76.if.then76.thread_crit_edge:             ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.thread

if.then76.thread:                                 ; preds = %if.then76.if.then76.thread_crit_edge, %land.lhs.true53.if.then76.thread_crit_edge, %if.end42.if.then76.thread_crit_edge
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sdsel) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_set_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %sdsel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sdsel) #13
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
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %type7 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp8 = icmp eq i32 %15, 1
  br i1 %cmp8, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %pad1.i = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 2
  %call.i68 = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i) #13
  %tobool.not.i = icmp eq ptr %call.i68, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i68, i32 0, i32 1
  %16 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 2
  br i1 %cmp.i.i, label %if.end14, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i68, i32 0, i32 2
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i, ptr %pad, align 4
  %mutex = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %pad17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pad17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pad17, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.end14.if.end38.thread_crit_edge, label %land.lhs.true

if.end14.if.end38.thread_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.thread

land.lhs.true:                                    ; preds = %if.end14
  %set_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %set_selection to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_selection, align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %land.lhs.true.if.end38.thread_crit_edge, label %if.else23

land.lhs.true.if.end38.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.thread

if.else23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %if.else23.if.else31_crit_edge, label %land.lhs.true25

if.else23.if.else31_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else23
  %set_selection26 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %set_selection26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_selection26, align 4
  %tobool27.not = icmp eq ptr %31, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end38_crit_edge

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else23.if.else31_crit_edge
  br label %if.end38

if.end38.thread:                                  ; preds = %land.lhs.true.if.end38.thread_crit_edge, %if.end14.if.end38.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end38:                                         ; preds = %if.else31, %land.lhs.true25.if.end38_crit_edge
  %.sink = phi ptr [ %28, %if.else31 ], [ %31, %land.lhs.true25.if.end38_crit_edge ]
  %call35 = call i32 %.sink(ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %sdsel) #13
  call void @mutex_unlock(ptr noundef %mutex) #13
  %32 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call35, label %if.end38.cond.false_crit_edge [
    i32 0, label %if.then41
    i32 -515, label %if.end38.cleanup_crit_edge
  ]

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end38.cond.false_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %33 = call ptr @memcpy(ptr %r3, ptr %r, i32 16)
  br label %cond.false

cond.false:                                       ; preds = %if.then41, %if.end38.cond.false_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end38.cleanup_crit_edge, %if.end38.thread, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call35, %cond.false ], [ -25, %if.end38.cleanup_crit_edge ], [ -25, %if.end38.thread ], [ -22, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sdsel) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_get_param(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.not = icmp eq i32 %5, 2
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
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
  %timeperframe6 = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 4
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
define internal i32 @isp_video_set_param(ptr noundef %file, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.not = icmp eq i32 %5, 2
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %denominator, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %timeperframe10 = getelementptr inbounds %struct.isp_video_fh, ptr %fh, i32 0, i32 4
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

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_video_pix_to_mbus(ptr nocapture noundef readonly %pix, ptr nocapture noundef writeonly %mbus) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %9 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp4 = icmp eq i32 %9, %8
  br i1 %cmp4, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %entry
  %10 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 1, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp4.1 = icmp eq i32 %10, %8
  br i1 %cmp4.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %11 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp4.2 = icmp eq i32 %11, %8
  br i1 %cmp4.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %12 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp4.3 = icmp eq i32 %12, %8
  br i1 %cmp4.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %13 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 4, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %cmp4.4 = icmp eq i32 %13, %8
  br i1 %cmp4.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %14 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 5, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp4.5 = icmp eq i32 %14, %8
  br i1 %cmp4.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %15 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 6, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %8)
  %cmp4.6 = icmp eq i32 %15, %8
  br i1 %cmp4.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %16 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 7, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %8)
  %cmp4.7 = icmp eq i32 %16, %8
  br i1 %cmp4.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %17 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 8, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %8)
  %cmp4.8 = icmp eq i32 %17, %8
  br i1 %cmp4.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %18 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 9, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %8)
  %cmp4.9 = icmp eq i32 %18, %8
  br i1 %cmp4.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %19 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 10, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %8)
  %cmp4.10 = icmp eq i32 %19, %8
  br i1 %cmp4.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %20 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 11, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %8)
  %cmp4.11 = icmp eq i32 %20, %8
  br i1 %cmp4.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %21 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 12, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %8)
  %cmp4.12 = icmp eq i32 %21, %8
  br i1 %cmp4.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %22 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 13, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %8)
  %cmp4.13 = icmp eq i32 %22, %8
  br i1 %cmp4.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %23 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 14, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %8)
  %cmp4.14 = icmp eq i32 %23, %8
  br i1 %cmp4.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %24 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 15, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %8)
  %cmp4.15 = icmp eq i32 %24, %8
  br i1 %cmp4.15, label %for.inc.14.for.end_crit_edge, label %for.inc.15

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %25 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 16, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %8)
  %cmp4.16 = icmp eq i32 %25, %8
  br i1 %cmp4.16, label %for.inc.15.for.end_crit_edge, label %for.inc.16

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  %26 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 17, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %8)
  %cmp4.17 = icmp eq i32 %26, %8
  br i1 %cmp4.17, label %for.inc.16.for.end_crit_edge, label %for.inc.17

for.inc.16.for.end_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.17:                                       ; preds = %for.inc.16
  %27 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 18, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %8)
  %cmp4.18 = icmp eq i32 %27, %8
  br i1 %cmp4.18, label %for.inc.17.for.end_crit_edge, label %for.inc.18

for.inc.17.for.end_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.18:                                       ; preds = %for.inc.17
  %28 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 19, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %8)
  %cmp4.19 = icmp eq i32 %28, %8
  br i1 %cmp4.19, label %for.inc.18.for.end_crit_edge, label %for.inc.19

for.inc.18.for.end_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.19:                                       ; preds = %for.inc.18
  %29 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 20, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %8)
  %cmp4.20 = icmp eq i32 %29, %8
  br i1 %cmp4.20, label %for.inc.19.for.end_crit_edge, label %for.inc.20

for.inc.19.for.end_crit_edge:                     ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.20:                                       ; preds = %for.inc.19
  %30 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 21, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %8)
  %cmp4.21 = icmp eq i32 %30, %8
  br i1 %cmp4.21, label %for.inc.20.for.end_crit_edge, label %for.inc.21

for.inc.20.for.end_crit_edge:                     ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.21:                                       ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #15
  %31 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 22, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %8)
  %cmp4.22 = icmp eq i32 %31, %8
  %spec.select = select i1 %cmp4.22, i32 22, i32 23
  br label %for.end

for.end:                                          ; preds = %for.inc.21, %for.inc.20.for.end_crit_edge, %for.inc.19.for.end_crit_edge, %for.inc.18.for.end_crit_edge, %for.inc.17.for.end_crit_edge, %for.inc.16.for.end_crit_edge, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ 17, %for.inc.16.for.end_crit_edge ], [ 18, %for.inc.17.for.end_crit_edge ], [ 19, %for.inc.18.for.end_crit_edge ], [ 20, %for.inc.19.for.end_crit_edge ], [ 21, %for.inc.20.for.end_crit_edge ], [ %spec.select, %for.inc.21 ]
  %arrayidx5 = getelementptr [24 x %struct.isp_format_info], ptr @formats, i32 0, i32 %i.0.lcssa
  %32 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5, align 4
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 2
  %34 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %code6, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %35 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %colorspace, align 4
  %colorspace7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 4
  %37 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %colorspace7, align 4
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %38 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %field, align 4
  %field8 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 3
  %40 = ptrtoint ptr %field8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %field8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_video_mbus_to_pix(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %mbus, ptr nocapture noundef %pix) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %cmp4, label %entry.if.end28_crit_edge, label %for.inc

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc:                                          ; preds = %entry
  %12 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp4.1 = icmp eq i32 %12, %10
  br i1 %cmp4.1, label %for.inc.if.end28_crit_edge, label %for.inc.1

for.inc.if.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.1:                                        ; preds = %for.inc
  %13 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %10)
  %cmp4.2 = icmp eq i32 %13, %10
  br i1 %cmp4.2, label %for.inc.1.if.end28_crit_edge, label %for.inc.2

for.inc.1.if.end28_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.2:                                        ; preds = %for.inc.1
  %14 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp4.3 = icmp eq i32 %14, %10
  br i1 %cmp4.3, label %for.inc.2.if.end28_crit_edge, label %for.inc.3

for.inc.2.if.end28_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.3:                                        ; preds = %for.inc.2
  %15 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %10)
  %cmp4.4 = icmp eq i32 %15, %10
  br i1 %cmp4.4, label %for.inc.3.if.end28_crit_edge, label %for.inc.4

for.inc.3.if.end28_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.4:                                        ; preds = %for.inc.3
  %16 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp4.5 = icmp eq i32 %16, %10
  br i1 %cmp4.5, label %for.inc.4.if.end28_crit_edge, label %for.inc.5

for.inc.4.if.end28_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.5:                                        ; preds = %for.inc.4
  %17 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %10)
  %cmp4.6 = icmp eq i32 %17, %10
  br i1 %cmp4.6, label %for.inc.5.if.end28_crit_edge, label %for.inc.6

for.inc.5.if.end28_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.6:                                        ; preds = %for.inc.5
  %18 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %10)
  %cmp4.7 = icmp eq i32 %18, %10
  br i1 %cmp4.7, label %for.inc.6.if.end28_crit_edge, label %for.inc.7

for.inc.6.if.end28_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.7:                                        ; preds = %for.inc.6
  %19 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %10)
  %cmp4.8 = icmp eq i32 %19, %10
  br i1 %cmp4.8, label %for.inc.7.if.end28_crit_edge, label %for.inc.8

for.inc.7.if.end28_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.8:                                        ; preds = %for.inc.7
  %20 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %10)
  %cmp4.9 = icmp eq i32 %20, %10
  br i1 %cmp4.9, label %for.inc.8.if.end28_crit_edge, label %for.inc.9

for.inc.8.if.end28_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.9:                                        ; preds = %for.inc.8
  %21 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %10)
  %cmp4.10 = icmp eq i32 %21, %10
  br i1 %cmp4.10, label %for.inc.9.if.end28_crit_edge, label %for.inc.10

for.inc.9.if.end28_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.10:                                       ; preds = %for.inc.9
  %22 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %10)
  %cmp4.11 = icmp eq i32 %22, %10
  br i1 %cmp4.11, label %for.inc.10.if.end28_crit_edge, label %for.inc.11

for.inc.10.if.end28_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.11:                                       ; preds = %for.inc.10
  %23 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %10)
  %cmp4.12 = icmp eq i32 %23, %10
  br i1 %cmp4.12, label %for.inc.11.if.end28_crit_edge, label %for.inc.12

for.inc.11.if.end28_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.12:                                       ; preds = %for.inc.11
  %24 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %10)
  %cmp4.13 = icmp eq i32 %24, %10
  br i1 %cmp4.13, label %for.inc.12.if.end28_crit_edge, label %for.inc.13

for.inc.12.if.end28_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.13:                                       ; preds = %for.inc.12
  %25 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %10)
  %cmp4.14 = icmp eq i32 %25, %10
  br i1 %cmp4.14, label %for.inc.13.if.end28_crit_edge, label %for.inc.14

for.inc.13.if.end28_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.14:                                       ; preds = %for.inc.13
  %26 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %10)
  %cmp4.15 = icmp eq i32 %26, %10
  br i1 %cmp4.15, label %for.inc.14.if.end28_crit_edge, label %for.inc.15

for.inc.14.if.end28_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.15:                                       ; preds = %for.inc.14
  %27 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %10)
  %cmp4.16 = icmp eq i32 %27, %10
  br i1 %cmp4.16, label %for.inc.15.if.end28_crit_edge, label %for.inc.16

for.inc.15.if.end28_crit_edge:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.16:                                       ; preds = %for.inc.15
  %28 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %10)
  %cmp4.17 = icmp eq i32 %28, %10
  br i1 %cmp4.17, label %for.inc.16.if.end28_crit_edge, label %for.inc.17

for.inc.16.if.end28_crit_edge:                    ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.17:                                       ; preds = %for.inc.16
  %29 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 18), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %10)
  %cmp4.18 = icmp eq i32 %29, %10
  br i1 %cmp4.18, label %for.inc.17.if.end28_crit_edge, label %for.inc.18

for.inc.17.if.end28_crit_edge:                    ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.18:                                       ; preds = %for.inc.17
  %30 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %10)
  %cmp4.19 = icmp eq i32 %30, %10
  br i1 %cmp4.19, label %for.inc.18.if.end28_crit_edge, label %for.inc.19

for.inc.18.if.end28_crit_edge:                    ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.19:                                       ; preds = %for.inc.18
  %31 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 20), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %10)
  %cmp4.20 = icmp eq i32 %31, %10
  br i1 %cmp4.20, label %for.inc.19.if.end28_crit_edge, label %for.inc.20

for.inc.19.if.end28_crit_edge:                    ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.20:                                       ; preds = %for.inc.19
  %32 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %10)
  %cmp4.21 = icmp eq i32 %32, %10
  br i1 %cmp4.21, label %for.inc.20.if.end28_crit_edge, label %for.inc.21

for.inc.20.if.end28_crit_edge:                    ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.21:                                       ; preds = %for.inc.20
  %33 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 22), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %10)
  %cmp4.22 = icmp eq i32 %33, %10
  br i1 %cmp4.22, label %for.inc.21.if.end28_crit_edge, label %for.inc.22

for.inc.21.if.end28_crit_edge:                    ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc.22:                                       ; preds = %for.inc.21
  %34 = load i32, ptr getelementptr inbounds ([24 x %struct.isp_format_info], ptr @formats, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %10)
  %cmp4.23 = icmp eq i32 %34, %10
  br i1 %cmp4.23, label %for.inc.22.if.end28_crit_edge, label %do.end

for.inc.22.if.end28_crit_edge:                    ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

do.end:                                           ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 156, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end28:                                         ; preds = %for.inc.22.if.end28_crit_edge, %for.inc.21.if.end28_crit_edge, %for.inc.20.if.end28_crit_edge, %for.inc.19.if.end28_crit_edge, %for.inc.18.if.end28_crit_edge, %for.inc.17.if.end28_crit_edge, %for.inc.16.if.end28_crit_edge, %for.inc.15.if.end28_crit_edge, %for.inc.14.if.end28_crit_edge, %for.inc.13.if.end28_crit_edge, %for.inc.12.if.end28_crit_edge, %for.inc.11.if.end28_crit_edge, %for.inc.10.if.end28_crit_edge, %for.inc.9.if.end28_crit_edge, %for.inc.8.if.end28_crit_edge, %for.inc.7.if.end28_crit_edge, %for.inc.6.if.end28_crit_edge, %for.inc.5.if.end28_crit_edge, %for.inc.4.if.end28_crit_edge, %for.inc.3.if.end28_crit_edge, %for.inc.2.if.end28_crit_edge, %for.inc.1.if.end28_crit_edge, %for.inc.if.end28_crit_edge, %entry.if.end28_crit_edge
  %i.0100.lcssa = phi i32 [ 0, %entry.if.end28_crit_edge ], [ 1, %for.inc.if.end28_crit_edge ], [ 2, %for.inc.1.if.end28_crit_edge ], [ 3, %for.inc.2.if.end28_crit_edge ], [ 4, %for.inc.3.if.end28_crit_edge ], [ 5, %for.inc.4.if.end28_crit_edge ], [ 6, %for.inc.5.if.end28_crit_edge ], [ 7, %for.inc.6.if.end28_crit_edge ], [ 8, %for.inc.7.if.end28_crit_edge ], [ 9, %for.inc.8.if.end28_crit_edge ], [ 10, %for.inc.9.if.end28_crit_edge ], [ 11, %for.inc.10.if.end28_crit_edge ], [ 12, %for.inc.11.if.end28_crit_edge ], [ 13, %for.inc.12.if.end28_crit_edge ], [ 14, %for.inc.13.if.end28_crit_edge ], [ 15, %for.inc.14.if.end28_crit_edge ], [ 16, %for.inc.15.if.end28_crit_edge ], [ 17, %for.inc.16.if.end28_crit_edge ], [ 18, %for.inc.17.if.end28_crit_edge ], [ 19, %for.inc.18.if.end28_crit_edge ], [ 20, %for.inc.19.if.end28_crit_edge ], [ 21, %for.inc.20.if.end28_crit_edge ], [ 22, %for.inc.21.if.end28_crit_edge ], [ 23, %for.inc.22.if.end28_crit_edge ]
  %bpp = getelementptr [24 x %struct.isp_format_info], ptr @formats, i32 0, i32 %i.0100.lcssa, i32 6
  %35 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bpp, align 4
  %mul = mul i32 %36, %4
  %bpl_max = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 9
  %37 = ptrtoint ptr %bpl_max to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bpl_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp eq i32 %38, 0
  %39 = tail call i32 @llvm.umax.i32(i32 %1, i32 %mul)
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %38)
  %bpl.0 = select i1 %tobool31.not, i32 %mul, i32 %40
  %bpl_zero_padding = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 8
  %41 = ptrtoint ptr %bpl_zero_padding to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bpl_zero_padding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool43.not = icmp ne i32 %42, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bpl.0, i32 %mul)
  %cmp44.not = icmp eq i32 %bpl.0, %mul
  %or.cond = select i1 %tobool43.not, i1 %cmp44.not, i1 false
  br i1 %or.cond, label %if.end28.if.end48_crit_edge, label %if.then45

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then45:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %bpl_alignment = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 7
  %43 = ptrtoint ptr %bpl_alignment to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bpl_alignment, align 4
  %sub = add i32 %bpl.0, -1
  %add = add i32 %sub, %44
  %neg = sub i32 0, %44
  %and = and i32 %add, %neg
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end28.if.end48_crit_edge
  %bpl.1 = phi i32 [ %and, %if.then45 ], [ %mul, %if.end28.if.end48_crit_edge ]
  %pixelformat = getelementptr [24 x %struct.isp_format_info], ptr @formats, i32 0, i32 %i.0100.lcssa, i32 4
  %45 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixelformat, align 4
  %pixelformat50 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %47 = ptrtoint ptr %pixelformat50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %pixelformat50, align 4
  %48 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %bpl.1, ptr %bytesperline, align 4
  %mul54 = mul i32 %bpl.1, %7
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 5
  %49 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul54, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 4
  %50 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %colorspace, align 4
  %colorspace55 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %52 = ptrtoint ptr %colorspace55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %colorspace55, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus, i32 0, i32 3
  %53 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %field, align 4
  %field56 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %55 = ptrtoint ptr %field56 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %field56, align 4
  %sub57 = sub i32 %bpl.1, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %sub57, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_enum_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_ext_ctrls(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_ccdc_max_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 521, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1421, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1426, i32 15}
!6 = !{ptr @omap3isp_video_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1440, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap3isp_video_init.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1443, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @omap3isp_video_init.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1444, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @omap3isp_video_init.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1445, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @omap3isp_video_init.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1446, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1454, i32 4}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1488, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @omap3isp_video_register._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @omap3isp_video_register._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @formats, !31, !"formats", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 39, i32 31}
!32 = !{ptr @isp_video_dummy_ops, !33, !"isp_video_dummy_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1411, i32 42}
!34 = !{ptr @isp_video_fops, !35, !"isp_video_fops", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1398, i32 42}
!36 = !{ptr @isp_video_queue_ops, !37, !"isp_video_queue_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 490, i32 29}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 365, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @isp_video_buffer_prepare.__UNIQUE_ID_ddebug304, !39, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @isp_video_ioctl_ops, !47, !"isp_video_ioctl_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1266, i32 36}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 653, i32 23}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 655, i32 25}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/media/media-entity.h", i32 468, i32 6}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 994, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @isp_video_check_external_subdevs._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @isp_video_check_external_subdevs._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1008, i32 3}
!62 = !{ptr @isp_video_check_external_subdevs._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @isp_video_check_external_subdevs._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1025, i32 3}
!66 = !{ptr @isp_video_check_external_subdevs._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @isp_video_check_external_subdevs._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/omap3isp/ispvideo.c", i32 1246, i32 23}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148365309}
!82 = !{i64 2148280618, i64 2148280650, i64 2148280679, i64 2148280713, i64 2148280744, i64 2148280767}
!83 = !{i64 2148365538}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148761713, i64 2148761718, i64 2148761731, i64 2148761775, i64 2148761809, i64 2148761830}
