; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/ispccdc.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/ispccdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.isp_video_operations = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.isp_prev_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_ctrl_handler, i32, i32, %struct.isp_video, %struct.isp_video, %struct.anon.97, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.97 = type { i32, [2 x %struct.prev_params], i32, %struct.spinlock }
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
%struct.isp_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_event = type { i32, %union.anon.105, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.105 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.106, i32, i32, i32, i32, i32 }
%union.anon.106 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.isp_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.ispccdc_lsc_config_req = type { %struct.list_head, %struct.omap3isp_ccdc_lsc_config, i8, %struct.anon.95 }
%struct.omap3isp_ccdc_lsc_config = type { i16, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32 }
%struct.anon.95 = type { ptr, i32, %struct.sg_table }
%struct.sg_table = type { ptr, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.omap3isp_ccdc_fpc = type { i16, i32 }
%struct.omap3isp_ccdc_update_config = type { i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.isp_async_subdev = type { %struct.v4l2_async_subdev, %struct.isp_bus_cfg }
%struct.v4l2_async_subdev = type { i32, %union.anon.93, %struct.list_head, %struct.list_head }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i16 }
%struct.isp_bus_cfg = type { i32, %union.anon.107 }
%union.anon.107 = type { %struct.isp_parallel_cfg, [4 x i8] }
%struct.isp_parallel_cfg = type { i16, [2 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }

@omap3isp_ccdc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ccdc->lock\00", [20 x i8] zeroinitializer }, align 32
@omap3isp_ccdc_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ccdc->wait\00", [20 x i8] zeroinitializer }, align 32
@omap3isp_ccdc_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ccdc->ioctl_lock\00", [46 x i8] zeroinitializer }, align 32
@omap3isp_ccdc_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&ccdc->lsc.table_work)\00", [55 x i8] zeroinitializer }, align 32
@omap3isp_ccdc_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ccdc->lsc.req_lock\00", [44 x i8] zeroinitializer }, align 32
@__ccdc_lsc_enable._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 284, ptr @.str.12, ptr @.str.13 }, align 1
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LSC prefetch timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__ccdc_lsc_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/omap3isp/ispccdc.c\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__ccdc_lsc_enable._entry_ptr = internal global ptr @__ccdc_lsc_enable._entry, section ".printk_index", align 4
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__ccdc_lsc_configure.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.11, ptr @.str.17, i8 0, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__ccdc_lsc_configure\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Discard LSC configuration\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_lsc_validate_config.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.11, ptr @.str.19, i8 0, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ccdc_lsc_validate_config\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CCDC: LSC: Invalid paxel size\0A\00", [33 x i8] zeroinitializer }, align 32
@ccdc_lsc_validate_config.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.11, ptr @.str.20, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CCDC: LSC: Offset must be a multiple of 4\0A\00", [53 x i8] zeroinitializer }, align 32
@ccdc_lsc_validate_config.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.11, ptr @.str.21, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CCDC: LSC: initial_x and y must be even\0A\00", [55 x i8] zeroinitializer }, align 32
@ccdc_lsc_validate_config.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.11, ptr @.str.22, i8 0, i8 44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CCDC: LSC: too small table\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_lsc_validate_config.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.11, ptr @.str.23, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CCDC: LSC: Offset is too small\0A\00", [32 x i8] zeroinitializer }, align 32
@ccdc_lsc_validate_config.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.11, ptr @.str.24, i8 0, i8 46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CCDC: LSC: Wrong size/offset combination\0A\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ccdc_lsc_isr.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.25, ptr @.str.11, ptr @.str.26, i8 1, i8 116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccdc_lsc_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lsc prefetch error\0A\00", [44 x i8] zeroinitializer }, align 32
@ccdc_isr_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.11, i32 1608, ptr @.str.29, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CCDC won't become idle!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccdc_isr_buffer\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ccdc_isr_buffer._entry_ptr = internal global ptr @ccdc_isr_buffer._entry, section ".printk_index", align 4
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/media/media-entity.h\00", [35 x i8] zeroinitializer }, align 32
@ccdc_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ccdc_v4l2_core_ops, ptr null, ptr null, ptr @ccdc_v4l2_video_ops, ptr null, ptr null, ptr null, ptr @ccdc_v4l2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ccdc_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ccdc_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OMAP3 ISP CCDC\00", [17 x i8] zeroinitializer }, align 32
@ccdc_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @ccdc_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ccdc_video_ops = internal constant { %struct.isp_video_operations, [28 x i8] } { %struct.isp_video_operations { ptr @ccdc_video_queue }, [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCDC\00", [27 x i8] zeroinitializer }, align 32
@ccdc_v4l2_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccdc_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ccdc_subscribe_event, ptr @ccdc_unsubscribe_event }, [40 x i8] zeroinitializer }, align 32
@ccdc_v4l2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccdc_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ccdc_v4l2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ccdc_enum_mbus_code, ptr @ccdc_enum_frame_size, ptr null, ptr @ccdc_get_format, ptr @ccdc_set_format, ptr @ccdc_get_selection, ptr @ccdc_set_selection, ptr null, ptr null, ptr null, ptr null, ptr @ccdc_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ccdc_lsc_config.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.36, ptr @.str.11, ptr @.str.37, i8 0, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccdc_lsc_config\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Both LSC configuration and table need to be supplied\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@ccdc_print_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.39, i8 0, i8 17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccdc_print_status\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"-------------CCDC Register dump-------------\0A\00", [50 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.40, i8 0, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###CCDC PCR=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.41, i8 0, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC SYN_MODE=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.42, i8 0, i8 18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCDC HD_VD_WID=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.43, i8 0, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCDC PIX_LINES=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.44, i8 0, i8 19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCDC HORZ_INFO=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.45, i8 0, i8 19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###CCDC VERT_START=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.46, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###CCDC VERT_LINES=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.47, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###CCDC CULLING=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.48, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CCDC HSIZE_OFF=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.49, i8 0, i8 20, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###CCDC SDOFST=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.50, i8 0, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC SDR_ADDR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.51, i8 0, i8 20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###CCDC CLAMP=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.52, i8 0, i8 21, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###CCDC DCSUB=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.53, i8 0, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###CCDC COLPTN=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.54, i8 0, i8 21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###CCDC BLKCMP=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.55, i8 0, i8 21, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###CCDC FPC=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.56, i8 0, i8 22, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC FPC_ADDR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.57, i8 0, i8 22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###CCDC VDINT=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.58, i8 0, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###CCDC ALAW=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.59, i8 0, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC REC656IF=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.60, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###CCDC CFG=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.61, i8 0, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###CCDC FMTCFG=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.62, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC FMT_HORZ=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.63, i8 0, i8 23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC FMT_VERT=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.64, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC PRGEVEN0=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.65, i8 0, i8 24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###CCDC PRGEVEN1=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.66, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###CCDC PRGODD0=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.67, i8 0, i8 24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###CCDC PRGODD1=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.68, i8 0, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###CCDC VP_OUT=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.69, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###CCDC LSC_CONFIG=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.70, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"###CCDC LSC_INITIAL=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.71, i8 0, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"###CCDC LSC_TABLE_BASE=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.72, i8 0, i8 26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CCDC LSC_TABLE_OFFSET=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@ccdc_print_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.11, ptr @.str.73, i8 0, i8 26, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@ccdc_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.11, i32 1342, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CCDC stop timeout!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccdc_disable\00", [19 x i8] zeroinitializer }, align 32
@ccdc_disable._entry_ptr = internal global ptr @ccdc_disable._entry, section ".printk_index", align 4
@ccdc_fmts = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 8193, i32 8202, i32 8211, i32 12290, i32 12308, i32 12289, i32 12307, i32 12298, i32 12303, i32 12295, i32 12302, i32 12305, i32 12306, i32 12296, i32 12304, i32 8200, i32 8198], [60 x i8] zeroinitializer }, align 32
@switch.table.ccdc_set_stream = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 297472443, i32 297472443, i32 -1156465903, i32 -1156465903, i32 -1156465903, i32 -1156465903, i32 -1156465903, i32 1156465902, i32 -297472444, i32 1156465902, i32 -1156465903, i32 -297472444], [48 x i8] zeroinitializer }, align 32
@switch.table.ccdc_set_stream.76 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 57344, i32 32768, i32 57344, i32 53248, i32 49152, i32 45056], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 17, i64 19, i64 35, i64 67]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 9, i64 0, i64 384]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [19 x i64] [i64 17, i64 32, i64 8193, i64 8198, i64 8200, i64 8202, i64 8211, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 8198, i64 8200, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 131072, i64 131073, i64 131074]
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2711, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2712, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2713, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2717, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2720, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 284, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 998, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 315, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 147, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 152, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 158, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 178, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 182, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 186, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1491, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1608, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [32 x i8] c"../include/media/media-entity.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 468, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant [14 x i8] c"ccdc_v4l2_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2501, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant [23 x i8] c"ccdc_v4l2_internal_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2508, i32 46 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2664, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"ccdc_media_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2610, i32 45 }
@___asan_gen_.212 = private unnamed_addr constant [15 x i8] c"ccdc_video_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1822, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2687, i32 46 }
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"ccdc_v4l2_core_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2478, i32 42 }
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"ccdc_v4l2_video_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2485, i32 43 }
@___asan_gen_.224 = private unnamed_addr constant [18 x i8] c"ccdc_v4l2_pad_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2490, i32 41 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 230, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 214, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 156, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 416, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 70, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 72, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 73, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 74, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 75, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 76, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 77, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 78, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 79, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 80, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 81, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 82, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 83, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 84, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 85, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 86, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 87, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 88, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 89, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 90, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 91, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 92, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 93, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 94, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 95, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 96, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 97, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 98, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 99, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 100, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 101, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 102, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 103, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 104, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 106, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1342, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [10 x i8] c"ccdc_fmts\00", align 1
@___asan_gen_.360 = private constant [45 x i8] c"../drivers/media/platform/omap3isp/ispccdc.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 36, i32 27 }
@___asan_gen_.362 = private unnamed_addr constant [29 x i8] c"switch.table.ccdc_set_stream\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [32 x i8] c"switch.table.ccdc_set_stream.76\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__ccdc_lsc_enable._entry, ptr @__ccdc_lsc_enable._entry_ptr, ptr @ccdc_disable._entry, ptr @ccdc_disable._entry_ptr, ptr @ccdc_isr_buffer._entry, ptr @ccdc_isr_buffer._entry_ptr, ptr @omap3isp_ccdc_init.__key, ptr @.str, ptr @omap3isp_ccdc_init.__key.1, ptr @.str.2, ptr @omap3isp_ccdc_init.__key.3, ptr @.str.4, ptr @omap3isp_ccdc_init.__key.5, ptr @.str.6, ptr @omap3isp_ccdc_init.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ccdc_v4l2_ops, ptr @ccdc_v4l2_internal_ops, ptr @.str.31, ptr @ccdc_media_ops, ptr @ccdc_video_ops, ptr @.str.32, ptr @ccdc_v4l2_core_ops, ptr @ccdc_v4l2_video_ops, ptr @ccdc_v4l2_pad_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @ccdc_fmts, ptr @switch.table.ccdc_set_stream, ptr @switch.table.ccdc_set_stream.76], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_ccdc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_ccdc_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_ccdc_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_ccdc_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_ccdc_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_isr_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_video_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_v4l2_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_v4l2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_v4l2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_fmts to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccdc_set_stream to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccdc_set_stream.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_ccdc_busy(ptr nocapture noundef readonly %ccdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %ccdc, i32 -41764
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !213
  %and = and i32 %2, 2
  ret i32 %and
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_ccdc_restore_context(ptr nocapture noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !213
  %or.i = or i32 %2, 32768
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #9, !srcloc !214
  %update = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 12
  %5 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %update, align 4
  tail call fastcc void @ccdc_apply_controls(ptr noundef %isp_ccdc)
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !213
  %and.i.i = and i32 %8, -32769
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and.i.i) #9, !srcloc !214
  %fpc_en.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 7
  %11 = ptrtoint ptr %fpc_en.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %fpc_en.i, align 8
  %12 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.ccdc_configure_fpc.exit_crit_edge, label %if.end.i

entry.ccdc_configure_fpc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_configure_fpc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dma.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 10, i32 1
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i, align 4
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 %14) #9, !srcloc !214
  %fpnum.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 10, i32 2
  %17 = ptrtoint ptr %fpnum.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fpnum.i, align 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %20, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %18) #9, !srcloc !214
  %21 = ptrtoint ptr %fpnum.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fpnum.i, align 4
  %or.i5 = or i32 %22, 32768
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %or.i5) #9, !srcloc !214
  br label %ccdc_configure_fpc.exit

ccdc_configure_fpc.exit:                          ; preds = %if.end.i, %entry.ccdc_configure_fpc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_apply_controls(ptr nocapture noundef %ccdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %update = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 12
  %0 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %update, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %code.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code.i, align 4
  %call.i = tail call ptr @omap3isp_video_format_info(i32 noundef %3) #9
  %width.i = getelementptr inbounds %struct.isp_format_info, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then.sw.epilog.i_crit_edge [
    i32 8, label %if.then.ccdc_configure_alaw.exit_crit_edge
    i32 10, label %sw.bb1.i
    i32 11, label %sw.bb2.i
    i32 12, label %sw.bb3.i
    i32 13, label %sw.bb4.i
  ]

if.then.ccdc_configure_alaw.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_configure_alaw.exit

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.sw.epilog.i_crit_edge
  %alaw.0.i = phi i32 [ 0, %if.then.sw.epilog.i_crit_edge ], [ 3, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 5, %sw.bb2.i ], [ 6, %sw.bb1.i ]
  %alaw5.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 7
  %7 = ptrtoint ptr %alaw5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %alaw5.i, align 8
  %or.i = or i32 %alaw.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not11.i = icmp slt i8 %bf.load.i, 0
  %spec.select.i = select i1 %tobool.not11.i, i32 %or.i, i32 %alaw.0.i
  %arrayidx.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %spec.select.i) #9, !srcloc !214
  br label %ccdc_configure_alaw.exit

ccdc_configure_alaw.exit:                         ; preds = %sw.epilog.i, %if.then.ccdc_configure_alaw.exit_crit_edge
  %10 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %update, align 4
  %and2 = and i32 %11, -2
  store i32 %and2, ptr %update, align 4
  br label %if.end

if.end:                                           ; preds = %ccdc_configure_alaw.exit, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %update, align 4
  %and4 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lpf.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 7
  %14 = ptrtoint ptr %lpf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i35 = load i8, ptr %lpf.i, align 8
  %15 = and i8 %bf.load.i35, 64
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %arrayidx.i.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !213
  %and.i.i = and i32 %20, -16385
  %or.i.i = or i32 %and.i.i, %17
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #9, !srcloc !214
  %23 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %update, align 4
  %and8 = and i32 %24, -3
  store i32 %and8, ptr %update, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %25 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %update, align 4
  %and11 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  %obclamp.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 7
  %27 = ptrtoint ptr %obclamp.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i36 = load i8, ptr %obclamp.i, align 8
  %28 = and i8 %bf.load.i36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %clamp1.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 9
  %29 = ptrtoint ptr %clamp1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %clamp1.i, align 2
  %conv.i = zext i8 %30 to i32
  %oblen.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 9, i32 3
  %31 = ptrtoint ptr %oblen.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %oblen.i, align 1
  %conv3.i = zext i8 %32 to i32
  %shl4.i = shl i32 %conv3.i, 28
  %or.i37 = or i32 %shl4.i, %conv.i
  %oblines.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 9, i32 2
  %33 = ptrtoint ptr %oblines.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %oblines.i, align 2
  %conv6.i = zext i8 %34 to i32
  %shl7.i = shl i32 %conv6.i, 25
  %or8.i = or i32 %or.i37, %shl7.i
  %obstpixel.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %obstpixel.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %obstpixel.i, align 1
  %conv10.i = zext i8 %36 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 10
  %or12.i = or i32 %or8.i, %shl11.i
  %arrayidx.i.i38 = getelementptr i8, ptr %ccdc, i32 -41764
  %37 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i38, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %38, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %or12.i) #9, !srcloc !214
  br label %ccdc_configure_clamp.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %dcsubval.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 9, i32 4
  %39 = ptrtoint ptr %dcsubval.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dcsubval.i, align 2
  %conv14.i = zext i16 %40 to i32
  %arrayidx.i33.i = getelementptr i8, ptr %ccdc, i32 -41764
  %41 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i33.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %42, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %conv14.i) #9, !srcloc !214
  br label %ccdc_configure_clamp.exit

ccdc_configure_clamp.exit:                        ; preds = %if.else.i, %if.then.i
  %43 = ptrtoint ptr %obclamp.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load16.i = load i8, ptr %obclamp.i, align 8
  %44 = and i8 %bf.load16.i, 32
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 %45, 26
  %arrayidx.i.i.i40 = getelementptr i8, ptr %ccdc, i32 -41764
  %47 = ptrtoint ptr %arrayidx.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i.i40, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %48, i32 48
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i41) #9, !srcloc !213
  %and.i.i42 = and i32 %49, 2147483647
  %or.i.i43 = or i32 %and.i.i42, %46
  %50 = ptrtoint ptr %arrayidx.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i40, align 4
  %add.ptr.i2.i.i44 = getelementptr i8, ptr %51, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i44, i32 %or.i.i43) #9, !srcloc !214
  %52 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %update, align 4
  %and15 = and i32 %53, -5
  store i32 %and15, ptr %update, align 4
  br label %if.end16

if.end16:                                         ; preds = %ccdc_configure_clamp.exit, %if.end9.if.end16_crit_edge
  %54 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %update, align 4
  %and18 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %blcomp1.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 8
  %56 = ptrtoint ptr %blcomp1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %blcomp1.i, align 1
  %conv.i45 = zext i8 %57 to i32
  %gb_g.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %gb_g.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %gb_g.i, align 1
  %conv3.i46 = zext i8 %59 to i32
  %shl4.i47 = shl nuw nsw i32 %conv3.i46, 8
  %or.i48 = or i32 %shl4.i47, %conv.i45
  %gr_cy.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 8, i32 2
  %60 = ptrtoint ptr %gr_cy.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %gr_cy.i, align 1
  %conv6.i49 = zext i8 %61 to i32
  %shl7.i50 = shl nuw nsw i32 %conv6.i49, 16
  %or8.i51 = or i32 %or.i48, %shl7.i50
  %r_ye.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 8, i32 3
  %62 = ptrtoint ptr %r_ye.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %r_ye.i, align 1
  %conv10.i52 = zext i8 %63 to i32
  %shl11.i53 = shl nuw i32 %conv10.i52, 24
  %or12.i54 = or i32 %or8.i51, %shl11.i53
  %arrayidx.i.i55 = getelementptr i8, ptr %ccdc, i32 -41764
  %64 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i55, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %65, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56, i32 %or12.i54) #9, !srcloc !214
  %66 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %update, align 4
  %and22 = and i32 %67, -9
  store i32 %and22, ptr %update, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap3isp_ccdc_max_rate(ptr nocapture noundef readonly %ccdc, ptr nocapture noundef %max_rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %input = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp eq i32 %3, 1
  %l3_ick = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %l3_ick to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l3_ick, align 4
  %div19 = lshr i32 %5, 1
  %mul = mul i32 %div19, 9
  %div4 = udiv i32 %mul, 10
  %rate.0 = select i1 %cmp2, i32 %div4, i32 %div19
  %6 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_rate, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %rate.0)
  %9 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %max_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_ccdc_isr(ptr noundef %ccdc, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 17
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %events, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %bt656.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 14
  %2 = ptrtoint ptr %bt656.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt656.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body1.i, label %if.then1.if.end2_crit_edge

if.then1.if.end2_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

do.body1.i:                                       ; preds = %if.then1
  %lsc.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %req_lock.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %5, label %do.body1.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb5.i
  ]

do.body1.i.sw.epilog.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  %stopping.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 20
  %7 = ptrtoint ptr %stopping.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %stopping.i, align 4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %do.body1.i
  %output.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 5
  %8 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output.i, align 8
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %sw.bb5.i.sw.epilog.i_crit_edge, label %if.then7.i

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then7.i:                                       ; preds = %sw.bb5.i
  %10 = ptrtoint ptr %lsc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lsc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10.not.i = icmp eq i32 %11, 0
  br i1 %cmp10.not.i, label %if.then7.i.if.end14.i_crit_edge, label %if.then12.i

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.then7.i
  %code.i.i = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code.i.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %13, label %if.then12.i.if.end14.i_crit_edge [
    i32 12298, label %if.then12.i.if.end.i.i_crit_edge
    i32 12303, label %if.then12.i.if.end.i.i_crit_edge39
    i32 12295, label %if.then12.i.if.end.i.i_crit_edge40
    i32 12302, label %if.then12.i.if.end.i.i_crit_edge41
  ]

if.then12.i.if.end.i.i_crit_edge41:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then12.i.if.end.i.i_crit_edge40:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then12.i.if.end.i.i_crit_edge39:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then12.i.if.end.i.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then12.i.if.end14.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end.i.i:                                       ; preds = %if.then12.i.if.end.i.i_crit_edge, %if.then12.i.if.end.i.i_crit_edge39, %if.then12.i.if.end.i.i_crit_edge40, %if.then12.i.if.end.i.i_crit_edge41
  %arrayidx.i.i8.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %15 = ptrtoint ptr %arrayidx.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i8.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %16, i32 152
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i) #9, !srcloc !213
  %and.i10.i.i = and i32 %17, -2
  %18 = ptrtoint ptr %arrayidx.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i8.i.i, align 4
  %add.ptr.i2.i11.i.i = getelementptr i8, ptr %19, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11.i.i, i32 %and.i10.i.i) #9, !srcloc !214
  %20 = ptrtoint ptr %lsc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %lsc.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i.i, %if.then12.i.if.end14.i_crit_edge, %if.then7.i.if.end14.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !213
  %and.i.i.i = and i32 %23, -2
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %and.i.i.i) #9, !srcloc !214
  %running.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 21
  %26 = ptrtoint ptr %running.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %running.i.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end14.i, %sw.bb5.i.sw.epilog.i_crit_edge, %sw.bb.i, %do.body1.i.sw.epilog.i_crit_edge
  %call16.i = tail call fastcc i32 @ccdc_handle_stopping(ptr noundef %ccdc, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %sw.epilog.i.done.i_crit_edge

sw.epilog.i.done.i_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end19.i:                                       ; preds = %sw.epilog.i
  %request.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 3
  %27 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request.i, align 4
  %cmp21.i = icmp eq ptr %28, null
  br i1 %cmp21.i, label %if.end19.i.done.i_crit_edge, label %if.end24.i

if.end19.i.done.i_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end24.i:                                       ; preds = %if.end19.i
  %29 = ptrtoint ptr %lsc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lsc.i, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %30, label %if.end24.i.done.i_crit_edge [
    i32 2, label %if.then29.i
    i32 0, label %if.then38.i
  ]

if.end24.i.done.i_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.then29.i:                                      ; preds = %if.end24.i
  %code.i60.i = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %code.i60.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code.i60.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %33, label %if.then29.i.__ccdc_lsc_enable.exit67.i_crit_edge [
    i32 12298, label %if.then29.i.if.end.i61.i_crit_edge
    i32 12303, label %if.then29.i.if.end.i61.i_crit_edge42
    i32 12295, label %if.then29.i.if.end.i61.i_crit_edge43
    i32 12302, label %if.then29.i.if.end.i61.i_crit_edge44
  ]

if.then29.i.if.end.i61.i_crit_edge44:             ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i61.i

if.then29.i.if.end.i61.i_crit_edge43:             ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i61.i

if.then29.i.if.end.i61.i_crit_edge42:             ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i61.i

if.then29.i.if.end.i61.i_crit_edge:               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i61.i

if.then29.i.__ccdc_lsc_enable.exit67.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ccdc_lsc_enable.exit67.i

if.end.i61.i:                                     ; preds = %if.then29.i.if.end.i61.i_crit_edge, %if.then29.i.if.end.i61.i_crit_edge42, %if.then29.i.if.end.i61.i_crit_edge43, %if.then29.i.if.end.i61.i_crit_edge44
  %arrayidx.i.i8.i62.i = getelementptr i8, ptr %ccdc, i32 -41764
  %35 = ptrtoint ptr %arrayidx.i.i8.i62.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i8.i62.i, align 4
  %add.ptr.i.i9.i63.i = getelementptr i8, ptr %36, i32 152
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i63.i) #9, !srcloc !213
  %and.i10.i64.i = and i32 %37, -2
  %38 = ptrtoint ptr %arrayidx.i.i8.i62.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i8.i62.i, align 4
  %add.ptr.i2.i11.i65.i = getelementptr i8, ptr %39, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11.i65.i, i32 %and.i10.i64.i) #9, !srcloc !214
  br label %__ccdc_lsc_enable.exit67.i

__ccdc_lsc_enable.exit67.i:                       ; preds = %if.end.i61.i, %if.then29.i.__ccdc_lsc_enable.exit67.i_crit_edge
  %40 = ptrtoint ptr %lsc.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %lsc.i, align 8
  br label %done.i

if.then38.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ccdc_lsc_enable(ptr noundef %ccdc) #9
  br label %done.i

done.i:                                           ; preds = %if.then38.i, %__ccdc_lsc_enable.exit67.i, %if.end24.i.done.i_crit_edge, %if.end19.i.done.i_crit_edge, %sw.epilog.i.done.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i, i32 noundef %call2.i) #9
  br label %if.end2

if.end2:                                          ; preds = %done.i, %if.then1.if.end2_crit_edge, %if.end.if.end2_crit_edge
  tail call fastcc void @ccdc_lsc_isr(ptr noundef %ccdc, i32 noundef %events)
  %and3 = and i32 %events, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end2.if.end6_crit_edge, label %if.then5

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end2
  %bt656.i18 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 14
  %41 = ptrtoint ptr %bt656.i18 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bt656.i18, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i19 = icmp eq i8 %42, 0
  br i1 %tobool.not.i19, label %if.then5.do.body25.i_crit_edge, label %if.end.i

if.then5.do.body25.i_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25.i

if.end.i:                                         ; preds = %if.then5
  %pipe1.i = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 14
  %43 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pipe1.i, align 4
  %frame_number.i = getelementptr inbounds %struct.isp_pipeline, ptr %44, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_number.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %frame_number.i, i32 1, i32 3, i32 1) #9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_number.i, ptr %frame_number.i, i32 1, ptr elementtype(i32) %frame_number.i) #9, !srcloc !216
  %46 = ptrtoint ptr %bt656.i18 to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr.i = load i8, ptr %bt656.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool3.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool3.not.i, label %if.end.i.do.body25.i_crit_edge, label %do.body5.i

if.end.i.do.body25.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25.i

do.body5.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 18
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp10.i = icmp eq i32 %48, 1
  br i1 %cmp10.i, label %land.lhs.true.i, label %do.body5.i.if.end20.i_crit_edge

do.body5.i.if.end20.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %do.body5.i
  %output.i21 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 5
  %49 = ptrtoint ptr %output.i21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %output.i21, align 8
  %and.i22 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool12.not.i = icmp eq i32 %and.i22, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %lsc.i23 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %51 = ptrtoint ptr %lsc.i23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lsc.i23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp15.not.i = icmp eq i32 %52, 0
  br i1 %cmp15.not.i, label %if.then13.i.if.end19.i35_crit_edge, label %if.then17.i

if.then13.i.if.end19.i35_crit_edge:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i35

if.then17.i:                                      ; preds = %if.then13.i
  %code.i.i24 = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %code.i.i24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %code.i.i24, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %54, label %if.then17.i.if.end19.i35_crit_edge [
    i32 12298, label %if.then17.i.if.end.i.i29_crit_edge
    i32 12303, label %if.then17.i.if.end.i.i29_crit_edge45
    i32 12295, label %if.then17.i.if.end.i.i29_crit_edge46
    i32 12302, label %if.then17.i.if.end.i.i29_crit_edge47
  ]

if.then17.i.if.end.i.i29_crit_edge47:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i29

if.then17.i.if.end.i.i29_crit_edge46:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i29

if.then17.i.if.end.i.i29_crit_edge45:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i29

if.then17.i.if.end.i.i29_crit_edge:               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i29

if.then17.i.if.end19.i35_crit_edge:               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i35

if.end.i.i29:                                     ; preds = %if.then17.i.if.end.i.i29_crit_edge, %if.then17.i.if.end.i.i29_crit_edge45, %if.then17.i.if.end.i.i29_crit_edge46, %if.then17.i.if.end.i.i29_crit_edge47
  %arrayidx.i.i8.i.i25 = getelementptr i8, ptr %ccdc, i32 -41764
  %56 = ptrtoint ptr %arrayidx.i.i8.i.i25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i8.i.i25, align 4
  %add.ptr.i.i9.i.i26 = getelementptr i8, ptr %57, i32 152
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i26) #9, !srcloc !213
  %and.i10.i.i27 = and i32 %58, -2
  %59 = ptrtoint ptr %arrayidx.i.i8.i.i25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i8.i.i25, align 4
  %add.ptr.i2.i11.i.i28 = getelementptr i8, ptr %60, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11.i.i28, i32 %and.i10.i.i27) #9, !srcloc !214
  %61 = ptrtoint ptr %lsc.i23 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %lsc.i23, align 8
  br label %if.end19.i35

if.end19.i35:                                     ; preds = %if.end.i.i29, %if.then17.i.if.end19.i35_crit_edge, %if.then13.i.if.end19.i35_crit_edge
  %arrayidx.i.i.i.i30 = getelementptr i8, ptr %ccdc, i32 -41764
  %62 = ptrtoint ptr %arrayidx.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i.i30, align 4
  %add.ptr.i.i.i.i31 = getelementptr i8, ptr %63, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i31) #9, !srcloc !213
  %and.i.i.i32 = and i32 %64, -2
  %65 = ptrtoint ptr %arrayidx.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i.i30, align 4
  %add.ptr.i2.i.i.i33 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i33, i32 %and.i.i.i32) #9, !srcloc !214
  %running.i.i34 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 21
  %67 = ptrtoint ptr %running.i.i34 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %running.i.i34, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end19.i35, %land.lhs.true.i.if.end20.i_crit_edge, %do.body5.i.if.end20.i_crit_edge
  %call21.i = tail call fastcc i32 @ccdc_handle_stopping(ptr noundef %ccdc, i32 noundef 16) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %do.body25.i

do.body25.i:                                      ; preds = %if.end20.i, %if.end.i.do.body25.i_crit_edge, %if.then5.do.body25.i_crit_edge
  %lock31.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 18
  %call33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock31.i) #9
  %call38.i = tail call fastcc i32 @ccdc_handle_stopping(ptr noundef %ccdc, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end42.i, label %if.then40.i

if.then40.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock31.i, i32 noundef %call33.i) #9
  br label %if.end6

if.end42.i:                                       ; preds = %do.body25.i
  %output43.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 5
  %68 = ptrtoint ptr %output43.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %output43.i, align 8
  %and44.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end48.i_crit_edge, label %if.then46.i

if.end42.i.if.end48.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end42.i
  %pipe1.i.i = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 14
  %70 = ptrtoint ptr %pipe1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pipe1.i.i, align 4
  %video_out.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 6
  %dmaqueue.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 6, i32 18
  %72 = ptrtoint ptr %dmaqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %dmaqueue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %73, %dmaqueue.i.i
  br i1 %cmp.i.not.i.i, label %if.then46.i.if.end48.i_crit_edge, label %if.end.i79.i

if.then46.i.if.end48.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.end.i79.i:                                     ; preds = %if.then46.i
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i.i = icmp eq i32 %75, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i79.i.if.end9.i.i_crit_edge

if.end.i79.i.if.end9.i.i_crit_edge:               ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i79.i
  %underrun.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 16
  %76 = ptrtoint ptr %underrun.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i.i = load i8, ptr %underrun.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool5.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %77 = ptrtoint ptr %underrun.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %bf.clear.i.i, ptr %underrun.i.i, align 4
  br label %if.end48.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %if.end.i79.i.if.end9.i.i_crit_edge
  %arrayidx.i.i.i.i.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %arrayidx.i.i.i.i.i = getelementptr i8, ptr %ccdc, i32 -41744
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end3.i.i.i.for.body.i.i.i_crit_edge, %if.end9.i.i
  %wait.01.i.i.i = phi i32 [ 0, %if.end9.i.i ], [ %inc.i.i.i, %if.end3.i.i.i.for.body.i.i.i_crit_edge ]
  %78 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #9, !srcloc !213
  %and.i.i.i.i.i = and i32 %80, 2
  %81 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %82, i32 40
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #9, !srcloc !213
  %and.i.i.i.i = and i32 %83, 2097152
  %or.i.i.i.i = or i32 %and.i.i.i.i, %and.i.i.i.i.i
  %84 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %add.ptr.i16.i.i.i.i = getelementptr i8, ptr %85, i32 44
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i.i.i) #9, !srcloc !213
  %and3.i.i.i.i = and i32 %86, 2097152
  %or4.i.i.i.i = or i32 %or.i.i.i.i, %and3.i.i.i.i
  %87 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %add.ptr.i18.i.i.i.i = getelementptr i8, ptr %88, i32 48
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i.i.i) #9, !srcloc !213
  %and6.i.i.i.i = and i32 %89, 2097152
  %or7.i.i.i.i = or i32 %or4.i.i.i.i, %and6.i.i.i.i
  %90 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %add.ptr.i20.i.i.i.i = getelementptr i8, ptr %91, i32 52
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i.i.i) #9, !srcloc !213
  %and9.i.i.i.i = and i32 %92, 2097152
  %or10.i.i.i.i = or i32 %or7.i.i.i.i, %and9.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %or10.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end15.i.i, label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %for.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748) #9
  %inc.i.i.i = add nuw nsw i32 %wait.01.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1001
  br i1 %exitcond.not.i.i.i, label %do.end.i.i, label %if.end3.i.i.i.for.body.i.i.i_crit_edge

if.end3.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i.i
  %dev.i.i = getelementptr i8, ptr %ccdc, i32 -41784
  %94 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.27) #12
  %internal_idx.i.i.i = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 8
  %96 = ptrtoint ptr %internal_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %internal_idx.i.i.i, align 4
  %idx_max.i.i.i = getelementptr i8, ptr %ccdc, i32 -41552
  %98 = ptrtoint ptr %idx_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %idx_max.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp.not.i.i.i = icmp slt i32 %97, %99
  br i1 %cmp.not.i.i.i, label %if.end21.critedge.i.i.i, label %do.end.i.i.i, !prof !218

do.end.i.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 468, i32 noundef 9, ptr noundef null) #9
  br label %media_entity_enum_set.exit.i.i

if.end21.critedge.i.i.i:                          ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %crashed.i.i = getelementptr i8, ptr %ccdc, i32 -41556
  %100 = ptrtoint ptr %crashed.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %crashed.i.i, align 4
  %rem.i.i.i.i = and i32 %97, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %97, 5
  %add.ptr.i.i.i80.i = getelementptr i32, ptr %101, i32 %div2.i.i.i.i
  %102 = ptrtoint ptr %add.ptr.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i.i.i80.i, align 4
  %or.i.i61.i.i = or i32 %103, %shl.i.i.i.i
  store i32 %or.i.i61.i.i, ptr %add.ptr.i.i.i80.i, align 4
  br label %media_entity_enum_set.exit.i.i

media_entity_enum_set.exit.i.i:                   ; preds = %if.end21.critedge.i.i.i, %do.end.i.i.i
  tail call void @omap3isp_pipeline_cancel_stream(ptr noundef %71) #9
  br label %if.end48.i

if.end15.i.i:                                     ; preds = %for.body.i.i.i
  %104 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp17.i.i = icmp eq i32 %105, 1
  br i1 %cmp17.i.i, label %land.lhs.true18.i.i, label %if.end15.i.i.if.end21.i.i_crit_edge

if.end15.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i

land.lhs.true18.i.i:                              ; preds = %if.end15.i.i
  %stopping.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 20
  %106 = ptrtoint ptr %stopping.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %stopping.i.i, align 4
  %and.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool19.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool19.not.i.i, label %land.lhs.true18.i.i.if.end21.i.i_crit_edge, label %land.lhs.true18.i.i.if.end48.i_crit_edge

land.lhs.true18.i.i.if.end48.i_crit_edge:         ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

land.lhs.true18.i.i.if.end21.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true18.i.i.if.end21.i.i_crit_edge, %if.end15.i.i.if.end21.i.i_crit_edge
  %108 = ptrtoint ptr %pipe1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pipe1.i.i, align 4
  %field.i.i.i = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 1, i32 3
  %110 = ptrtoint ptr %field.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %field.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp.i62.i.i = icmp eq i32 %111, 1
  br i1 %cmp.i62.i.i, label %if.end21.i.i.if.end24.i.i_crit_edge, label %if.end.i.i.i

if.end21.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.end.i.i.i:                                     ; preds = %if.end21.i.i
  %112 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  %add.ptr.i.i63.i.i = getelementptr i8, ptr %113, i32 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i63.i.i) #9, !srcloc !213
  %and.i.i81.i = and i32 %114, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81.i)
  %tobool.not.i64.i.i = icmp eq i32 %and.i.i81.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %111)
  %cmp6.i.i.i = icmp eq i32 %111, 7
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.end9.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cond.i.i.i = select i1 %tobool.not.i64.i.i, i32 2, i32 3
  %field8.i.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %109, i32 0, i32 9
  %115 = ptrtoint ptr %field8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond.i.i.i, ptr %field8.i.i.i, align 4
  br label %if.end24.i.i

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %cond11.i.i.i = select i1 %tobool.not.i64.i.i, i32 1, i32 2
  %fields.i.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 15
  %116 = ptrtoint ptr %fields.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fields.i.i.i, align 8
  %or.i.i.i = or i32 %117, %cond11.i.i.i
  store i32 %or.i.i.i, ptr %fields.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i.i.i)
  %cmp13.not.i.i.i = icmp eq i32 %or.i.i.i, 3
  br i1 %cmp13.not.i.i.i, label %if.end15.i.i.i, label %if.end9.i.i.i.if.end48.i_crit_edge

if.end9.i.i.i.if.end48.i_crit_edge:               ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.end15.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %111)
  %cmp16.i.i.i = icmp ne i32 %111, 8
  %tobool.not.not.i.i.i = xor i1 %tobool.not.i64.i.i, true
  %brmerge.i.i.i = select i1 %cmp16.i.i.i, i1 true, i1 %tobool.not.not.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %111)
  %cmp18.i.i.i = icmp ne i32 %111, 9
  %brmerge38.i.i.i = select i1 %cmp18.i.i.i, i1 true, i1 %tobool.not.i64.i.i
  %or.cond.i.i.i = select i1 %brmerge.i.i.i, i1 %brmerge38.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end22.i.i.i, label %if.end15.i.i.i.if.end48.i_crit_edge

if.end15.i.i.i.if.end48.i_crit_edge:              ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.end22.i.i.i:                                   ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %fields.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %fields.i.i.i, align 8
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end22.i.i.i, %if.then7.i.i.i, %if.end21.i.i.if.end24.i.i_crit_edge
  %call26.i.i = tail call ptr @omap3isp_video_buffer_next(ptr noundef %video_out.i.i) #9
  %cmp27.i.i = icmp ne ptr %call26.i.i, null
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end24.i.i.if.end29.i.i_crit_edge

if.end24.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma.i.i = getelementptr inbounds %struct.isp_buffer, ptr %call26.i.i, i32 0, i32 2
  %119 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma.i.i, align 8
  %121 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  %add.ptr.i.i67.i.i = getelementptr i8, ptr %122, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67.i.i, i32 %120) #9, !srcloc !214
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then28.i.i, %if.end24.i.i.if.end29.i.i_crit_edge
  %state30.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %71, i32 0, i32 2
  %123 = ptrtoint ptr %state30.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state30.i.i, align 4
  %or.i.i = or i32 %124, 32
  store i32 %or.i.i, ptr %state30.i.i, align 4
  %125 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp32.i.i = icmp eq i32 %126, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %or.i.i)
  %cmp.i68.not.i.i = icmp eq i32 %or.i.i, 63
  %or.cond.i.i = select i1 %cmp32.i.i, i1 %cmp.i68.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then36.i.i, label %if.end29.i.i.if.end38.i.i_crit_edge

if.end29.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

if.then36.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.i.i = tail call i32 @omap3isp_pipeline_set_stream(ptr noundef %71, i32 noundef 2) #9
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then36.i.i, %if.end29.i.i.if.end38.i.i_crit_edge
  %conv.i.i = zext i1 %cmp27.i.i to i32
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end38.i.i, %if.end15.i.i.i.if.end48.i_crit_edge, %if.end9.i.i.i.if.end48.i_crit_edge, %land.lhs.true18.i.i.if.end48.i_crit_edge, %media_entity_enum_set.exit.i.i, %if.then6.i.i, %if.then46.i.if.end48.i_crit_edge, %if.end42.i.if.end48.i_crit_edge
  %restart.0.i = phi i32 [ 0, %if.end42.i.if.end48.i_crit_edge ], [ 1, %if.then6.i.i ], [ 0, %media_entity_enum_set.exit.i.i ], [ %conv.i.i, %if.end38.i.i ], [ 0, %if.then46.i.if.end48.i_crit_edge ], [ 0, %land.lhs.true18.i.i.if.end48.i_crit_edge ], [ 1, %if.end9.i.i.i.if.end48.i_crit_edge ], [ 1, %if.end15.i.i.i.if.end48.i_crit_edge ]
  %shadow_update.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 13
  %127 = ptrtoint ptr %shadow_update.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %shadow_update.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool49.not.i = icmp eq i32 %128, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.end48.i.if.end51.i_crit_edge

if.end48.i.if.end51.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ccdc_apply_controls(ptr noundef %ccdc) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end51.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock31.i, i32 noundef %call33.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.0.i)
  %tobool53.not.i = icmp eq i32 %restart.0.i, 0
  br i1 %tobool53.not.i, label %if.end51.i.if.end6_crit_edge, label %if.then54.i

if.end51.i.if.end6_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then54.i:                                      ; preds = %if.end51.i
  %req_lock.i.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 2
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i.i.i) #9
  %active.i.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 4
  %129 = ptrtoint ptr %active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %active.i.i.i, align 8
  %cmp6.i.not.i.i = icmp eq ptr %130, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i.i.i, i32 noundef %call2.i.i.i) #9
  br i1 %cmp6.i.not.i.i, label %if.then54.i.if.end.i83.i_crit_edge, label %if.then.i.i

if.then54.i.if.end.i83.i_crit_edge:               ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i83.i

if.then.i.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__ccdc_lsc_enable(ptr noundef %ccdc, i32 noundef 1) #9
  br label %if.end.i83.i

if.end.i83.i:                                     ; preds = %if.then.i.i, %if.then54.i.if.end.i83.i_crit_edge
  %stopping.i.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 20
  %131 = ptrtoint ptr %stopping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %stopping.i.i.i, align 4
  %and.i.i82.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i82.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i87.i, label %if.end.i83.i.if.end6_crit_edge

if.end.i83.i.if.end6_crit_edge:                   ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i.i87.i:                                   ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i84.i = getelementptr i8, ptr %ccdc, i32 -41764
  %133 = ptrtoint ptr %arrayidx.i.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i.i.i84.i, align 4
  %add.ptr.i.i.i.i85.i = getelementptr i8, ptr %134, i32 4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i85.i) #9, !srcloc !213
  %or.i.i.i86.i = or i32 %135, 1
  %136 = ptrtoint ptr %arrayidx.i.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i.i.i.i84.i, align 4
  %add.ptr.i2.i.i.i.i = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i.i, i32 %or.i.i.i86.i) #9, !srcloc !214
  %running.i.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 21
  %138 = ptrtoint ptr %running.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %running.i.i.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i87.i, %if.end.i83.i.if.end6_crit_edge, %if.end51.i.if.end6_crit_edge, %if.then40.i, %if.end2.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %events)
  %tobool8.not = icmp sgt i32 %events, -1
  br i1 %tobool8.not, label %if.end6.return_crit_edge, label %if.then9

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %pipe1.i36 = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 14
  %139 = ptrtoint ptr %pipe1.i36 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pipe1.i36, align 4
  %devnode.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ccdc, i32 0, i32 13
  %141 = ptrtoint ptr %devnode.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %devnode.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %event.i) #9
  %frame_number.i37 = getelementptr inbounds %struct.isp_pipeline, ptr %140, i32 0, i32 10
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_number.i37, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %frame_number.i37, i32 1, i32 3, i32 1) #9
  %143 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_number.i37, ptr %frame_number.i37, i32 1, ptr elementtype(i32) %frame_number.i37) #9, !srcloc !216
  %144 = call ptr @memset(ptr %event.i, i32 0, i32 136)
  %145 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %event.i, align 8
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_number.i37, i32 noundef 4) #9
  %146 = ptrtoint ptr %frame_number.i37 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %frame_number.i37, align 4
  %u.i = getelementptr inbounds %struct.v4l2_event, ptr %event.i, i32 0, i32 1
  %148 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %u.i, align 8
  call void @v4l2_event_queue(ptr noundef %142, ptr noundef nonnull %event.i) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %event.i) #9
  br label %return

return:                                           ; preds = %if.then9, %if.end6.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_lsc_isr(ptr noundef %ccdc, i32 noundef %events) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %events, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !213
  %and.i.i = and i32 %4, -2
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %6, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and.i.i) #9, !srcloc !214
  %lsc.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %7 = ptrtoint ptr %lsc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %lsc.i, align 8
  %error = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %error, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_isr.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_isr, %if.end11)) #9
          to label %if.then7 [label %if.end11], !srcloc !219

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %ccdc, i32 -41784
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_isr.__UNIQUE_ID_ddebug347, ptr noundef %10, ptr noundef nonnull @.str.26) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then, %entry.if.end11_crit_edge
  %and12 = and i32 %events, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.body17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body17:                                        ; preds = %if.end11
  %lsc = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %req_lock = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 2
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #9
  %11 = ptrtoint ptr %lsc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lsc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp26 = icmp eq i32 %12, 1
  br i1 %cmp26, label %if.then28, label %do.body17.if.end31_crit_edge

do.body17.if.end31_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %lsc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %lsc, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %do.body17.if.end31_crit_edge
  %call32 = tail call fastcc i32 @ccdc_handle_stopping(ptr noundef %ccdc, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.done_crit_edge

if.end31.done_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end35:                                         ; preds = %if.end31
  %14 = ptrtoint ptr %lsc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lsc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp38.not = icmp eq i32 %15, 3
  br i1 %cmp38.not, label %if.end41, label %if.end35.done_crit_edge

if.end35.done_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end41:                                         ; preds = %if.end35
  %16 = ptrtoint ptr %lsc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lsc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %events)
  %tobool45.not = icmp sgt i32 %events, -1
  br i1 %tobool45.not, label %if.end47, label %if.end41.done_crit_edge

if.end41.done_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end47:                                         ; preds = %if.end41
  %request = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request, align 4
  %cmp49 = icmp eq ptr %18, null
  br i1 %cmp49, label %if.end47.done_crit_edge, label %if.end52

if.end47.done_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ccdc_lsc_enable(ptr noundef %ccdc)
  br label %done

done:                                             ; preds = %if.end52, %if.end47.done_crit_edge, %if.end41.done_crit_edge, %if.end35.done_crit_edge, %if.end31.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call20) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_ccdc_unregister_entities(ptr noundef %ccdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ccdc) #9
  %video_out = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 6
  tail call void @omap3isp_video_unregister(ptr noundef %video_out) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_ccdc_register_entities(ptr noundef %ccdc, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %ccdc, i32 0, i32 14
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev1, align 4
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %ccdc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %video_out = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 6
  %call3 = tail call i32 @omap3isp_video_register(ptr noundef %video_out, ptr noundef %vdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call3, %if.end.error_crit_edge ]
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ccdc) #9
  %video_out.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 6
  tail call void @omap3isp_video_unregister(ptr noundef %video_out.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_ccdc_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26
  %lock = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @omap3isp_ccdc_init.__key, i16 noundef signext 3) #9
  %wait = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @omap3isp_ccdc_init.__key.1) #9
  %ioctl_lock = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 22
  tail call void @__mutex_init(ptr noundef %ioctl_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @omap3isp_ccdc_init.__key.3) #9
  %stopping = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 20
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stopping, align 4
  %lsc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11
  %table_work = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 1
  tail call void @__init_work(ptr noundef %table_work, i32 noundef 0) #9
  %1 = ptrtoint ptr %table_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %table_work, align 4
  %lockdep_map = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @omap3isp_ccdc_init.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry14 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 1, i32 1
  %2 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 1, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ccdc_lsc_free_table_work, ptr %func, align 4
  %5 = ptrtoint ptr %lsc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lsc, align 8
  %free_queue = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 5
  %6 = ptrtoint ptr %free_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %free_queue, ptr %free_queue, align 4
  %prev.i48 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_queue, ptr %prev.i48, align 4
  %req_lock = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %req_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @omap3isp_ccdc_init.__key.7, i16 noundef signext 3) #9
  %oblen = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 9, i32 3
  %8 = ptrtoint ptr %oblen to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %oblen, align 1
  %dcsubval = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 9, i32 4
  %9 = ptrtoint ptr %dcsubval to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %dcsubval, align 2
  %update = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 12
  %10 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %update, align 4
  tail call fastcc void @ccdc_apply_controls(ptr noundef %isp_ccdc)
  %pads1.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 1
  %input.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 4
  %11 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %input.i, align 4
  tail call void @v4l2_subdev_init(ptr noundef %isp_ccdc, ptr noundef nonnull @ccdc_v4l2_ops) #9
  %internal_ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 0, i32 7
  %12 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ccdc_v4l2_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.31, i32 noundef 32) #9
  %grp_id.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 0, i32 10
  %13 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %isp_ccdc, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 0, i32 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %16, 12
  store i32 %or.i, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %flags3.i, align 4
  %flags5.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 26, i32 1, i32 2, i32 4
  %18 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags5.i, align 4
  %flags7.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 26, i32 1, i32 1, i32 4
  %19 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %flags7.i, align 4
  %ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 0, i32 0, i32 11
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ccdc_media_ops, ptr %ops.i, align 4
  %call8.i = tail call i32 @media_entity_pads_init(ptr noundef %isp_ccdc, i16 noundef zeroext 3, ptr noundef %pads1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %ccdc_init_entities.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ccdc_init_entities.exit:                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #9
  %21 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 84)
  %23 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12298, ptr %code.i.i, align 4
  %25 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i = call i32 @ccdc_set_format(ptr noundef %isp_ccdc, ptr noundef null, ptr noundef nonnull %format.i.i) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #9
  %video_out.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6
  %type.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type.i, align 8
  %ops11.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6, i32 20
  %28 = ptrtoint ptr %ops11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ccdc_video_ops, ptr %ops11.i, align 4
  %isp.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6, i32 5
  %29 = ptrtoint ptr %isp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %isp, ptr %isp.i, align 4
  %capture_mem.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6, i32 6
  %30 = ptrtoint ptr %capture_mem.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 50331648, ptr %capture_mem.i, align 8
  %bpl_alignment.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6, i32 7
  %31 = ptrtoint ptr %bpl_alignment.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %bpl_alignment.i, align 4
  %call16.i = tail call i32 @omap3isp_video_init(ptr noundef %video_out.i, ptr noundef nonnull @.str.32) #9
  %32 = tail call i32 @llvm.smin.i32(i32 %call16.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %ccdc_init_entities.exit.if.then_crit_edge, label %ccdc_init_entities.exit.cleanup_crit_edge

ccdc_init_entities.exit.cleanup_crit_edge:        ; preds = %ccdc_init_entities.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ccdc_init_entities.exit.if.then_crit_edge:        ; preds = %ccdc_init_entities.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ccdc_init_entities.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i51 = phi i32 [ %32, %ccdc_init_entities.exit.if.then_crit_edge ], [ %call8.i, %entry.if.then_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %ioctl_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ccdc_init_entities.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i51, %if.then ], [ 0, %ccdc_init_entities.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccdc_lsc_free_table_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -2508
  %free_queue = getelementptr i8, ptr %work, i32 96
  tail call fastcc void @ccdc_lsc_free_queue(ptr noundef %add.ptr3, ptr noundef %free_queue)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_ccdc_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26
  %video_out = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6
  tail call void @omap3isp_video_cleanup(ptr noundef %video_out) #9
  %request = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.ccdc_lsc_free_request.exit_crit_edge, label %if.end.i

entry.ccdc_lsc_free_request.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_lsc_free_request.exit

if.end.i:                                         ; preds = %entry
  %table.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then1.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sgt.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %1, i32 0, i32 3, i32 2
  tail call void @sg_free_table(ptr noundef %sgt.i) #9
  %dev.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %1, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %8 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table.i, align 4
  %dma.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then1.i, %if.end.i.if.end6.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %ccdc_lsc_free_request.exit

ccdc_lsc_free_request.exit:                       ; preds = %if.end6.i, %entry.ccdc_lsc_free_request.exit_crit_edge
  %table_work = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %table_work) #9
  %free_queue = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 11, i32 5
  tail call fastcc void @ccdc_lsc_free_queue(ptr noundef %isp_ccdc, ptr noundef %free_queue)
  %fpc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 10
  %12 = ptrtoint ptr %fpc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fpc, align 4
  %cmp.not = icmp eq ptr %13, null
  br i1 %cmp.not, label %ccdc_lsc_free_request.exit.if.end_crit_edge, label %if.then

ccdc_lsc_free_request.exit.if.end_crit_edge:      ; preds = %ccdc_lsc_free_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %ccdc_lsc_free_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %fpnum = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 10, i32 2
  %16 = ptrtoint ptr %fpnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fpnum, align 4
  %mul = shl i32 %17, 2
  %dma = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 10, i32 1
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %mul, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %ccdc_lsc_free_request.exit.if.end_crit_edge
  %ioctl_lock = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 22
  tail call void @mutex_destroy(ptr noundef %ioctl_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_lsc_free_queue(ptr noundef %ccdc, ptr noundef readonly %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %cmp11.not48 = icmp eq ptr %1, %queue
  br i1 %cmp11.not48, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr i8, ptr %ccdc, i32 -41784
  br label %for.body

for.body:                                         ; preds = %ccdc_lsc_free_request.exit.for.body_crit_edge, %for.body.lr.ph
  %req.050 = phi ptr [ %1, %for.body.lr.ph ], [ %n.0, %ccdc_lsc_free_request.exit.for.body_crit_edge ]
  %flags.049 = phi i32 [ %call2, %for.body.lr.ph ], [ %call26, %ccdc_lsc_free_request.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %req.050 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %req.050, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.050) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.050, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %req.050 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req.050, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %req.050 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %req.050, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.050, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %flags.049) #9
  %cmp.i = icmp eq ptr %req.050, null
  br i1 %cmp.i, label %list_del.exit.ccdc_lsc_free_request.exit_crit_edge, label %if.end.i

list_del.exit.ccdc_lsc_free_request.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_lsc_free_request.exit

if.end.i:                                         ; preds = %list_del.exit
  %table.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req.050, i32 0, i32 3
  %11 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then1.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sgt.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req.050, i32 0, i32 3, i32 2
  tail call void @sg_free_table(ptr noundef %sgt.i) #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req.050, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %17 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %table.i, align 4
  %dma.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req.050, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 0) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then1.i, %if.end.i.if.end6.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %req.050) #9
  br label %ccdc_lsc_free_request.exit

ccdc_lsc_free_request.exit:                       ; preds = %if.end6.i, %list_del.exit.ccdc_lsc_free_request.exit_crit_edge
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #9
  %cmp11.not = icmp eq ptr %n.0, %queue
  br i1 %cmp11.not, label %ccdc_lsc_free_request.exit.for.end_crit_edge, label %ccdc_lsc_free_request.exit.for.body_crit_edge

ccdc_lsc_free_request.exit.for.body_crit_edge:    ; preds = %ccdc_lsc_free_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

ccdc_lsc_free_request.exit.for.end_crit_edge:     ; preds = %ccdc_lsc_free_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %ccdc_lsc_free_request.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.end_crit_edge ], [ %call26, %ccdc_lsc_free_request.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %flags.0.lcssa) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ccdc_lsc_enable(ptr noundef %ccdc, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ccdc, i32 -42568
  %code = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 12298, label %entry.if.end_crit_edge
    i32 12303, label %entry.if.end_crit_edge14
    i32 12295, label %entry.if.end_crit_edge15
    i32 12302, label %entry.if.end_crit_edge16
  ]

entry.if.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge14, %entry.if.end_crit_edge15, %entry.if.end_crit_edge16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else.critedge, label %if.then9

if.then9:                                         ; preds = %if.end
  tail call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 16) #9
  %arrayidx.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 152
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !213
  %or.i = or i32 %5, 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #9, !srcloc !214
  %arrayidx.i.i1 = getelementptr i8, ptr %ccdc, i32 -41772
  %8 = ptrtoint ptr %arrayidx.i.i1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i1, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2, i32 262144) #9, !srcloc !214
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then9
  %wait.09.i = phi i32 [ 0, %if.then9 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %arrayidx.i.i1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i1, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #9, !srcloc !213
  %and.i3 = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20

if.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %wait.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.then16, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %15, i32 152
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #9, !srcloc !213
  %and.i6 = and i32 %16, -2
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i7 = getelementptr i8, ptr %18, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i7, i32 %and.i6) #9, !srcloc !214
  %lsc = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %19 = ptrtoint ptr %lsc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lsc, align 8
  %dev = getelementptr i8, ptr %ccdc, i32 -41784
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end20:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %arrayidx.i.i1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i1, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 262144) #9, !srcloc !214
  %lsc21 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %24 = ptrtoint ptr %lsc21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %lsc21, align 8
  br label %cleanup

if.else.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i8 = getelementptr i8, ptr %ccdc, i32 -41764
  %25 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i8, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %26, i32 152
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #9, !srcloc !213
  %and.i10 = and i32 %27, -2
  %28 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i8, align 4
  %add.ptr.i2.i11 = getelementptr i8, ptr %29, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11, i32 %and.i10) #9, !srcloc !214
  %lsc23 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %30 = ptrtoint ptr %lsc23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %lsc23, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else.critedge, %if.end20, %if.then16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccdc_handle_stopping(ptr noundef %ccdc, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopping = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 20
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stopping, align 4
  %and = and i32 %1, 3
  %or = or i32 %and, %event
  %2 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %or, label %entry.sw.epilog_crit_edge [
    i32 17, label %sw.bb
    i32 35, label %sw.bb2
    i32 67, label %entry.sw.epilog.sink.split_crit_edge
    i32 19, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %lsc = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %3 = ptrtoint ptr %lsc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lsc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  %code.i = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %6, label %if.then.if.end_crit_edge [
    i32 12298, label %if.then.if.end.i_crit_edge
    i32 12303, label %if.then.if.end.i_crit_edge31
    i32 12295, label %if.then.if.end.i_crit_edge32
    i32 12302, label %if.then.if.end.i_crit_edge33
  ]

if.then.if.end.i_crit_edge33:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.if.end.i_crit_edge32:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.if.end.i_crit_edge31:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then.if.end.i_crit_edge, %if.then.if.end.i_crit_edge31, %if.then.if.end.i_crit_edge32, %if.then.if.end.i_crit_edge33
  %arrayidx.i.i8.i = getelementptr i8, ptr %ccdc, i32 -41764
  %8 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i8.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %9, i32 152
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #9, !srcloc !213
  %and.i10.i = and i32 %10, -2
  %11 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i8.i, align 4
  %add.ptr.i2.i11.i = getelementptr i8, ptr %12, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11.i, i32 %and.i10.i) #9, !srcloc !214
  %13 = ptrtoint ptr %lsc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %lsc, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %arrayidx.i.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !213
  %and.i.i = and i32 %16, -2
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and.i.i) #9, !srcloc !214
  %running.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 21
  %19 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %running.i, align 8
  %20 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %stopping, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %or4 = or i32 %1, 4
  %21 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or4, ptr %stopping, align 4
  %lsc5 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %22 = ptrtoint ptr %lsc5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lsc5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp7 = icmp eq i32 %23, 0
  br i1 %cmp7, label %sw.bb2.sw.epilog.sink.split_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 12, %sw.bb2.sw.epilog.sink.split_crit_edge ], [ 8, %entry.sw.epilog.sink.split_crit_edge ]
  %or14 = or i32 %1, %.sink
  %24 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or14, ptr %stopping, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb2.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %25 = phi i32 [ %or4, %sw.bb2.sw.epilog_crit_edge ], [ %1, %entry.sw.epilog_crit_edge ], [ %or14, %sw.epilog.sink.split ]
  %rval.0 = phi i32 [ 1, %sw.bb2.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.epilog.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %25)
  %cmp17 = icmp eq i32 %25, 15
  br i1 %cmp17, label %if.then18, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %wait = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %sw.epilog.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then18 ], [ %rval.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_lsc_enable(ptr noundef %ccdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lsc1 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11
  %0 = ptrtoint ptr %lsc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lsc1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  %free_queue = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 5
  %prev.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %5, ptr noundef %free_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_add_tail.exit_crit_edge

if.then2.list_add_tail.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_queue, ptr %3, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %3, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then2.list_add_tail.exit_crit_edge
  %10 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %active, align 4
  br label %if.end5

if.end5:                                          ; preds = %list_add_tail.exit, %if.end.if.end5_crit_edge
  %request = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 3
  %11 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request, align 4
  %call = tail call fastcc i32 @__ccdc_lsc_configure(ptr noundef %ccdc, ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end5
  %add.ptr = getelementptr i8, ptr %ccdc, i32 -42568
  tail call void @omap3isp_sbl_disable(ptr noundef %add.ptr, i32 noundef 16) #9
  %13 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %request, align 4
  %free_queue10 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 5
  %prev.i1 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i1, align 4
  %call.i.i2 = tail call zeroext i1 @__list_add_valid(ptr noundef %14, ptr noundef %16, ptr noundef %free_queue10) #9
  br i1 %call.i.i2, label %if.end.i.i4, label %if.then7.list_add_tail.exit5_crit_edge

if.then7.list_add_tail.exit5_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit5

if.end.i.i4:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i1, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_queue10, ptr %14, align 4
  %prev3.i.i3 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i3, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %14, ptr %16, align 4
  br label %list_add_tail.exit5

list_add_tail.exit5:                              ; preds = %if.end.i.i4, %if.then7.list_add_tail.exit5_crit_edge
  %21 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %request, align 4
  br label %done

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %request, align 4
  %24 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %active, align 4
  store ptr null, ptr %request, align 4
  tail call fastcc void @__ccdc_lsc_enable(ptr noundef %ccdc, i32 noundef 1)
  br label %done

done:                                             ; preds = %if.end12, %list_add_tail.exit5
  %free_queue17 = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 5
  %25 = ptrtoint ptr %free_queue17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %free_queue17, align 4
  %cmp.i.not = icmp eq ptr %26, %free_queue17
  br i1 %cmp.i.not, label %done.cleanup_crit_edge, label %if.then20

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %table_work = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i6 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %table_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %done.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ccdc_lsc_configure(ptr nocapture noundef readonly %ccdc, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 1
  %call = tail call fastcc i32 @ccdc_lsc_validate_config(ptr noundef %ccdc, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccdc_lsc_configure.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ccdc_lsc_configure, %return)) #9
          to label %if.then7 [label %return], !srcloc !219

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %ccdc, i32 -41784
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccdc_lsc_configure.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.17) #9
  br label %return

if.end10:                                         ; preds = %if.end
  %arrayidx.i.i = getelementptr i8, ptr %ccdc, i32 -41764
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !213
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %config, align 4
  %conv.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %10, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 %conv.i) #9, !srcloc !214
  %gain_mode_n.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %gain_mode_n.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gain_mode_n.i, align 2
  %conv1.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %gain_mode_m.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %gain_mode_m.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gain_mode_m.i, align 1
  %conv2.i = zext i8 %14 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 12
  %or4.i = or i32 %shl3.i, %shl.i
  %gain_format.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %gain_format.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gain_format.i, align 4
  %conv5.i = zext i8 %16 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 1
  %or7.i = or i32 %or4.i, %shl6.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %18, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %or7.i) #9, !srcloc !214
  %initial_x.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %initial_x.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %initial_x.i, align 2
  %conv8.i = zext i8 %20 to i32
  %initial_y.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 1, i32 9
  %21 = ptrtoint ptr %initial_y.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %initial_y.i, align 1
  %conv12.i = zext i8 %22 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 16
  %or14.i = or i32 %shl13.i, %conv8.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %24, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %or14.i) #9, !srcloc !214
  %dma = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %req, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma, align 4
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %28, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 %26) #9, !srcloc !214
  br label %return

return:                                           ; preds = %if.end14, %if.end10.return_crit_edge, %if.then7, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.return_crit_edge ], [ -22, %if.then7 ], [ -16, %if.end10.return_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccdc_lsc_validate_config(ptr nocapture noundef readonly %ccdc, ptr nocapture noundef readonly %lsc_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gain_mode_m = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, ptr %lsc_cfg, i32 0, i32 2
  %0 = ptrtoint ptr %gain_mode_m to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gain_mode_m, align 1
  %conv = zext i8 %1 to i32
  %gain_mode_n = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, ptr %lsc_cfg, i32 0, i32 1
  %2 = ptrtoint ptr %gain_mode_n to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gain_mode_n, align 2
  %conv1 = zext i8 %3 to i32
  %4 = add i8 %1, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %4)
  %5 = icmp ult i8 %4, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp6 = icmp ult i8 %3, 2
  %or.cond192 = select i1 %5, i1 true, i1 %cmp6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp9 = icmp ugt i8 %3, 6
  %or.cond193 = select i1 %or.cond192, i1 true, i1 %cmp9
  br i1 %or.cond193, label %do.body, label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_validate_config, %cleanup)) #9
          to label %if.then15 [label %cleanup], !srcloc !219

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %ccdc, i32 -41784
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug333, ptr noundef %7, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end16:                                         ; preds = %entry
  %8 = ptrtoint ptr %lsc_cfg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lsc_cfg, align 4
  %10 = and i16 %9, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool18.not = icmp eq i16 %10, 0
  br i1 %tobool18.not, label %if.end39, label %do.body20

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_validate_config, %cleanup)) #9
          to label %if.then34 [label %cleanup], !srcloc !219

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr i8, ptr %ccdc, i32 -41784
  %11 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug334, ptr noundef %12, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end16
  %initial_x = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, ptr %lsc_cfg, i32 0, i32 8
  %13 = ptrtoint ptr %initial_x to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %initial_x, align 2
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool42.not = icmp eq i8 %15, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %if.end39.do.body48_crit_edge

if.end39.do.body48_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

lor.lhs.false43:                                  ; preds = %if.end39
  %initial_y = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, ptr %lsc_cfg, i32 0, i32 9
  %16 = ptrtoint ptr %initial_y to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %initial_y, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool46.not = icmp eq i8 %18, 0
  br i1 %tobool46.not, label %if.end67, label %lor.lhs.false43.do.body48_crit_edge

lor.lhs.false43.do.body48_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

do.body48:                                        ; preds = %lor.lhs.false43.do.body48_crit_edge, %if.end39.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_validate_config, %cleanup)) #9
          to label %if.then62 [label %cleanup], !srcloc !219

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %dev63 = getelementptr i8, ptr %ccdc, i32 -41784
  %19 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev63, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug335, ptr noundef %20, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end67:                                         ; preds = %lor.lhs.false43
  %arrayidx.i = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %height = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %conv70 = zext i8 %14 to i32
  %notmask = shl nsw i32 -1, %conv
  %add = xor i32 %notmask, -1
  %add71 = add i32 %add, %conv70
  %sub = add i32 %add71, %22
  %shr = lshr i32 %sub, %conv
  %conv75 = zext i8 %17 to i32
  %notmask216 = shl nsw i32 -1, %conv1
  %add76 = xor i32 %notmask216, -1
  %add77 = add i32 %add76, %conv75
  %sub78 = add i32 %add77, %24
  %shr79 = lshr i32 %sub78, %conv1
  %add80 = add i32 %shr79, 1
  %add72 = shl i32 %shr, 2
  %mul = add i32 %add72, 4
  %mul81 = mul i32 %mul, %add80
  %size = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, ptr %lsc_cfg, i32 0, i32 10
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul81, i32 %26)
  %cmp82 = icmp ugt i32 %mul81, %26
  br i1 %cmp82, label %do.body85, label %if.end104

do.body85:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_validate_config, %cleanup)) #9
          to label %if.then99 [label %cleanup], !srcloc !219

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %dev100 = getelementptr i8, ptr %ccdc, i32 -41784
  %27 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev100, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug336, ptr noundef %28, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end104:                                        ; preds = %if.end67
  %conv106 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv106)
  %cmp108 = icmp ugt i32 %mul, %conv106
  br i1 %cmp108, label %do.body111, label %if.end130

do.body111:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_validate_config, %cleanup)) #9
          to label %if.then125 [label %cleanup], !srcloc !219

if.then125:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #11
  %dev126 = getelementptr i8, ptr %ccdc, i32 -41784
  %29 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev126, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug337, ptr noundef %30, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end130:                                        ; preds = %if.end104
  %div = udiv i32 %26, %conv106
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add80)
  %cmp134 = icmp ult i32 %div, %add80
  br i1 %cmp134, label %do.body137, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body137:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_validate_config, %cleanup)) #9
          to label %if.then151 [label %cleanup], !srcloc !219

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  %dev152 = getelementptr i8, ptr %ccdc, i32 -41784
  %31 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev152, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug338, ptr noundef %32, ptr noundef nonnull @.str.24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %do.body137, %if.end130.cleanup_crit_edge, %if.then125, %do.body111, %if.then99, %do.body85, %if.then62, %do.body48, %if.then34, %do.body20, %if.then15, %do.body
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %if.then34 ], [ -22, %if.then62 ], [ -22, %if.then99 ], [ -22, %if.then125 ], [ -22, %if.then151 ], [ 0, %if.end130.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body20 ], [ -22, %do.body48 ], [ -22, %do.body85 ], [ -22, %do.body111 ], [ -22, %do.body137 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_pipeline_cancel_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_buffer_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_pipeline_set_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @ccdc_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_ioctl(ptr nocapture noundef readonly %sd, i32 noundef %cmd, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %fpc.i = alloca %struct.omap3isp_ccdc_fpc, align 8
  %fpc_new.i = alloca %struct.ispccdc_fpc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1071622463, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1071622463
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %ioctl_lock = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %ioctl_lock, i32 noundef 0) #9
  %lock.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 18
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %shadow_update.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %shadow_update.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %shadow_update.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arg, align 4
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %flag.i = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flag.i, align 2
  %alaw.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 7
  %8 = trunc i16 %7 to i8
  %9 = ptrtoint ptr %alaw.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %alaw.i, align 8
  %bf.shl.i = shl i8 %8, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %alaw.i, align 8
  %update12.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %update12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %update12.i, align 4
  %or.i = or i32 %11, 1
  store i32 %or.i, ptr %update12.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arg, align 4
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool16.not.i = icmp eq i16 %14, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end34.i_crit_edge, label %if.then17.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flag18.i = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %flag18.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flag18.i, align 2
  %lpf.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 7
  %17 = trunc i16 %16 to i8
  %18 = ptrtoint ptr %lpf.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load26.i = load i8, ptr %lpf.i, align 8
  %19 = shl i8 %17, 5
  %bf.shl28.i = and i8 %19, 64
  %bf.clear29.i = and i8 %bf.load26.i, -65
  %bf.set30.i = or i8 %bf.shl28.i, %bf.clear29.i
  store i8 %bf.set30.i, ptr %lpf.i, align 8
  %update32.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %update32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %update32.i, align 4
  %or33.i = or i32 %21, 2
  store i32 %or33.i, ptr %update32.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then17.i, %if.end.i.if.end34.i_crit_edge
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arg, align 4
  %24 = and i16 %23, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool38.not.i = icmp eq i16 %24, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.end61.i_crit_edge, label %if.then39.i

if.end34.i.if.end61.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.then39.i:                                      ; preds = %if.end34.i
  %clamp.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 9
  %bclamp.i = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %arg, i32 0, i32 3
  %25 = ptrtoint ptr %bclamp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bclamp.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then39.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then39.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then39.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 6, i32 -1226833920) #13, !srcloc !221
  %asmresult.i.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !218

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %clamp.i, i32 noundef 6) #9
  %28 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !222
  %and.i.i.i.i.i = and i32 %30, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %clamp.i, ptr noundef %26, i32 noundef 6) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end44.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !218

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then39.i.if.then11.i.i.i_crit_edge
  %res.0.i.i259.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 6, %if.then39.i.if.then11.i.i.i_crit_edge ], [ 6, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 6, %res.0.i.i259.i
  %add.ptr.i.i.i = getelementptr i8, ptr %clamp.i, i32 %sub.i.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i259.i)
  %32 = ptrtoint ptr %shadow_update.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %shadow_update.i, align 8
  br label %ccdc_config.exit

if.end44.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flag45.i = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %arg, i32 0, i32 1
  %33 = ptrtoint ptr %flag45.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flag45.i, align 2
  %obclamp.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 7
  %35 = trunc i16 %34 to i8
  %36 = ptrtoint ptr %obclamp.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load53.i = load i8, ptr %obclamp.i, align 8
  %37 = shl i8 %35, 3
  %bf.shl55.i = and i8 %37, 32
  %bf.clear56.i = and i8 %bf.load53.i, -33
  %bf.set57.i = or i8 %bf.shl55.i, %bf.clear56.i
  store i8 %bf.set57.i, ptr %obclamp.i, align 8
  %update59.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %update59.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %update59.i, align 4
  %or60.i = or i32 %39, 4
  store i32 %or60.i, ptr %update59.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end44.i, %if.end34.i.if.end61.i_crit_edge
  %40 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arg, align 4
  %42 = and i16 %41, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool65.not.i = icmp eq i16 %42, 0
  br i1 %tobool65.not.i, label %if.end61.i.if.end75.i_crit_edge, label %if.then66.i

if.end61.i.if.end75.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.i

if.then66.i:                                      ; preds = %if.end61.i
  %blcomp.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 8
  %blcomp67.i = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %arg, i32 0, i32 4
  %43 = ptrtoint ptr %blcomp67.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %blcomp67.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #9
  %call.i.i191.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i191.i, label %if.then66.i.if.then11.i.i207.i_crit_edge, label %land.lhs.true.i.i194.i

if.then66.i.if.then11.i.i207.i_crit_edge:         ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i207.i

land.lhs.true.i.i194.i:                           ; preds = %if.then66.i
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 4, i32 -1226833920) #13, !srcloc !221
  %asmresult.i.i192.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i192.i)
  %cmp.i6.i193.i = icmp eq i32 %asmresult.i.i192.i, 0
  br i1 %cmp.i6.i193.i, label %if.end.i.i204.i, label %land.lhs.true.i.i194.i.if.then11.i.i207.i_crit_edge, !prof !218

land.lhs.true.i.i194.i.if.then11.i.i207.i_crit_edge: ; preds = %land.lhs.true.i.i194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i207.i

if.end.i.i204.i:                                  ; preds = %land.lhs.true.i.i194.i
  %call.i.i.i195.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %blcomp.i, i32 noundef 4) #9
  %46 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i.i196.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i196.i to ptr
  %cpu_domain.i.i.i.i.i197.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i197.i) #6, !srcloc !222
  %and.i.i.i.i198.i = and i32 %48, -13
  %or.i.i.i.i199.i = or i32 %and.i.i.i.i198.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i199.i) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %call1.i.i.i200.i = tail call i32 @arm_copy_from_user(ptr noundef %blcomp.i, ptr noundef %44, i32 noundef 4) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i200.i)
  %tobool4.not.i.i203.i = icmp eq i32 %call1.i.i.i200.i, 0
  br i1 %tobool4.not.i.i203.i, label %if.end72.i, label %if.end.i.i204.i.if.then11.i.i207.i_crit_edge, !prof !218

if.end.i.i204.i.if.then11.i.i207.i_crit_edge:     ; preds = %if.end.i.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i207.i

if.then11.i.i207.i:                               ; preds = %if.end.i.i204.i.if.then11.i.i207.i_crit_edge, %land.lhs.true.i.i194.i.if.then11.i.i207.i_crit_edge, %if.then66.i.if.then11.i.i207.i_crit_edge
  %res.0.i.i202264.i = phi i32 [ %call1.i.i.i200.i, %if.end.i.i204.i.if.then11.i.i207.i_crit_edge ], [ 4, %if.then66.i.if.then11.i.i207.i_crit_edge ], [ 4, %land.lhs.true.i.i194.i.if.then11.i.i207.i_crit_edge ]
  %sub.i.i205.i = sub i32 4, %res.0.i.i202264.i
  %add.ptr.i.i206.i = getelementptr i8, ptr %blcomp.i, i32 %sub.i.i205.i
  %49 = call ptr @memset(ptr %add.ptr.i.i206.i, i32 0, i32 %res.0.i.i202264.i)
  %50 = ptrtoint ptr %shadow_update.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %shadow_update.i, align 8
  br label %ccdc_config.exit

if.end72.i:                                       ; preds = %if.end.i.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  %update73.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %update73.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %update73.i, align 4
  %or74.i = or i32 %52, 8
  store i32 %or74.i, ptr %update73.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end72.i, %if.end61.i.if.end75.i_crit_edge
  %53 = ptrtoint ptr %shadow_update.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %shadow_update.i, align 8
  %54 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arg, align 4
  %56 = and i16 %55, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool80.not.i = icmp eq i16 %56, 0
  br i1 %tobool80.not.i, label %if.end75.i.if.end144.i_crit_edge, label %if.then81.i

if.end75.i.if.end144.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144.i

if.then81.i:                                      ; preds = %if.end75.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fpc.i) #9
  %57 = ptrtoint ptr %fpc.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 -1, ptr %fpc.i, align 8, !annotation !225
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fpc_new.i) #9
  %58 = ptrtoint ptr %fpc_new.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %fpc_new.i, align 4, !annotation !225
  %59 = getelementptr inbounds %struct.ispccdc_fpc, ptr %fpc_new.i, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %59, align 4, !annotation !225
  %61 = getelementptr inbounds %struct.ispccdc_fpc, ptr %fpc_new.i, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %61, align 4, !annotation !225
  %state.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 17
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp82.not.i = icmp eq i32 %64, 0
  br i1 %cmp82.not.i, label %if.end85.i, label %if.then81.i.cleanup.thread.i_crit_edge

if.then81.i.cleanup.thread.i_crit_edge:           ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end85.i:                                       ; preds = %if.then81.i
  %flag86.i = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %arg, i32 0, i32 1
  %65 = ptrtoint ptr %flag86.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %flag86.i, align 2
  %fpc_en.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 7
  %67 = trunc i16 %66 to i8
  %68 = and i8 %67, 16
  %69 = ptrtoint ptr %fpc_en.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load94.i = load i8, ptr %fpc_en.i, align 8
  %bf.clear97.i = and i8 %bf.load94.i, -17
  %bf.set98.i = or i8 %bf.clear97.i, %68
  store i8 %bf.set98.i, ptr %fpc_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool103.not.i = icmp eq i8 %68, 0
  br i1 %tobool103.not.i, label %if.end85.i.if.end130.i_crit_edge, label %if.then104.i

if.end85.i.if.end130.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i

if.then104.i:                                     ; preds = %if.end85.i
  %fpc105.i = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %arg, i32 0, i32 5
  %70 = ptrtoint ptr %fpc105.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fpc105.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #9
  %call.i.i214.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i214.i, label %if.then104.i.if.then11.i.i230.i_crit_edge, label %land.lhs.true.i.i217.i

if.then104.i.if.then11.i.i230.i_crit_edge:        ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i230.i

land.lhs.true.i.i217.i:                           ; preds = %if.then104.i
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %71, i32 8, i32 -1226833920) #13, !srcloc !221
  %asmresult.i.i215.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i215.i)
  %cmp.i6.i216.i = icmp eq i32 %asmresult.i.i215.i, 0
  br i1 %cmp.i6.i216.i, label %if.end.i.i227.i, label %land.lhs.true.i.i217.i.if.then11.i.i230.i_crit_edge, !prof !218

land.lhs.true.i.i217.i.if.then11.i.i230.i_crit_edge: ; preds = %land.lhs.true.i.i217.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i230.i

if.end.i.i227.i:                                  ; preds = %land.lhs.true.i.i217.i
  %call.i.i.i218.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fpc.i, i32 noundef 8) #9
  %73 = call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i.i219.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i219.i to ptr
  %cpu_domain.i.i.i.i.i220.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i220.i) #6, !srcloc !222
  %and.i.i.i.i221.i = and i32 %75, -13
  %or.i.i.i.i222.i = or i32 %and.i.i.i.i221.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i222.i) #9, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %call1.i.i.i223.i = call i32 @arm_copy_from_user(ptr noundef nonnull %fpc.i, ptr noundef %71, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #9, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i223.i)
  %tobool4.not.i.i226.i = icmp eq i32 %call1.i.i.i223.i, 0
  br i1 %tobool4.not.i.i226.i, label %if.end109.i, label %if.end.i.i227.i.if.then11.i.i230.i_crit_edge, !prof !218

if.end.i.i227.i.if.then11.i.i230.i_crit_edge:     ; preds = %if.end.i.i227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i230.i

if.then11.i.i230.i:                               ; preds = %if.end.i.i227.i.if.then11.i.i230.i_crit_edge, %land.lhs.true.i.i217.i.if.then11.i.i230.i_crit_edge, %if.then104.i.if.then11.i.i230.i_crit_edge
  %res.0.i.i225269.i = phi i32 [ %call1.i.i.i223.i, %if.end.i.i227.i.if.then11.i.i230.i_crit_edge ], [ 8, %if.then104.i.if.then11.i.i230.i_crit_edge ], [ 8, %land.lhs.true.i.i217.i.if.then11.i.i230.i_crit_edge ]
  %sub.i.i228.i = sub i32 8, %res.0.i.i225269.i
  %add.ptr.i.i229.i = getelementptr i8, ptr %fpc.i, i32 %sub.i.i228.i
  %76 = call ptr @memset(ptr %add.ptr.i.i229.i, i32 0, i32 %res.0.i.i225269.i)
  br label %cleanup.thread.i

if.end109.i:                                      ; preds = %if.end.i.i227.i
  %77 = ptrtoint ptr %fpc.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %fpc.i, align 8
  %conv110.i = zext i16 %78 to i32
  %mul.i = shl nuw nsw i32 %conv110.i, 2
  %79 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv110.i, ptr %61, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -41784
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 8
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %81, i32 noundef %mul.i, ptr noundef %59, i32 noundef 3264, i32 noundef 0) #9
  %82 = ptrtoint ptr %fpc_new.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i, ptr %fpc_new.i, align 4
  %cmp116.i = icmp eq ptr %call.i.i, null
  br i1 %cmp116.i, label %if.end109.i.cleanup.thread.i_crit_edge, label %if.end119.i

if.end109.i.cleanup.thread.i_crit_edge:           ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end119.i:                                      ; preds = %if.end109.i
  %fpcaddr.i = getelementptr inbounds %struct.omap3isp_ccdc_fpc, ptr %fpc.i, i32 0, i32 1
  %83 = ptrtoint ptr %fpcaddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fpcaddr.i, align 4
  %85 = inttoptr i32 %84 to ptr
  call void @__check_object_size(ptr noundef nonnull %call.i.i, i32 noundef %mul.i, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #9
  %call.i.i237.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i237.i, label %if.end119.i.if.end.i.i250.i_crit_edge, label %land.lhs.true.i.i240.i

if.end119.i.if.end.i.i250.i_crit_edge:            ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i250.i

land.lhs.true.i.i240.i:                           ; preds = %if.end119.i
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %85, i32 %mul.i, i32 -1226833920) #13, !srcloc !221
  %asmresult.i.i238.i = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i238.i)
  %cmp.i6.i239.i = icmp eq i32 %asmresult.i.i238.i, 0
  br i1 %cmp.i6.i239.i, label %if.then.i7.i247.i, label %land.lhs.true.i.i240.i.if.end.i.i250.i_crit_edge, !prof !218

land.lhs.true.i.i240.i.if.end.i.i250.i_crit_edge: ; preds = %land.lhs.true.i.i240.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i250.i

if.then.i7.i247.i:                                ; preds = %land.lhs.true.i.i240.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i241.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef %mul.i) #9
  %87 = call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i.i242.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i.i242.i to ptr
  %cpu_domain.i.i.i.i.i243.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 4
  %89 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i243.i) #6, !srcloc !222
  %and.i.i.i.i244.i = and i32 %89, -13
  %or.i.i.i.i245.i = or i32 %and.i.i.i.i244.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i245.i) #9, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %call1.i.i.i246.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i, ptr noundef %85, i32 noundef %mul.i) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #9, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  br label %if.end.i.i250.i

if.end.i.i250.i:                                  ; preds = %if.then.i7.i247.i, %land.lhs.true.i.i240.i.if.end.i.i250.i_crit_edge, %if.end119.i.if.end.i.i250.i_crit_edge
  %res.0.i.i248.i = phi i32 [ %mul.i, %if.end119.i.if.end.i.i250.i_crit_edge ], [ %call1.i.i.i246.i, %if.then.i7.i247.i ], [ %mul.i, %land.lhs.true.i.i240.i.if.end.i.i250.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i248.i)
  %tobool4.not.i.i249.i = icmp eq i32 %res.0.i.i248.i, 0
  br i1 %tobool4.not.i.i249.i, label %if.end127.i, label %if.then11.i.i253.i, !prof !218

if.then11.i.i253.i:                               ; preds = %if.end.i.i250.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i251.i = sub i32 %mul.i, %res.0.i.i248.i
  %add.ptr.i.i252.i = getelementptr i8, ptr %call.i.i, i32 %sub.i.i251.i
  %90 = call ptr @memset(ptr %add.ptr.i.i252.i, i32 0, i32 %res.0.i.i248.i)
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 8
  %93 = ptrtoint ptr %fpc_new.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fpc_new.i, align 4
  %95 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %59, align 4
  call void @dma_free_attrs(ptr noundef %92, i32 noundef %mul.i, ptr noundef %94, i32 noundef %96, i32 noundef 0) #9
  br label %cleanup.thread.i

if.end127.i:                                      ; preds = %if.end.i.i250.i
  call void @__sanitizer_cov_trace_pc() #11
  %fpc128.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 10
  %97 = ptrtoint ptr %fpc128.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %fpc_old.sroa.0.0.copyload.i = load ptr, ptr %fpc128.i, align 4
  %fpc_old.sroa.6.0.fpc128.sroa_idx.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %fpc_old.sroa.6.0.fpc128.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %fpc_old.sroa.6.0.copyload.i = load i32, ptr %fpc_old.sroa.6.0.fpc128.sroa_idx.i, align 4
  %fpc_old.sroa.7.0.fpc128.sroa_idx.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 10, i32 2
  %99 = ptrtoint ptr %fpc_old.sroa.7.0.fpc128.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %fpc_old.sroa.7.0.copyload.i = load i32, ptr %fpc_old.sroa.7.0.fpc128.sroa_idx.i, align 4
  %100 = call ptr @memcpy(ptr %fpc128.i, ptr %fpc_new.i, i32 12)
  %phi.bo.i = shl i32 %fpc_old.sroa.7.0.copyload.i, 2
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.end127.i, %if.end85.i.if.end130.i_crit_edge
  %fpc_old.sroa.0.0.i = phi ptr [ %fpc_old.sroa.0.0.copyload.i, %if.end127.i ], [ null, %if.end85.i.if.end130.i_crit_edge ]
  %fpc_old.sroa.6.0.i = phi i32 [ %fpc_old.sroa.6.0.copyload.i, %if.end127.i ], [ 0, %if.end85.i.if.end130.i_crit_edge ]
  %fpc_old.sroa.7.0.i = phi i32 [ %phi.bo.i, %if.end127.i ], [ 0, %if.end85.i.if.end130.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i8, ptr %1, i32 -41764
  %101 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %102, i32 64
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !213
  %and.i.i.i = and i32 %103, -32769
  %104 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %105, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %and.i.i.i) #9, !srcloc !214
  %106 = ptrtoint ptr %fpc_en.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i.i = load i8, ptr %fpc_en.i, align 8
  %107 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i.i = icmp eq i8 %107, 0
  br i1 %tobool.not.i.i, label %if.end130.i.ccdc_configure_fpc.exit.i_crit_edge, label %if.end.i.i

if.end130.i.ccdc_configure_fpc.exit.i_crit_edge:  ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_configure_fpc.exit.i

if.end.i.i:                                       ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 10, i32 1
  %108 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma.i.i, align 4
  %110 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i256.i = getelementptr i8, ptr %111, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i256.i, i32 %109) #9, !srcloc !214
  %fpnum.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 10, i32 2
  %112 = ptrtoint ptr %fpnum.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fpnum.i.i, align 4
  %114 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %115, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 %113) #9, !srcloc !214
  %116 = ptrtoint ptr %fpnum.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fpnum.i.i, align 4
  %or.i.i = or i32 %117, 32768
  %118 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %119, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %or.i.i) #9, !srcloc !214
  br label %ccdc_configure_fpc.exit.i

ccdc_configure_fpc.exit.i:                        ; preds = %if.end.i.i, %if.end130.i.ccdc_configure_fpc.exit.i_crit_edge
  %cmp132.not.i = icmp eq ptr %fpc_old.sroa.0.0.i, null
  br i1 %cmp132.not.i, label %ccdc_configure_fpc.exit.i.cleanup.i_crit_edge, label %if.then134.i

ccdc_configure_fpc.exit.i.cleanup.i_crit_edge:    ; preds = %ccdc_configure_fpc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then134.i:                                     ; preds = %ccdc_configure_fpc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev135.i = getelementptr i8, ptr %1, i32 -41784
  %120 = ptrtoint ptr %dev135.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev135.i, align 8
  call void @dma_free_attrs(ptr noundef %121, i32 noundef %fpc_old.sroa.7.0.i, ptr noundef nonnull %fpc_old.sroa.0.0.i, i32 noundef %fpc_old.sroa.6.0.i, i32 noundef 0) #9
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then11.i.i253.i, %if.end109.i.cleanup.thread.i_crit_edge, %if.then11.i.i230.i, %if.then81.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ -12, %if.end109.i.cleanup.thread.i_crit_edge ], [ -16, %if.then81.i.cleanup.thread.i_crit_edge ], [ -14, %if.then11.i.i253.i ], [ -14, %if.then11.i.i230.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fpc_new.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fpc.i) #9
  br label %ccdc_config.exit

cleanup.i:                                        ; preds = %if.then134.i, %ccdc_configure_fpc.exit.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fpc_new.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fpc.i) #9
  br label %if.end144.i

if.end144.i:                                      ; preds = %cleanup.i, %if.end75.i.if.end144.i_crit_edge
  %call145.i = call fastcc i32 @ccdc_lsc_config(ptr noundef %1, ptr noundef %arg) #9
  br label %ccdc_config.exit

ccdc_config.exit:                                 ; preds = %if.end144.i, %cleanup.thread.i, %if.then11.i.i207.i, %if.then11.i.i.i
  %retval.1.i = phi i32 [ -14, %if.then11.i.i.i ], [ -14, %if.then11.i.i207.i ], [ %call145.i, %if.end144.i ], [ %retval.0.ph.i, %cleanup.thread.i ]
  call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %ccdc_config.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %ccdc_config.exit ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_subscribe_event(ptr nocapture noundef readnone %sd, ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 16, ptr noundef null) #9
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_unsubscribe_event(ptr nocapture noundef readnone %sd, ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_event_unsubscribe(ptr noundef %fh, ptr noundef %sub) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccdc_lsc_config(ptr noundef %ccdc, ptr nocapture noundef readonly %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %config, align 4
  %2 = trunc i16 %1 to i9
  %trunc = and i9 %2, -128
  %3 = zext i9 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i9 %trunc, label %do.body [
    i9 0, label %entry.cleanup_crit_edge
    i9 -128, label %if.end16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_lsc_config.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_lsc_config, %cleanup)) #9
          to label %if.then11 [label %cleanup], !srcloc !219

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %ccdc, i32 -41784
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_lsc_config.__UNIQUE_ID_ddebug340, ptr noundef %5, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 52) #14
  %cmp18 = icmp eq ptr %call7.i.i, null
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %flag = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %config, i32 0, i32 1
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flag, align 2
  %9 = and i16 %8, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool24.not = icmp eq i16 %9, 0
  br i1 %tobool24.not, label %if.end21.do.body76_crit_edge, label %if.then25

if.end21.do.body76_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.then25:                                        ; preds = %if.end21
  %config26 = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 1
  %lsc_cfg = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %config, i32 0, i32 6
  %10 = ptrtoint ptr %lsc_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lsc_cfg, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then25.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then25.if.then11.i.i_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then25
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 20, i32 -1226833920) #13, !srcloc !221
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !218

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %config26, i32 noundef 20) #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !222
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %config26, ptr noundef %11, i32 noundef 20) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end30, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !218

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then25.if.then11.i.i_crit_edge
  %res.0.i.i173 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 20, %if.then25.if.then11.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 20, %res.0.i.i173
  %add.ptr.i.i = getelementptr i8, ptr %config26, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i173)
  br label %if.end.i

if.end30:                                         ; preds = %if.end.i.i
  %enable = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enable, align 4
  %dev31 = getelementptr i8, ptr %ccdc, i32 -41784
  %18 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev31, align 8
  %size = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 8
  %table = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 3
  %dma = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 3, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %19, i32 noundef %21, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #9
  %22 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %table, align 8
  %cmp37 = icmp eq ptr %call.i, null
  br i1 %cmp37, label %if.end30.if.end.i_crit_edge, label %if.end40

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end40:                                         ; preds = %if.end30
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 8
  %sgt = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma, align 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 8
  %call49 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %24, ptr noundef %sgt, ptr noundef nonnull %call.i, i32 noundef %26, i32 noundef %28, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end40.if.end.i_crit_edge, label %if.end53

if.end40.if.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end53:                                         ; preds = %if.end40
  %29 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev31, align 8
  %31 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sgt, align 8
  %nents = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 3, i32 2, i32 1
  %33 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nents, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 1) #9
  %35 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %table, align 8
  %lsc = getelementptr inbounds %struct.omap3isp_ccdc_update_config, ptr %config, i32 0, i32 8
  %37 = ptrtoint ptr %lsc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lsc, align 4
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp9.i.i = icmp slt i32 %40, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end53
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.end.i_crit_edge, label %if.then27.i.i, !prof !218

land.rhs16.i.i.if.end.i_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.then.i.i.i:                                    ; preds = %if.end53
  tail call void @__check_object_size(ptr noundef %36, i32 noundef %40, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #9
  %call.i.i148 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i148, label %if.then.i.i.i.if.end.i.i161_crit_edge, label %land.lhs.true.i.i151

if.then.i.i.i.if.end.i.i161_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i161

land.lhs.true.i.i151:                             ; preds = %if.then.i.i.i
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 %40, i32 -1226833920) #13, !srcloc !221
  %asmresult.i.i149 = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i149)
  %cmp.i6.i150 = icmp eq i32 %asmresult.i.i149, 0
  br i1 %cmp.i6.i150, label %if.then.i7.i158, label %land.lhs.true.i.i151.if.end.i.i161_crit_edge, !prof !218

land.lhs.true.i.i151.if.end.i.i161_crit_edge:     ; preds = %land.lhs.true.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i161

if.then.i7.i158:                                  ; preds = %land.lhs.true.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef %36, i32 noundef %40) #9
  %42 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i.i153 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i153 to ptr
  %cpu_domain.i.i.i.i.i154 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i154) #6, !srcloc !222
  %and.i.i.i.i155 = and i32 %44, -13
  %or.i.i.i.i156 = or i32 %and.i.i.i.i155, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i156) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %call1.i.i.i157 = tail call i32 @arm_copy_from_user(ptr noundef %36, ptr noundef %38, i32 noundef %40) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #9, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  br label %if.end.i.i161

if.end.i.i161:                                    ; preds = %if.then.i7.i158, %land.lhs.true.i.i151.if.end.i.i161_crit_edge, %if.then.i.i.i.if.end.i.i161_crit_edge
  %res.0.i.i159 = phi i32 [ %40, %if.then.i.i.i.if.end.i.i161_crit_edge ], [ %call1.i.i.i157, %if.then.i7.i158 ], [ %40, %land.lhs.true.i.i151.if.end.i.i161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i159)
  %tobool4.not.i.i160 = icmp eq i32 %res.0.i.i159, 0
  br i1 %tobool4.not.i.i160, label %if.end66, label %if.then11.i.i164, !prof !218

if.then11.i.i164:                                 ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i162 = sub i32 %40, %res.0.i.i159
  %add.ptr.i.i163 = getelementptr i8, ptr %36, i32 %sub.i.i162
  %45 = call ptr @memset(ptr %add.ptr.i.i163, i32 0, i32 %res.0.i.i159)
  br label %if.end.i

if.end66:                                         ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev31, align 8
  %48 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sgt, align 8
  %50 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nents, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %47, ptr noundef %49, i32 noundef %51, i32 noundef 1) #9
  br label %do.body76

do.body76:                                        ; preds = %if.end66, %if.end21.do.body76_crit_edge
  %req_lock = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 2
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #9
  %request = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 3
  %52 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %request, align 4
  %tobool88.not = icmp eq ptr %53, null
  br i1 %tobool88.not, label %do.body76.done_crit_edge, label %if.then89

do.body76.done_crit_edge:                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then89:                                        ; preds = %do.body76
  %free_queue = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 5
  %prev.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 5, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i, align 4
  %call.i.i167 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %53, ptr noundef %55, ptr noundef %free_queue) #9
  br i1 %call.i.i167, label %if.end.i.i168, label %if.then89.list_add_tail.exit_crit_edge

if.then89.list_add_tail.exit_crit_edge:           ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i168:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %free_queue, ptr %53, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %53, ptr %55, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i168, %if.then89.list_add_tail.exit_crit_edge
  %table_work = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 11, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %60 = load ptr, ptr @system_wq, align 4
  %call.i.i169 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %60, ptr noundef %table_work) #9
  br label %done

done:                                             ; preds = %list_add_tail.exit, %do.body76.done_crit_edge
  %61 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %request, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call82) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then11.i.i164, %if.then27.i.i, %land.rhs16.i.i.if.end.i_crit_edge, %if.end40.if.end.i_crit_edge, %if.end30.if.end.i_crit_edge, %if.then11.i.i
  %ret.0.ph = phi i32 [ -12, %if.end30.if.end.i_crit_edge ], [ %call49, %if.end40.if.end.i_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i164 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end.i_crit_edge ]
  %table.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %table.i, align 8
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %if.end.i.ccdc_lsc_free_request.exit_crit_edge, label %if.then1.i

if.end.i.ccdc_lsc_free_request.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_lsc_free_request.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sgt.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @sg_free_table(ptr noundef %sgt.i) #9
  %dev.i = getelementptr i8, ptr %ccdc, i32 -41784
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 1, i32 10
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i, align 8
  %68 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %table.i, align 8
  %dma.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %call7.i.i, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %65, i32 noundef %67, ptr noundef %69, i32 noundef %71, i32 noundef 0) #9
  br label %ccdc_lsc_free_request.exit

ccdc_lsc_free_request.exit:                       ; preds = %if.then1.i, %if.end.i.ccdc_lsc_free_request.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ccdc_lsc_free_request.exit, %done, %if.end16.cleanup_crit_edge, %if.then11, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then11 ], [ -12, %if.end16.cleanup_crit_edge ], [ %ret.0.ph, %ccdc_lsc_free_request.exit ], [ 0, %done ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_set_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %fmt_src.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -42568
  %state = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp1 = icmp eq i32 %enable, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @omap3isp_subclk_enable(ptr noundef %add.ptr, i32 noundef 1) #9
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 -41764
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 84
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !213
  %or.i = or i32 %6, 32768
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %8, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #9, !srcloc !214
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt_src.i) #9
  %9 = call ptr @memset(ptr %fmt_src.i, i32 255, i32 88)
  %bt656.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %bt656.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bt656.i, align 4
  %fields.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %fields.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fields.i, align 8
  %pads.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pads.i) #9
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %input.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pipe.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe.i, align 4
  %external.i = getelementptr inbounds %struct.isp_pipeline, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %external.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %external.i, align 4
  %asd.i = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %asd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asd.i, align 4
  %bus12.i = getelementptr inbounds %struct.isp_async_subdev, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %bus12.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %bus12.i, align 4
  %23 = trunc i16 %bf.load.i to i8
  %24 = lshr i8 %23, 7
  %25 = ptrtoint ptr %bt656.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %bt656.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %parcfg.0.i = phi ptr [ %bus12.i, %if.then.i ], [ null, %if.end.if.end.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %27 to i32
  %pad16.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 1
  %28 = ptrtoint ptr %pad16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %pad16.i, align 4
  %29 = ptrtoint ptr %fmt_src.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %fmt_src.i, align 4
  br i1 %tobool.not.i, label %if.end.i.if.end46.i_crit_edge, label %if.else.i

if.end.i.if.end46.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.else.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %pad19.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %pad19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pad19.i, align 4
  %tobool20.not.i = icmp eq ptr %33, null
  br i1 %tobool20.not.i, label %if.else.i.if.end46.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end46.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_fmt.i, align 4
  %tobool23.not.i = icmp eq ptr %35, null
  br i1 %tobool23.not.i, label %land.lhs.true.i.if.end46.i_crit_edge, label %if.else25.i

land.lhs.true.i.if.end46.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.else25.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool26.not.i = icmp eq ptr %36, null
  br i1 %tobool26.not.i, label %if.else25.i.if.else33.i_crit_edge, label %land.lhs.true27.i

if.else25.i.if.else33.i_crit_edge:                ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else33.i

land.lhs.true27.i:                                ; preds = %if.else25.i
  %get_fmt28.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %get_fmt28.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_fmt28.i, align 4
  %tobool29.not.i = icmp eq ptr %38, null
  br i1 %tobool29.not.i, label %land.lhs.true27.i.if.else33.i_crit_edge, label %land.lhs.true27.i.if.end40.i_crit_edge

land.lhs.true27.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.lhs.true27.i.if.else33.i_crit_edge:          ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else33.i

if.else33.i:                                      ; preds = %land.lhs.true27.i.if.else33.i_crit_edge, %if.else25.i.if.else33.i_crit_edge
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else33.i, %land.lhs.true27.i.if.end40.i_crit_edge
  %.sink.i = phi ptr [ %35, %if.else33.i ], [ %38, %land.lhs.true27.i.if.end40.i_crit_edge ]
  %call37.i = call i32 %.sink.i(ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %fmt_src.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool42.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end40.i.if.end46.i_crit_edge

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %code.i, align 4
  %call45.i = call ptr @omap3isp_video_format_info(i32 noundef %40) #9
  %width.i = getelementptr inbounds %struct.isp_format_info, ptr %call45.i, i32 0, i32 5
  %41 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end46.i_crit_edge, %land.lhs.true.i.if.end46.i_crit_edge, %if.else.i.if.end46.i_crit_edge, %if.end.i.if.end46.i_crit_edge
  %depth_in.0.i = phi i32 [ 0, %if.end40.i.if.end46.i_crit_edge ], [ %42, %if.then43.i ], [ 0, %if.end.i.if.end46.i_crit_edge ], [ 0, %land.lhs.true.i.if.end46.i_crit_edge ], [ 0, %if.else.i.if.end46.i_crit_edge ]
  %code47.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 0, i32 2
  %43 = ptrtoint ptr %code47.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %code47.i, align 4
  %call48.i = call ptr @omap3isp_video_format_info(i32 noundef %44) #9
  %width49.i = getelementptr inbounds %struct.isp_format_info, ptr %call48.i, i32 0, i32 5
  %45 = ptrtoint ptr %width49.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width49.i, align 4
  %sub.i = sub i32 %depth_in.0.i, %46
  %47 = ptrtoint ptr %bt656.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bt656.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool51.not.i = icmp eq i8 %48, 0
  br i1 %tobool51.not.i, label %if.else53.i, label %if.end46.i.if.end66.i_crit_edge

if.end46.i.if.end66.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.else53.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %50)
  %switch.selectcmp.i = icmp eq i32 %50, 8198
  %switch.select.i = select i1 %switch.selectcmp.i, i32 12, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %50)
  %switch.selectcmp300.i = icmp eq i32 %50, 8200
  %switch.select301.i = select i1 %switch.selectcmp300.i, i32 8, i32 %switch.select.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else53.i, %if.end46.i.if.end66.i_crit_edge
  %bridge.0.i = phi i32 [ 0, %if.end46.i.if.end66.i_crit_edge ], [ %switch.select301.i, %if.else53.i ]
  %51 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %input.i, align 4
  call void @omap3isp_configure_bridge(ptr noundef %add.ptr, i32 noundef %52, ptr noundef %parcfg.0.i, i32 noundef %sub.i, i32 noundef %bridge.0.i) #9
  %53 = ptrtoint ptr %code47.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %code47.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %54, label %if.end66.i.if.end5.i.i_crit_edge [
    i32 8200, label %if.end66.i.if.then.i.i_crit_edge
    i32 8198, label %if.end66.i.if.then.i.i_crit_edge96
  ]

if.end66.i.if.then.i.i_crit_edge96:               ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end66.i.if.then.i.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end66.i.if.end5.i.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end66.i.if.then.i.i_crit_edge, %if.end66.i.if.then.i.i_crit_edge96
  %56 = ptrtoint ptr %bt656.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bt656.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  %..i.i = select i1 %tobool.not.i.i, i32 69632, i32 73728
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then.i.i, %if.end66.i.if.end5.i.i_crit_edge
  %syn_mode.0.i.i = phi i32 [ 65536, %if.end66.i.if.end5.i.i_crit_edge ], [ %..i.i, %if.then.i.i ]
  %58 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %46, label %if.end5.i.i.sw.epilog.i.i_crit_edge [
    i32 8, label %sw.bb.i.i
    i32 10, label %sw.bb7.i.i
    i32 11, label %sw.bb9.i.i
    i32 12, label %sw.bb11.i.i
  ]

if.end5.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or6.i.i = or i32 %syn_mode.0.i.i, 1792
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or8.i.i = or i32 %syn_mode.0.i.i, 1536
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or10.i.i = or i32 %syn_mode.0.i.i, 1280
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or12.i.i = or i32 %syn_mode.0.i.i, 1024
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb11.i.i, %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb.i.i, %if.end5.i.i.sw.epilog.i.i_crit_edge
  %syn_mode.1.i.i = phi i32 [ %syn_mode.0.i.i, %if.end5.i.i.sw.epilog.i.i_crit_edge ], [ %or12.i.i, %sw.bb11.i.i ], [ %or10.i.i, %sw.bb9.i.i ], [ %or8.i.i, %sw.bb7.i.i ], [ %or6.i.i, %sw.bb.i.i ]
  %tobool13.not.i.i = icmp eq ptr %parcfg.0.i, null
  br i1 %tobool13.not.i.i, label %sw.epilog.i.i.lor.lhs.false35.i.i_crit_edge, label %land.lhs.true29.i.i

sw.epilog.i.i.lor.lhs.false35.i.i_crit_edge:      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false35.i.i

land.lhs.true29.i.i:                              ; preds = %sw.epilog.i.i
  %59 = ptrtoint ptr %parcfg.0.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i.i = load i16, ptr %parcfg.0.i, align 4
  %60 = lshr i16 %bf.load.i.i, 2
  %61 = and i16 %60, 64
  %62 = zext i16 %61 to i32
  %63 = or i32 %syn_mode.1.i.i, %62
  %64 = lshr i16 %bf.load.i.i, 8
  %65 = and i16 %64, 8
  %66 = zext i16 %65 to i32
  %67 = or i32 %63, %66
  %68 = and i16 %bf.load.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool34.not.i.i = icmp eq i16 %68, 0
  br i1 %tobool34.not.i.i, label %land.lhs.true29.i.i.lor.lhs.false35.i.i_crit_edge, label %land.lhs.true29.i.i.if.then38.i.i_crit_edge

land.lhs.true29.i.i.if.then38.i.i_crit_edge:      ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

land.lhs.true29.i.i.lor.lhs.false35.i.i_crit_edge: ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false35.i.i

lor.lhs.false35.i.i:                              ; preds = %land.lhs.true29.i.i.lor.lhs.false35.i.i_crit_edge, %sw.epilog.i.i.lor.lhs.false35.i.i_crit_edge
  %syn_mode.3104.i.i = phi i32 [ %67, %land.lhs.true29.i.i.lor.lhs.false35.i.i_crit_edge ], [ %syn_mode.1.i.i, %sw.epilog.i.i.lor.lhs.false35.i.i_crit_edge ]
  %69 = ptrtoint ptr %bt656.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bt656.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool37.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool37.not.i.i, label %lor.lhs.false35.i.i.if.end40.i.i_crit_edge, label %lor.lhs.false35.i.i.if.then38.i.i_crit_edge

lor.lhs.false35.i.i.if.then38.i.i_crit_edge:      ; preds = %lor.lhs.false35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

lor.lhs.false35.i.i.if.end40.i.i_crit_edge:       ; preds = %lor.lhs.false35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then38.i.i:                                    ; preds = %lor.lhs.false35.i.i.if.then38.i.i_crit_edge, %land.lhs.true29.i.i.if.then38.i.i_crit_edge
  %syn_mode.3103.i.i = phi i32 [ %syn_mode.3104.i.i, %lor.lhs.false35.i.i.if.then38.i.i_crit_edge ], [ %67, %land.lhs.true29.i.i.if.then38.i.i_crit_edge ]
  %or39.i.i = or i32 %syn_mode.3103.i.i, 4
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then38.i.i, %lor.lhs.false35.i.i.if.end40.i.i_crit_edge
  %syn_mode.4.i.i = phi i32 [ %or39.i.i, %if.then38.i.i ], [ %syn_mode.3104.i.i, %lor.lhs.false35.i.i.if.end40.i.i_crit_edge ]
  br i1 %tobool13.not.i.i, label %if.end40.i.i.if.end50.i.i_crit_edge, label %land.lhs.true42.i.i

if.end40.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i

land.lhs.true42.i.i:                              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %parcfg.0.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load43.i.i = load i16, ptr %parcfg.0.i, align 4
  %72 = lshr i16 %bf.load43.i.i, 5
  %73 = and i16 %72, 16
  %74 = zext i16 %73 to i32
  %75 = or i32 %syn_mode.4.i.i, %74
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %land.lhs.true42.i.i, %if.end40.i.i.if.end50.i.i_crit_edge
  %syn_mode.5.i.i = phi i32 [ %syn_mode.4.i.i, %if.end40.i.i.if.end50.i.i_crit_edge ], [ %75, %land.lhs.true42.i.i ]
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %77, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %syn_mode.5.i.i) #9, !srcloc !214
  %78 = ptrtoint ptr %code47.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %code47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %79)
  %cmp52.i.i = icmp eq i32 %79, 8198
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %81, i32 84
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9
  br i1 %cmp52.i.i, label %if.then53.i.i, label %if.else54.i.i

if.then53.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %82, 2048
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %84, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %or.i.i.i) #9, !srcloc !214
  br label %if.end55.i.i

if.else54.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i.i = and i32 %82, -2049
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i92.i.i = getelementptr i8, ptr %86, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i92.i.i, i32 %and.i.i.i) #9, !srcloc !214
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.else54.i.i, %if.then53.i.i
  %87 = ptrtoint ptr %bt656.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bt656.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool57.not.i.i = icmp eq i8 %88, 0
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i98.i.i = getelementptr i8, ptr %90, i32 80
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98.i.i) #9
  br i1 %tobool57.not.i.i, label %if.else59.i.i, label %if.then58.i.i

if.then58.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i95.i.i = or i32 %91, 3
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i96.i.i = getelementptr i8, ptr %93, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i96.i.i, i32 %or.i95.i.i) #9, !srcloc !214
  br label %ccdc_config_sync_if.exit.i

if.else59.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i99.i.i = and i32 %91, -4
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i100.i.i = getelementptr i8, ptr %95, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i100.i.i, i32 %and.i99.i.i) #9, !srcloc !214
  br label %ccdc_config_sync_if.exit.i

ccdc_config_sync_if.exit.i:                       ; preds = %if.else59.i.i, %if.then58.i.i
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %97, i32 8
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #9, !srcloc !213
  %output.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %output.i, align 8
  %and.i = and i32 %98, -393217
  %and69.i = shl i32 %100, 17
  %101 = and i32 %and69.i, 131072
  %102 = or i32 %101, %and.i
  %and76.i = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  %or79.i = or i32 %102, 524288
  %and81.i = and i32 %102, -786433
  %syn_mode.1.i = select i1 %tobool77.not.i, i32 %and81.i, i32 %or79.i
  %103 = ptrtoint ptr %code47.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %code47.i, align 4
  %switch.tableidx = add i32 %104, -12295
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %105 = icmp ult i32 %switch.tableidx, 12
  br i1 %105, label %switch.lookup, label %ccdc_config_sync_if.exit.i.sw.epilog.i_crit_edge

ccdc_config_sync_if.exit.i.sw.epilog.i_crit_edge: ; preds = %ccdc_config_sync_if.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %ccdc_config_sync_if.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.ccdc_set_stream, i32 0, i32 %switch.tableidx
  %106 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %106)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %ccdc_config_sync_if.exit.i.sw.epilog.i_crit_edge
  %ccdc_pattern.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1156465903, %ccdc_config_sync_if.exit.i.sw.epilog.i_crit_edge ]
  %107 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i304.i = getelementptr i8, ptr %108, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i304.i, i32 %ccdc_pattern.0.i) #9, !srcloc !214
  %height.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 0, i32 1
  %109 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height.i, align 4
  %sub86.i = shl i32 %110, 16
  %shl.i = add i32 %sub86.i, -131072
  %mul.i = shl i32 %110, 1
  %div.i = udiv i32 %mul.i, 3
  %or89.i = or i32 %shl.i, %div.i
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i306.i = getelementptr i8, ptr %112, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306.i, i32 %or89.i) #9, !srcloc !214
  %crop92.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3
  %113 = ptrtoint ptr %bt656.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bt656.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool94.not.i = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %crop92.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %crop92.i, align 4
  br i1 %tobool94.not.i, label %if.else100.i, label %if.then95.i

if.then95.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul96.i = shl i32 %116, 1
  %width97.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3, i32 2
  %117 = ptrtoint ptr %width97.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %width97.i, align 4
  %mul98.i = shl i32 %118, 1
  br label %if.end104.i

if.else100.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %width102.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3, i32 2
  %119 = ptrtoint ptr %width102.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %width102.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else100.i, %if.then95.i
  %nph.0.in.i = phi i32 [ %mul98.i, %if.then95.i ], [ %120, %if.else100.i ]
  %sph.0.i = phi i32 [ %mul96.i, %if.then95.i ], [ %116, %if.else100.i ]
  %nph.0.i = add i32 %nph.0.in.i, -1
  %shl105.i = shl i32 %sph.0.i, 16
  %or107.i = or i32 %shl105.i, %nph.0.i
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i308.i = getelementptr i8, ptr %122, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308.i, i32 %or107.i) #9, !srcloc !214
  %top.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3, i32 1
  %123 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %top.i, align 4
  %shl108.i = shl i32 %124, 16
  %or111.i = or i32 %shl108.i, %124
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i310.i = getelementptr i8, ptr %126, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310.i, i32 %or111.i) #9, !srcloc !214
  %height112.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3, i32 3
  %127 = ptrtoint ptr %height112.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %height112.i, align 4
  %sub113.i = add i32 %128, -1
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i312.i = getelementptr i8, ptr %130, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312.i, i32 %sub113.i) #9, !srcloc !214
  %bpl_value.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 6, i32 10
  %131 = ptrtoint ptr %bpl_value.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bpl_value.i, align 8
  %field.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 1, i32 3
  %133 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %field.i, align 4
  %and.i.i = and i32 %132, 65535
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i314.i = getelementptr i8, ptr %136, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i314.i, i32 %and.i.i) #9, !srcloc !214
  %137 = and i32 %134, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %137)
  %switch.i.i = icmp eq i32 %137, 8
  %spec.select.i.i = select i1 %switch.i.i, i32 585, i32 0
  %138 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %139, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %spec.select.i.i) #9, !srcloc !214
  %field117.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 0, i32 3
  %140 = ptrtoint ptr %field117.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %field117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %141)
  %cmp118.i = icmp eq i32 %141, 7
  br i1 %cmp118.i, label %land.lhs.true120.i, label %if.end104.i.if.end129.i_crit_edge

if.end104.i.if.end129.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129.i

land.lhs.true120.i:                               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %field.i, align 4
  %144 = and i32 %143, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %144)
  %switch.i = icmp eq i32 %144, 8
  %or128.i = or i32 %syn_mode.1.i, 128
  %spec.select302.i = select i1 %switch.i, i32 %or128.i, i32 %syn_mode.1.i
  br label %if.end129.i

if.end129.i:                                      ; preds = %land.lhs.true120.i, %if.end104.i.if.end129.i_crit_edge
  %syn_mode.2.i = phi i32 [ %syn_mode.1.i, %if.end104.i.if.end129.i_crit_edge ], [ %spec.select302.i, %land.lhs.true120.i ]
  %code130.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 1, i32 2
  %145 = ptrtoint ptr %code130.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %code130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %146)
  %cmp131.i = icmp eq i32 %146, 8209
  %147 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i316.i = getelementptr i8, ptr %148, i32 84
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i316.i) #9
  br i1 %cmp131.i, label %if.then133.i, label %if.else134.i

if.then133.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %149, 4096
  %150 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %151, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #9, !srcloc !214
  br label %if.end135.i

if.else134.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i319.i = and i32 %149, -4097
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i320.i = getelementptr i8, ptr %153, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i320.i, i32 %and.i319.i) #9, !srcloc !214
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.else134.i, %if.then133.i
  %154 = ptrtoint ptr %code130.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %code130.i, align 4
  %call137.i = call ptr @omap3isp_video_format_info(i32 noundef %155) #9
  %width138.i = getelementptr inbounds %struct.isp_format_info, ptr %call137.i, i32 0, i32 5
  %156 = ptrtoint ptr %width138.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %width138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %157)
  %cmp139.i = icmp ult i32 %157, 9
  br i1 %cmp139.i, label %if.end135.i.if.then145.i_crit_edge, label %lor.lhs.false141.i

if.end135.i.if.then145.i_crit_edge:               ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then145.i

lor.lhs.false141.i:                               ; preds = %if.end135.i
  %158 = ptrtoint ptr %bt656.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %bt656.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool143.not.i = icmp eq i8 %159, 0
  br i1 %tobool143.not.i, label %if.else147.i, label %lor.lhs.false141.i.if.then145.i_crit_edge

lor.lhs.false141.i.if.then145.i_crit_edge:        ; preds = %lor.lhs.false141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then145.i

if.then145.i:                                     ; preds = %lor.lhs.false141.i.if.then145.i_crit_edge, %if.end135.i.if.then145.i_crit_edge
  %or146.i = or i32 %syn_mode.2.i, 2048
  br label %if.end149.i

if.else147.i:                                     ; preds = %lor.lhs.false141.i
  call void @__sanitizer_cov_trace_pc() #11
  %and148.i = and i32 %syn_mode.2.i, -2049
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.else147.i, %if.then145.i
  %syn_mode.3.i = phi i32 [ %or146.i, %if.then145.i ], [ %and148.i, %if.else147.i ]
  %160 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i322.i = getelementptr i8, ptr %161, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i322.i, i32 %syn_mode.3.i) #9, !srcloc !214
  %pipe1.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %162 = ptrtoint ptr %pipe1.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pipe1.i.i, align 4
  %l3_ick5.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %163, i32 0, i32 7
  %164 = ptrtoint ptr %l3_ick5.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %l3_ick5.i.i, align 4
  %revision.i.i = getelementptr i8, ptr %1, i32 -41780
  %166 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %167)
  %cmp.i.i = icmp eq i32 %167, 240
  %cond.i.i = select i1 %cmp.i.i, i32 64, i32 8
  %code.i323.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 2, i32 2
  %168 = ptrtoint ptr %code.i323.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %code.i323.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i324.i = icmp eq i32 %169, 0
  br i1 %tobool.not.i324.i, label %if.then.i327.i, label %if.end.i.i

if.then.i327.i:                                   ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i326.i = getelementptr i8, ptr %171, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i326.i, i32 0) #9, !srcloc !214
  br label %ccdc_config_vp.exit.i

if.end.i.i:                                       ; preds = %if.end149.i
  %arrayidx.i328.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 2
  %172 = ptrtoint ptr %arrayidx.i328.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i328.i, align 4
  %174 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i83.i.i = getelementptr i8, ptr %175, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i.i, i32 %173) #9, !srcloc !214
  %height.i.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 2, i32 1
  %176 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %height.i.i, align 4
  %add.i.i = add i32 %177, 1
  %178 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i85.i.i = getelementptr i8, ptr %179, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i.i, i32 %add.i.i) #9, !srcloc !214
  %180 = ptrtoint ptr %arrayidx.i328.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.i328.i, align 4
  %shl9.i.i = shl i32 %181, 4
  %182 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %height.i.i, align 4
  %shl11.i.i = shl i32 %183, 17
  %or12.i329.i = or i32 %shl11.i.i, %shl9.i.i
  %184 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i87.i.i = getelementptr i8, ptr %185, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i.i, i32 %or12.i329.i) #9, !srcloc !214
  %186 = ptrtoint ptr %code47.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %code47.i, align 4
  %call.i.i = call ptr @omap3isp_video_format_info(i32 noundef %187) #9
  %width16.i.i = getelementptr inbounds %struct.isp_format_info, ptr %call.i.i, i32 0, i32 5
  %188 = ptrtoint ptr %width16.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %width16.i.i, align 4
  %switch.tableidx93 = add i32 %189, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx93)
  %190 = icmp ult i32 %switch.tableidx93, 6
  br i1 %190, label %switch.lookup92, label %if.end.i.i.sw.epilog.i331.i_crit_edge

if.end.i.i.sw.epilog.i331.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i331.i

switch.lookup92:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep94 = getelementptr inbounds [6 x i32], ptr @switch.table.ccdc_set_stream.76, i32 0, i32 %switch.tableidx93
  %191 = ptrtoint ptr %switch.gep94 to i32
  call void @__asan_load4_noabort(i32 %191)
  %switch.load95 = load i32, ptr %switch.gep94, align 4
  br label %sw.epilog.i331.i

sw.epilog.i331.i:                                 ; preds = %switch.lookup92, %if.end.i.i.sw.epilog.i331.i_crit_edge
  %fmtcfg.0.i.i = phi i32 [ 32768, %if.end.i.i.sw.epilog.i331.i_crit_edge ], [ %switch.load95, %switch.lookup92 ]
  %input.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %163, i32 0, i32 4
  %192 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %input.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %193, null
  br i1 %tobool24.not.i.i, label %if.else.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %sw.epilog.i331.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_rate.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %163, i32 0, i32 8
  %194 = ptrtoint ptr %max_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %max_rate.i.i, align 4
  %add26.i.i = add i32 %165, -1
  %sub.i.i = add i32 %add26.i.i, %195
  %div28.i.i = udiv i32 %sub.i.i, %195
  br label %if.end34.i.i

if.else.i.i:                                      ; preds = %sw.epilog.i331.i
  %external_rate.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %163, i32 0, i32 15
  %196 = ptrtoint ptr %external_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %external_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool29.not.i.i = icmp eq i32 %197, 0
  br i1 %tobool29.not.i.i, label %if.else.i.i.if.end34.thread.i.i_crit_edge, label %if.then30.i.i

if.else.i.i.if.end34.thread.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.thread.i.i

if.then30.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div32.i.i = udiv i32 %165, %197
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then30.i.i, %if.then25.i.i
  %div.0.i.i = phi i32 [ %div28.i.i, %if.then25.i.i ], [ %div32.i.i, %if.then30.i.i ]
  %198 = call i32 @llvm.umax.i32(i32 %div.0.i.i, i32 2) #9
  br label %if.end34.thread.i.i

if.end34.thread.i.i:                              ; preds = %if.end34.i.i, %if.else.i.i.if.end34.thread.i.i_crit_edge
  %199 = phi i32 [ 2, %if.else.i.i.if.end34.thread.i.i_crit_edge ], [ %198, %if.end34.i.i ]
  %200 = call i32 @llvm.umin.i32(i32 %199, i32 %cond.i.i) #9
  %sub44.i.i = shl nuw nsw i32 %200, 16
  %shl45.i.i = add nsw i32 %sub44.i.i, -131072
  %or46.i.i = or i32 %shl45.i.i, %fmtcfg.0.i.i
  %201 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i89.i.i = getelementptr i8, ptr %202, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i.i, i32 %or46.i.i) #9, !srcloc !214
  br label %ccdc_config_vp.exit.i

ccdc_config_vp.exit.i:                            ; preds = %if.end34.thread.i.i, %if.then.i327.i
  %req_lock.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 2
  %call155.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #9
  %request.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 3
  %203 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %request.i, align 4
  %cmp159.i = icmp eq ptr %204, null
  br i1 %cmp159.i, label %ccdc_config_vp.exit.i.ccdc_configure.exit_crit_edge, label %if.end162.i

ccdc_config_vp.exit.i.ccdc_configure.exit_crit_edge: ; preds = %ccdc_config_vp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_configure.exit

if.end162.i:                                      ; preds = %ccdc_config_vp.exit.i
  %active.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 4
  %205 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %active.i, align 8
  %tobool164.not.i = icmp eq ptr %206, null
  br i1 %tobool164.not.i, label %if.end162.i.land.lhs.true194.i_crit_edge, label %if.end182.i, !prof !218

if.end162.i.land.lhs.true194.i_crit_edge:         ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true194.i

if.end182.i:                                      ; preds = %if.end162.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1290, i32 noundef 9, ptr noundef null) #9
  %207 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pr.i = load ptr, ptr %active.i, align 8
  %cmp192.i = icmp eq ptr %.pr.i, null
  br i1 %cmp192.i, label %if.end182.i.land.lhs.true194.i_crit_edge, label %if.end182.i.if.else205.i_crit_edge

if.end182.i.if.else205.i_crit_edge:               ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else205.i

if.end182.i.land.lhs.true194.i_crit_edge:         ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true194.i

land.lhs.true194.i:                               ; preds = %if.end182.i.land.lhs.true194.i_crit_edge, %if.end162.i.land.lhs.true194.i_crit_edge
  %208 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %request.i, align 4
  %call197.i = call fastcc i32 @__ccdc_lsc_configure(ptr noundef %1, ptr noundef %209) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %cmp198.i = icmp eq i32 %call197.i, 0
  br i1 %cmp198.i, label %if.then200.i, label %land.lhs.true194.i.if.else205.i_crit_edge

land.lhs.true194.i.if.else205.i_crit_edge:        ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else205.i

if.then200.i:                                     ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %request.i, align 4
  %212 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %211, ptr %active.i, align 8
  br label %if.end211.i

if.else205.i:                                     ; preds = %land.lhs.true194.i.if.else205.i_crit_edge, %if.end182.i.if.else205.i_crit_edge
  %213 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %request.i, align 4
  %free_queue.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 5
  %prev.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 5, i32 1
  %215 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %214, ptr noundef %216, ptr noundef %free_queue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else205.i.list_add_tail.exit.i_crit_edge

if.else205.i.list_add_tail.exit.i_crit_edge:      ; preds = %if.else205.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.else205.i
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %214, ptr %prev.i.i, align 4
  %218 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %free_queue.i, ptr %214, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %214, i32 0, i32 1
  %219 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %216, ptr %prev3.i.i.i, align 4
  %220 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %214, ptr %216, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.else205.i.list_add_tail.exit.i_crit_edge
  %table_work.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %221 = load ptr, ptr @system_wq, align 4
  %call.i.i332.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %221, ptr noundef %table_work.i) #9
  br label %if.end211.i

if.end211.i:                                      ; preds = %list_add_tail.exit.i, %if.then200.i
  %222 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %request.i, align 4
  br label %ccdc_configure.exit

ccdc_configure.exit:                              ; preds = %if.end211.i, %ccdc_config_vp.exit.i.ccdc_configure.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i, i32 noundef %call155.i) #9
  call fastcc void @ccdc_apply_controls(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src.i) #9
  call fastcc void @ccdc_print_status(ptr noundef %1)
  br label %if.end3

if.end3:                                          ; preds = %ccdc_configure.exit, %entry.if.end3_crit_edge
  %223 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %enable, label %if.end3.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 0, label %sw.bb22
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  %output = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 5
  %224 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %output, align 8
  %and = and i32 %225, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end5_crit_edge, label %if.then4

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 32) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %sw.bb.if.end5_crit_edge
  %underrun = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 16
  %226 = ptrtoint ptr %underrun to i32
  call void @__asan_load1_noabort(i32 %226)
  %bf.load = load i8, ptr %underrun, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end5.if.then10_crit_edge

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end5
  %227 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %output, align 8
  %and8 = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end5.if.then10_crit_edge
  %req_lock.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 2
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i.i) #9
  %active.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 4
  %229 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %active.i.i, align 8
  %cmp6.i.not.i = icmp eq ptr %230, null
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i.i, i32 noundef %call2.i.i) #9
  br i1 %cmp6.i.not.i, label %if.then10.if.end.i61_crit_edge, label %if.then.i59

if.then10.if.end.i61_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i61

if.then.i59:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @__ccdc_lsc_enable(ptr noundef %1, i32 noundef 1) #9
  br label %if.end.i61

if.end.i61:                                       ; preds = %if.then.i59, %if.then10.if.end.i61_crit_edge
  %stopping.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 20
  %231 = ptrtoint ptr %stopping.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %stopping.i.i, align 4
  %and.i.i60 = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %tobool1.not.i.i = icmp eq i32 %and.i.i60, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i65, label %if.end.i61.if.end11_crit_edge

if.end.i61.if.end11_crit_edge:                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i.i65:                                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i = getelementptr i8, ptr %1, i32 -41764
  %233 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i62 = getelementptr i8, ptr %234, i32 4
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i62) #9, !srcloc !213
  %or.i.i.i63 = or i32 %235, 1
  %236 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i.i64 = getelementptr i8, ptr %237, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i64, i32 %or.i.i.i63) #9, !srcloc !214
  %running.i.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 21
  %238 = ptrtoint ptr %running.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %running.i.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.i65, %if.end.i61.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge
  %239 = ptrtoint ptr %underrun to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load13 = load i8, ptr %underrun, align 4
  %bf.clear = and i8 %bf.load13, 127
  store i8 %bf.clear, ptr %underrun, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end3
  %output15 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 5
  %240 = ptrtoint ptr %output15 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %output15, align 8
  %and16 = and i32 %241, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %sw.bb14.if.end21_crit_edge, label %land.lhs.true

sw.bb14.if.end21_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true:                                    ; preds = %sw.bb14
  %242 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %243)
  %cmp19.not = icmp eq i32 %243, 2
  br i1 %cmp19.not, label %land.lhs.true.if.end21_crit_edge, label %if.then20

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @omap3isp_sbl_enable(ptr noundef %add.ptr, i32 noundef 32) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true.if.end21_crit_edge, %sw.bb14.if.end21_crit_edge
  %req_lock.i.i66 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 2
  %call2.i.i67 = call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i.i66) #9
  %active.i.i68 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 4
  %244 = ptrtoint ptr %active.i.i68 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %active.i.i68, align 8
  %cmp6.i.not.i69 = icmp eq ptr %245, null
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i.i66, i32 noundef %call2.i.i67) #9
  br i1 %cmp6.i.not.i69, label %if.end21.if.end.i74_crit_edge, label %if.then.i70

if.end21.if.end.i74_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i74

if.then.i70:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @__ccdc_lsc_enable(ptr noundef %1, i32 noundef 1) #9
  br label %if.end.i74

if.end.i74:                                       ; preds = %if.then.i70, %if.end21.if.end.i74_crit_edge
  %stopping.i.i71 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 20
  %246 = ptrtoint ptr %stopping.i.i71 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %stopping.i.i71, align 4
  %and.i.i72 = and i32 %247, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i72)
  %tobool1.not.i.i73 = icmp eq i32 %and.i.i72, 0
  br i1 %tobool1.not.i.i73, label %if.end.i.i80, label %if.end.i74.sw.epilog_crit_edge

if.end.i74.sw.epilog_crit_edge:                   ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i.i80:                                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i75 = getelementptr i8, ptr %1, i32 -41764
  %248 = ptrtoint ptr %arrayidx.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i.i.i.i75, align 4
  %add.ptr.i.i.i.i76 = getelementptr i8, ptr %249, i32 4
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i76) #9, !srcloc !213
  %or.i.i.i77 = or i32 %250, 1
  %251 = ptrtoint ptr %arrayidx.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx.i.i.i.i75, align 4
  %add.ptr.i2.i.i.i78 = getelementptr i8, ptr %252, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i78, i32 %or.i.i.i77) #9, !srcloc !214
  %running.i.i79 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 21
  %253 = ptrtoint ptr %running.i.i79 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 1, ptr %running.i.i79, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end3
  %lock.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 18
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %254 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %255)
  %cmp5.i = icmp eq i32 %255, 1
  br i1 %cmp5.i, label %if.then.i82, label %sw.bb22.if.end.i84_crit_edge

sw.bb22.if.end.i84_crit_edge:                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i84

if.then.i82:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  %stopping.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 20
  %256 = ptrtoint ptr %stopping.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 1, ptr %stopping.i, align 4
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.then.i82, %sw.bb22.if.end.i84_crit_edge
  %running.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 21
  %257 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %running.i, align 8, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool.not.i83 = icmp eq i8 %258, 0
  br i1 %tobool.not.i83, label %if.then7.i, label %if.end.i84.if.end9.i_crit_edge

if.end.i84.if.end9.i_crit_edge:                   ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  %stopping8.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 20
  %259 = ptrtoint ptr %stopping8.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 15, ptr %stopping8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i84.if.end9.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1339) #9
  %stopping18.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 20
  %260 = ptrtoint ptr %stopping18.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %stopping18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %261)
  %cmp19.i = icmp eq i32 %261, 15
  br i1 %cmp19.i, label %if.end9.i.if.end69.i_crit_edge, label %if.then31.i

if.end9.i.if.end69.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then31.i:                                      ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %262 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %wait.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 19
  %call34125.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %263 = ptrtoint ptr %stopping18.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %stopping18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %264)
  %cmp37126.i = icmp eq i32 %264, 15
  br i1 %cmp37126.i, label %if.end60.thread.i, label %if.then31.i.cleanup.i_crit_edge

if.then31.i.cleanup.i_crit_edge:                  ; preds = %if.then31.i
  br label %cleanup.i

if.end60.thread.i:                                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end69.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then31.i.cleanup.i_crit_edge
  %__ret32.1127.i = phi i32 [ %__ret32.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 200, %if.then31.i.cleanup.i_crit_edge ]
  %call57.i = call i32 @schedule_timeout(i32 noundef %__ret32.1127.i) #9
  %call34.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %265 = ptrtoint ptr %stopping18.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %stopping18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %266)
  %cmp37.i = icmp eq i32 %266, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool43.not.i = icmp eq i32 %call57.i, 0
  %267 = select i1 %cmp37.i, i1 %tobool43.not.i, i1 false
  %__ret32.1.i = select i1 %267, i32 1, i32 %call57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret32.1.i)
  %tobool50.not.i = icmp eq i32 %__ret32.1.i, 0
  %268 = select i1 %cmp37.i, i1 true, i1 %tobool50.not.i
  br i1 %268, label %if.end60.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end60.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br i1 %tobool50.not.i, label %if.then64.i, label %if.end60.i.if.end69.i_crit_edge

if.end60.i.if.end69.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %1, i32 -41784
  %269 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %270, ptr noundef nonnull @.str.74) #12
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i, %if.end60.i.if.end69.i_crit_edge, %if.end60.thread.i, %if.end9.i.if.end69.i_crit_edge
  %ret.0.i = phi i32 [ -110, %if.then64.i ], [ %__ret32.1.i, %if.end60.i.if.end69.i_crit_edge ], [ 200, %if.end9.i.if.end69.i_crit_edge ], [ 200, %if.end60.thread.i ]
  call void @omap3isp_sbl_disable(ptr noundef %add.ptr, i32 noundef 16) #9
  %ioctl_lock.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 22
  call void @mutex_lock_nested(ptr noundef %ioctl_lock.i, i32 noundef 0) #9
  %request.i85 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 3
  %271 = ptrtoint ptr %request.i85 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %request.i85, align 4
  %cmp.i.i86 = icmp eq ptr %272, null
  br i1 %cmp.i.i86, label %if.end69.i.ccdc_disable.exit_crit_edge, label %if.end.i.i88

if.end69.i.ccdc_disable.exit_crit_edge:           ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_disable.exit

if.end.i.i88:                                     ; preds = %if.end69.i
  %table.i.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %table.i.i, align 4
  %tobool.not.i.i87 = icmp eq ptr %274, null
  br i1 %tobool.not.i.i87, label %if.end.i.i88.if.end6.i.i_crit_edge, label %if.then1.i.i

if.end.i.i88.if.end6.i.i_crit_edge:               ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #11
  %sgt.i.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %272, i32 0, i32 3, i32 2
  call void @sg_free_table(ptr noundef %sgt.i.i) #9
  %dev.i.i = getelementptr i8, ptr %1, i32 -41784
  %275 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %272, i32 0, i32 1, i32 10
  %277 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %size.i.i, align 4
  %279 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %table.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.ispccdc_lsc_config_req, ptr %272, i32 0, i32 3, i32 1
  %281 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %dma.i.i, align 4
  call void @dma_free_attrs(ptr noundef %276, i32 noundef %278, ptr noundef %280, i32 noundef %282, i32 noundef 0) #9
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i88.if.end6.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %272) #9
  br label %ccdc_disable.exit

ccdc_disable.exit:                                ; preds = %if.end6.i.i, %if.end69.i.ccdc_disable.exit_crit_edge
  %active.i89 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 4
  %283 = ptrtoint ptr %active.i89 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %active.i89, align 8
  %285 = ptrtoint ptr %request.i85 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %284, ptr %request.i85, align 4
  store ptr null, ptr %active.i89, align 8
  %table_work.i90 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 1
  %call79.i = call zeroext i1 @cancel_work_sync(ptr noundef %table_work.i90) #9
  %free_queue.i91 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 11, i32 5
  call fastcc void @ccdc_lsc_free_queue(ptr noundef %1, ptr noundef %free_queue.i91) #9
  call void @mutex_unlock(ptr noundef %ioctl_lock.i) #9
  %286 = ptrtoint ptr %stopping18.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %stopping18.i, align 4
  %287 = call i32 @llvm.smin.i32(i32 %ret.0.i, i32 0) #9
  %output24 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 5
  %288 = ptrtoint ptr %output24 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %output24, align 8
  %and25 = and i32 %289, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %ccdc_disable.exit.if.end28_crit_edge, label %if.then27

ccdc_disable.exit.if.end28_crit_edge:             ; preds = %ccdc_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %ccdc_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @omap3isp_sbl_disable(ptr noundef %add.ptr, i32 noundef 32) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %ccdc_disable.exit.if.end28_crit_edge
  call void @omap3isp_subclk_disable(ptr noundef %add.ptr, i32 noundef 1) #9
  %underrun29 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 16
  %290 = ptrtoint ptr %underrun29 to i32
  call void @__asan_load1_noabort(i32 %290)
  %bf.load30 = load i8, ptr %underrun29, align 4
  %bf.clear31 = and i8 %bf.load30, 127
  store i8 %bf.clear31, ptr %underrun29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28, %if.end.i.i80, %if.end.i74.sw.epilog_crit_edge, %if.end11, %if.end3.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end3.sw.epilog_crit_edge ], [ %287, %if.end28 ], [ 0, %if.end11 ], [ 0, %if.end.i74.sw.epilog_crit_edge ], [ 0, %if.end.i.i80 ]
  %291 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %enable, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_print_status(ptr noundef readonly %ccdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body5)) #9
          to label %if.then [label %do.body5], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %ccdc, i32 -41784
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.39) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body25)) #9
          to label %if.then19 [label %do.body25], !srcloc !219

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr i8, ptr %ccdc, i32 -41784
  %2 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev20, align 8
  %arrayidx.i = getelementptr i8, ptr %ccdc, i32 -41764
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %6) #9
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body45)) #9
          to label %if.then39 [label %do.body45], !srcloc !219

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr i8, ptr %ccdc, i32 -41784
  %7 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev40, align 8
  %arrayidx.i853 = getelementptr i8, ptr %ccdc, i32 -41764
  %9 = ptrtoint ptr %arrayidx.i853 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i853, align 4
  %add.ptr.i854 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i854) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug300, ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef %11) #9
  br label %do.body45

do.body45:                                        ; preds = %if.then39, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body65)) #9
          to label %if.then59 [label %do.body65], !srcloc !219

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %dev60 = getelementptr i8, ptr %ccdc, i32 -41784
  %12 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev60, align 8
  %arrayidx.i855 = getelementptr i8, ptr %ccdc, i32 -41764
  %14 = ptrtoint ptr %arrayidx.i855 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i855, align 4
  %add.ptr.i856 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i856) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug301, ptr noundef %13, ptr noundef nonnull @.str.42, i32 noundef %16) #9
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body85)) #9
          to label %if.then79 [label %do.body85], !srcloc !219

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %dev80 = getelementptr i8, ptr %ccdc, i32 -41784
  %17 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev80, align 8
  %arrayidx.i857 = getelementptr i8, ptr %ccdc, i32 -41764
  %19 = ptrtoint ptr %arrayidx.i857 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i857, align 4
  %add.ptr.i858 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i858) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug302, ptr noundef %18, ptr noundef nonnull @.str.43, i32 noundef %21) #9
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body105)) #9
          to label %if.then99 [label %do.body105], !srcloc !219

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %dev100 = getelementptr i8, ptr %ccdc, i32 -41784
  %22 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev100, align 8
  %arrayidx.i859 = getelementptr i8, ptr %ccdc, i32 -41764
  %24 = ptrtoint ptr %arrayidx.i859 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i859, align 4
  %add.ptr.i860 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i860) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug303, ptr noundef %23, ptr noundef nonnull @.str.44, i32 noundef %26) #9
  br label %do.body105

do.body105:                                       ; preds = %if.then99, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body125)) #9
          to label %if.then119 [label %do.body125], !srcloc !219

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  %dev120 = getelementptr i8, ptr %ccdc, i32 -41784
  %27 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev120, align 8
  %arrayidx.i861 = getelementptr i8, ptr %ccdc, i32 -41764
  %29 = ptrtoint ptr %arrayidx.i861 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i861, align 4
  %add.ptr.i862 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i862) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug304, ptr noundef %28, ptr noundef nonnull @.str.45, i32 noundef %31) #9
  br label %do.body125

do.body125:                                       ; preds = %if.then119, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body145)) #9
          to label %if.then139 [label %do.body145], !srcloc !219

if.then139:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  %dev140 = getelementptr i8, ptr %ccdc, i32 -41784
  %32 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev140, align 8
  %arrayidx.i863 = getelementptr i8, ptr %ccdc, i32 -41764
  %34 = ptrtoint ptr %arrayidx.i863 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i863, align 4
  %add.ptr.i864 = getelementptr i8, ptr %35, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i864) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug305, ptr noundef %33, ptr noundef nonnull @.str.46, i32 noundef %36) #9
  br label %do.body145

do.body145:                                       ; preds = %if.then139, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body165)) #9
          to label %if.then159 [label %do.body165], !srcloc !219

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  %dev160 = getelementptr i8, ptr %ccdc, i32 -41784
  %37 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev160, align 8
  %arrayidx.i865 = getelementptr i8, ptr %ccdc, i32 -41764
  %39 = ptrtoint ptr %arrayidx.i865 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i865, align 4
  %add.ptr.i866 = getelementptr i8, ptr %40, i32 32
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i866) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug306, ptr noundef %38, ptr noundef nonnull @.str.47, i32 noundef %41) #9
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body185)) #9
          to label %if.then179 [label %do.body185], !srcloc !219

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %dev180 = getelementptr i8, ptr %ccdc, i32 -41784
  %42 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev180, align 8
  %arrayidx.i867 = getelementptr i8, ptr %ccdc, i32 -41764
  %44 = ptrtoint ptr %arrayidx.i867 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i867, align 4
  %add.ptr.i868 = getelementptr i8, ptr %45, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i868) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug307, ptr noundef %43, ptr noundef nonnull @.str.48, i32 noundef %46) #9
  br label %do.body185

do.body185:                                       ; preds = %if.then179, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body205)) #9
          to label %if.then199 [label %do.body205], !srcloc !219

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #11
  %dev200 = getelementptr i8, ptr %ccdc, i32 -41784
  %47 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev200, align 8
  %arrayidx.i869 = getelementptr i8, ptr %ccdc, i32 -41764
  %49 = ptrtoint ptr %arrayidx.i869 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i869, align 4
  %add.ptr.i870 = getelementptr i8, ptr %50, i32 40
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i870) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug308, ptr noundef %48, ptr noundef nonnull @.str.49, i32 noundef %51) #9
  br label %do.body205

do.body205:                                       ; preds = %if.then199, %do.body185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body225)) #9
          to label %if.then219 [label %do.body225], !srcloc !219

if.then219:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  %dev220 = getelementptr i8, ptr %ccdc, i32 -41784
  %52 = ptrtoint ptr %dev220 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev220, align 8
  %arrayidx.i871 = getelementptr i8, ptr %ccdc, i32 -41764
  %54 = ptrtoint ptr %arrayidx.i871 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i871, align 4
  %add.ptr.i872 = getelementptr i8, ptr %55, i32 44
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i872) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug309, ptr noundef %53, ptr noundef nonnull @.str.50, i32 noundef %56) #9
  br label %do.body225

do.body225:                                       ; preds = %if.then219, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body245)) #9
          to label %if.then239 [label %do.body245], !srcloc !219

if.then239:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #11
  %dev240 = getelementptr i8, ptr %ccdc, i32 -41784
  %57 = ptrtoint ptr %dev240 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev240, align 8
  %arrayidx.i873 = getelementptr i8, ptr %ccdc, i32 -41764
  %59 = ptrtoint ptr %arrayidx.i873 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i873, align 4
  %add.ptr.i874 = getelementptr i8, ptr %60, i32 48
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i874) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug310, ptr noundef %58, ptr noundef nonnull @.str.51, i32 noundef %61) #9
  br label %do.body245

do.body245:                                       ; preds = %if.then239, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body265)) #9
          to label %if.then259 [label %do.body265], !srcloc !219

if.then259:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #11
  %dev260 = getelementptr i8, ptr %ccdc, i32 -41784
  %62 = ptrtoint ptr %dev260 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev260, align 8
  %arrayidx.i875 = getelementptr i8, ptr %ccdc, i32 -41764
  %64 = ptrtoint ptr %arrayidx.i875 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i875, align 4
  %add.ptr.i876 = getelementptr i8, ptr %65, i32 52
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i876) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug311, ptr noundef %63, ptr noundef nonnull @.str.52, i32 noundef %66) #9
  br label %do.body265

do.body265:                                       ; preds = %if.then259, %do.body245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body285)) #9
          to label %if.then279 [label %do.body285], !srcloc !219

if.then279:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #11
  %dev280 = getelementptr i8, ptr %ccdc, i32 -41784
  %67 = ptrtoint ptr %dev280 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev280, align 8
  %arrayidx.i877 = getelementptr i8, ptr %ccdc, i32 -41764
  %69 = ptrtoint ptr %arrayidx.i877 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i877, align 4
  %add.ptr.i878 = getelementptr i8, ptr %70, i32 56
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i878) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug312, ptr noundef %68, ptr noundef nonnull @.str.53, i32 noundef %71) #9
  br label %do.body285

do.body285:                                       ; preds = %if.then279, %do.body265
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body305)) #9
          to label %if.then299 [label %do.body305], !srcloc !219

if.then299:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #11
  %dev300 = getelementptr i8, ptr %ccdc, i32 -41784
  %72 = ptrtoint ptr %dev300 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev300, align 8
  %arrayidx.i879 = getelementptr i8, ptr %ccdc, i32 -41764
  %74 = ptrtoint ptr %arrayidx.i879 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i879, align 4
  %add.ptr.i880 = getelementptr i8, ptr %75, i32 60
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i880) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug313, ptr noundef %73, ptr noundef nonnull @.str.54, i32 noundef %76) #9
  br label %do.body305

do.body305:                                       ; preds = %if.then299, %do.body285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body325)) #9
          to label %if.then319 [label %do.body325], !srcloc !219

if.then319:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #11
  %dev320 = getelementptr i8, ptr %ccdc, i32 -41784
  %77 = ptrtoint ptr %dev320 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev320, align 8
  %arrayidx.i881 = getelementptr i8, ptr %ccdc, i32 -41764
  %79 = ptrtoint ptr %arrayidx.i881 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i881, align 4
  %add.ptr.i882 = getelementptr i8, ptr %80, i32 64
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i882) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug314, ptr noundef %78, ptr noundef nonnull @.str.55, i32 noundef %81) #9
  br label %do.body325

do.body325:                                       ; preds = %if.then319, %do.body305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body345)) #9
          to label %if.then339 [label %do.body345], !srcloc !219

if.then339:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #11
  %dev340 = getelementptr i8, ptr %ccdc, i32 -41784
  %82 = ptrtoint ptr %dev340 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev340, align 8
  %arrayidx.i883 = getelementptr i8, ptr %ccdc, i32 -41764
  %84 = ptrtoint ptr %arrayidx.i883 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i883, align 4
  %add.ptr.i884 = getelementptr i8, ptr %85, i32 68
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i884) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug315, ptr noundef %83, ptr noundef nonnull @.str.56, i32 noundef %86) #9
  br label %do.body345

do.body345:                                       ; preds = %if.then339, %do.body325
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body365)) #9
          to label %if.then359 [label %do.body365], !srcloc !219

if.then359:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #11
  %dev360 = getelementptr i8, ptr %ccdc, i32 -41784
  %87 = ptrtoint ptr %dev360 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev360, align 8
  %arrayidx.i885 = getelementptr i8, ptr %ccdc, i32 -41764
  %89 = ptrtoint ptr %arrayidx.i885 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i885, align 4
  %add.ptr.i886 = getelementptr i8, ptr %90, i32 72
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i886) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug316, ptr noundef %88, ptr noundef nonnull @.str.57, i32 noundef %91) #9
  br label %do.body365

do.body365:                                       ; preds = %if.then359, %do.body345
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body385)) #9
          to label %if.then379 [label %do.body385], !srcloc !219

if.then379:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #11
  %dev380 = getelementptr i8, ptr %ccdc, i32 -41784
  %92 = ptrtoint ptr %dev380 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev380, align 8
  %arrayidx.i887 = getelementptr i8, ptr %ccdc, i32 -41764
  %94 = ptrtoint ptr %arrayidx.i887 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i887, align 4
  %add.ptr.i888 = getelementptr i8, ptr %95, i32 76
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i888) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug317, ptr noundef %93, ptr noundef nonnull @.str.58, i32 noundef %96) #9
  br label %do.body385

do.body385:                                       ; preds = %if.then379, %do.body365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body405)) #9
          to label %if.then399 [label %do.body405], !srcloc !219

if.then399:                                       ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #11
  %dev400 = getelementptr i8, ptr %ccdc, i32 -41784
  %97 = ptrtoint ptr %dev400 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev400, align 8
  %arrayidx.i889 = getelementptr i8, ptr %ccdc, i32 -41764
  %99 = ptrtoint ptr %arrayidx.i889 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i889, align 4
  %add.ptr.i890 = getelementptr i8, ptr %100, i32 80
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i890) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug318, ptr noundef %98, ptr noundef nonnull @.str.59, i32 noundef %101) #9
  br label %do.body405

do.body405:                                       ; preds = %if.then399, %do.body385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body425)) #9
          to label %if.then419 [label %do.body425], !srcloc !219

if.then419:                                       ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #11
  %dev420 = getelementptr i8, ptr %ccdc, i32 -41784
  %102 = ptrtoint ptr %dev420 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev420, align 8
  %arrayidx.i891 = getelementptr i8, ptr %ccdc, i32 -41764
  %104 = ptrtoint ptr %arrayidx.i891 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i891, align 4
  %add.ptr.i892 = getelementptr i8, ptr %105, i32 84
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i892) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug319, ptr noundef %103, ptr noundef nonnull @.str.60, i32 noundef %106) #9
  br label %do.body425

do.body425:                                       ; preds = %if.then419, %do.body405
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body445)) #9
          to label %if.then439 [label %do.body445], !srcloc !219

if.then439:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #11
  %dev440 = getelementptr i8, ptr %ccdc, i32 -41784
  %107 = ptrtoint ptr %dev440 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev440, align 8
  %arrayidx.i893 = getelementptr i8, ptr %ccdc, i32 -41764
  %109 = ptrtoint ptr %arrayidx.i893 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i893, align 4
  %add.ptr.i894 = getelementptr i8, ptr %110, i32 88
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i894) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug320, ptr noundef %108, ptr noundef nonnull @.str.61, i32 noundef %111) #9
  br label %do.body445

do.body445:                                       ; preds = %if.then439, %do.body425
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body465)) #9
          to label %if.then459 [label %do.body465], !srcloc !219

if.then459:                                       ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #11
  %dev460 = getelementptr i8, ptr %ccdc, i32 -41784
  %112 = ptrtoint ptr %dev460 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev460, align 8
  %arrayidx.i895 = getelementptr i8, ptr %ccdc, i32 -41764
  %114 = ptrtoint ptr %arrayidx.i895 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i895, align 4
  %add.ptr.i896 = getelementptr i8, ptr %115, i32 92
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i896) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug321, ptr noundef %113, ptr noundef nonnull @.str.62, i32 noundef %116) #9
  br label %do.body465

do.body465:                                       ; preds = %if.then459, %do.body445
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body485)) #9
          to label %if.then479 [label %do.body485], !srcloc !219

if.then479:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #11
  %dev480 = getelementptr i8, ptr %ccdc, i32 -41784
  %117 = ptrtoint ptr %dev480 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev480, align 8
  %arrayidx.i897 = getelementptr i8, ptr %ccdc, i32 -41764
  %119 = ptrtoint ptr %arrayidx.i897 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i897, align 4
  %add.ptr.i898 = getelementptr i8, ptr %120, i32 96
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i898) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug322, ptr noundef %118, ptr noundef nonnull @.str.63, i32 noundef %121) #9
  br label %do.body485

do.body485:                                       ; preds = %if.then479, %do.body465
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body505)) #9
          to label %if.then499 [label %do.body505], !srcloc !219

if.then499:                                       ; preds = %do.body485
  call void @__sanitizer_cov_trace_pc() #11
  %dev500 = getelementptr i8, ptr %ccdc, i32 -41784
  %122 = ptrtoint ptr %dev500 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev500, align 8
  %arrayidx.i899 = getelementptr i8, ptr %ccdc, i32 -41764
  %124 = ptrtoint ptr %arrayidx.i899 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i899, align 4
  %add.ptr.i900 = getelementptr i8, ptr %125, i32 132
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i900) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug323, ptr noundef %123, ptr noundef nonnull @.str.64, i32 noundef %126) #9
  br label %do.body505

do.body505:                                       ; preds = %if.then499, %do.body485
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body525)) #9
          to label %if.then519 [label %do.body525], !srcloc !219

if.then519:                                       ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #11
  %dev520 = getelementptr i8, ptr %ccdc, i32 -41784
  %127 = ptrtoint ptr %dev520 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev520, align 8
  %arrayidx.i901 = getelementptr i8, ptr %ccdc, i32 -41764
  %129 = ptrtoint ptr %arrayidx.i901 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i901, align 4
  %add.ptr.i902 = getelementptr i8, ptr %130, i32 136
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i902) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug324, ptr noundef %128, ptr noundef nonnull @.str.65, i32 noundef %131) #9
  br label %do.body525

do.body525:                                       ; preds = %if.then519, %do.body505
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body545)) #9
          to label %if.then539 [label %do.body545], !srcloc !219

if.then539:                                       ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #11
  %dev540 = getelementptr i8, ptr %ccdc, i32 -41784
  %132 = ptrtoint ptr %dev540 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev540, align 8
  %arrayidx.i903 = getelementptr i8, ptr %ccdc, i32 -41764
  %134 = ptrtoint ptr %arrayidx.i903 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i903, align 4
  %add.ptr.i904 = getelementptr i8, ptr %135, i32 140
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i904) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug325, ptr noundef %133, ptr noundef nonnull @.str.66, i32 noundef %136) #9
  br label %do.body545

do.body545:                                       ; preds = %if.then539, %do.body525
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body565)) #9
          to label %if.then559 [label %do.body565], !srcloc !219

if.then559:                                       ; preds = %do.body545
  call void @__sanitizer_cov_trace_pc() #11
  %dev560 = getelementptr i8, ptr %ccdc, i32 -41784
  %137 = ptrtoint ptr %dev560 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev560, align 8
  %arrayidx.i905 = getelementptr i8, ptr %ccdc, i32 -41764
  %139 = ptrtoint ptr %arrayidx.i905 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i905, align 4
  %add.ptr.i906 = getelementptr i8, ptr %140, i32 144
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i906) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug326, ptr noundef %138, ptr noundef nonnull @.str.67, i32 noundef %141) #9
  br label %do.body565

do.body565:                                       ; preds = %if.then559, %do.body545
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body585)) #9
          to label %if.then579 [label %do.body585], !srcloc !219

if.then579:                                       ; preds = %do.body565
  call void @__sanitizer_cov_trace_pc() #11
  %dev580 = getelementptr i8, ptr %ccdc, i32 -41784
  %142 = ptrtoint ptr %dev580 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev580, align 8
  %arrayidx.i907 = getelementptr i8, ptr %ccdc, i32 -41764
  %144 = ptrtoint ptr %arrayidx.i907 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i907, align 4
  %add.ptr.i908 = getelementptr i8, ptr %145, i32 148
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i908) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug327, ptr noundef %143, ptr noundef nonnull @.str.68, i32 noundef %146) #9
  br label %do.body585

do.body585:                                       ; preds = %if.then579, %do.body565
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body605)) #9
          to label %if.then599 [label %do.body605], !srcloc !219

if.then599:                                       ; preds = %do.body585
  call void @__sanitizer_cov_trace_pc() #11
  %dev600 = getelementptr i8, ptr %ccdc, i32 -41784
  %147 = ptrtoint ptr %dev600 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev600, align 8
  %arrayidx.i909 = getelementptr i8, ptr %ccdc, i32 -41764
  %149 = ptrtoint ptr %arrayidx.i909 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i909, align 4
  %add.ptr.i910 = getelementptr i8, ptr %150, i32 152
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i910) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug328, ptr noundef %148, ptr noundef nonnull @.str.69, i32 noundef %151) #9
  br label %do.body605

do.body605:                                       ; preds = %if.then599, %do.body585
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body625)) #9
          to label %if.then619 [label %do.body625], !srcloc !219

if.then619:                                       ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #11
  %dev620 = getelementptr i8, ptr %ccdc, i32 -41784
  %152 = ptrtoint ptr %dev620 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev620, align 8
  %arrayidx.i911 = getelementptr i8, ptr %ccdc, i32 -41764
  %154 = ptrtoint ptr %arrayidx.i911 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i911, align 4
  %add.ptr.i912 = getelementptr i8, ptr %155, i32 156
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i912) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug329, ptr noundef %153, ptr noundef nonnull @.str.70, i32 noundef %156) #9
  br label %do.body625

do.body625:                                       ; preds = %if.then619, %do.body605
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body645)) #9
          to label %if.then639 [label %do.body645], !srcloc !219

if.then639:                                       ; preds = %do.body625
  call void @__sanitizer_cov_trace_pc() #11
  %dev640 = getelementptr i8, ptr %ccdc, i32 -41784
  %157 = ptrtoint ptr %dev640 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev640, align 8
  %arrayidx.i913 = getelementptr i8, ptr %ccdc, i32 -41764
  %159 = ptrtoint ptr %arrayidx.i913 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i913, align 4
  %add.ptr.i914 = getelementptr i8, ptr %160, i32 160
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i914) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug330, ptr noundef %158, ptr noundef nonnull @.str.71, i32 noundef %161) #9
  br label %do.body645

do.body645:                                       ; preds = %if.then639, %do.body625
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.body665)) #9
          to label %if.then659 [label %do.body665], !srcloc !219

if.then659:                                       ; preds = %do.body645
  call void @__sanitizer_cov_trace_pc() #11
  %dev660 = getelementptr i8, ptr %ccdc, i32 -41784
  %162 = ptrtoint ptr %dev660 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev660, align 8
  %arrayidx.i915 = getelementptr i8, ptr %ccdc, i32 -41764
  %164 = ptrtoint ptr %arrayidx.i915 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i915, align 4
  %add.ptr.i916 = getelementptr i8, ptr %165, i32 164
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i916) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug331, ptr noundef %163, ptr noundef nonnull @.str.72, i32 noundef %166) #9
  br label %do.body665

do.body665:                                       ; preds = %if.then659, %do.body645
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_print_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ccdc_print_status, %do.end683)) #9
          to label %if.then679 [label %do.end683], !srcloc !219

if.then679:                                       ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #11
  %dev680 = getelementptr i8, ptr %ccdc, i32 -41784
  %167 = ptrtoint ptr %dev680 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev680, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_print_status.__UNIQUE_ID_ddebug332, ptr noundef %168, ptr noundef nonnull @.str.73) #9
  br label %do.end683

do.end683:                                        ; preds = %if.then679, %do.body665
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_configure_bridge(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb31
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp ugt i32 %6, 16
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [17 x i32], ptr @ccdc_fmts, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %9 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb3
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp.not.i.i = icmp ugt i16 %12, 1
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !218

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ 1, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %14, i32 %spec.select.i.i
  br label %__ccdc_get_format.exit

if.else.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 1
  br label %__ccdc_get_format.exit

__ccdc_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %code6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code6, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %16, label %if.else22 [
    i32 8200, label %__ccdc_get_format.exit.if.then10_crit_edge
    i32 8198, label %__ccdc_get_format.exit.if.then10_crit_edge84
  ]

__ccdc_get_format.exit.if.then10_crit_edge84:     ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

__ccdc_get_format.exit.if.then10_crit_edge:       ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %__ccdc_get_format.exit.if.then10_crit_edge, %__ccdc_get_format.exit.if.then10_crit_edge84
  %index11 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %18 = ptrtoint ptr %index11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index11, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %19, label %if.then10.cleanup_crit_edge [
    i32 0, label %if.then10.cleanup.sink.split_crit_edge
    i32 1, label %if.then17
  ]

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else22:                                        ; preds = %__ccdc_get_format.exit
  %index23 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %21 = ptrtoint ptr %index23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp24 = icmp eq i32 %22, 0
  br i1 %cmp24, label %if.else22.cleanup.sink.split_crit_edge, label %if.else22.cleanup_crit_edge

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else22.cleanup.sink.split_crit_edge:           ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb31:                                          ; preds = %entry
  %index32 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %23 = ptrtoint ptr %index32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp33.not = icmp eq i32 %24, 0
  br i1 %cmp33.not, label %if.end35, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %sw.bb31
  %which37 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %25 = ptrtoint ptr %which37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %which37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i71 = icmp eq i32 %26, 0
  br i1 %cmp.i71, label %if.then.i75, label %if.else.i81

if.then.i75:                                      ; preds = %if.end35
  %num_pads.i.i72 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %num_pads.i.i72 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_pads.i.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp.not.i.i74 = icmp ugt i16 %28, 2
  br i1 %cmp.not.i.i74, label %if.then.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge, label %do.end.i.i76, !prof !218

if.then.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge: ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i79

do.end.i.i76:                                     ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i79

v4l2_subdev_get_try_format.exit.i79:              ; preds = %do.end.i.i76, %if.then.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge
  %spec.select.i.i77 = phi i32 [ 0, %do.end.i.i76 ], [ 2, %if.then.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge ]
  %29 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i78 = getelementptr %struct.v4l2_subdev_pad_config, ptr %30, i32 %spec.select.i.i77
  br label %__ccdc_get_format.exit83

if.else.i81:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i80 = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 2
  br label %__ccdc_get_format.exit83

__ccdc_get_format.exit83:                         ; preds = %if.else.i81, %v4l2_subdev_get_try_format.exit.i79
  %retval.0.i82 = phi ptr [ %arrayidx.i.i78, %v4l2_subdev_get_try_format.exit.i79 ], [ %arrayidx.i80, %if.else.i81 ]
  %code39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i82, i32 0, i32 2
  %31 = ptrtoint ptr %code39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp40 = icmp eq i32 %32, 0
  br i1 %cmp40, label %__ccdc_get_format.exit83.cleanup_crit_edge, label %__ccdc_get_format.exit83.cleanup.sink.split_crit_edge

__ccdc_get_format.exit83.cleanup.sink.split_crit_edge: ; preds = %__ccdc_get_format.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

__ccdc_get_format.exit83.cleanup_crit_edge:       ; preds = %__ccdc_get_format.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %__ccdc_get_format.exit83.cleanup.sink.split_crit_edge, %if.else22.cleanup.sink.split_crit_edge, %if.then17, %if.then10.cleanup.sink.split_crit_edge, %if.end
  %.sink = phi i32 [ %8, %if.end ], [ 8207, %if.then17 ], [ 8209, %if.then10.cleanup.sink.split_crit_edge ], [ %16, %if.else22.cleanup.sink.split_crit_edge ], [ %32, %__ccdc_get_format.exit83.cleanup.sink.split_crit_edge ]
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %33 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %code2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %__ccdc_get_format.exit83.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %if.else22.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ -22, %if.else22.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -22, %__ccdc_get_format.exit83.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #9
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call fastcc void @ccdc_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %12, ptr noundef nonnull %format, i32 noundef %14)
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  call fastcc void @ccdc_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %28, ptr noundef nonnull %format, i32 noundef %30)
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !218

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ccdc_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__ccdc_get_format.exit

__ccdc_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__ccdc_get_format.exit.cleanup_crit_edge, label %if.end

__ccdc_get_format.exit.cleanup_crit_edge:         ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__ccdc_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__ccdc_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !218

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ccdc_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__ccdc_get_format.exit

__ccdc_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__ccdc_get_format.exit.cleanup_crit_edge, label %if.end

__ccdc_get_format.exit.cleanup_crit_edge:         ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__ccdc_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @ccdc_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
  %14 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i65 = icmp eq i32 %18, 0
  br i1 %cmp.i65, label %if.then.i67, label %if.else.i70

if.then.i67:                                      ; preds = %if.then8
  %num_pads.i.i66 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i66 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %cmp.i.i = icmp ult i16 %20, 2
  br i1 %cmp.i.i, label %do.end.i.i68, label %if.then.i67.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !226

if.then.i67.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i68:                                     ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i68, %if.then.i67.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %spec.select.i.i69 = zext i1 %not.cmp.i.i to i32
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i.i69, i32 1
  br label %__ccdc_get_crop.exit

if.else.i70:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %crop.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3
  br label %__ccdc_get_crop.exit

__ccdc_get_crop.exit:                             ; preds = %if.else.i70, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i71 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i70 ]
  %23 = ptrtoint ptr %retval.0.i71 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %retval.0.i71, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i71, i32 0, i32 1
  %24 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %top, align 4
  %25 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format3, align 4
  %width12 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i71, i32 0, i32 2
  %27 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %width12, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %height14 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i71, i32 0, i32 3
  %30 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %height14, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code.i, align 4
  %call.i = tail call ptr @omap3isp_video_format_info(i32 noundef %32) #9
  %flavor.i = getelementptr inbounds %struct.isp_format_info, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %flavor.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 8193
  br i1 %cmp.not.i, label %__ccdc_get_crop.exit.if.end.i_crit_edge, label %if.then.i72

__ccdc_get_crop.exit.if.end.i_crit_edge:          ; preds = %__ccdc_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i72:                                      ; preds = %__ccdc_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %retval.0.i71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retval.0.i71, align 4
  %and.i = and i32 %36, -2
  store i32 %and.i, ptr %retval.0.i71, align 4
  %37 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %top, align 4
  %and1.i = and i32 %38, -2
  store i32 %and1.i, ptr %top, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i72, %__ccdc_get_crop.exit.if.end.i_crit_edge
  %39 = ptrtoint ptr %retval.0.i71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %retval.0.i71, align 4
  %41 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format3, align 4
  %sub.i = add i32 %42, -32
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %sub.i) #9
  %44 = ptrtoint ptr %retval.0.i71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %retval.0.i71, align 4
  %45 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %top, align 4
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %sub18.i = add i32 %48, -32
  %49 = tail call i32 @llvm.umin.i32(i32 %46, i32 %sub18.i) #9
  %50 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %top, align 4
  %51 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %format3, align 4
  %sub28.i = sub i32 15, %43
  %add.i = add i32 %sub28.i, %52
  %and29.i = and i32 %add.i, -16
  %53 = ptrtoint ptr %width12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width12, align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 32) #9
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %and29.i) #9
  %and43.i = and i32 %56, -16
  %57 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and43.i, ptr %width12, align 4
  %58 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height14, align 4
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 32) #9
  %61 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height, align 4
  %sub54.i = sub i32 %62, %49
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %sub54.i) #9
  %64 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %height14, align 4
  %65 = ptrtoint ptr %flavor.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %66)
  %cmp63.not.i = icmp eq i32 %66, 8193
  br i1 %cmp63.not.i, label %if.end.i.ccdc_try_crop.exit_crit_edge, label %if.then64.i

if.end.i.ccdc_try_crop.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_try_crop.exit

if.then64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and43.i, ptr %width12, align 4
  %and68.i = and i32 %63, -2
  %68 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and68.i, ptr %height14, align 4
  br label %ccdc_try_crop.exit

ccdc_try_crop.exit:                               ; preds = %if.then64.i, %if.end.i.ccdc_try_crop.exit_crit_edge
  %69 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i73 = icmp eq i32 %70, 0
  br i1 %cmp.i73, label %if.then.i77, label %if.else.i83

if.then.i77:                                      ; preds = %ccdc_try_crop.exit
  %num_pads.i.i74 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %71 = ptrtoint ptr %num_pads.i.i74 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %num_pads.i.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %72)
  %cmp.not.i.i76 = icmp ugt i16 %72, 1
  br i1 %cmp.not.i.i76, label %if.then.i77.v4l2_subdev_get_try_format.exit.i81_crit_edge, label %do.end.i.i78, !prof !218

if.then.i77.v4l2_subdev_get_try_format.exit.i81_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i81

do.end.i.i78:                                     ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i81

v4l2_subdev_get_try_format.exit.i81:              ; preds = %do.end.i.i78, %if.then.i77.v4l2_subdev_get_try_format.exit.i81_crit_edge
  %spec.select.i.i79 = phi i32 [ 0, %do.end.i.i78 ], [ 1, %if.then.i77.v4l2_subdev_get_try_format.exit.i81_crit_edge ]
  %73 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i80 = getelementptr %struct.v4l2_subdev_pad_config, ptr %74, i32 %spec.select.i.i79
  br label %__ccdc_get_format.exit85

if.else.i83:                                      ; preds = %ccdc_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i82 = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 1
  br label %__ccdc_get_format.exit85

__ccdc_get_format.exit85:                         ; preds = %if.else.i83, %v4l2_subdev_get_try_format.exit.i81
  %retval.0.i84 = phi ptr [ %arrayidx.i.i80, %v4l2_subdev_get_try_format.exit.i81 ], [ %arrayidx.i82, %if.else.i83 ]
  %75 = call ptr @memcpy(ptr %retval.0.i84, ptr %format3, i32 48)
  %76 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fmt, align 4
  tail call fastcc void @ccdc_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef 1, ptr noundef %retval.0.i84, i32 noundef %77)
  %78 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i86 = icmp eq i32 %79, 0
  br i1 %cmp.i86, label %if.then.i90, label %if.else.i96

if.then.i90:                                      ; preds = %__ccdc_get_format.exit85
  %num_pads.i.i87 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %80 = ptrtoint ptr %num_pads.i.i87 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %num_pads.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %81)
  %cmp.not.i.i89 = icmp ugt i16 %81, 2
  br i1 %cmp.not.i.i89, label %if.then.i90.v4l2_subdev_get_try_format.exit.i94_crit_edge, label %do.end.i.i91, !prof !218

if.then.i90.v4l2_subdev_get_try_format.exit.i94_crit_edge: ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i94

do.end.i.i91:                                     ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i94

v4l2_subdev_get_try_format.exit.i94:              ; preds = %do.end.i.i91, %if.then.i90.v4l2_subdev_get_try_format.exit.i94_crit_edge
  %spec.select.i.i92 = phi i32 [ 0, %do.end.i.i91 ], [ 2, %if.then.i90.v4l2_subdev_get_try_format.exit.i94_crit_edge ]
  %82 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i93 = getelementptr %struct.v4l2_subdev_pad_config, ptr %83, i32 %spec.select.i.i92
  br label %__ccdc_get_format.exit98

if.else.i96:                                      ; preds = %__ccdc_get_format.exit85
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i95 = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 2
  br label %__ccdc_get_format.exit98

__ccdc_get_format.exit98:                         ; preds = %if.else.i96, %v4l2_subdev_get_try_format.exit.i94
  %retval.0.i97 = phi ptr [ %arrayidx.i.i93, %v4l2_subdev_get_try_format.exit.i94 ], [ %arrayidx.i95, %if.else.i96 ]
  %84 = call ptr @memcpy(ptr %retval.0.i97, ptr %format3, i32 48)
  %85 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fmt, align 4
  %87 = ptrtoint ptr %retval.0.i97 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %retval.0.i97, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i97, i32 0, i32 1
  %89 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %height2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i200.i = icmp eq i32 %86, 0
  br i1 %cmp.i200.i, label %if.then.i204.i, label %if.else.i209.i

if.then.i204.i:                                   ; preds = %__ccdc_get_format.exit98
  %num_pads.i.i201.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %91 = ptrtoint ptr %num_pads.i.i201.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %num_pads.i.i201.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %cmp.not.i.i203.not.i = icmp eq i16 %92, 0
  br i1 %cmp.not.i.i203.not.i, label %do.end.i.i205.i, label %if.then.i204.i.v4l2_subdev_get_try_format.exit.i207.i_crit_edge, !prof !226

if.then.i204.i.v4l2_subdev_get_try_format.exit.i207.i_crit_edge: ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i207.i

do.end.i.i205.i:                                  ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i207.i

v4l2_subdev_get_try_format.exit.i207.i:           ; preds = %do.end.i.i205.i, %if.then.i204.i.v4l2_subdev_get_try_format.exit.i207.i_crit_edge
  %93 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sd_state, align 4
  br label %__ccdc_get_format.exit211.i

if.else.i209.i:                                   ; preds = %__ccdc_get_format.exit98
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i208.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 0
  br label %__ccdc_get_format.exit211.i

__ccdc_get_format.exit211.i:                      ; preds = %if.else.i209.i, %v4l2_subdev_get_try_format.exit.i207.i
  %retval.0.i210.i = phi ptr [ %94, %v4l2_subdev_get_try_format.exit.i207.i ], [ %arrayidx.i208.i, %if.else.i209.i ]
  %95 = call ptr @memcpy(ptr %retval.0.i97, ptr %retval.0.i210.i, i32 48)
  %code79.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i97, i32 0, i32 2
  %96 = ptrtoint ptr %code79.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %code79.i, align 4
  %call80.i = tail call ptr @omap3isp_video_format_info(i32 noundef %97) #9
  %truncated.i = getelementptr inbounds %struct.isp_format_info, ptr %call80.i, i32 0, i32 1
  %98 = ptrtoint ptr %truncated.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %truncated.i, align 4
  %100 = ptrtoint ptr %code79.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %code79.i, align 4
  %101 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %99, label %__ccdc_get_format.exit211.i.ccdc_try_format.exit_crit_edge [
    i32 8200, label %__ccdc_get_format.exit211.i.if.then87.i_crit_edge
    i32 8198, label %__ccdc_get_format.exit211.i.if.then87.i_crit_edge100
  ]

__ccdc_get_format.exit211.i.if.then87.i_crit_edge100: ; preds = %__ccdc_get_format.exit211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87.i

__ccdc_get_format.exit211.i.if.then87.i_crit_edge: ; preds = %__ccdc_get_format.exit211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87.i

__ccdc_get_format.exit211.i.ccdc_try_format.exit_crit_edge: ; preds = %__ccdc_get_format.exit211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_try_format.exit

if.then87.i:                                      ; preds = %__ccdc_get_format.exit211.i.if.then87.i_crit_edge, %__ccdc_get_format.exit211.i.if.then87.i_crit_edge100
  %102 = ptrtoint ptr %code79.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %code79.i, align 4
  br label %ccdc_try_format.exit

ccdc_try_format.exit:                             ; preds = %if.then87.i, %__ccdc_get_format.exit211.i.ccdc_try_format.exit_crit_edge
  %103 = tail call i32 @llvm.umax.i32(i32 %88, i32 32) #9
  %104 = ptrtoint ptr %retval.0.i97 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %retval.0.i97, align 4
  %106 = tail call i32 @llvm.umin.i32(i32 %103, i32 %105) #9
  %107 = ptrtoint ptr %retval.0.i97 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %retval.0.i97, align 4
  %108 = tail call i32 @llvm.umax.i32(i32 %90, i32 32) #9
  %109 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height2.i, align 4
  %sub.i99 = add i32 %110, -1
  %111 = tail call i32 @llvm.umin.i32(i32 %108, i32 %sub.i99) #9
  %112 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %height2.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i97, i32 0, i32 4
  %113 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8, ptr %colorspace.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ccdc_try_format.exit, %if.end.cleanup_crit_edge, %__ccdc_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__ccdc_get_format.exit.cleanup_crit_edge ], [ 0, %ccdc_try_format.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !226

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  br label %__ccdc_get_format.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 0
  br label %__ccdc_get_format.exit

__ccdc_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %16, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code.i, align 4
  %call.i = tail call ptr @omap3isp_video_format_info(i32 noundef %18) #9
  %flavor.i = getelementptr inbounds %struct.isp_format_info, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %flavor.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 8193
  br i1 %cmp.not.i, label %__ccdc_get_format.exit.if.end.i_crit_edge, label %if.then.i23

__ccdc_get_format.exit.if.end.i_crit_edge:        ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i23:                                      ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r, align 4
  %and.i = and i32 %22, -2
  store i32 %and.i, ptr %r, align 4
  %23 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %top, align 4
  %and1.i = and i32 %24, -2
  store i32 %and1.i, ptr %top, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i23, %__ccdc_get_format.exit.if.end.i_crit_edge
  %25 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r, align 4
  %27 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retval.0.i, align 4
  %sub.i = add i32 %28, -32
  %29 = tail call i32 @llvm.umin.i32(i32 %26, i32 %sub.i) #9
  %30 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %r, align 4
  %31 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %top, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height.i, align 4
  %sub18.i = add i32 %34, -32
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %sub18.i) #9
  %36 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %top, align 4
  %37 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval.0.i, align 4
  %sub28.i = sub i32 15, %29
  %add.i = add i32 %sub28.i, %38
  %and29.i = and i32 %add.i, -16
  %39 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 32) #9
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %and29.i) #9
  %and43.i = and i32 %42, -16
  %43 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and43.i, ptr %width, align 4
  %44 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 32) #9
  %47 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height.i, align 4
  %sub54.i = sub i32 %48, %35
  %49 = tail call i32 @llvm.umin.i32(i32 %46, i32 %sub54.i) #9
  %50 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %height, align 4
  %51 = ptrtoint ptr %flavor.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %52)
  %cmp63.not.i = icmp eq i32 %52, 8193
  br i1 %cmp63.not.i, label %if.end.i.cleanup_crit_edge, label %if.then64.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and43.i, ptr %width, align 4
  %and68.i = and i32 %49, -2
  %54 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and68.i, ptr %height, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %r7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %55 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i24 = icmp eq i32 %56, 0
  br i1 %cmp.i24, label %if.then.i26, label %if.else.i28

if.then.i26:                                      ; preds = %sw.bb6
  %num_pads.i.i25 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %num_pads.i.i25 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_pads.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %58)
  %cmp.i.i = icmp ult i16 %58, 2
  br i1 %cmp.i.i, label %do.end.i.i27, label %if.then.i26.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !226

if.then.i26.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i27:                                     ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i27, %if.then.i26.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %spec.select.i.i = zext i1 %not.cmp.i.i to i32
  %59 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %60, i32 %spec.select.i.i, i32 1
  br label %__ccdc_get_crop.exit

if.else.i28:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %crop.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3
  br label %__ccdc_get_crop.exit

__ccdc_get_crop.exit:                             ; preds = %if.else.i28, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i29 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i28 ]
  %61 = call ptr @memcpy(ptr %r7, ptr %retval.0.i29, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %__ccdc_get_crop.exit, %if.then64.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %__ccdc_get_crop.exit ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then64.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %cmp.i.i = icmp ult i16 %13, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !226

if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %spec.select.i.i = zext i1 %not.cmp.i.i to i32
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i.i, i32 1
  br label %__ccdc_get_crop.exit

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %crop.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3
  br label %__ccdc_get_crop.exit

__ccdc_get_crop.exit:                             ; preds = %if.else.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i ]
  %16 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %17 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i39 = icmp eq i32 %18, 0
  br i1 %cmp.i39, label %if.then.i41, label %if.else.i44

if.then.i41:                                      ; preds = %if.end7
  %num_pads.i.i40 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i40 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.not.i.i.not = icmp eq i16 %20, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i42, label %if.then.i41.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !226

if.then.i41.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i42:                                     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i42, %if.then.i41.v4l2_subdev_get_try_format.exit.i_crit_edge
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  br label %__ccdc_get_format.exit

if.else.i44:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 0
  br label %__ccdc_get_format.exit

__ccdc_get_format.exit:                           ; preds = %if.else.i44, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i45 = phi ptr [ %22, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i44 ]
  %r10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i45, i32 0, i32 2
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code.i, align 4
  %call.i = tail call ptr @omap3isp_video_format_info(i32 noundef %24) #9
  %flavor.i = getelementptr inbounds %struct.isp_format_info, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %flavor.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 8193
  br i1 %cmp.not.i, label %__ccdc_get_format.exit.if.end.i_crit_edge, label %if.then.i46

__ccdc_get_format.exit.if.end.i_crit_edge:        ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i46:                                      ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %r10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r10, align 4
  %and.i = and i32 %28, -2
  store i32 %and.i, ptr %r10, align 4
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top.i, align 4
  %and1.i = and i32 %30, -2
  store i32 %and1.i, ptr %top.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i46, %__ccdc_get_format.exit.if.end.i_crit_edge
  %31 = ptrtoint ptr %r10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %r10, align 4
  %33 = ptrtoint ptr %retval.0.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retval.0.i45, align 4
  %sub.i = add i32 %34, -32
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %sub.i) #9
  %36 = ptrtoint ptr %r10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %r10, align 4
  %top11.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %top11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %top11.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i45, i32 0, i32 1
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height.i, align 4
  %sub18.i = add i32 %40, -32
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %sub18.i) #9
  %42 = ptrtoint ptr %top11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %top11.i, align 4
  %43 = ptrtoint ptr %retval.0.i45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %retval.0.i45, align 4
  %sub28.i = sub i32 15, %35
  %add.i = add i32 %sub28.i, %44
  %and29.i = and i32 %add.i, -16
  %width30.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %width30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width30.i, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 32) #9
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %and29.i) #9
  %and43.i = and i32 %48, -16
  %49 = ptrtoint ptr %width30.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and43.i, ptr %width30.i, align 4
  %height45.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %height45.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height45.i, align 4
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 32) #9
  %53 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height.i, align 4
  %sub54.i = sub i32 %54, %41
  %55 = tail call i32 @llvm.umin.i32(i32 %52, i32 %sub54.i) #9
  %56 = ptrtoint ptr %height45.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %height45.i, align 4
  %57 = ptrtoint ptr %flavor.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %58)
  %cmp63.not.i = icmp eq i32 %58, 8193
  br i1 %cmp63.not.i, label %if.end.i.ccdc_try_crop.exit_crit_edge, label %if.then64.i

if.end.i.ccdc_try_crop.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_try_crop.exit

if.then64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %width30.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and43.i, ptr %width30.i, align 4
  %and68.i = and i32 %55, -2
  %60 = ptrtoint ptr %height45.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and68.i, ptr %height45.i, align 4
  br label %ccdc_try_crop.exit

ccdc_try_crop.exit:                               ; preds = %if.then64.i, %if.end.i.ccdc_try_crop.exit_crit_edge
  %61 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i47 = icmp eq i32 %62, 0
  br i1 %cmp.i47, label %if.then.i50, label %if.else.i57

if.then.i50:                                      ; preds = %ccdc_try_crop.exit
  %num_pads.i.i48 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %num_pads.i.i48 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %num_pads.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %64)
  %cmp.i.i49 = icmp ult i16 %64, 2
  br i1 %cmp.i.i49, label %do.end.i.i51, label %if.then.i50.v4l2_subdev_get_try_crop.exit.i55_crit_edge, !prof !226

if.then.i50.v4l2_subdev_get_try_crop.exit.i55_crit_edge: ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_crop.exit.i55

do.end.i.i51:                                     ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_crop.exit.i55

v4l2_subdev_get_try_crop.exit.i55:                ; preds = %do.end.i.i51, %if.then.i50.v4l2_subdev_get_try_crop.exit.i55_crit_edge
  %not.cmp.i.i52 = xor i1 %cmp.i.i49, true
  %spec.select.i.i53 = zext i1 %not.cmp.i.i52 to i32
  %65 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i54 = getelementptr %struct.v4l2_subdev_pad_config, ptr %66, i32 %spec.select.i.i53, i32 1
  br label %__ccdc_get_crop.exit59

if.else.i57:                                      ; preds = %ccdc_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %crop.i56 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 3
  br label %__ccdc_get_crop.exit59

__ccdc_get_crop.exit59:                           ; preds = %if.else.i57, %v4l2_subdev_get_try_crop.exit.i55
  %retval.0.i58 = phi ptr [ %try_crop.i.i54, %v4l2_subdev_get_try_crop.exit.i55 ], [ %crop.i56, %if.else.i57 ]
  %67 = call ptr @memcpy(ptr %retval.0.i58, ptr %r10, i32 16)
  %68 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i60 = icmp eq i32 %69, 0
  br i1 %cmp.i60, label %if.then.i64, label %if.else.i69

if.then.i64:                                      ; preds = %__ccdc_get_crop.exit59
  %num_pads.i.i61 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %70 = ptrtoint ptr %num_pads.i.i61 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_pads.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %71)
  %cmp.not.i.i63 = icmp ugt i16 %71, 1
  br i1 %cmp.not.i.i63, label %if.then.i64.v4l2_subdev_get_try_format.exit.i67_crit_edge, label %do.end.i.i65, !prof !218

if.then.i64.v4l2_subdev_get_try_format.exit.i67_crit_edge: ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i67

do.end.i.i65:                                     ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i67

v4l2_subdev_get_try_format.exit.i67:              ; preds = %do.end.i.i65, %if.then.i64.v4l2_subdev_get_try_format.exit.i67_crit_edge
  %spec.select.i.i66 = phi i32 [ 0, %do.end.i.i65 ], [ 1, %if.then.i64.v4l2_subdev_get_try_format.exit.i67_crit_edge ]
  %72 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %73, i32 %spec.select.i.i66
  br label %__ccdc_get_format.exit71

if.else.i69:                                      ; preds = %__ccdc_get_crop.exit59
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i68 = getelementptr %struct.isp_ccdc_device, ptr %1, i32 0, i32 2, i32 1
  br label %__ccdc_get_format.exit71

__ccdc_get_format.exit71:                         ; preds = %if.else.i69, %v4l2_subdev_get_try_format.exit.i67
  %retval.0.i70 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i67 ], [ %arrayidx.i68, %if.else.i69 ]
  %74 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sel, align 4
  tail call fastcc void @ccdc_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef 1, ptr noundef %retval.0.i70, i32 noundef %75)
  br label %cleanup

cleanup:                                          ; preds = %__ccdc_get_format.exit71, %__ccdc_get_crop.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__ccdc_get_crop.exit ], [ 0, %__ccdc_get_format.exit71 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_link_validate(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %link, ptr nocapture noundef readonly %source_fmt, ptr nocapture noundef readonly %sink_fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt, i32 0, i32 2
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6.not = icmp eq i32 %7, %9
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %input = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp eq i32 %11, 1
  br i1 %cmp7, label %if.then8, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %entity = getelementptr inbounds %struct.media_pad, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entity, align 4
  %asd = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %asd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asd, align 4
  %bus14 = getelementptr inbounds %struct.isp_async_subdev, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %bus14 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %bus14, align 4
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.cast = zext i16 %bf.lshr to i32
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end.if.end15_crit_edge
  %parallel_shift.0 = phi i32 [ %bf.cast, %if.then8 ], [ 0, %if.end.if.end15_crit_edge ]
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code, align 4
  %code18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %code18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp eq i32 %21, %23
  br i1 %cmp.i, label %if.end15.ccdc_is_shiftable.exit.thread29_crit_edge, label %if.end.i

if.end15.ccdc_is_shiftable.exit.thread29_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_is_shiftable.exit.thread29

if.end.i:                                         ; preds = %if.end15
  %call.i = tail call ptr @omap3isp_video_format_info(i32 noundef %21) #9
  %call1.i = tail call ptr @omap3isp_video_format_info(i32 noundef %23) #9
  %flavor.i = getelementptr inbounds %struct.isp_format_info, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %flavor.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2.i = icmp eq i32 %25, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %flavor3.i = getelementptr inbounds %struct.isp_format_info, ptr %call1.i, i32 0, i32 3
  %26 = ptrtoint ptr %flavor3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flavor3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.i = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp9.not.i = icmp eq i32 %25, %27
  %or.cond.i = select i1 %cmp4.i, i1 %cmp9.not.i, i1 false
  br i1 %or.cond.i, label %ccdc_is_shiftable.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ccdc_is_shiftable.exit:                           ; preds = %lor.lhs.false.i
  %width.i = getelementptr inbounds %struct.isp_format_info, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 4
  %width12.i = getelementptr inbounds %struct.isp_format_info, ptr %call1.i, i32 0, i32 5
  %30 = ptrtoint ptr %width12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width12.i, align 4
  %sub.i = add i32 %29, %parallel_shift.0
  %add.i = sub i32 %sub.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add.i)
  %cmp13.i = icmp ult i32 %add.i, 7
  br i1 %cmp13.i, label %ccdc_is_shiftable.exit.ccdc_is_shiftable.exit.thread29_crit_edge, label %ccdc_is_shiftable.exit.cleanup_crit_edge

ccdc_is_shiftable.exit.cleanup_crit_edge:         ; preds = %ccdc_is_shiftable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ccdc_is_shiftable.exit.ccdc_is_shiftable.exit.thread29_crit_edge: ; preds = %ccdc_is_shiftable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccdc_is_shiftable.exit.thread29

ccdc_is_shiftable.exit.thread29:                  ; preds = %ccdc_is_shiftable.exit.ccdc_is_shiftable.exit.thread29_crit_edge, %if.end15.ccdc_is_shiftable.exit.thread29_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %ccdc_is_shiftable.exit.thread29, %ccdc_is_shiftable.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %lor.lhs.false.cleanup_crit_edge ], [ -32, %entry.cleanup_crit_edge ], [ 0, %ccdc_is_shiftable.exit.thread29 ], [ -32, %ccdc_is_shiftable.exit.cleanup_crit_edge ], [ -32, %lor.lhs.false.i.cleanup_crit_edge ], [ -32, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_try_format(ptr nocapture noundef readonly %ccdc, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %height2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %4 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb34
    i32 2, label %sw.bb77
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %6, label %for.cond.16 [
    i32 8193, label %for.cond.preheader.if.end7_crit_edge
    i32 8202, label %for.cond.preheader.if.end7_crit_edge214
    i32 8211, label %for.cond.preheader.if.end7_crit_edge215
    i32 12290, label %for.cond.preheader.if.end7_crit_edge216
    i32 12308, label %for.cond.preheader.if.end7_crit_edge217
    i32 12289, label %for.cond.preheader.if.end7_crit_edge218
    i32 12307, label %for.cond.preheader.if.end7_crit_edge219
    i32 12298, label %for.cond.preheader.if.end7_crit_edge220
    i32 12303, label %for.cond.preheader.if.end7_crit_edge221
    i32 12295, label %for.cond.preheader.if.end7_crit_edge222
    i32 12302, label %for.cond.preheader.if.end7_crit_edge223
    i32 12305, label %for.cond.preheader.if.end7_crit_edge224
    i32 12306, label %for.cond.preheader.if.end7_crit_edge225
    i32 12296, label %for.cond.preheader.if.end7_crit_edge226
    i32 12304, label %for.cond.preheader.if.end7_crit_edge227
    i32 8200, label %for.cond.preheader.if.end7_crit_edge228
    i32 8198, label %for.cond.preheader.if.end7_crit_edge229
  ]

for.cond.preheader.if.end7_crit_edge229:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge228:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge227:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge226:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge225:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge224:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge223:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge222:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge221:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge220:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge219:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge218:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge217:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge216:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge215:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge214:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.16:                                      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12298, ptr %code, align 4
  br label %if.end7

if.end7:                                          ; preds = %for.cond.16, %for.cond.preheader.if.end7_crit_edge, %for.cond.preheader.if.end7_crit_edge214, %for.cond.preheader.if.end7_crit_edge215, %for.cond.preheader.if.end7_crit_edge216, %for.cond.preheader.if.end7_crit_edge217, %for.cond.preheader.if.end7_crit_edge218, %for.cond.preheader.if.end7_crit_edge219, %for.cond.preheader.if.end7_crit_edge220, %for.cond.preheader.if.end7_crit_edge221, %for.cond.preheader.if.end7_crit_edge222, %for.cond.preheader.if.end7_crit_edge223, %for.cond.preheader.if.end7_crit_edge224, %for.cond.preheader.if.end7_crit_edge225, %for.cond.preheader.if.end7_crit_edge226, %for.cond.preheader.if.end7_crit_edge227, %for.cond.preheader.if.end7_crit_edge228, %for.cond.preheader.if.end7_crit_edge229
  %9 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 4096)
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 32)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 4096)
  %14 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height2, align 4
  %field29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %15 = ptrtoint ptr %field29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp30 = icmp eq i32 %16, 0
  br i1 %cmp30, label %if.then31, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then31:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %field29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field29, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %code35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %18 = ptrtoint ptr %code35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code35, align 4
  %field36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %20 = ptrtoint ptr %field36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb34
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 5
  %22 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.not.i.i.not = icmp eq i16 %23, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !226

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  br label %__ccdc_get_format.exit

if.else.i:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0
  br label %__ccdc_get_format.exit

__ccdc_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %25, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %26 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i, i32 48)
  %27 = ptrtoint ptr %code35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code35, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %28, label %__ccdc_get_format.exit.if.end62_crit_edge [
    i32 8200, label %__ccdc_get_format.exit.if.then41_crit_edge
    i32 8198, label %__ccdc_get_format.exit.if.then41_crit_edge230
  ]

__ccdc_get_format.exit.if.then41_crit_edge230:    ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

__ccdc_get_format.exit.if.then41_crit_edge:       ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

__ccdc_get_format.exit.if.end62_crit_edge:        ; preds = %__ccdc_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then41:                                        ; preds = %__ccdc_get_format.exit.if.then41_crit_edge, %__ccdc_get_format.exit.if.then41_crit_edge230
  %30 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %19, label %if.end51thread-pre-split [
    i32 8200, label %if.then41.if.then49_crit_edge
    i32 8198, label %if.then41.if.then49_crit_edge231
    i32 8209, label %if.then41.if.then49_crit_edge232
    i32 8207, label %if.then41.if.then49_crit_edge233
  ]

if.then41.if.then49_crit_edge233:                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then41.if.then49_crit_edge232:                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then41.if.then49_crit_edge231:                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then41.if.then49_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then49:                                        ; preds = %if.then41.if.then49_crit_edge, %if.then41.if.then49_crit_edge231, %if.then41.if.then49_crit_edge232, %if.then41.if.then49_crit_edge233
  %31 = ptrtoint ptr %code35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %19, ptr %code35, align 4
  br label %if.end51

if.end51thread-pre-split:                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %code35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %code35, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51thread-pre-split, %if.then49
  %33 = phi i32 [ %.pr, %if.end51thread-pre-split ], [ %19, %if.then49 ]
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %33, label %if.end51.if.end62_crit_edge [
    i32 8200, label %if.end51.if.end62.sink.split_crit_edge
    i32 8198, label %if.then58
  ]

if.end51.if.end62.sink.split_crit_edge:           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.sink.split

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.then58, %if.end51.if.end62.sink.split_crit_edge
  %.sink = phi i32 [ 8207, %if.then58 ], [ 8209, %if.end51.if.end62.sink.split_crit_edge ]
  %35 = ptrtoint ptr %code35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %code35, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.end51.if.end62_crit_edge, %__ccdc_get_format.exit.if.end62_crit_edge
  br i1 %cmp.i, label %if.then.i196, label %if.else.i198

if.then.i196:                                     ; preds = %if.end62
  %num_pads.i.i195 = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 5
  %36 = ptrtoint ptr %num_pads.i.i195 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %37)
  %cmp.i.i = icmp ult i16 %37, 2
  br i1 %cmp.i.i, label %do.end.i.i197, label %if.then.i196.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !226

if.then.i196.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i197:                                    ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i197, %if.then.i196.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %spec.select.i.i = zext i1 %not.cmp.i.i to i32
  %38 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %39, i32 %spec.select.i.i, i32 1
  br label %__ccdc_get_crop.exit

if.else.i198:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %crop.i = getelementptr inbounds %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 3
  br label %__ccdc_get_crop.exit

__ccdc_get_crop.exit:                             ; preds = %if.else.i198, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i199 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i198 ]
  %width64 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i199, i32 0, i32 2
  %40 = ptrtoint ptr %width64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width64, align 4
  %42 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fmt, align 4
  %height66 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i199, i32 0, i32 3
  %43 = ptrtoint ptr %height66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height66, align 4
  %45 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %height2, align 4
  %46 = ptrtoint ptr %field36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %field36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %cmp69 = icmp eq i32 %47, 7
  %48 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %48)
  %switch = icmp eq i32 %48, 8
  %or.cond = select i1 %cmp69, i1 %switch, i1 false
  br i1 %or.cond, label %if.then73, label %__ccdc_get_crop.exit.sw.epilog_crit_edge

__ccdc_get_crop.exit.sw.epilog_crit_edge:         ; preds = %__ccdc_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then73:                                        ; preds = %__ccdc_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %field36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %21, ptr %field36, align 4
  %mul = shl i32 %44, 1
  %50 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul, ptr %height2, align 4
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i200 = icmp eq i32 %which, 0
  br i1 %cmp.i200, label %if.then.i204, label %if.else.i209

if.then.i204:                                     ; preds = %sw.bb77
  %num_pads.i.i201 = getelementptr inbounds %struct.media_entity, ptr %ccdc, i32 0, i32 5
  %51 = ptrtoint ptr %num_pads.i.i201 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %num_pads.i.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp.not.i.i203.not = icmp eq i16 %52, 0
  br i1 %cmp.not.i.i203.not, label %do.end.i.i205, label %if.then.i204.v4l2_subdev_get_try_format.exit.i207_crit_edge, !prof !226

if.then.i204.v4l2_subdev_get_try_format.exit.i207_crit_edge: ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i207

do.end.i.i205:                                    ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i207

v4l2_subdev_get_try_format.exit.i207:             ; preds = %do.end.i.i205, %if.then.i204.v4l2_subdev_get_try_format.exit.i207_crit_edge
  %53 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sd_state, align 4
  br label %__ccdc_get_format.exit211

if.else.i209:                                     ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i208 = getelementptr %struct.isp_ccdc_device, ptr %ccdc, i32 0, i32 2, i32 0
  br label %__ccdc_get_format.exit211

__ccdc_get_format.exit211:                        ; preds = %if.else.i209, %v4l2_subdev_get_try_format.exit.i207
  %retval.0.i210 = phi ptr [ %54, %v4l2_subdev_get_try_format.exit.i207 ], [ %arrayidx.i208, %if.else.i209 ]
  %55 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i210, i32 48)
  %code79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %56 = ptrtoint ptr %code79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %code79, align 4
  %call80 = tail call ptr @omap3isp_video_format_info(i32 noundef %57) #9
  %truncated = getelementptr inbounds %struct.isp_format_info, ptr %call80, i32 0, i32 1
  %58 = ptrtoint ptr %truncated to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %truncated, align 4
  %60 = ptrtoint ptr %code79 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %code79, align 4
  %61 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %59, label %__ccdc_get_format.exit211.if.end89_crit_edge [
    i32 8200, label %__ccdc_get_format.exit211.if.then87_crit_edge
    i32 8198, label %__ccdc_get_format.exit211.if.then87_crit_edge234
  ]

__ccdc_get_format.exit211.if.then87_crit_edge234: ; preds = %__ccdc_get_format.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

__ccdc_get_format.exit211.if.then87_crit_edge:    ; preds = %__ccdc_get_format.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

__ccdc_get_format.exit211.if.end89_crit_edge:     ; preds = %__ccdc_get_format.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then87:                                        ; preds = %__ccdc_get_format.exit211.if.then87_crit_edge, %__ccdc_get_format.exit211.if.then87_crit_edge234
  %62 = ptrtoint ptr %code79 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %code79, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %__ccdc_get_format.exit211.if.end89_crit_edge
  %63 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %64 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fmt, align 4
  %66 = tail call i32 @llvm.umin.i32(i32 %63, i32 %65)
  %67 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %fmt, align 4
  %68 = tail call i32 @llvm.umax.i32(i32 %3, i32 32)
  %69 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height2, align 4
  %sub = add i32 %70, -1
  %71 = tail call i32 @llvm.umin.i32(i32 %68, i32 %sub)
  %72 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %height2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end89, %if.then73, %__ccdc_get_crop.exit.sw.epilog_crit_edge, %if.then31, %if.end7.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %73 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %colorspace, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %index5 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %2 = ptrtoint ptr %index5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index5, align 4
  %conv = zext i16 %3 to i32
  %entity6 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity6, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 131072, label %sw.bb
    i32 131074, label %sw.bb41
    i32 1, label %sw.bb55
    i32 131073, label %sw.bb70
  ]

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %input = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 4
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %input, align 4
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %isp_ccp2 = getelementptr i8, ptr %1, i32 8176
  %cmp17 = icmp eq ptr %5, %isp_ccp2
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %input, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %isp_csi2a = getelementptr i8, ptr %1, i32 2832
  %cmp24 = icmp eq ptr %5, %isp_csi2a
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %input, align 4
  br label %cleanup

if.else28:                                        ; preds = %if.else
  %isp_csi2c = getelementptr i8, ptr %1, i32 5504
  %cmp32 = icmp eq ptr %5, %isp_csi2c
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %input, align 4
  br label %cleanup

if.else36:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %input, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and42 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %output52 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %output52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %output52, align 8
  %and53 = and i32 %18, -3
  br i1 %tobool43.not, label %if.else51, label %if.then44

if.then44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool46.not = icmp eq i32 %and53, 0
  br i1 %tobool46.not, label %if.end48, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %or50 = or i32 %18, 2
  %19 = ptrtoint ptr %output52 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or50, ptr %output52, align 8
  br label %cleanup

if.else51:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %output52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and53, ptr %output52, align 8
  br label %cleanup

sw.bb55:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and56 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %output67 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %output67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %output67, align 8
  br i1 %tobool57.not, label %if.else66, label %if.then58

if.then58:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %tobool61.not = icmp ult i32 %22, 2
  br i1 %tobool61.not, label %if.end63, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %or65 = or i32 %22, 1
  %23 = ptrtoint ptr %output67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or65, ptr %output67, align 8
  br label %cleanup

if.else66:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %and68 = and i32 %22, -2
  %24 = ptrtoint ptr %output67 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and68, ptr %output67, align 8
  br label %cleanup

sw.bb70:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and71 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %output82 = getelementptr inbounds %struct.isp_ccdc_device, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %output82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %output82, align 8
  %and83 = and i32 %26, -5
  br i1 %tobool72.not, label %if.else81, label %if.then73

if.then73:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool76.not = icmp eq i32 %and83, 0
  br i1 %tobool76.not, label %if.end78, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %or80 = or i32 %26, 4
  %27 = ptrtoint ptr %output82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or80, ptr %output82, align 8
  br label %cleanup

if.else81:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %output82 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and83, ptr %output82, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else81, %if.end78, %if.then73.cleanup_crit_edge, %if.else66, %if.end63, %if.then58.cleanup_crit_edge, %if.else51, %if.end48, %if.then44.cleanup_crit_edge, %if.else36, %if.then34, %if.then26, %if.then19, %if.end10.cleanup_crit_edge, %if.then9, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end10.cleanup_crit_edge ], [ -16, %if.then44.cleanup_crit_edge ], [ -16, %if.then58.cleanup_crit_edge ], [ -16, %if.then73.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge ], [ 0, %if.end78 ], [ 0, %if.else81 ], [ 0, %if.end63 ], [ 0, %if.else66 ], [ 0, %if.end48 ], [ 0, %if.else51 ], [ 0, %if.then19 ], [ 0, %if.then34 ], [ 0, %if.else36 ], [ 0, %if.then26 ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_video_queue(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 5
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26
  %output = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 5
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma = getelementptr inbounds %struct.isp_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 8
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #9, !srcloc !214
  %lock = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %state = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 17
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp eq i32 %9, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %running = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 21
  %10 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %running, align 8, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %bt656 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 14
  %12 = ptrtoint ptr %bt656 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bt656, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.else_crit_edge, label %if.end12

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %underrun = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 16
  %14 = ptrtoint ptr %underrun to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %underrun, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %underrun, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %req_lock.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 11, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i.i) #9
  %active.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 11, i32 4
  %15 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active.i.i, align 8
  %cmp6.i.not.i = icmp eq ptr %16, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i.i, i32 noundef %call2.i.i) #9
  br i1 %cmp6.i.not.i, label %if.end12.if.end.i_crit_edge, label %if.then.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__ccdc_lsc_enable(ptr noundef %isp_ccdc, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %stopping.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 20
  %17 = ptrtoint ptr %stopping.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stopping.i.i, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !213
  %or.i.i.i = or i32 %21, 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %or.i.i.i) #9, !srcloc !214
  %24 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %running, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.i.cleanup_crit_edge, %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !192, !193, !195, !197, !199, !201}
!llvm.named.register.sp = !{!203}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @omap3isp_ccdc_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2711, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @omap3isp_ccdc_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2712, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap3isp_ccdc_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2713, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap3isp_ccdc_init.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2717, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @omap3isp_ccdc_init.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2720, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 284, i32 4}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ccdc_lsc_enable._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @__ccdc_lsc_enable._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 315, i32 3}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__ccdc_lsc_configure.__UNIQUE_ID_ddebug339, !26, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 147, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug333, !31, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 152, i32 3}
!36 = !{ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug334, !35, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 158, i32 3}
!39 = !{ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug335, !38, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 178, i32 3}
!42 = !{ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug336, !41, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 182, i32 3}
!45 = !{ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug337, !44, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 186, i32 3}
!48 = !{ptr @ccdc_lsc_validate_config.__UNIQUE_ID_ddebug338, !47, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 1491, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ccdc_lsc_isr.__UNIQUE_ID_ddebug347, !50, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 1608, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ccdc_isr_buffer._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @ccdc_isr_buffer._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/media/media-entity.h", i32 468, i32 6}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2664, i32 20}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2687, i32 46}
!65 = !{ptr @ccdc_v4l2_ops, !66, !"ccdc_v4l2_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2501, i32 37}
!67 = !{ptr @ccdc_v4l2_core_ops, !68, !"ccdc_v4l2_core_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2478, i32 42}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 416, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ccdc_lsc_config.__UNIQUE_ID_ddebug340, !77, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!80 = !{ptr @ccdc_v4l2_video_ops, !81, !"ccdc_v4l2_video_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2485, i32 43}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 70, i32 2}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug298, !83, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 72, i32 2}
!88 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug299, !87, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 73, i32 2}
!91 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug300, !90, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 74, i32 2}
!94 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug301, !93, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 75, i32 2}
!97 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug302, !96, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 76, i32 2}
!100 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug303, !99, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 77, i32 2}
!103 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug304, !102, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 78, i32 2}
!106 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug305, !105, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 79, i32 2}
!109 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug306, !108, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 80, i32 2}
!112 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug307, !111, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 81, i32 2}
!115 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug308, !114, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 82, i32 2}
!118 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug309, !117, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 83, i32 2}
!121 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug310, !120, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 84, i32 2}
!124 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug311, !123, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 85, i32 2}
!127 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug312, !126, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 86, i32 2}
!130 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug313, !129, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 87, i32 2}
!133 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug314, !132, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 88, i32 2}
!136 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug315, !135, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 89, i32 2}
!139 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug316, !138, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 90, i32 2}
!142 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug317, !141, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 91, i32 2}
!145 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug318, !144, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 92, i32 2}
!148 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug319, !147, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 93, i32 2}
!151 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug320, !150, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 94, i32 2}
!154 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug321, !153, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 95, i32 2}
!157 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug322, !156, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 96, i32 2}
!160 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug323, !159, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 97, i32 2}
!163 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug324, !162, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 98, i32 2}
!166 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug325, !165, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 99, i32 2}
!169 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug326, !168, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 100, i32 2}
!172 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug327, !171, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 101, i32 2}
!175 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug328, !174, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 102, i32 2}
!178 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug329, !177, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 103, i32 2}
!181 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug330, !180, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 104, i32 2}
!184 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug331, !183, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!185 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 106, i32 2}
!187 = !{ptr @ccdc_print_status.__UNIQUE_ID_ddebug332, !186, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!188 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 1342, i32 3}
!190 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @ccdc_disable._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @ccdc_disable._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @ccdc_v4l2_pad_ops, !194, !"ccdc_v4l2_pad_ops", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2490, i32 41}
!195 = !{ptr @ccdc_fmts, !196, !"ccdc_fmts", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 36, i32 27}
!197 = !{ptr @ccdc_v4l2_internal_ops, !198, !"ccdc_v4l2_internal_ops", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2508, i32 46}
!199 = !{ptr @ccdc_media_ops, !200, !"ccdc_media_ops", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 2610, i32 45}
!201 = !{ptr @ccdc_video_ops, !202, !"ccdc_video_ops", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/omap3isp/ispccdc.c", i32 1822, i32 42}
!203 = !{!"sp"}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{i64 6301375}
!214 = !{i64 6300957}
!215 = !{i8 0, i8 2}
!216 = !{i64 2148416573, i64 2148416599, i64 2148416628, i64 2148416662, i64 2148416693, i64 2148416716}
!217 = !{i64 2156847489}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{i64 2149029950, i64 2149029955, i64 2149029968, i64 2149030012, i64 2149030046, i64 2149030067}
!220 = !{i64 2156761851}
!221 = !{i64 2152134278, i64 2152134303}
!222 = !{i64 4629833}
!223 = !{i64 4630030}
!224 = !{i64 2152115263}
!225 = !{!"auto-init"}
!226 = !{!"branch_weights", i32 1, i32 2000}
