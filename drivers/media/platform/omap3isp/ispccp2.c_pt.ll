; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/ispccp2.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/ispccp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.isp_video_operations = type { ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.isp_ccp2_device = type { %struct.v4l2_subdev, [2 x %struct.v4l2_mbus_framefmt], [2 x %struct.media_pad], i32, i32, %struct.isp_interface_lcx_config, %struct.isp_interface_mem_config, %struct.isp_video, ptr, ptr, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.isp_interface_lcx_config = type { i32, i32, i32, i32 }
%struct.isp_interface_mem_config = type { i32, i32, i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.isp_res_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, %struct.isp_video, %struct.isp_video, i32, i32, %struct.resizer_ratio, i32, i8, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.95 }
%struct.resizer_ratio = type { i32, i32 }
%struct.anon.95 = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
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
%struct.isp_csiphy = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, i8 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.isp_async_subdev = type { %struct.v4l2_async_subdev, %struct.isp_bus_cfg }
%struct.v4l2_async_subdev = type { i32, %union.anon.93, %struct.list_head, %struct.list_head }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i16 }
%struct.isp_bus_cfg = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.isp_parallel_cfg, [4 x i8] }
%struct.isp_parallel_cfg = type { i16, [2 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }

@omap3isp_ccp2_isr.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap3isp_ccp2_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/omap3isp/ispccp2.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CCP2 err:%x\0A\00", [19 x i8] zeroinitializer }, align 32
@omap3isp_ccp2_isr.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CCP2 OCP err:%x\0A\00", [47 x i8] zeroinitializer }, align 32
@omap3isp_ccp2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ccp2->wait\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdds_csib\00", [22 x i8] zeroinitializer }, align 32
@omap3isp_ccp2_init.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap3isp_ccp2_init\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't get regulator vdds_csib, deferring probing\0A\00", [46 x i8] zeroinitializer }, align 32
@omap3isp_ccp2_init.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 1, i8 32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not get regulator vdds_csib\0A\00", [61 x i8] zeroinitializer }, align 32
@ccp2_sd_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ccp2_sd_video_ops, ptr null, ptr null, ptr null, ptr @ccp2_sd_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ccp2_sd_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ccp2_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OMAP3 ISP CCP2\00", [17 x i8] zeroinitializer }, align 32
@ccp2_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @ccp2_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ccp2_video_ops = internal constant { %struct.isp_video_operations, [28 x i8] } { %struct.isp_video_operations { ptr @ccp2_video_queue }, [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCP2\00", [27 x i8] zeroinitializer }, align 32
@ccp2_sd_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccp2_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ccp2_sd_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ccp2_enum_mbus_code, ptr @ccp2_enum_frame_size, ptr null, ptr @ccp2_get_format, ptr @ccp2_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ccp2_s_stream.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccp2_s_stream\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: module stop timeout.\0A\00", [38 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@ccp2_phyif_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 229, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OMAP3 CCP2 bus not available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccp2_phyif_config\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccp2_phyif_config._entry_ptr = internal global ptr @ccp2_phyif_config._entry, section ".printk_index", align 4
@ccp2_print_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccp2_print_status\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"-------------CCP2 Register dump-------------\0A\00", [50 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCP2 SYSCONFIG=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 0, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCP2 SYSSTATUS=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.22, i8 0, i8 19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"###CCP2 LC01_IRQENABLE=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.23, i8 0, i8 19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"###CCP2 LC01_IRQSTATUS=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.24, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"###CCP2 LC23_IRQENABLE=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.25, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"###CCP2 LC23_IRQSTATUS=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.26, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"###CCP2 LCM_IRQENABLE=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.27, i8 0, i8 20, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"###CCP2 LCM_IRQSTATUS=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.28, i8 0, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###CCP2 CTRL=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.29, i8 0, i8 20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"###CCP2 LCx_CTRL(0)=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.30, i8 0, i8 21, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"###CCP2 LCx_CODE(0)=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.31, i8 0, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"###CCP2 LCx_STAT_START(0)=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.32, i8 0, i8 21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CCP2 LCx_STAT_SIZE(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.33, i8 0, i8 21, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###CCP2 LCx_SOF_ADDR(0)=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.34, i8 0, i8 22, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###CCP2 LCx_EOF_ADDR(0)=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.35, i8 0, i8 22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CCP2 LCx_DAT_START(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.36, i8 0, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###CCP2 LCx_DAT_SIZE(0)=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.37, i8 0, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"###CCP2 LCx_DAT_PING_ADDR(0)=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.38, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"###CCP2 LCx_DAT_PONG_ADDR(0)=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.39, i8 0, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###CCP2 LCx_DAT_OFST(0)=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.40, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCP2 LCM_CTRL=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.41, i8 0, i8 23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCP2 LCM_VSIZE=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.42, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCP2 LCM_HSIZE=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.43, i8 0, i8 24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CCP2 LCM_PREFETCH=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.44, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CCP2 LCM_SRC_ADDR=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.45, i8 0, i8 24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CCP2 LCM_SRC_OFST=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.46, i8 0, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CCP2 LCM_DST_ADDR=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.47, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CCP2 LCM_DST_OFST=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ccp2_print_status.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.48, i8 0, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@ccp2_adjust_bandwidth.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccp2_adjust_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: minimum clock divisor = %u\0A\00", [32 x i8] zeroinitializer }, align 32
@ccp2_fmts = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 12298, i32 12297], [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ccp2_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 123, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"omap3_isp: timeout waiting for ccp2 reset\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccp2_reset\00", [21 x i8] zeroinitializer }, align 32
@ccp2_reset._entry_ptr = internal global ptr @ccp2_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 240]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 131072, i64 131073]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 586, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 592, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1133, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1147, i32 50 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1150, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1154, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"ccp2_sd_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 917, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"ccp2_sd_internal_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 923, i32 46 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1078, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"ccp2_media_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1013, i32 45 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"ccp2_video_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 945, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1112, i32 45 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"ccp2_sd_video_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 904, i32 43 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"ccp2_sd_pad_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 909, i32 41 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 886, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 229, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 72, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 74, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 75, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 76, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 77, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 78, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 79, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 80, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 81, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 82, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 83, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 84, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 85, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 86, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 87, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 88, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 89, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 90, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 91, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 92, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 93, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 94, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 95, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 96, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 97, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 98, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 99, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 100, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 101, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 103, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 417, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [10 x i8] c"ccp2_fmts\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 607, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 998, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [45 x i8] c"../drivers/media/platform/omap3isp/ispccp2.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 122, i32 4 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @ccp2_phyif_config._entry, ptr @ccp2_phyif_config._entry_ptr, ptr @ccp2_reset._entry, ptr @ccp2_reset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @omap3isp_ccp2_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ccp2_sd_ops, ptr @ccp2_sd_internal_ops, ptr @.str.10, ptr @ccp2_media_ops, ptr @ccp2_video_ops, ptr @.str.11, ptr @ccp2_sd_video_ops, ptr @ccp2_sd_pad_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @ccp2_fmts, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_ccp2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_sd_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_sd_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_video_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_sd_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_sd_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_phyif_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_fmts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp2_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_ccp2_isr(ptr noundef %ccp2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %ccp2, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %arrayidx.i = getelementptr i8, ptr %ccp2, i32 -49944
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !163
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %4) #6, !srcloc !164
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %8, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #6, !srcloc !163
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %9) #6, !srcloc !164
  %and = and i32 %4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %error, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_ccp2_isr.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_ccp2_isr, %cleanup)) #6
          to label %if.then12 [label %cleanup], !srcloc !165

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %ccp2, i32 -49960
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_ccp2_isr.__UNIQUE_ID_ddebug345, ptr noundef %14, ptr noundef nonnull @.str.3, i32 noundef %4) #6
  br label %cleanup

if.end13:                                         ; preds = %entry
  %and14 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end37_crit_edge, label %if.then16

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %error17 = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %error17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %error17, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_ccp2_isr.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_ccp2_isr, %if.end37)) #6
          to label %if.then32 [label %if.end37], !srcloc !165

if.then32:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %dev33 = getelementptr i8, ptr %ccp2, i32 -49960
  %16 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_ccp2_isr.__UNIQUE_ID_ddebug346, ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %9) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then16, %if.end13.if.end37_crit_edge
  %wait = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 11
  %stopping = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 12
  %call38 = tail call i32 @omap3isp_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp ne i32 %call38, 0
  %and42 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %or.cond = or i1 %tobool43.not, %tobool39.not
  br i1 %or.cond, label %if.end37.cleanup_crit_edge, label %if.then44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.end37
  %18 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe1, align 4
  %video_in.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 7
  %call.i = tail call ptr @omap3isp_video_buffer_next(ptr noundef %video_in.i) #6
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.then44.if.end.i_crit_edge, label %if.then.i

if.then44.if.end.i_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %dma.i = getelementptr inbounds %struct.isp_buffer, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma.i, align 8
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %21) #6, !srcloc !164
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then44.if.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.isp_pipeline, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 4
  %or.i = or i32 %25, 16
  store i32 %or.i, ptr %state.i, align 4
  %state2.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 10
  %26 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp3.i = icmp eq i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %or.i)
  %cmp.i.not.i = icmp eq i32 %or.i, 63
  %or.cond.i = select i1 %cmp3.i, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond.i, label %if.then6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 @omap3isp_pipeline_set_stream(ptr noundef %19, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then12, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_is_stopping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_ccp2_unregister_entities(ptr noundef %ccp2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ccp2) #6
  %video_in = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 7
  tail call void @omap3isp_video_unregister(ptr noundef %video_in) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_ccp2_register_entities(ptr noundef %ccp2, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
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
  %dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %ccp2, i32 0, i32 14
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev1, align 4
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %ccp2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %video_in = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 7
  %call3 = tail call i32 @omap3isp_video_register(ptr noundef %video_in, ptr noundef %vdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call3, %if.end.error_crit_edge ]
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ccp2) #6
  %video_in.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 7
  tail call void @omap3isp_video_unregister(ptr noundef %video_in.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_ccp2_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ccp2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29
  %wait = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @omap3isp_ccp2_init.__key) #6
  %revision = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 4
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end44_crit_edge [
    i32 32, label %if.then
    i32 240, label %if.then41
  ]

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %call = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  %vdds_csib = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 9
  %5 = ptrtoint ptr %vdds_csib to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %vdds_csib, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.then.if.end38_crit_edge

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then3:                                         ; preds = %if.then
  %cmp6 = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp6, label %do.body8, label %do.body18

do.body8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_ccp2_init.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_ccp2_init, %cleanup)) #6
          to label %if.then13 [label %cleanup], !srcloc !165

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_ccp2_init.__UNIQUE_ID_ddebug364, ptr noundef %7, ptr noundef nonnull @.str.8) #6
  br label %cleanup

do.body18:                                        ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_ccp2_init.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_ccp2_init, %do.end36)) #6
          to label %if.then32 [label %do.end36], !srcloc !165

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_ccp2_init.__UNIQUE_ID_ddebug365, ptr noundef %9, ptr noundef nonnull @.str.9) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body18
  %10 = ptrtoint ptr %vdds_csib to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vdds_csib, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.then.if.end38_crit_edge
  %isp_csiphy2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31
  br label %if.end44.sink.split

if.then41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %isp_csiphy1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then41, %if.end38
  %isp_csiphy1.sink = phi ptr [ %isp_csiphy1, %if.then41 ], [ %isp_csiphy2, %if.end38 ]
  %phy42 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 8
  %11 = ptrtoint ptr %phy42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %isp_csiphy1.sink, ptr %phy42, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %entry.if.end44_crit_edge
  %pads1.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 2
  %input.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 3
  %12 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %input.i, align 4
  %output.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 4
  %13 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %output.i, align 8
  tail call void @v4l2_subdev_init(ptr noundef %isp_ccp2, ptr noundef nonnull @ccp2_sd_ops) #6
  %internal_ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 0, i32 7
  %14 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ccp2_sd_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.10, i32 noundef 32) #6
  %grp_id.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 0, i32 10
  %15 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %isp_ccp2, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 0, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %18, 4
  store i32 %or.i, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 2, i32 0, i32 4
  %19 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %flags3.i, align 4
  %flags5.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 29, i32 2, i32 1, i32 4
  %20 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %flags5.i, align 4
  %ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 0, i32 0, i32 11
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ccp2_media_ops, ptr %ops.i, align 4
  %call6.i = tail call i32 @media_entity_pads_init(ptr noundef %isp_ccp2, i16 noundef zeroext 2, ptr noundef %pads1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i69 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i69, label %if.end44.cleanup_crit_edge, label %ccp2_init_entities.exit

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ccp2_init_entities.exit:                          ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #6
  %22 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 84)
  %24 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12298, ptr %code.i.i, align 4
  %26 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i = call i32 @ccp2_set_format(ptr noundef %isp_ccp2, ptr noundef null, ptr noundef nonnull %format.i.i) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #6
  %video_in.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7
  %type.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7, i32 1
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %type.i, align 8
  %bpl_alignment.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7, i32 7
  %29 = ptrtoint ptr %bpl_alignment.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %bpl_alignment.i, align 4
  %bpl_max.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7, i32 9
  %30 = ptrtoint ptr %bpl_max.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -32, ptr %bpl_max.i, align 4
  %isp.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7, i32 5
  %31 = ptrtoint ptr %isp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %isp, ptr %isp.i, align 4
  %ops12.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7, i32 20
  %32 = ptrtoint ptr %ops12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ccp2_video_ops, ptr %ops12.i, align 4
  %capture_mem.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7, i32 6
  %33 = ptrtoint ptr %capture_mem.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 50331648, ptr %capture_mem.i, align 8
  %call15.i = tail call i32 @omap3isp_video_init(ptr noundef %video_in.i, ptr noundef nonnull @.str.11) #6
  %34 = tail call i32 @llvm.smin.i32(i32 %call15.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp46 = icmp slt i32 %call15.i, 0
  br i1 %cmp46, label %ccp2_init_entities.exit.cleanup_crit_edge, label %if.end48

ccp2_init_entities.exit.cleanup_crit_edge:        ; preds = %ccp2_init_entities.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %ccp2_init_entities.exit
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !163
  %or.i.i = or i32 %37, 2
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #6, !srcloc !164
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !163
  %and.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #6
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %45, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #6, !srcloc !163
  %and.1.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %while.body.1.i, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.1.i:                                   ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #6
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %49, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #6, !srcloc !163
  %and.2.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %while.body.2.i, label %while.body.1.i.cleanup_crit_edge

while.body.1.i.cleanup_crit_edge:                 ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.2.i:                                   ; preds = %while.body.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #6
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %53, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #6, !srcloc !163
  %and.3.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %while.body.3.i, label %while.body.2.i.cleanup_crit_edge

while.body.2.i.cleanup_crit_edge:                 ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.3.i:                                   ; preds = %while.body.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #6
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %57, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #6, !srcloc !163
  %and.4.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %while.body.4.i, label %while.body.3.i.cleanup_crit_edge

while.body.3.i.cleanup_crit_edge:                 ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.4.i:                                   ; preds = %while.body.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #6
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.5.i = getelementptr i8, ptr %61, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5.i) #6, !srcloc !163
  %and.5.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %while.body.5.i, label %while.body.4.i.cleanup_crit_edge

while.body.4.i.cleanup_crit_edge:                 ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.5.i:                                   ; preds = %while.body.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #6
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.6.i = getelementptr i8, ptr %65, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6.i) #6, !srcloc !163
  %and.6.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %while.body.6.i, label %while.body.5.i.cleanup_crit_edge

while.body.5.i.cleanup_crit_edge:                 ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.6.i:                                   ; preds = %while.body.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #6
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.7.i = getelementptr i8, ptr %69, i32 8
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7.i) #6, !srcloc !163
  %and.7.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %while.body.7.i, label %while.body.6.i.cleanup_crit_edge

while.body.6.i.cleanup_crit_edge:                 ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.7.i:                                   ; preds = %while.body.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #6
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.8.i = getelementptr i8, ptr %73, i32 8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8.i) #6, !srcloc !163
  %and.8.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool.not.8.i, label %while.body.8.i, label %while.body.7.i.cleanup_crit_edge

while.body.7.i.cleanup_crit_edge:                 ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.8.i:                                   ; preds = %while.body.7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #6
  %76 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.9.i = getelementptr i8, ptr %77, i32 8
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9.i) #6, !srcloc !163
  %and.9.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i)
  %tobool.not.9.i = icmp eq i32 %and.9.i, 0
  br i1 %tobool.not.9.i, label %while.body.9.i, label %while.body.8.i.cleanup_crit_edge

while.body.8.i.cleanup_crit_edge:                 ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.9.i:                                   ; preds = %while.body.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 2147480) #6
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.10.i = getelementptr i8, ptr %81, i32 8
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10.i) #6, !srcloc !163
  %and.10.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10.i)
  %tobool.not.10.i = icmp eq i32 %and.10.i, 0
  br i1 %tobool.not.10.i, label %while.body.10.i, label %while.body.9.i.cleanup_crit_edge

while.body.9.i.cleanup_crit_edge:                 ; preds = %while.body.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.10.i:                                  ; preds = %while.body.9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 2147480) #6
  %84 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.11.i = getelementptr i8, ptr %85, i32 8
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.11.i) #6, !srcloc !163
  %and.11.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11.i)
  %tobool.not.11.i = icmp eq i32 %and.11.i, 0
  br i1 %tobool.not.11.i, label %while.body.11.i, label %while.body.10.i.cleanup_crit_edge

while.body.10.i.cleanup_crit_edge:                ; preds = %while.body.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.11.i:                                  ; preds = %while.body.10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 2147480) #6
  %dev.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 3
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.52) #9
  br label %cleanup

cleanup:                                          ; preds = %while.body.11.i, %while.body.10.i.cleanup_crit_edge, %while.body.9.i.cleanup_crit_edge, %while.body.8.i.cleanup_crit_edge, %while.body.7.i.cleanup_crit_edge, %while.body.6.i.cleanup_crit_edge, %while.body.5.i.cleanup_crit_edge, %while.body.4.i.cleanup_crit_edge, %while.body.3.i.cleanup_crit_edge, %while.body.2.i.cleanup_crit_edge, %while.body.1.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %ccp2_init_entities.exit.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then13, %do.body8
  %retval.0 = phi i32 [ -517, %if.then13 ], [ %34, %ccp2_init_entities.exit.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ], [ 0, %while.body.1.i.cleanup_crit_edge ], [ 0, %while.body.2.i.cleanup_crit_edge ], [ 0, %while.body.3.i.cleanup_crit_edge ], [ 0, %while.body.4.i.cleanup_crit_edge ], [ 0, %while.body.5.i.cleanup_crit_edge ], [ 0, %while.body.6.i.cleanup_crit_edge ], [ 0, %while.body.7.i.cleanup_crit_edge ], [ 0, %while.body.8.i.cleanup_crit_edge ], [ 0, %while.body.9.i.cleanup_crit_edge ], [ 0, %while.body.10.i.cleanup_crit_edge ], [ 0, %while.body.11.i ], [ -517, %do.body8 ], [ %call6.i, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_ccp2_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %video_in = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7
  tail call void @omap3isp_video_cleanup(ptr noundef %video_in) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_buffer_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_pipeline_set_stream(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp2_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
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
  %call = call i32 @ccp2_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp2_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  %lines.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -50744
  %dev4 = getelementptr i8, ptr %1, i32 -49960
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %state = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp5 = icmp eq i32 %enable, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %stopping = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #6
  %6 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %stopping, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %7 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %enable, label %if.end7.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 0, label %sw.bb33
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  %phy = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %sw.bb.if.end14_crit_edge, label %if.then8

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %sw.bb
  %call10 = tail call i32 @omap3isp_csiphy_acquire(ptr noundef nonnull %9, ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %sw.bb.if.end14_crit_edge
  %pipe1.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lines.i) #6
  %12 = ptrtoint ptr %lines.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lines.i, align 4
  %revision.i.i = getelementptr i8, ptr %1, i32 -49956
  %13 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 240
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end14.ccp2_pwr_cfg.exit.i_crit_edge

if.end14.ccp2_pwr_cfg.exit.i_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_pwr_cfg.exit.i

land.rhs.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %autoidle.i.i = getelementptr i8, ptr %1, i32 -49716
  %15 = ptrtoint ptr %autoidle.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %autoidle.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.i = icmp ne i32 %16, 0
  %phi.cast.i.i = zext i1 %tobool.i.i to i32
  %phi.bo.i.i = or i32 %phi.cast.i.i, 8192
  br label %ccp2_pwr_cfg.exit.i

ccp2_pwr_cfg.exit.i:                              ; preds = %land.rhs.i.i, %if.end14.ccp2_pwr_cfg.exit.i_crit_edge
  %17 = phi i32 [ 8192, %if.end14.ccp2_pwr_cfg.exit.i_crit_edge ], [ %phi.bo.i.i, %land.rhs.i.i ]
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 -49944
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %17) #6, !srcloc !164
  %pads.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 2
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pads.i) #6
  %entity2.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %entity2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entity2.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %external.i = getelementptr inbounds %struct.isp_pipeline, ptr %11, i32 0, i32 14
  %22 = ptrtoint ptr %external.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %external.i, align 4
  %asd.i = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %asd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asd.i, align 4
  %bus10.i = getelementptr inbounds %struct.isp_async_subdev, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %27, i32 64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #6, !srcloc !163
  %or.i.i = and i32 %28, -5143
  %29 = ptrtoint ptr %bus10.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %bus10.i, align 4
  %30 = lshr i8 %bf.load.i.i, 3
  %31 = and i8 %30, 2
  %shl.i.i = zext i8 %31 to i32
  %32 = and i8 %30, 4
  %shl8.i.i = zext i8 %32 to i32
  %bf.lshr15.i.i = lshr i8 %bf.load.i.i, 7
  %bf.cast16.i.i = zext i8 %bf.lshr15.i.i to i32
  %shl17.i.i = shl nuw nsw i32 %bf.cast16.i.i, 10
  %bf.lshr24.i.i = lshr i8 %bf.load.i.i, 1
  %bf.clear25.i.i = and i8 %bf.lshr24.i.i, 1
  %bf.cast26.i.i = zext i8 %bf.clear25.i.i to i32
  %shl27.i.i = shl nuw nsw i32 %bf.cast26.i.i, 12
  %and.i.i = or i32 %or.i.i, %shl.i.i
  %or1.i.i = or i32 %and.i.i, %shl8.i.i
  %or9.i.i = or i32 %or1.i.i, %shl17.i.i
  %or18.i.i = or i32 %or9.i.i, %shl27.i.i
  %or28.i.i = or i32 %or18.i.i, 16
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %34, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i.i, i32 %or28.i.i) #6, !srcloc !164
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i66.i.i = getelementptr i8, ptr %36, i32 64
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i.i) #6, !srcloc !163
  %and32.i.i = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %ccp2_pwr_cfg.exit.i.if.end.i_crit_edge

ccp2_pwr_cfg.exit.i.if.end.i_crit_edge:           ; preds = %ccp2_pwr_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.i:                                      ; preds = %ccp2_pwr_cfg.exit.i
  %38 = ptrtoint ptr %bus10.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load33.i.i = load i8, ptr %bus10.i, align 4
  %39 = and i8 %bf.load33.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.not.i.i = icmp eq i8 %39, 0
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %do.end40.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end40.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.14) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end40.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %42 = ptrtoint ptr %bus10.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load41.i.i = load i8, ptr %bus10.i, align 4
  %43 = and i8 %bf.load41.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp45.not.i.i = icmp eq i8 %43, 0
  br i1 %cmp45.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.ccp2_if_configure.exit_crit_edge

if.end.i.i.ccp2_if_configure.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_if_configure.exit

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %ccp2_pwr_cfg.exit.i.if.end.i_crit_edge
  %44 = ptrtoint ptr %bus10.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %bus10.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 2
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %narrow.i = add nuw nsw i8 %bf.clear.i, 1
  %add.i = zext i8 %narrow.i to i32
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %46, i32 64
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #6, !srcloc !163
  %or.i5.i = or i32 %47, 2048
  %48 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %49)
  %cmp.i7.i = icmp eq i32 %49, 240
  br i1 %cmp.i7.i, label %if.then.i8.i, label %if.else.i.i

if.then.i8.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp10.i.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp10.i.not.i, label %if.then.i8.i.cond.end13.i.i_crit_edge, label %cond.true11.i.i

if.then.i8.i.cond.end13.i.i_crit_edge:            ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end13.i.i

cond.true11.i.i:                                  ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i = udiv i32 65536, %add.i
  %phi.bo.i9.i = shl nuw nsw i32 %div.i.i, 15
  br label %cond.end13.i.i

cond.end13.i.i:                                   ; preds = %cond.true11.i.i, %if.then.i8.i.cond.end13.i.i_crit_edge
  %cond14.i.i = phi i32 [ %phi.bo.i9.i, %cond.true11.i.i ], [ 2147450880, %if.then.i8.i.cond.end13.i.i_crit_edge ]
  %and.i10.i = and i32 %or.i5.i, 32767
  %or15.i.i = or i32 %cond14.i.i, %and.i10.i
  br label %ccp2_vp_config.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and29.i.i = and i32 %or.i5.i, -769
  %sub.i.i = shl nuw nsw i32 %add.i, 8
  %shl30.i.i = add nsw i32 %sub.i.i, -256
  %or31.i.i = or i32 %shl30.i.i, %and29.i.i
  br label %ccp2_vp_config.exit.i

ccp2_vp_config.exit.i:                            ; preds = %if.else.i.i, %cond.end13.i.i
  %val.0.i.i = phi i32 [ %or15.i.i, %cond.end13.i.i ], [ %or31.i.i, %if.else.i.i ]
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %51, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 %val.0.i.i) #6, !srcloc !164
  br i1 %tobool.not.i, label %ccp2_vp_config.exit.i.if.end36.i_crit_edge, label %if.else.i

ccp2_vp_config.exit.i.if.end36.i_crit_edge:       ; preds = %ccp2_vp_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else.i:                                        ; preds = %ccp2_vp_config.exit.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 6
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %sensor15.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %sensor15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sensor15.i, align 4
  %tobool16.not.i = icmp eq ptr %55, null
  br i1 %tobool16.not.i, label %if.else.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool19.not.i = icmp eq ptr %57, null
  br i1 %tobool19.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.else21.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else21.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6), align 4
  %tobool22.not.i = icmp eq ptr %58, null
  br i1 %tobool22.not.i, label %if.else21.i.if.else29.i_crit_edge, label %land.lhs.true23.i

if.else21.i.if.else29.i_crit_edge:                ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else29.i

land.lhs.true23.i:                                ; preds = %if.else21.i
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool25.not.i = icmp eq ptr %60, null
  br i1 %tobool25.not.i, label %land.lhs.true23.i.if.else29.i_crit_edge, label %land.lhs.true23.i.if.end36.sink.split.i_crit_edge

land.lhs.true23.i.if.end36.sink.split.i_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split.i

land.lhs.true23.i.if.else29.i_crit_edge:          ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else29.i

if.else29.i:                                      ; preds = %land.lhs.true23.i.if.else29.i_crit_edge, %if.else21.i.if.else29.i_crit_edge
  br label %if.end36.sink.split.i

if.end36.sink.split.i:                            ; preds = %if.else29.i, %land.lhs.true23.i.if.end36.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %57, %if.else29.i ], [ %60, %land.lhs.true23.i.if.end36.sink.split.i_crit_edge ]
  %call33.i = call i32 %.sink.i(ptr noundef nonnull %21, ptr noundef nonnull %lines.i) #6
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.else.i.if.end36.i_crit_edge, %ccp2_vp_config.exit.i.if.end36.i_crit_edge
  %61 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lines.i, align 4
  %if_cfg.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 5
  %data_start.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %data_start.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %data_start.i, align 4
  %64 = ptrtoint ptr %bus10.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load40.i = load i8, ptr %bus10.i, align 4
  %bf.lshr41.i = lshr i8 %bf.load40.i, 6
  %bf.clear42.i = and i8 %bf.lshr41.i, 1
  %bf.cast43.i = zext i8 %bf.clear42.i to i32
  %65 = ptrtoint ptr %if_cfg.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %bf.cast43.i, ptr %if_cfg.i, align 4
  %code.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %code.i, align 4
  %format46.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %format46.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %format46.i, align 4
  %height.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height.i, align 4
  %data_size.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %data_size.i, align 4
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %73, i32 80
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #6, !srcloc !163
  %or.i14.i = or i32 %74, 2
  %75 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %76)
  %cmp.i16.i = icmp eq i32 %76, 240
  br i1 %cmp.i16.i, label %do.body.i.i, label %do.body10.i.i

do.body.i.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i17.i = and i32 %or.i14.i, -524541
  %77 = ptrtoint ptr %if_cfg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %if_cfg.i, align 4
  %shl.i18.i = shl i32 %78, 19
  %or3.i.i = or i32 %shl.i18.i, %and.i17.i
  br label %ccp2_lcx_config.exit.i

do.body10.i.i:                                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %and11.i.i = and i32 %or.i14.i, -253
  %79 = ptrtoint ptr %if_cfg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %if_cfg.i, align 4
  %shl13.i.i = shl i32 %80, 2
  %shl13.masked.i.i = and i32 %shl13.i.i, -252
  %and18.i.i = or i32 %shl13.masked.i.i, %and11.i.i
  br label %ccp2_lcx_config.exit.i

ccp2_lcx_config.exit.i:                           ; preds = %do.body10.i.i, %do.body.i.i
  %.sink.i.i = phi i32 [ 3, %do.body10.i.i ], [ 2, %do.body.i.i ]
  %and18.sink.i.i = phi i32 [ %and18.i.i, %do.body10.i.i ], [ %or3.i.i, %do.body.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12297, i32 %67)
  %cond.i.i = icmp eq i32 %67, 12297
  %..i.i = select i1 %cond.i.i, i32 18, i32 22
  %shl19.i.i = shl nuw nsw i32 %..i.i, %.sink.i.i
  %or20.i.i = or i32 %and18.sink.i.i, %shl19.i.i
  %81 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i43.i.i = getelementptr i8, ptr %82, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i.i, i32 %or20.i.i) #6, !srcloc !164
  %83 = ptrtoint ptr %data_start.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_start.i, align 4
  %shl23.i.i = shl i32 %84, 16
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i45.i.i = getelementptr i8, ptr %86, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 %shl23.i.i) #6, !srcloc !164
  %87 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %data_size.i, align 4
  %shl24.i.i = shl i32 %88, 16
  %89 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %90, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 %shl24.i.i) #6, !srcloc !164
  %91 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %92, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 63) #6, !srcloc !164
  %93 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %94, i32 12
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !163
  %or.i.i.i = or i32 %95, 63
  %96 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %97, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %or.i.i.i) #6, !srcloc !164
  br label %ccp2_if_configure.exit

ccp2_if_configure.exit:                           ; preds = %ccp2_lcx_config.exit.i, %if.end.i.i.ccp2_if_configure.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lines.i) #6
  call fastcc void @ccp2_print_status(ptr noundef %1)
  %vdds_csib.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 9
  %98 = ptrtoint ptr %vdds_csib.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vdds_csib.i, align 4
  %tobool1.not.i = icmp eq ptr %99, null
  br i1 %tobool1.not.i, label %ccp2_if_configure.exit.ccp2_if_enable.exit_crit_edge, label %if.then.i

ccp2_if_configure.exit.ccp2_if_enable.exit_crit_edge: ; preds = %ccp2_if_configure.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_if_enable.exit

if.then.i:                                        ; preds = %ccp2_if_configure.exit
  %call.i107 = call i32 @regulator_enable(ptr noundef nonnull %99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i = icmp slt i32 %call.i107, 0
  br i1 %cmp.i, label %if.then18, label %if.then.i.ccp2_if_enable.exit_crit_edge

if.then.i.ccp2_if_enable.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_if_enable.exit

ccp2_if_enable.exit:                              ; preds = %if.then.i.ccp2_if_enable.exit_crit_edge, %ccp2_if_configure.exit.ccp2_if_enable.exit_crit_edge
  %100 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i109 = getelementptr i8, ptr %101, i32 80
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i109) #6, !srcloc !163
  %or.i.i111 = or i32 %102, 1
  %103 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %104, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i111) #6, !srcloc !164
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %106, i32 128
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i) #6, !srcloc !163
  %or.i.1.i = or i32 %107, 1
  %108 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.1.i = getelementptr i8, ptr %109, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.1.i, i32 %or.i.1.i) #6, !srcloc !164
  %110 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %111, i32 176
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i) #6, !srcloc !163
  %or.i.2.i = or i32 %112, 1
  %113 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.2.i = getelementptr i8, ptr %114, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.2.i, i32 %or.i.2.i) #6, !srcloc !164
  %115 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %116, i32 64
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i) #6, !srcloc !163
  %or.i38.i = or i32 %117, 17
  %118 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i39.i = getelementptr i8, ptr %119, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i39.i, i32 %or.i38.i) #6, !srcloc !164
  br label %sw.epilog

if.then18:                                        ; preds = %if.then.i
  %120 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phy, align 8
  %tobool20.not = icmp eq ptr %121, null
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.then21

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  call void @omap3isp_csiphy_release(ptr noundef nonnull %121) #6
  br label %cleanup

sw.bb25:                                          ; preds = %if.end7
  %122 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp27.not = icmp eq i32 %123, 2
  br i1 %cmp27.not, label %sw.bb25.if.end32_crit_edge, label %if.then28

sw.bb25.if.end32_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %formats = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 1
  %124 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %formats, align 4
  %mem_cfg = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 6
  %hsize_count = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 6, i32 2
  %126 = ptrtoint ptr %hsize_count to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %hsize_count, align 4
  %height = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0, i32 1
  %127 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %height, align 4
  %vsize_count = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 6, i32 1
  %129 = ptrtoint ptr %vsize_count to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %vsize_count, align 4
  %src_ofst = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 6, i32 3
  %130 = ptrtoint ptr %src_ofst to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %src_ofst, align 4
  tail call fastcc void @ccp2_mem_configure(ptr noundef %1, ptr noundef %mem_cfg)
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call fastcc void @ccp2_print_status(ptr noundef %1)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %sw.bb25.if.end32_crit_edge
  tail call fastcc void @ccp2_mem_enable(ptr noundef %1, i8 noundef zeroext 1)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end7
  %wait = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 11
  %stopping35 = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 12
  %call36 = tail call i32 @omap3isp_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %sw.bb33.if.end47_crit_edge, label %do.body

sw.bb33.if.end47_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.body:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_s_stream.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_s_stream, %if.end47)) #6
          to label %if.then45 [label %if.end47], !srcloc !165

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_s_stream.__UNIQUE_ID_ddebug363, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %name) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %do.body, %sw.bb33.if.end47_crit_edge
  %input = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 3
  %131 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %input, align 4
  %133 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %132, label %if.end47.sw.epilog_crit_edge [
    i32 2, label %if.then49
    i32 1, label %if.then52
  ]

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i113 = getelementptr i8, ptr %1, i32 -49944
  %134 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr.i.i.i114 = getelementptr i8, ptr %135, i32 64
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i114) #6, !srcloc !163
  %and.i.i115 = and i32 %136, -17
  %137 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr.i2.i.i117 = getelementptr i8, ptr %138, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i117, i32 %and.i.i115) #6, !srcloc !164
  %139 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %140, i32 464
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #6, !srcloc !163
  %and.i11.i = and i32 %141, -2
  %142 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr.i2.i13.i = getelementptr i8, ptr %143, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i13.i, i32 %and.i11.i) #6, !srcloc !164
  tail call void @omap3isp_sbl_disable(ptr noundef %add.ptr, i32 noundef 1) #6
  br label %sw.epilog

if.then52:                                        ; preds = %if.end47
  %arrayidx.i.i.i119 = getelementptr i8, ptr %1, i32 -49944
  %144 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i.i.i120 = getelementptr i8, ptr %145, i32 80
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i120) #6, !srcloc !163
  %and.i.i121 = and i32 %146, -2
  %147 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i2.i.i122 = getelementptr i8, ptr %148, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i122, i32 %and.i.i121) #6, !srcloc !164
  %149 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i.i.1.i123 = getelementptr i8, ptr %150, i32 128
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i123) #6, !srcloc !163
  %and.i.1.i124 = and i32 %151, -2
  %152 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i2.i.1.i125 = getelementptr i8, ptr %153, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.1.i125, i32 %and.i.1.i124) #6, !srcloc !164
  %154 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i.i.2.i126 = getelementptr i8, ptr %155, i32 176
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i126) #6, !srcloc !163
  %and.i.2.i127 = and i32 %156, -2
  %157 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i2.i.2.i128 = getelementptr i8, ptr %158, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.2.i128, i32 %and.i.2.i127) #6, !srcloc !164
  %159 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i.i36.i129 = getelementptr i8, ptr %160, i32 64
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i129) #6, !srcloc !163
  %and.i37.i130 = and i32 %161, -18
  %162 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i.i119, align 4
  %add.ptr.i2.i39.i132 = getelementptr i8, ptr %163, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i39.i132, i32 %and.i37.i130) #6, !srcloc !164
  %vdds_csib15.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 9
  %164 = ptrtoint ptr %vdds_csib15.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %vdds_csib15.i, align 4
  %tobool16.not.i134 = icmp eq ptr %165, null
  br i1 %tobool16.not.i134, label %if.then52.ccp2_if_enable.exit136_crit_edge, label %if.then17.i

if.then52.ccp2_if_enable.exit136_crit_edge:       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_if_enable.exit136

if.then17.i:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 @regulator_disable(ptr noundef nonnull %165) #6
  br label %ccp2_if_enable.exit136

ccp2_if_enable.exit136:                           ; preds = %if.then17.i, %if.then52.ccp2_if_enable.exit136_crit_edge
  %phy54 = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 8
  %166 = ptrtoint ptr %phy54 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %phy54, align 8
  %tobool55.not = icmp eq ptr %167, null
  br i1 %tobool55.not, label %ccp2_if_enable.exit136.sw.epilog_crit_edge, label %if.then56

ccp2_if_enable.exit136.sw.epilog_crit_edge:       ; preds = %ccp2_if_enable.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then56:                                        ; preds = %ccp2_if_enable.exit136
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @omap3isp_csiphy_release(ptr noundef nonnull %167) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then56, %ccp2_if_enable.exit136.sw.epilog_crit_edge, %if.then49, %if.end47.sw.epilog_crit_edge, %if.end32, %ccp2_if_enable.exit, %if.end7.sw.epilog_crit_edge
  %168 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %enable, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then21, %if.then18.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call.i107, %if.then21 ], [ %call.i107, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_csiphy_acquire(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccp2_print_status(ptr noundef readonly %ccp2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body5)) #6
          to label %if.then [label %do.body5], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %ccp2, i32 -49960
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.19) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body25)) #6
          to label %if.then19 [label %do.body25], !srcloc !165

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr i8, ptr %ccp2, i32 -49960
  %2 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev20, align 8
  %arrayidx.i = getelementptr i8, ptr %ccp2, i32 -49944
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %6) #6
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body45)) #6
          to label %if.then39 [label %do.body45], !srcloc !165

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %dev40 = getelementptr i8, ptr %ccp2, i32 -49960
  %7 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev40, align 8
  %arrayidx.i728 = getelementptr i8, ptr %ccp2, i32 -49944
  %9 = ptrtoint ptr %arrayidx.i728 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i728, align 4
  %add.ptr.i729 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i729) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug300, ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef %11) #6
  br label %do.body45

do.body45:                                        ; preds = %if.then39, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body65)) #6
          to label %if.then59 [label %do.body65], !srcloc !165

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %dev60 = getelementptr i8, ptr %ccp2, i32 -49960
  %12 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev60, align 8
  %arrayidx.i730 = getelementptr i8, ptr %ccp2, i32 -49944
  %14 = ptrtoint ptr %arrayidx.i730 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i730, align 4
  %add.ptr.i731 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i731) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug301, ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %16) #6
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body85)) #6
          to label %if.then79 [label %do.body85], !srcloc !165

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %dev80 = getelementptr i8, ptr %ccp2, i32 -49960
  %17 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev80, align 8
  %arrayidx.i732 = getelementptr i8, ptr %ccp2, i32 -49944
  %19 = ptrtoint ptr %arrayidx.i732 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i732, align 4
  %add.ptr.i733 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i733) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug302, ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %21) #6
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body105)) #6
          to label %if.then99 [label %do.body105], !srcloc !165

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  %dev100 = getelementptr i8, ptr %ccp2, i32 -49960
  %22 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev100, align 8
  %arrayidx.i734 = getelementptr i8, ptr %ccp2, i32 -49944
  %24 = ptrtoint ptr %arrayidx.i734 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i734, align 4
  %add.ptr.i735 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i735) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug303, ptr noundef %23, ptr noundef nonnull @.str.24, i32 noundef %26) #6
  br label %do.body105

do.body105:                                       ; preds = %if.then99, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body125)) #6
          to label %if.then119 [label %do.body125], !srcloc !165

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #8
  %dev120 = getelementptr i8, ptr %ccp2, i32 -49960
  %27 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev120, align 8
  %arrayidx.i736 = getelementptr i8, ptr %ccp2, i32 -49944
  %29 = ptrtoint ptr %arrayidx.i736 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i736, align 4
  %add.ptr.i737 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i737) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug304, ptr noundef %28, ptr noundef nonnull @.str.25, i32 noundef %31) #6
  br label %do.body125

do.body125:                                       ; preds = %if.then119, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body145)) #6
          to label %if.then139 [label %do.body145], !srcloc !165

if.then139:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #8
  %dev140 = getelementptr i8, ptr %ccp2, i32 -49960
  %32 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev140, align 8
  %arrayidx.i738 = getelementptr i8, ptr %ccp2, i32 -49944
  %34 = ptrtoint ptr %arrayidx.i738 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i738, align 4
  %add.ptr.i739 = getelementptr i8, ptr %35, i32 44
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i739) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug305, ptr noundef %33, ptr noundef nonnull @.str.26, i32 noundef %36) #6
  br label %do.body145

do.body145:                                       ; preds = %if.then139, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body165)) #6
          to label %if.then159 [label %do.body165], !srcloc !165

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #8
  %dev160 = getelementptr i8, ptr %ccp2, i32 -49960
  %37 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev160, align 8
  %arrayidx.i740 = getelementptr i8, ptr %ccp2, i32 -49944
  %39 = ptrtoint ptr %arrayidx.i740 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i740, align 4
  %add.ptr.i741 = getelementptr i8, ptr %40, i32 48
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i741) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug306, ptr noundef %38, ptr noundef nonnull @.str.27, i32 noundef %41) #6
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body185)) #6
          to label %if.then179 [label %do.body185], !srcloc !165

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %dev180 = getelementptr i8, ptr %ccp2, i32 -49960
  %42 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev180, align 8
  %arrayidx.i742 = getelementptr i8, ptr %ccp2, i32 -49944
  %44 = ptrtoint ptr %arrayidx.i742 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i742, align 4
  %add.ptr.i743 = getelementptr i8, ptr %45, i32 64
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i743) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug307, ptr noundef %43, ptr noundef nonnull @.str.28, i32 noundef %46) #6
  br label %do.body185

do.body185:                                       ; preds = %if.then179, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body205)) #6
          to label %if.then199 [label %do.body205], !srcloc !165

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #8
  %dev200 = getelementptr i8, ptr %ccp2, i32 -49960
  %47 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev200, align 8
  %arrayidx.i744 = getelementptr i8, ptr %ccp2, i32 -49944
  %49 = ptrtoint ptr %arrayidx.i744 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i744, align 4
  %add.ptr.i745 = getelementptr i8, ptr %50, i32 80
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i745) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug308, ptr noundef %48, ptr noundef nonnull @.str.29, i32 noundef %51) #6
  br label %do.body205

do.body205:                                       ; preds = %if.then199, %do.body185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body225)) #6
          to label %if.then219 [label %do.body225], !srcloc !165

if.then219:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #8
  %dev220 = getelementptr i8, ptr %ccp2, i32 -49960
  %52 = ptrtoint ptr %dev220 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev220, align 8
  %arrayidx.i746 = getelementptr i8, ptr %ccp2, i32 -49944
  %54 = ptrtoint ptr %arrayidx.i746 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i746, align 4
  %add.ptr.i747 = getelementptr i8, ptr %55, i32 84
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i747) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug309, ptr noundef %53, ptr noundef nonnull @.str.30, i32 noundef %56) #6
  br label %do.body225

do.body225:                                       ; preds = %if.then219, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body245)) #6
          to label %if.then239 [label %do.body245], !srcloc !165

if.then239:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #8
  %dev240 = getelementptr i8, ptr %ccp2, i32 -49960
  %57 = ptrtoint ptr %dev240 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev240, align 8
  %arrayidx.i748 = getelementptr i8, ptr %ccp2, i32 -49944
  %59 = ptrtoint ptr %arrayidx.i748 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i748, align 4
  %add.ptr.i749 = getelementptr i8, ptr %60, i32 88
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i749) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug310, ptr noundef %58, ptr noundef nonnull @.str.31, i32 noundef %61) #6
  br label %do.body245

do.body245:                                       ; preds = %if.then239, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body265)) #6
          to label %if.then259 [label %do.body265], !srcloc !165

if.then259:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #8
  %dev260 = getelementptr i8, ptr %ccp2, i32 -49960
  %62 = ptrtoint ptr %dev260 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev260, align 8
  %arrayidx.i750 = getelementptr i8, ptr %ccp2, i32 -49944
  %64 = ptrtoint ptr %arrayidx.i750 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i750, align 4
  %add.ptr.i751 = getelementptr i8, ptr %65, i32 92
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i751) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug311, ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef %66) #6
  br label %do.body265

do.body265:                                       ; preds = %if.then259, %do.body245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body285)) #6
          to label %if.then279 [label %do.body285], !srcloc !165

if.then279:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #8
  %dev280 = getelementptr i8, ptr %ccp2, i32 -49960
  %67 = ptrtoint ptr %dev280 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev280, align 8
  %arrayidx.i752 = getelementptr i8, ptr %ccp2, i32 -49944
  %69 = ptrtoint ptr %arrayidx.i752 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i752, align 4
  %add.ptr.i753 = getelementptr i8, ptr %70, i32 96
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i753) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug312, ptr noundef %68, ptr noundef nonnull @.str.33, i32 noundef %71) #6
  br label %do.body285

do.body285:                                       ; preds = %if.then279, %do.body265
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body305)) #6
          to label %if.then299 [label %do.body305], !srcloc !165

if.then299:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #8
  %dev300 = getelementptr i8, ptr %ccp2, i32 -49960
  %72 = ptrtoint ptr %dev300 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev300, align 8
  %arrayidx.i754 = getelementptr i8, ptr %ccp2, i32 -49944
  %74 = ptrtoint ptr %arrayidx.i754 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i754, align 4
  %add.ptr.i755 = getelementptr i8, ptr %75, i32 100
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i755) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug313, ptr noundef %73, ptr noundef nonnull @.str.34, i32 noundef %76) #6
  br label %do.body305

do.body305:                                       ; preds = %if.then299, %do.body285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body325)) #6
          to label %if.then319 [label %do.body325], !srcloc !165

if.then319:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #8
  %dev320 = getelementptr i8, ptr %ccp2, i32 -49960
  %77 = ptrtoint ptr %dev320 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev320, align 8
  %arrayidx.i756 = getelementptr i8, ptr %ccp2, i32 -49944
  %79 = ptrtoint ptr %arrayidx.i756 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i756, align 4
  %add.ptr.i757 = getelementptr i8, ptr %80, i32 104
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i757) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug314, ptr noundef %78, ptr noundef nonnull @.str.35, i32 noundef %81) #6
  br label %do.body325

do.body325:                                       ; preds = %if.then319, %do.body305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body345)) #6
          to label %if.then339 [label %do.body345], !srcloc !165

if.then339:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #8
  %dev340 = getelementptr i8, ptr %ccp2, i32 -49960
  %82 = ptrtoint ptr %dev340 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev340, align 8
  %arrayidx.i758 = getelementptr i8, ptr %ccp2, i32 -49944
  %84 = ptrtoint ptr %arrayidx.i758 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i758, align 4
  %add.ptr.i759 = getelementptr i8, ptr %85, i32 108
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i759) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug315, ptr noundef %83, ptr noundef nonnull @.str.36, i32 noundef %86) #6
  br label %do.body345

do.body345:                                       ; preds = %if.then339, %do.body325
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body365)) #6
          to label %if.then359 [label %do.body365], !srcloc !165

if.then359:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #8
  %dev360 = getelementptr i8, ptr %ccp2, i32 -49960
  %87 = ptrtoint ptr %dev360 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev360, align 8
  %arrayidx.i760 = getelementptr i8, ptr %ccp2, i32 -49944
  %89 = ptrtoint ptr %arrayidx.i760 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i760, align 4
  %add.ptr.i761 = getelementptr i8, ptr %90, i32 112
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i761) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug316, ptr noundef %88, ptr noundef nonnull @.str.37, i32 noundef %91) #6
  br label %do.body365

do.body365:                                       ; preds = %if.then359, %do.body345
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body385)) #6
          to label %if.then379 [label %do.body385], !srcloc !165

if.then379:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #8
  %dev380 = getelementptr i8, ptr %ccp2, i32 -49960
  %92 = ptrtoint ptr %dev380 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev380, align 8
  %arrayidx.i762 = getelementptr i8, ptr %ccp2, i32 -49944
  %94 = ptrtoint ptr %arrayidx.i762 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i762, align 4
  %add.ptr.i763 = getelementptr i8, ptr %95, i32 116
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i763) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug317, ptr noundef %93, ptr noundef nonnull @.str.38, i32 noundef %96) #6
  br label %do.body385

do.body385:                                       ; preds = %if.then379, %do.body365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body405)) #6
          to label %if.then399 [label %do.body405], !srcloc !165

if.then399:                                       ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #8
  %dev400 = getelementptr i8, ptr %ccp2, i32 -49960
  %97 = ptrtoint ptr %dev400 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev400, align 8
  %arrayidx.i764 = getelementptr i8, ptr %ccp2, i32 -49944
  %99 = ptrtoint ptr %arrayidx.i764 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i764, align 4
  %add.ptr.i765 = getelementptr i8, ptr %100, i32 120
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i765) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug318, ptr noundef %98, ptr noundef nonnull @.str.39, i32 noundef %101) #6
  br label %do.body405

do.body405:                                       ; preds = %if.then399, %do.body385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body425)) #6
          to label %if.then419 [label %do.body425], !srcloc !165

if.then419:                                       ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #8
  %dev420 = getelementptr i8, ptr %ccp2, i32 -49960
  %102 = ptrtoint ptr %dev420 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev420, align 8
  %arrayidx.i766 = getelementptr i8, ptr %ccp2, i32 -49944
  %104 = ptrtoint ptr %arrayidx.i766 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i766, align 4
  %add.ptr.i767 = getelementptr i8, ptr %105, i32 464
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i767) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug319, ptr noundef %103, ptr noundef nonnull @.str.40, i32 noundef %106) #6
  br label %do.body425

do.body425:                                       ; preds = %if.then419, %do.body405
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body445)) #6
          to label %if.then439 [label %do.body445], !srcloc !165

if.then439:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #8
  %dev440 = getelementptr i8, ptr %ccp2, i32 -49960
  %107 = ptrtoint ptr %dev440 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev440, align 8
  %arrayidx.i768 = getelementptr i8, ptr %ccp2, i32 -49944
  %109 = ptrtoint ptr %arrayidx.i768 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i768, align 4
  %add.ptr.i769 = getelementptr i8, ptr %110, i32 468
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i769) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug320, ptr noundef %108, ptr noundef nonnull @.str.41, i32 noundef %111) #6
  br label %do.body445

do.body445:                                       ; preds = %if.then439, %do.body425
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body465)) #6
          to label %if.then459 [label %do.body465], !srcloc !165

if.then459:                                       ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #8
  %dev460 = getelementptr i8, ptr %ccp2, i32 -49960
  %112 = ptrtoint ptr %dev460 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev460, align 8
  %arrayidx.i770 = getelementptr i8, ptr %ccp2, i32 -49944
  %114 = ptrtoint ptr %arrayidx.i770 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i770, align 4
  %add.ptr.i771 = getelementptr i8, ptr %115, i32 472
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i771) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug321, ptr noundef %113, ptr noundef nonnull @.str.42, i32 noundef %116) #6
  br label %do.body465

do.body465:                                       ; preds = %if.then459, %do.body445
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body485)) #6
          to label %if.then479 [label %do.body485], !srcloc !165

if.then479:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #8
  %dev480 = getelementptr i8, ptr %ccp2, i32 -49960
  %117 = ptrtoint ptr %dev480 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev480, align 8
  %arrayidx.i772 = getelementptr i8, ptr %ccp2, i32 -49944
  %119 = ptrtoint ptr %arrayidx.i772 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i772, align 4
  %add.ptr.i773 = getelementptr i8, ptr %120, i32 476
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i773) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug322, ptr noundef %118, ptr noundef nonnull @.str.43, i32 noundef %121) #6
  br label %do.body485

do.body485:                                       ; preds = %if.then479, %do.body465
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body505)) #6
          to label %if.then499 [label %do.body505], !srcloc !165

if.then499:                                       ; preds = %do.body485
  call void @__sanitizer_cov_trace_pc() #8
  %dev500 = getelementptr i8, ptr %ccp2, i32 -49960
  %122 = ptrtoint ptr %dev500 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev500, align 8
  %arrayidx.i774 = getelementptr i8, ptr %ccp2, i32 -49944
  %124 = ptrtoint ptr %arrayidx.i774 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i774, align 4
  %add.ptr.i775 = getelementptr i8, ptr %125, i32 480
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i775) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug323, ptr noundef %123, ptr noundef nonnull @.str.44, i32 noundef %126) #6
  br label %do.body505

do.body505:                                       ; preds = %if.then499, %do.body485
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body525)) #6
          to label %if.then519 [label %do.body525], !srcloc !165

if.then519:                                       ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #8
  %dev520 = getelementptr i8, ptr %ccp2, i32 -49960
  %127 = ptrtoint ptr %dev520 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev520, align 8
  %arrayidx.i776 = getelementptr i8, ptr %ccp2, i32 -49944
  %129 = ptrtoint ptr %arrayidx.i776 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i776, align 4
  %add.ptr.i777 = getelementptr i8, ptr %130, i32 484
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i777) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug324, ptr noundef %128, ptr noundef nonnull @.str.45, i32 noundef %131) #6
  br label %do.body525

do.body525:                                       ; preds = %if.then519, %do.body505
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body545)) #6
          to label %if.then539 [label %do.body545], !srcloc !165

if.then539:                                       ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #8
  %dev540 = getelementptr i8, ptr %ccp2, i32 -49960
  %132 = ptrtoint ptr %dev540 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev540, align 8
  %arrayidx.i778 = getelementptr i8, ptr %ccp2, i32 -49944
  %134 = ptrtoint ptr %arrayidx.i778 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i778, align 4
  %add.ptr.i779 = getelementptr i8, ptr %135, i32 488
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i779) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug325, ptr noundef %133, ptr noundef nonnull @.str.46, i32 noundef %136) #6
  br label %do.body545

do.body545:                                       ; preds = %if.then539, %do.body525
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.body565)) #6
          to label %if.then559 [label %do.body565], !srcloc !165

if.then559:                                       ; preds = %do.body545
  call void @__sanitizer_cov_trace_pc() #8
  %dev560 = getelementptr i8, ptr %ccp2, i32 -49960
  %137 = ptrtoint ptr %dev560 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev560, align 8
  %arrayidx.i780 = getelementptr i8, ptr %ccp2, i32 -49944
  %139 = ptrtoint ptr %arrayidx.i780 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i780, align 4
  %add.ptr.i781 = getelementptr i8, ptr %140, i32 492
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i781) #6, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug326, ptr noundef %138, ptr noundef nonnull @.str.47, i32 noundef %141) #6
  br label %do.body565

do.body565:                                       ; preds = %if.then559, %do.body545
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_print_status.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_print_status, %do.end583)) #6
          to label %if.then579 [label %do.end583], !srcloc !165

if.then579:                                       ; preds = %do.body565
  call void @__sanitizer_cov_trace_pc() #8
  %dev580 = getelementptr i8, ptr %ccp2, i32 -49960
  %142 = ptrtoint ptr %dev580 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev580, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_print_status.__UNIQUE_ID_ddebug327, ptr noundef %143, ptr noundef nonnull @.str.48) #6
  br label %do.end583

do.end583:                                        ; preds = %if.then579, %do.body565
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_csiphy_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccp2_mem_configure(ptr nocapture noundef readonly %ccp2, ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %code3 = getelementptr %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %code3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12297, i32 %1)
  %cmp4 = icmp ne i32 %1, 12297
  call void @__sanitizer_cov_trace_const_cmp4(i32 12297, i32 %3)
  %4 = icmp eq i32 %3, 12297
  %not. = or i1 %cmp4, %4
  %revision.i = getelementptr i8, ptr %ccp2, i32 -49956
  %5 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %6)
  %cmp.i = icmp eq i32 %6, 240
  br i1 %cmp.i, label %land.rhs.i, label %entry.ccp2_pwr_cfg.exit_crit_edge

entry.ccp2_pwr_cfg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_pwr_cfg.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %autoidle.i = getelementptr i8, ptr %ccp2, i32 -49716
  %7 = ptrtoint ptr %autoidle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autoidle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp ne i32 %8, 0
  %phi.cast.i = zext i1 %tobool.i to i32
  %phi.bo.i = or i32 %phi.cast.i, 8192
  br label %ccp2_pwr_cfg.exit

ccp2_pwr_cfg.exit:                                ; preds = %land.rhs.i, %entry.ccp2_pwr_cfg.exit_crit_edge
  %9 = phi i32 [ 8192, %entry.ccp2_pwr_cfg.exit_crit_edge ], [ %phi.bo.i, %land.rhs.i ]
  %arrayidx.i.i = getelementptr i8, ptr %ccp2, i32 -49944
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #6, !srcloc !164
  %hsize_count = getelementptr inbounds %struct.isp_interface_mem_config, ptr %config, i32 0, i32 2
  %12 = ptrtoint ptr %hsize_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hsize_count, align 4
  %shl = shl i32 %13, 16
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shl) #6, !srcloc !164
  %vsize_count = getelementptr inbounds %struct.isp_interface_mem_config, ptr %config, i32 0, i32 1
  %16 = ptrtoint ptr %vsize_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsize_count, align 4
  %shl5 = shl i32 %17, 16
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %19, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %shl5) #6, !srcloc !164
  %bpl_padding = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 7, i32 11
  %20 = ptrtoint ptr %bpl_padding to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpl_padding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6 = icmp eq i32 %21, 0
  br i1 %cmp6, label %ccp2_pwr_cfg.exit.if.end10_crit_edge, label %if.else

ccp2_pwr_cfg.exit.if.end10_crit_edge:             ; preds = %ccp2_pwr_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else:                                          ; preds = %ccp2_pwr_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %bpl_value = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 7, i32 10
  %22 = ptrtoint ptr %bpl_value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bpl_value, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %ccp2_pwr_cfg.exit.if.end10_crit_edge
  %.sink = phi i32 [ %23, %if.else ], [ 0, %ccp2_pwr_cfg.exit.if.end10_crit_edge ]
  %24 = getelementptr inbounds %struct.isp_interface_mem_config, ptr %config, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %24, align 4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %27, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %.sink) #6, !srcloc !164
  %. = select i1 %not., i32 50528416, i32 56754336
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %29, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %.) #6, !srcloc !164
  %30 = ptrtoint ptr %hsize_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hsize_count, align 4
  %.83 = select i1 %not., i32 2, i32 3
  %shr26 = lshr i32 %31, %.83
  %shl28 = shl i32 %shr26, 3
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %33, i32 476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %shl28) #6, !srcloc !164
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %35, i32 64
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #6, !srcloc !163
  %or.i = or i32 %36, 20
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #6, !srcloc !164
  %pipe1.i = getelementptr inbounds %struct.media_entity, ptr %ccp2, i32 0, i32 14
  %39 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pipe1.i, align 4
  %l3_ick5.i = getelementptr inbounds %struct.isp_pipeline, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %l3_ick5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %l3_ick5.i, align 4
  %max_rate.i = getelementptr inbounds %struct.isp_pipeline, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_rate.i, align 4
  %add.i = add i32 %42, -1
  %sub.i = add i32 %add.i, %44
  %div.i = udiv i32 %sub.i, %44
  %45 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 2) #6
  %max_timeperframe.i = getelementptr inbounds %struct.isp_pipeline, ptr %40, i32 0, i32 13
  %46 = ptrtoint ptr %max_timeperframe.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_timeperframe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.end10.do.body.i_crit_edge, label %if.then.i

if.end10.do.body.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then.i:                                        ; preds = %if.end10
  %arrayidx.i66 = getelementptr %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i66, align 4
  %height.i = getelementptr %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 1, i32 1, i32 1
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %51, %49
  %conv.i = zext i32 %mul.i to i64
  %denominator.i = getelementptr inbounds %struct.isp_pipeline, ptr %40, i32 0, i32 13, i32 1
  %52 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %denominator.i, align 4
  %conv8.i = zext i32 %53 to i64
  %mul9.i = mul nuw i64 %conv.i, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9.i)
  %cmp164.i.i.i = icmp ult i64 %mul9.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !166

if.then168.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i = trunc i64 %mul9.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %47
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %mul9.i) #10, !srcloc !167
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %54, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %conv11.i = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i.i, i64 %conv11.i)
  %cmp13.i = icmp ult i64 %dividend.addr.0.i.i.i, %conv11.i
  %extract.t.i = trunc i64 %dividend.addr.0.i.i.i to i32
  %cond18.off0.i = select i1 %cmp13.i, i32 %extract.t.i, i32 %42
  %div20.i = udiv i32 %42, %cond18.off0.i
  %55 = tail call i32 @llvm.umax.i32(i32 %div20.i, i32 %45) #6
  br label %do.body.i

do.body.i:                                        ; preds = %div_u64.exit.i, %if.end10.do.body.i_crit_edge
  %vpclk_div.0.i = phi i32 [ %55, %div_u64.exit.i ], [ %45, %if.end10.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp2_adjust_bandwidth.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccp2_mem_configure, %ccp2_adjust_bandwidth.exit)) #6
          to label %if.then34.i [label %ccp2_adjust_bandwidth.exit], !srcloc !165

if.then34.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %ccp2, i32 -49960
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp2_adjust_bandwidth.__UNIQUE_ID_ddebug344, ptr noundef %57, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %vpclk_div.0.i) #6
  br label %ccp2_adjust_bandwidth.exit

ccp2_adjust_bandwidth.exit:                       ; preds = %if.then34.i, %do.body.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %59, i32 64
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #6, !srcloc !163
  %or.i69 = or i32 %60, 2048
  %61 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %62)
  %cmp.i71 = icmp eq i32 %62, 240
  br i1 %cmp.i71, label %if.then.i72, label %if.else.i

if.then.i72:                                      ; preds = %ccp2_adjust_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #8
  %63 = tail call i32 @llvm.umin.i32(i32 %vpclk_div.0.i, i32 65536) #6
  %div.i73 = udiv i32 65536, %63
  %phi.bo.i74 = shl nuw nsw i32 %div.i73, 15
  %and.i = and i32 %or.i69, 32767
  %or15.i = or i32 %phi.bo.i74, %and.i
  br label %ccp2_vp_config.exit

if.else.i:                                        ; preds = %ccp2_adjust_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #8
  %64 = tail call i32 @llvm.umin.i32(i32 %vpclk_div.0.i, i32 4) #6
  %and29.i = and i32 %or.i69, -769
  %sub.i75 = shl nuw nsw i32 %64, 8
  %shl30.i = add nsw i32 %sub.i75, -256
  %or31.i = or i32 %and29.i, %shl30.i
  br label %ccp2_vp_config.exit

ccp2_vp_config.exit:                              ; preds = %if.else.i, %if.then.i72
  %val.0.i = phi i32 [ %or15.i, %if.then.i72 ], [ %or31.i, %if.else.i ]
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %66, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %val.0.i) #6, !srcloc !164
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %68, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 3) #6, !srcloc !164
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %70, i32 44
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79) #6, !srcloc !163
  %or.i80 = or i32 %71, 3
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i81 = getelementptr i8, ptr %73, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i81, i32 %or.i80) #6, !srcloc !164
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccp2_mem_enable(ptr nocapture noundef readonly %ccp2, i8 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i.i.i = getelementptr i8, ptr %ccp2, i32 -49944
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !163
  %and.i.i = and i32 %2, -2
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and.i.i) #6, !srcloc !164
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %6, i32 128
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i) #6, !srcloc !163
  %and.i.1.i = and i32 %7, -2
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.1.i = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.1.i, i32 %and.i.1.i) #6, !srcloc !164
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %11, i32 176
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i) #6, !srcloc !163
  %and.i.2.i = and i32 %12, -2
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.2.i = getelementptr i8, ptr %14, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.2.i, i32 %and.i.2.i) #6, !srcloc !164
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %16, i32 64
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i) #6, !srcloc !163
  %and.i37.i = and i32 %17, -18
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i39.i = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i39.i, i32 %and.i37.i) #6, !srcloc !164
  %vdds_csib15.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %ccp2, i32 0, i32 9
  %20 = ptrtoint ptr %vdds_csib15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdds_csib15.i, align 4
  %tobool16.not.i = icmp eq ptr %21, null
  br i1 %tobool16.not.i, label %if.then.if.end_crit_edge, label %if.then17.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then17.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 @regulator_disable(ptr noundef nonnull %21) #6
  br label %if.end

if.end:                                           ; preds = %if.then17.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cond = phi i32 [ 16, %if.then17.i ], [ 16, %if.then.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %ccp2, i32 -49944
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !163
  %and.i = and i32 %24, -17
  %or.i = or i32 %and.i, %cond
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #6, !srcloc !164
  %not.tobool1.not = xor i1 %tobool.not, true
  %cond4 = zext i1 %not.tobool1.not to i32
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %28, i32 464
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #6, !srcloc !163
  %and.i11 = and i32 %29, -2
  %or.i12 = or i32 %and.i11, %cond4
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i13 = getelementptr i8, ptr %31, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i13, i32 %or.i12) #6, !srcloc !164
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp2_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
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
  %arrayidx = getelementptr [2 x i32], ptr @ccp2_fmts, i32 0, i32 %5
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
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !168

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  br label %__ccp2_get_format.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0
  br label %__ccp2_get_format.exit

__ccp2_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %11, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %code10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__ccp2_get_format.exit, %if.end
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end ], [ %code10, %__ccp2_get_format.exit ]
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
define internal i32 @ccp2_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %7, label %if.end.ccp2_try_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb58.i
  ]

if.end.ccp2_try_format.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_try_format.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12297, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 12297
  %spec.select = select i1 %cmp.not.i, i32 12297, i32 12298
  %input.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cond = icmp eq i32 %10, 2
  %spec.select85 = select i1 %cond, i32 16, i32 1
  br label %ccp2_try_format.exit

sw.bb58.i:                                        ; preds = %if.end
  %11 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb58.i
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i.i.not.i = icmp eq i16 %14, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !168

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  br label %__ccp2_get_format.exit.i

if.else.i.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0
  br label %__ccp2_get_format.exit.i

__ccp2_get_format.exit.i:                         ; preds = %if.else.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %16, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.else.i.i ]
  %17 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %format.sroa.0.0.copyload = load i32, ptr %retval.0.i.i, align 4
  %format.sroa.17.0.retval.0.i.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i, i32 4
  %18 = ptrtoint ptr %format.sroa.17.0.retval.0.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %format.sroa.17.0.copyload = load i32, ptr %format.sroa.17.0.retval.0.i.i.sroa_idx, align 4
  br label %ccp2_try_format.exit

ccp2_try_format.exit:                             ; preds = %__ccp2_get_format.exit.i, %sw.bb.i, %if.end.ccp2_try_format.exit_crit_edge
  %format.sroa.0.0 = phi i32 [ 1, %if.end.ccp2_try_format.exit_crit_edge ], [ %format.sroa.0.0.copyload, %__ccp2_get_format.exit.i ], [ %spec.select85, %sw.bb.i ]
  %format.sroa.17.0 = phi i32 [ 1, %if.end.ccp2_try_format.exit_crit_edge ], [ %format.sroa.17.0.copyload, %__ccp2_get_format.exit.i ], [ 1, %sw.bb.i ]
  %format.sroa.29.1 = phi i32 [ %5, %if.end.ccp2_try_format.exit_crit_edge ], [ 12298, %__ccp2_get_format.exit.i ], [ %spec.select, %sw.bb.i ]
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %19 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %format.sroa.0.0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %format.sroa.17.0, ptr %min_height, align 4
  %21 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %format.sroa.29.1, i32 %22)
  %cmp6.not = icmp eq i32 %format.sroa.29.1, %22
  br i1 %cmp6.not, label %if.end8, label %ccp2_try_format.exit.cleanup_crit_edge

ccp2_try_format.exit.cleanup_crit_edge:           ; preds = %ccp2_try_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %ccp2_try_format.exit
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %24, label %if.end8.ccp2_try_format.exit55_crit_edge [
    i32 0, label %if.end.i36
    i32 1, label %sw.bb58.i42
  ]

if.end8.ccp2_try_format.exit55_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_try_format.exit55

if.end.i36:                                       ; preds = %if.end8
  %input.i35 = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %input.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %input.i35, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %27, label %if.end.i36.ccp2_try_format.exit55_crit_edge [
    i32 1, label %if.then3.i38
    i32 2, label %if.then27.i40
  ]

if.end.i36.ccp2_try_format.exit55_crit_edge:      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_try_format.exit55

if.then3.i38:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_try_format.exit55

if.then27.i40:                                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_try_format.exit55

sw.bb58.i42:                                      ; preds = %if.end8
  %29 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i41 = icmp eq i32 %30, 0
  br i1 %cmp.i.i41, label %if.then.i.i45, label %if.else.i.i49

if.then.i.i45:                                    ; preds = %sw.bb58.i42
  %num_pads.i.i.i43 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %num_pads.i.i.i43 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_pads.i.i.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not.i.i.not.i44 = icmp eq i16 %32, 0
  br i1 %cmp.not.i.i.not.i44, label %do.end.i.i.i46, label %if.then.i.i45.v4l2_subdev_get_try_format.exit.i.i47_crit_edge, !prof !168

if.then.i.i45.v4l2_subdev_get_try_format.exit.i.i47_crit_edge: ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i.i47

do.end.i.i.i46:                                   ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i.i47

v4l2_subdev_get_try_format.exit.i.i47:            ; preds = %do.end.i.i.i46, %if.then.i.i45.v4l2_subdev_get_try_format.exit.i.i47_crit_edge
  %33 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_state, align 4
  br label %__ccp2_get_format.exit.i52

if.else.i.i49:                                    ; preds = %sw.bb58.i42
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i48 = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0
  br label %__ccp2_get_format.exit.i52

__ccp2_get_format.exit.i52:                       ; preds = %if.else.i.i49, %v4l2_subdev_get_try_format.exit.i.i47
  %retval.0.i.i50 = phi ptr [ %34, %v4l2_subdev_get_try_format.exit.i.i47 ], [ %arrayidx.i.i48, %if.else.i.i49 ]
  %35 = ptrtoint ptr %retval.0.i.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %format.sroa.0.0.copyload61 = load i32, ptr %retval.0.i.i50, align 4
  %format.sroa.17.0.retval.0.i.i50.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i50, i32 4
  %36 = ptrtoint ptr %format.sroa.17.0.retval.0.i.i50.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %format.sroa.17.0.copyload62 = load i32, ptr %format.sroa.17.0.retval.0.i.i50.sroa_idx, align 4
  br label %ccp2_try_format.exit55

ccp2_try_format.exit55:                           ; preds = %__ccp2_get_format.exit.i52, %if.then27.i40, %if.then3.i38, %if.end.i36.ccp2_try_format.exit55_crit_edge, %if.end8.ccp2_try_format.exit55_crit_edge
  %format.sroa.0.1 = phi i32 [ -1, %if.end8.ccp2_try_format.exit55_crit_edge ], [ %format.sroa.0.0.copyload61, %__ccp2_get_format.exit.i52 ], [ -1, %if.end.i36.ccp2_try_format.exit55_crit_edge ], [ 8191, %if.then27.i40 ], [ 4095, %if.then3.i38 ]
  %format.sroa.17.1 = phi i32 [ -1, %if.end8.ccp2_try_format.exit55_crit_edge ], [ %format.sroa.17.0.copyload62, %__ccp2_get_format.exit.i52 ], [ -1, %if.end.i36.ccp2_try_format.exit55_crit_edge ], [ 8191, %if.then27.i40 ], [ 4095, %if.then3.i38 ]
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %37 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %format.sroa.0.1, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %38 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %format.sroa.17.1, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %ccp2_try_format.exit55, %ccp2_try_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ccp2_try_format.exit55 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ccp2_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp2_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !166

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ccp2_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 %3
  br label %__ccp2_get_format.exit

__ccp2_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__ccp2_get_format.exit.cleanup_crit_edge, label %if.end

__ccp2_get_format.exit.cleanup_crit_edge:         ; preds = %__ccp2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %__ccp2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__ccp2_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__ccp2_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp2_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !166

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ccp2_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 %3
  br label %__ccp2_get_format.exit

__ccp2_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__ccp2_get_format.exit.cleanup_crit_edge, label %if.end

__ccp2_get_format.exit.cleanup_crit_edge:         ; preds = %__ccp2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %__ccp2_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %11, label %if.end.ccp2_try_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb58.i
  ]

if.end.ccp2_try_format.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_try_format.exit

sw.bb.i:                                          ; preds = %if.end
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12297, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 12297
  br i1 %cmp.not.i, label %sw.bb.i.if.end.i_crit_edge, label %if.then.i33

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i33:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12298, ptr %code.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i33, %sw.bb.i.if.end.i_crit_edge
  %input.i = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %input.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %17, label %if.end.i.ccp2_try_format.exit_crit_edge [
    i32 1, label %if.then3.i
    i32 2, label %if.then27.i
  ]

if.end.i.ccp2_try_format.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccp2_try_format.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format3, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 4095) #6
  %22 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %format3, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height.i, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 4095) #6
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height.i, align 4
  br label %ccp2_try_format.exit

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %format3, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 16) #6
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 8191) #6
  %31 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %format3, align 4
  %height42.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %height42.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height42.i, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 1) #6
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 8191) #6
  %36 = ptrtoint ptr %height42.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height42.i, align 4
  br label %ccp2_try_format.exit

sw.bb58.i:                                        ; preds = %if.end
  %37 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb58.i
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp.not.i.i.not.i = icmp eq i16 %40, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !168

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %41 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_state, align 4
  br label %__ccp2_get_format.exit.i

if.else.i.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i34 = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0
  br label %__ccp2_get_format.exit.i

__ccp2_get_format.exit.i:                         ; preds = %if.else.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %42, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i34, %if.else.i.i ]
  %43 = call ptr @memcpy(ptr %format3, ptr %retval.0.i.i, i32 48)
  %code59.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %code59.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 12298, ptr %code59.i, align 4
  br label %ccp2_try_format.exit

ccp2_try_format.exit:                             ; preds = %__ccp2_get_format.exit.i, %if.then27.i, %if.then3.i, %if.end.i.ccp2_try_format.exit_crit_edge, %if.end.ccp2_try_format.exit_crit_edge
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %colorspace.i, align 4
  %47 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %48 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp7 = icmp eq i32 %49, 0
  br i1 %cmp7, label %if.then8, label %ccp2_try_format.exit.cleanup_crit_edge

ccp2_try_format.exit.cleanup_crit_edge:           ; preds = %ccp2_try_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %ccp2_try_format.exit
  %50 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i35 = icmp eq i32 %51, 0
  br i1 %cmp.i35, label %if.then.i39, label %if.else.i45

if.then.i39:                                      ; preds = %if.then8
  %num_pads.i.i36 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %num_pads.i.i36 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_pads.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %53)
  %cmp.not.i.i38 = icmp ugt i16 %53, 1
  br i1 %cmp.not.i.i38, label %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge, label %do.end.i.i40, !prof !166

if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge: ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i43

do.end.i.i40:                                     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i43

v4l2_subdev_get_try_format.exit.i43:              ; preds = %do.end.i.i40, %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge
  %spec.select.i.i41 = phi i32 [ 0, %do.end.i.i40 ], [ 1, %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge ]
  %54 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i42 = getelementptr %struct.v4l2_subdev_pad_config, ptr %55, i32 %spec.select.i.i41
  br label %__ccp2_get_format.exit47

if.else.i45:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i44 = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 1
  br label %__ccp2_get_format.exit47

__ccp2_get_format.exit47:                         ; preds = %if.else.i45, %v4l2_subdev_get_try_format.exit.i43
  %retval.0.i46 = phi ptr [ %arrayidx.i.i42, %v4l2_subdev_get_try_format.exit.i43 ], [ %arrayidx.i44, %if.else.i45 ]
  %56 = call ptr @memcpy(ptr %retval.0.i46, ptr %format3, i32 48)
  %57 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i48 = icmp eq i32 %58, 0
  br i1 %cmp.i.i48, label %if.then.i.i52, label %if.else.i.i56

if.then.i.i52:                                    ; preds = %__ccp2_get_format.exit47
  %num_pads.i.i.i50 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %num_pads.i.i.i50 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_pads.i.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.not.i.i.not.i51 = icmp eq i16 %60, 0
  br i1 %cmp.not.i.i.not.i51, label %do.end.i.i.i53, label %if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge, !prof !168

if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge: ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i.i54

do.end.i.i.i53:                                   ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i.i54

v4l2_subdev_get_try_format.exit.i.i54:            ; preds = %do.end.i.i.i53, %if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge
  %61 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sd_state, align 4
  br label %ccp2_try_format.exit62

if.else.i.i56:                                    ; preds = %__ccp2_get_format.exit47
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i55 = getelementptr %struct.isp_ccp2_device, ptr %1, i32 0, i32 1, i32 0
  br label %ccp2_try_format.exit62

ccp2_try_format.exit62:                           ; preds = %if.else.i.i56, %v4l2_subdev_get_try_format.exit.i.i54
  %retval.0.i.i57 = phi ptr [ %62, %v4l2_subdev_get_try_format.exit.i.i54 ], [ %arrayidx.i.i55, %if.else.i.i56 ]
  %63 = call ptr @memcpy(ptr %retval.0.i46, ptr %retval.0.i.i57, i32 48)
  %code59.i58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i46, i32 0, i32 2
  %64 = ptrtoint ptr %code59.i58 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 12298, ptr %code59.i58, align 4
  %field.i60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i46, i32 0, i32 3
  %65 = ptrtoint ptr %field.i60 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %field.i60, align 4
  %colorspace.i61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i46, i32 0, i32 4
  %66 = ptrtoint ptr %colorspace.i61 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %colorspace.i61, align 4
  br label %cleanup

cleanup:                                          ; preds = %ccp2_try_format.exit62, %ccp2_try_format.exit.cleanup_crit_edge, %__ccp2_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__ccp2_get_format.exit.cleanup_crit_edge ], [ 0, %ccp2_try_format.exit62 ], [ 0, %ccp2_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccp2_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #4 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 131072, label %sw.bb18
    i32 131073, label %sw.bb36
  ]

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %input11 = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 3
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
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp12 = icmp eq i32 %11, 2
  br i1 %cmp12, label %if.then14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %input11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %input11, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %input29 = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 3
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
  br label %cleanup

if.else28:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %if.then32, label %if.else28.cleanup_crit_edge

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %input29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %input29, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and37 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %output41 = getelementptr inbounds %struct.isp_ccp2_device, ptr %1, i32 0, i32 4
  br i1 %tobool38.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %output41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %output41, align 8
  br label %cleanup

if.else40:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %output41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %output41, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else40, %if.then39, %if.then32, %if.else28.cleanup_crit_edge, %if.end26, %if.then21.cleanup_crit_edge, %if.then14, %if.else.cleanup_crit_edge, %if.end9, %if.then6.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then6.cleanup_crit_edge ], [ -16, %if.then21.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.else40 ], [ 0, %if.end26 ], [ 0, %if.then32 ], [ 0, %if.else28.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %if.then14 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp2_video_queue(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 5
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %dma = getelementptr inbounds %struct.isp_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 8
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #6, !srcloc !164
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = distinct !{null, !1, !"ISPCCP2_LC01_ERROR", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 564, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 586, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @omap3isp_ccp2_isr.__UNIQUE_ID_ddebug345, !3, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 592, i32 3}
!10 = !{ptr @omap3isp_ccp2_isr.__UNIQUE_ID_ddebug346, !9, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!11 = !{ptr @omap3isp_ccp2_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 1133, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 1147, i32 50}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 1150, i32 5}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @omap3isp_ccp2_init.__UNIQUE_ID_ddebug364, !17, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 1154, i32 4}
!22 = !{ptr @omap3isp_ccp2_init.__UNIQUE_ID_ddebug365, !21, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 1078, i32 20}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 1112, i32 45}
!27 = !{ptr @ccp2_sd_ops, !28, !"ccp2_sd_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 917, i32 37}
!29 = !{ptr @ccp2_sd_video_ops, !30, !"ccp2_sd_video_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 904, i32 43}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 886, i32 4}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ccp2_s_stream.__UNIQUE_ID_ddebug363, !32, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 229, i32 4}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ccp2_phyif_config._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @ccp2_phyif_config._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 72, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug298, !43, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 74, i32 2}
!48 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug299, !47, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 75, i32 2}
!51 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug300, !50, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 76, i32 2}
!54 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug301, !53, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 77, i32 2}
!57 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug302, !56, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 78, i32 2}
!60 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug303, !59, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 79, i32 2}
!63 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug304, !62, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 80, i32 2}
!66 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug305, !65, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 81, i32 2}
!69 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug306, !68, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 82, i32 2}
!72 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug307, !71, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 83, i32 2}
!75 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug308, !74, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 84, i32 2}
!78 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug309, !77, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 85, i32 2}
!81 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug310, !80, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 86, i32 2}
!84 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug311, !83, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 87, i32 2}
!87 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug312, !86, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 88, i32 2}
!90 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug313, !89, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 89, i32 2}
!93 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug314, !92, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 90, i32 2}
!96 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug315, !95, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 91, i32 2}
!99 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug316, !98, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 92, i32 2}
!102 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug317, !101, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 93, i32 2}
!105 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug318, !104, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 94, i32 2}
!108 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug319, !107, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 95, i32 2}
!111 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug320, !110, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 96, i32 2}
!114 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug321, !113, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 97, i32 2}
!117 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug322, !116, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 98, i32 2}
!120 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug323, !119, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 99, i32 2}
!123 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug324, !122, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 100, i32 2}
!126 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug325, !125, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 101, i32 2}
!129 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug326, !128, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 103, i32 2}
!132 = !{ptr @ccp2_print_status.__UNIQUE_ID_ddebug327, !131, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 417, i32 2}
!135 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ccp2_adjust_bandwidth.__UNIQUE_ID_ddebug344, !134, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!137 = !{ptr @ccp2_sd_pad_ops, !138, !"ccp2_sd_pad_ops", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 909, i32 41}
!139 = !{ptr @ccp2_fmts, !140, !"ccp2_fmts", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 607, i32 27}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!143 = !{ptr @ccp2_sd_internal_ops, !144, !"ccp2_sd_internal_ops", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 923, i32 46}
!145 = !{ptr @ccp2_media_ops, !146, !"ccp2_media_ops", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 1013, i32 45}
!147 = !{ptr @ccp2_video_ops, !148, !"ccp2_video_ops", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 945, i32 42}
!149 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/omap3isp/ispccp2.c", i32 122, i32 4}
!151 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ccp2_reset._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @ccp2_reset._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 6495958}
!164 = !{i64 6495540}
!165 = !{i64 2148789208, i64 2148789213, i64 2148789226, i64 2148789270, i64 2148789304, i64 2148789325}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 2148014881, i64 2148015161, i64 2148015495, i64 2148015829}
!168 = !{!"branch_weights", i32 1, i32 2000}
