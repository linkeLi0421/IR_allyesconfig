; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/ispstat.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/ispstat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ispstat = type { %struct.v4l2_subdev, %struct.media_pad, i8, i8, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.mutex, ptr, i8, i16, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.isp_device = type { %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, i32, [14 x ptr], i32, ptr, i32, i32, ptr, %struct.spinlock, %struct.mutex, i8, %struct.media_entity_enum, i32, i32, i32, [4 x ptr], [2 x %struct.isp_xclk], %struct.ispstat, %struct.ispstat, %struct.ispstat, %struct.isp_res_device, %struct.isp_prev_device, %struct.isp_ccdc_device, %struct.isp_csi2_device, %struct.isp_csi2_device, %struct.isp_ccp2_device, %struct.isp_csiphy, %struct.isp_csiphy, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
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
%struct.media_entity_enum = type { ptr, i32 }
%struct.isp_xclk = type { ptr, %struct.clk_hw, ptr, i32, %struct.spinlock, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.isp_res_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, %struct.isp_video, %struct.isp_video, i32, i32, %struct.resizer_ratio, i32, i8, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.95 }
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
%struct.anon.95 = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isp_prev_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_ctrl_handler, i32, i32, %struct.isp_video, %struct.isp_video, %struct.anon.96, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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
%struct.ispstat_buffer = type { %struct.sg_table, ptr, i32, %struct.timespec64, i32, i32, i16, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.anon.104 = type { i64, i64 }
%struct.omap3isp_stat_data = type { %struct.anon.104, ptr, i32, i16, i16, i16 }
%struct.anon.106 = type { i32, i32 }
%struct.omap3isp_stat_data_time32 = type { %struct.anon.106, i32, i32, i16, i16, i16 }
%struct.ispstat_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ispstat_generic_config = type { i32, i16 }
%struct.v4l2_event = type { i32, %union.anon.107, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.107 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.108, i32, i32, i32, i32, i32 }
%union.anon.108 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.omap3isp_stat_event_status = type { i32, i16, i8 }

@omap3isp_stat_request_statistics.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"omap3isp_stat_request_statistics\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/omap3isp/ispstat.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: engine not enabled.\0A\00", [39 x i8] zeroinitializer }, align 32
@omap3isp_stat_config.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap3isp_stat_config\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: configuring module with buffer size=0x%08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@omap3isp_stat_config.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: configuration values are invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@omap3isp_stat_config.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 -116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: driver has corrected buffer size request to 0x%08lx\0A\00", [39 x i8] zeroinitializer }, align 32
@omap3isp_stat_config.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 -103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: module has been successfully configured.\0A\00", [50 x i8] zeroinitializer }, align 32
@omap3isp_stat_enable.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap3isp_stat_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: user wants to %s module.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@omap3isp_stat_enable.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: cannot enable module as it's never been successfully configured so far.\0A\00", [51 x i8] zeroinitializer }, align 32
@omap3isp_stat_s_stream.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap3isp_stat_s_stream\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: module is being disabled\0A\00", [34 x i8] zeroinitializer }, align 32
@omap3isp_stat_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&stat->ioctl_lock\00", [46 x i8] zeroinitializer }, align 32
@isp_stat_buf_get.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp_stat_buf_get\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: cannot find a buffer.\0A\00", [37 x i8] zeroinitializer }, align 32
@isp_stat_buf_get.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: current buffer has corrupted data\0A.\00", [56 x i8] zeroinitializer }, align 32
@isp_stat_buf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 313, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: userspace's buffer size is not enough.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isp_stat_buf_get._entry_ptr = internal global ptr @isp_stat_buf_get._entry, section ".printk_index", align 4
@isp_stat_buf_get._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 327, ptr @.str.25, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: failed copying %d bytes of stat data\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@isp_stat_buf_get._entry_ptr.26 = internal global ptr @isp_stat_buf_get._entry.23, section ".printk_index", align 4
@isp_stat_buf_check_magic.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"isp_stat_buf_check_magic\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: beginning magic check does not match.\0A\00", [53 x i8] zeroinitializer }, align 32
@isp_stat_buf_check_magic.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: ending magic check does not match.\0A\00", [56 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@isp_stat_bufs_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 423, ptr @.str.25, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: trying to allocate memory when busy\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp_stat_bufs_alloc\00", [44 x i8] zeroinitializer }, align 32
@isp_stat_bufs_alloc._entry_ptr = internal global ptr @isp_stat_bufs_alloc._entry, section ".printk_index", align 4
@isp_stat_bufs_alloc._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 442, ptr @.str.37, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to allocate DMA buffer %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@isp_stat_bufs_alloc._entry_ptr.38 = internal global ptr @isp_stat_bufs_alloc._entry.35, section ".printk_index", align 4
@isp_stat_bufs_alloc.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.39, i8 0, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: buffer[%u] allocated. dma=%pad virt=%p\00", [53 x i8] zeroinitializer }, align 32
@isp_stat_try_enable.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp_stat_try_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: module is enabled.\0A\00", [40 x i8] zeroinitializer }, align 32
@isp_stat_buf_next.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp_stat_buf_next\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: new buffer requested without queuing active one.\0A\00", [42 x i8] zeroinitializer }, align 32
@__stat_isr._entry = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 878, ptr @.str.37, ptr @.str.22 }, align 1
@.str.44 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: interrupt occurred when module was still processing a buffer.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__stat_isr\00", [21 x i8] zeroinitializer }, align 32
@__stat_isr._entry_ptr = internal global ptr @__stat_isr._entry, section ".printk_index", align 4
@__stat_isr.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: cannot process buffer, device is busy.\0A\00", [52 x i8] zeroinitializer }, align 32
@isp_stat_buf_queue.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isp_stat_buf_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: data wasn't properly written.\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OMAP3 ISP %s\00", [19 x i8] zeroinitializer }, align 32
@isp_stat_bufs_free.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isp_stat_bufs_free\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: all buffers were freed.\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 487, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 546, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 553, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 559, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 612, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 769, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 780, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 842, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1062, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 290, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 295, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 311, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 325, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 114, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 124, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 230, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 214, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 174, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 421, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 440, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 449, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 724, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 259, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 876, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 982, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 242, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1041, i32 48 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [45 x i8] c"../drivers/media/platform/omap3isp/ispstat.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 357, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__stat_isr._entry, ptr @__stat_isr._entry_ptr, ptr @isp_stat_buf_get._entry, ptr @isp_stat_buf_get._entry.23, ptr @isp_stat_buf_get._entry_ptr, ptr @isp_stat_buf_get._entry_ptr.26, ptr @isp_stat_bufs_alloc._entry, ptr @isp_stat_bufs_alloc._entry.35, ptr @isp_stat_bufs_alloc._entry_ptr, ptr @isp_stat_bufs_alloc._entry_ptr.38, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @omap3isp_stat_init.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_stat_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_stat_buf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_stat_buf_get._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_stat_bufs_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_stat_bufs_alloc._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_request_statistics(ptr noundef %stat, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_request_statistics.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_request_statistics, %cleanup)) #9
          to label %if.then4 [label %cleanup], !srcloc !115

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_request_statistics.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef %name) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %ioctl_lock = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %ioctl_lock, i32 noundef 0) #9
  %call6 = tail call fastcc ptr @isp_stat_buf_get(ptr noundef %stat, ptr noundef %data)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %ts = getelementptr inbounds %struct.ispstat_buffer, ptr %call6, i32 0, i32 3
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ts, align 8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %data, align 8
  %tv_nsec = getelementptr inbounds %struct.ispstat_buffer, ptr %call6, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %11, 1000
  %conv = sext i32 %div to i64
  %tv_usec = getelementptr inbounds %struct.anon.104, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %tv_usec to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %tv_usec, align 8
  %config_counter = getelementptr inbounds %struct.ispstat_buffer, ptr %call6, i32 0, i32 6
  %13 = ptrtoint ptr %config_counter to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %config_counter, align 8
  %config_counter16 = getelementptr inbounds %struct.omap3isp_stat_data, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %config_counter16 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %config_counter16, align 4
  %frame_number = getelementptr inbounds %struct.ispstat_buffer, ptr %call6, i32 0, i32 5
  %16 = ptrtoint ptr %frame_number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_number, align 4
  %conv17 = trunc i32 %17 to i16
  %frame_number18 = getelementptr inbounds %struct.omap3isp_stat_data, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %frame_number18 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv17, ptr %frame_number18, align 8
  %buf_size = getelementptr inbounds %struct.ispstat_buffer, ptr %call6, i32 0, i32 4
  %19 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_size, align 8
  %buf_size19 = getelementptr inbounds %struct.omap3isp_stat_data, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %buf_size19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %buf_size19, align 4
  %empty = getelementptr inbounds %struct.ispstat_buffer, ptr %call6, i32 0, i32 7
  %22 = ptrtoint ptr %empty to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %empty, align 2
  %locked_buf.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 20
  %dma_ch.i.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 16
  %23 = ptrtoint ptr %dma_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_ch.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %24, null
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end11.isp_stat_buf_release.exit_crit_edge

if.end11.isp_stat_buf_release.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_release.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %locked_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %locked_buf.i, align 4
  %isp.i.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %27 = ptrtoint ptr %isp.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %isp.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.isp_device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 8
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 8
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nents.i.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 2) #9
  br label %isp_stat_buf_release.exit

isp_stat_buf_release.exit:                        ; preds = %if.end.i.i, %if.end11.isp_stat_buf_release.exit_crit_edge
  %isp.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %35 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %isp.i, align 4
  %stat_lock.i = getelementptr inbounds %struct.isp_device, ptr %36, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock.i) #9
  %37 = ptrtoint ptr %locked_buf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %locked_buf.i, align 4
  %38 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %isp.i, align 4
  %stat_lock7.i = getelementptr inbounds %struct.isp_device, ptr %39, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock7.i, i32 noundef %call2.i) #9
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %isp_stat_buf_release.exit, %if.then8, %if.then4, %do.body
  %retval.0 = phi i32 [ %6, %if.then8 ], [ 0, %isp_stat_buf_release.exit ], [ -22, %if.then4 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @isp_stat_buf_get(ptr noundef %stat, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %call.i131 = tail call fastcc ptr @__isp_stat_buf_find(ptr noundef %stat, i32 noundef 0) #9
  %tobool.not132 = icmp eq ptr %call.i131, null
  br i1 %tobool.not132, label %entry.if.then_crit_edge, label %if.end20.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end20.lr.ph:                                   ; preds = %entry
  %name42 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  br label %if.end20

if.then:                                          ; preds = %do.end46.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %stat_lock7 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock7, i32 noundef %call2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_buf_get.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_buf_get, %cleanup)) #9
          to label %if.then15 [label %cleanup], !srcloc !115

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_buf_get.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef %name) #9
  br label %cleanup

if.end20:                                         ; preds = %do.end46.if.end20_crit_edge, %if.end20.lr.ph
  %call.i133 = phi ptr [ %call.i131, %if.end20.lr.ph ], [ %call.i, %do.end46.if.end20_crit_edge ]
  %call21 = tail call fastcc i32 @isp_stat_buf_check_magic(ptr noundef %stat, ptr noundef nonnull %call.i133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %while.end, label %do.body24

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_buf_get.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_buf_get, %do.end46)) #9
          to label %if.then38 [label %do.end46], !srcloc !115

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp, align 4
  %dev40 = getelementptr inbounds %struct.isp_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_buf_get.__UNIQUE_ID_ddebug303, ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef %name42) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then38, %do.body24
  %empty = getelementptr inbounds %struct.ispstat_buffer, ptr %call.i133, i32 0, i32 7
  %12 = ptrtoint ptr %empty to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %empty, align 2
  %call.i = tail call fastcc ptr @__isp_stat_buf_find(ptr noundef %stat, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end46.if.then_crit_edge, label %do.end46.if.end20_crit_edge

do.end46.if.end20_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end46.if.then_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

while.end:                                        ; preds = %if.end20
  %locked_buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 20
  %13 = ptrtoint ptr %locked_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i133, ptr %locked_buf, align 4
  %14 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp, align 4
  %stat_lock49 = getelementptr inbounds %struct.isp_device, ptr %15, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock49, i32 noundef %call2) #9
  %buf_size = getelementptr inbounds %struct.ispstat_buffer, ptr %call.i133, i32 0, i32 4
  %16 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_size, align 8
  %buf_size50 = getelementptr inbounds %struct.omap3isp_stat_data, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %buf_size50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_size50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp51 = icmp ugt i32 %17, %19
  br i1 %cmp51, label %do.end56, label %if.end63

do.end56:                                         ; preds = %while.end
  %20 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp, align 4
  %dev58 = getelementptr inbounds %struct.isp_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev58, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.20, ptr noundef %name42) #12
  %dma_ch.i.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 16
  %24 = ptrtoint ptr %dma_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_ch.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %25, null
  br i1 %cmp.not.i.i, label %if.end.i.i111, label %do.end56.isp_stat_buf_release.exit_crit_edge

do.end56.isp_stat_buf_release.exit_crit_edge:     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_release.exit

if.end.i.i111:                                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %locked_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %locked_buf, align 4
  %28 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %isp, align 4
  %dev.i.i = getelementptr inbounds %struct.isp_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 8
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 8
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nents.i.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef 2) #9
  br label %isp_stat_buf_release.exit

isp_stat_buf_release.exit:                        ; preds = %if.end.i.i111, %do.end56.isp_stat_buf_release.exit_crit_edge
  %36 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %isp, align 4
  %stat_lock.i = getelementptr inbounds %struct.isp_device, ptr %37, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock.i) #9
  %38 = ptrtoint ptr %locked_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %locked_buf, align 4
  %39 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp, align 4
  %stat_lock7.i = getelementptr inbounds %struct.isp_device, ptr %40, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock7.i, i32 noundef %call2.i) #9
  br label %cleanup

if.end63:                                         ; preds = %while.end
  %dma_ch.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 16
  %41 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_ch.i, align 4
  %cmp.not.i = icmp eq ptr %42, null
  br i1 %cmp.not.i, label %if.end.i, label %if.end63.isp_stat_buf_sync_for_cpu.exit_crit_edge

if.end63.isp_stat_buf_sync_for_cpu.exit_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_sync_for_cpu.exit

if.end.i:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %isp, align 4
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  %47 = ptrtoint ptr %call.i133 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i133, align 8
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %call.i133, i32 0, i32 1
  %49 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nents.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %46, ptr noundef %48, i32 noundef %50, i32 noundef 2) #9
  br label %isp_stat_buf_sync_for_cpu.exit

isp_stat_buf_sync_for_cpu.exit:                   ; preds = %if.end.i, %if.end63.isp_stat_buf_sync_for_cpu.exit_crit_edge
  %buf64 = getelementptr inbounds %struct.omap3isp_stat_data, ptr %data, i32 0, i32 1
  %51 = ptrtoint ptr %buf64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf64, align 8
  %virt_addr = getelementptr inbounds %struct.ispstat_buffer, ptr %call.i133, i32 0, i32 1
  %53 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt_addr, align 4
  %55 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp9.i.i = icmp slt i32 %56, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %isp_stat_buf_sync_for_cpu.exit
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.end71_crit_edge, label %if.then27.i.i, !prof !116

land.rhs16.i.i.do.end71_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %do.end71

if.then.i.i.i:                                    ; preds = %isp_stat_buf_sync_for_cpu.exit
  tail call void @__check_object_size(ptr noundef %54, i32 noundef %56, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 %56, i32 -1226833920) #13, !srcloc !117
  %asmresult.i.i = extractvalue { i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %54, i32 noundef %56) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %52, ptr noundef %54, i32 noundef %56) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %56, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %56, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool67.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool67.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.do.end71_crit_edge

copy_to_user.exit.do.end71_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end71:                                         ; preds = %copy_to_user.exit.do.end71_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end71_crit_edge
  %n.addr.0.i129 = phi i32 [ %n.addr.0.i, %copy_to_user.exit.do.end71_crit_edge ], [ %56, %if.then27.i.i ], [ %56, %land.rhs16.i.i.do.end71_crit_edge ]
  %58 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %isp, align 4
  %dev73 = getelementptr inbounds %struct.isp_device, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev73, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.24, ptr noundef %name42, i32 noundef %n.addr.0.i129) #12
  %62 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_ch.i, align 4
  %cmp.not.i.i115 = icmp eq ptr %63, null
  br i1 %cmp.not.i.i115, label %if.end.i.i119, label %do.end71.isp_stat_buf_release.exit124_crit_edge

do.end71.isp_stat_buf_release.exit124_crit_edge:  ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_release.exit124

if.end.i.i119:                                    ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %locked_buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %locked_buf, align 4
  %66 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %isp, align 4
  %dev.i.i117 = getelementptr inbounds %struct.isp_device, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %dev.i.i117 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i117, align 8
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %65, align 8
  %nents.i.i118 = getelementptr inbounds %struct.sg_table, ptr %65, i32 0, i32 1
  %72 = ptrtoint ptr %nents.i.i118 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nents.i.i118, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef 2) #9
  br label %isp_stat_buf_release.exit124

isp_stat_buf_release.exit124:                     ; preds = %if.end.i.i119, %do.end71.isp_stat_buf_release.exit124_crit_edge
  %74 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %isp, align 4
  %stat_lock.i121 = getelementptr inbounds %struct.isp_device, ptr %75, i32 0, i32 12
  %call2.i122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock.i121) #9
  %76 = ptrtoint ptr %locked_buf to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %locked_buf, align 4
  %77 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %isp, align 4
  %stat_lock7.i123 = getelementptr inbounds %struct.isp_device, ptr %78, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock7.i123, i32 noundef %call2.i122) #9
  br label %cleanup

cleanup:                                          ; preds = %isp_stat_buf_release.exit124, %copy_to_user.exit.cleanup_crit_edge, %isp_stat_buf_release.exit, %if.then15, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %isp_stat_buf_release.exit ], [ inttoptr (i32 -14 to ptr), %isp_stat_buf_release.exit124 ], [ %call.i133, %copy_to_user.exit.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then15 ], [ inttoptr (i32 -16 to ptr), %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_request_statistics_time32(ptr noundef %stat, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %data64 = alloca %struct.omap3isp_stat_data, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data64) #9
  %0 = call ptr @memset(ptr %data64, i32 255, i32 32)
  %call = call i32 @omap3isp_stat_request_statistics(ptr noundef %stat, ptr noundef nonnull %data64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %data64 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %data64, align 8
  %conv = trunc i64 %2 to i32
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %data, align 4
  %tv_usec = getelementptr inbounds %struct.anon.104, ptr %data64, i32 0, i32 1
  %4 = ptrtoint ptr %tv_usec to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tv_usec, align 8
  %conv4 = trunc i64 %5 to i32
  %tv_usec6 = getelementptr inbounds %struct.anon.106, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %tv_usec6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv4, ptr %tv_usec6, align 4
  %buf = getelementptr inbounds %struct.omap3isp_stat_data_time32, ptr %data, i32 0, i32 1
  %buf7 = getelementptr inbounds %struct.omap3isp_stat_data, ptr %data64, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %buf, ptr %buf7, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data64) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_config(ptr noundef %stat, ptr noundef %new_conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_conf, align 4
  %ioctl_lock = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %ioctl_lock, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_config, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_config.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ops = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 10
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call5 = tail call i32 %9(ptr noundef %stat, ptr noundef %new_conf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end32, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_config, %cleanup)) #9
          to label %if.then23 [label %cleanup], !srcloc !115

if.then23:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %isp24 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %10 = ptrtoint ptr %isp24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp24, align 4
  %dev25 = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev25, align 8
  %name27 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_config.__UNIQUE_ID_ddebug308, ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef %name27) #9
  br label %cleanup

if.end32:                                         ; preds = %do.end
  %14 = ptrtoint ptr %new_conf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_conf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %15)
  %cmp.not = icmp eq i32 %1, %15
  br i1 %cmp.not, label %if.end32.if.end59_crit_edge, label %do.body35

if.end32.if.end59_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

do.body35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_config, %if.end59)) #9
          to label %if.then49 [label %if.end59], !srcloc !115

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %isp50 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %16 = ptrtoint ptr %isp50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isp50, align 4
  %dev51 = getelementptr inbounds %struct.isp_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev51, align 8
  %name53 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  %20 = ptrtoint ptr %new_conf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_conf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_config.__UNIQUE_ID_ddebug309, ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef %name53, i32 noundef %21) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %do.body35, %if.end32.if.end59_crit_edge
  %isp60 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %22 = ptrtoint ptr %isp60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %isp60, align 4
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %23, i32 0, i32 21
  %cmp61 = icmp eq ptr %isp_af, %stat
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %23, i32 0, i32 22
  %cmp63 = icmp eq ptr %isp_aewb, %stat
  %or.cond = select i1 %cmp61, i1 true, i1 %cmp63
  %24 = ptrtoint ptr %new_conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_conf, align 4
  br i1 %or.cond, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end59
  %mul = shl i32 %25, 1
  %spec.select.v = select i1 %cmp61, i32 592, i32 16
  %spec.select = add i32 %mul, %spec.select.v
  %recover_priv = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 8
  %26 = ptrtoint ptr %recover_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %recover_priv, align 4
  %tobool72.not = icmp eq ptr %27, null
  br i1 %tobool72.not, label %if.then64.if.end78_crit_edge, label %if.then73

if.then64.if.end78_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then73:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %mul76 = mul i32 %29, 10
  %add77 = add i32 %mul76, %spec.select
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.then64.if.end78_crit_edge
  %buf_size.1 = phi i32 [ %add77, %if.then73 ], [ %spec.select, %if.then64.if.end78_crit_edge ]
  %add79 = add i32 %buf_size.1, 4095
  br label %if.end84

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %add82 = add i32 %25, 4111
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.end78
  %buf_size.2.in = phi i32 [ %add79, %if.end78 ], [ %add82, %if.else ]
  %buf_size.2 = and i32 %buf_size.2.in, -4096
  %call85 = tail call fastcc i32 @isp_stat_bufs_alloc(ptr noundef %stat, i32 noundef %buf_size.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.body91, label %if.then87

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  br label %cleanup

do.body91:                                        ; preds = %if.end84
  %30 = ptrtoint ptr %isp60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %isp60, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %31, i32 0, i32 12
  %call96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %set_params = getelementptr inbounds %struct.ispstat_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_params, align 4
  tail call void %35(ptr noundef %stat, ptr noundef %new_conf) #9
  %36 = ptrtoint ptr %isp60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %isp60, align 4
  %stat_lock103 = getelementptr inbounds %struct.isp_device, ptr %37, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock103, i32 noundef %call96) #9
  %config_counter = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 12
  %38 = ptrtoint ptr %config_counter to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %config_counter, align 2
  %inc_config = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 3
  %40 = ptrtoint ptr %inc_config to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %inc_config, align 1
  %conv105 = zext i8 %41 to i16
  %add106 = add i16 %39, %conv105
  %config_counter108 = getelementptr inbounds %struct.ispstat_generic_config, ptr %new_conf, i32 0, i32 1
  %42 = ptrtoint ptr %config_counter108 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %add106, ptr %config_counter108, align 4
  %configured = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 2
  %43 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %configured, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %configured, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_config, %do.end131)) #9
          to label %if.then123 [label %do.end131], !srcloc !115

if.then123:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %isp60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %isp60, align 4
  %dev125 = getelementptr inbounds %struct.isp_device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev125, align 8
  %name127 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_config.__UNIQUE_ID_ddebug310, ptr noundef %47, ptr noundef nonnull @.str.8, ptr noundef %name127) #9
  br label %do.end131

do.end131:                                        ; preds = %if.then123, %do.body91
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end131, %if.then87, %if.then23, %if.then7
  %retval.0 = phi i32 [ %call85, %if.then87 ], [ 0, %do.end131 ], [ %call5, %if.then23 ], [ %call5, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_stat_bufs_alloc(ptr noundef %stat, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ch = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 16
  %0 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ch, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %dev1 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.false ], [ null, %entry.cond.end_crit_edge ]
  %isp4 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %6 = ptrtoint ptr %isp4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp4, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 12
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %locked_buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 20
  %8 = ptrtoint ptr %locked_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %locked_buf, align 4
  %cmp9.not = icmp eq ptr %9, null
  br i1 %cmp9.not, label %do.end19, label %do.body12, !prof !116

do.body12:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/omap3isp/ispstat.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 412, 0\0A.popsection", ""() #9, !srcloc !118
  unreachable

do.end19:                                         ; preds = %cond.end
  %buf_alloc_size = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 15
  %10 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_alloc_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %size)
  %cmp20.not = icmp ult i32 %11, %size
  br i1 %cmp20.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %isp4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %isp4, align 4
  %stat_lock24 = getelementptr inbounds %struct.isp_device, ptr %13, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock24, i32 noundef %call5) #9
  br label %cleanup79

if.end25:                                         ; preds = %do.end19
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp26.not = icmp eq i32 %15, 0
  br i1 %cmp26.not, label %lor.lhs.false, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

lor.lhs.false:                                    ; preds = %if.end25
  %buf_processing = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 2
  %16 = ptrtoint ptr %buf_processing to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %buf_processing, align 4
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.end37, label %lor.lhs.false.do.end32_crit_edge

lor.lhs.false.do.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end32:                                         ; preds = %lor.lhs.false.do.end32_crit_edge, %if.end25.do.end32_crit_edge
  %18 = ptrtoint ptr %isp4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %isp4, align 4
  %dev34 = getelementptr inbounds %struct.isp_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev34, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.33, ptr noundef %name) #12
  %22 = ptrtoint ptr %isp4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %isp4, align 4
  %stat_lock36 = getelementptr inbounds %struct.isp_device, ptr %23, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock36, i32 noundef %call5) #9
  br label %cleanup79

if.end37:                                         ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %isp4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %isp4, align 4
  %stat_lock39 = getelementptr inbounds %struct.isp_device, ptr %25, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock39, i32 noundef %call5) #9
  tail call fastcc void @isp_stat_bufs_free(ptr noundef %stat)
  %26 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %size, ptr %buf_alloc_size, align 4
  %buf43 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 18
  %name73 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37
  %i.0129 = phi i32 [ 0, %if.end37 ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %buf43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf43, align 4
  %dma_addr.i = getelementptr %struct.ispstat_buffer, ptr %28, i32 %i.0129, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %cond, i32 noundef %size, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef 0) #9
  %virt_addr.i = getelementptr %struct.ispstat_buffer, ptr %28, i32 %i.0129, i32 1
  %29 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %virt_addr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ispstat_buffer, ptr %28, i32 %i.0129
  %30 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr.i, align 8
  %call4.i = tail call i32 @dma_get_sgtable_attrs(ptr noundef %cond, ptr noundef %arrayidx, ptr noundef nonnull %call.i.i, i32 noundef %31, i32 noundef %size, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end56

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt_addr.i, align 4
  %34 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %cond, i32 noundef %size, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  %36 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %virt_addr.i, align 4
  %37 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dma_addr.i, align 8
  br label %cleanup

if.end56:                                         ; preds = %if.end.i
  %empty = getelementptr %struct.ispstat_buffer, ptr %28, i32 %i.0129, i32 7
  %38 = ptrtoint ptr %empty to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %empty, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_bufs_alloc.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_bufs_alloc, %for.inc)) #9
          to label %if.then69 [label %for.inc], !srcloc !115

if.then69:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %isp4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp4, align 4
  %dev71 = getelementptr inbounds %struct.isp_device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev71, align 8
  %43 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virt_addr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_bufs_alloc.__UNIQUE_ID_ddebug305, ptr noundef %42, ptr noundef nonnull @.str.39, ptr noundef %name73, i32 noundef %i.0129, ptr noundef %dma_addr.i, ptr noundef %44) #9
  br label %for.inc

cleanup:                                          ; preds = %if.then5.i, %for.body.cleanup_crit_edge
  %retval.0.i114.ph = phi i32 [ %call4.i, %if.then5.i ], [ -12, %for.body.cleanup_crit_edge ]
  %45 = ptrtoint ptr %isp4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %isp4, align 4
  %dev52 = getelementptr inbounds %struct.isp_device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev52, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.36, ptr noundef %name73, i32 noundef %i.0129) #12
  tail call fastcc void @isp_stat_bufs_free(ptr noundef %stat)
  br label %cleanup79

for.inc:                                          ; preds = %if.then69, %if.end56
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup79_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup79_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

cleanup79:                                        ; preds = %for.inc.cleanup79_crit_edge, %cleanup, %do.end32, %if.then22
  %retval.2 = phi i32 [ 0, %if.then22 ], [ -16, %do.end32 ], [ %retval.0.i114.ph, %cleanup ], [ 0, %for.inc.cleanup79_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_pcr_busy(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 10
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %busy = getelementptr inbounds %struct.ispstat_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %busy, align 4
  %call = tail call i32 %3(ptr noundef %stat) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_busy(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 10
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %busy.i = getelementptr inbounds %struct.ispstat_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %busy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %busy.i, align 4
  %call.i = tail call i32 %3(ptr noundef %stat) #9
  %buf_processing = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 2
  %4 = ptrtoint ptr %buf_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %buf_processing, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %or = or i32 %call.i, %bf.cast
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp ne i32 %6, 0
  %conv = zext i1 %cmp to i32
  %or1 = or i32 %or, %conv
  ret i32 %or1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_stat_suspend(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %entry.if.end12_crit_edge, label %if.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 10
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %enable = getelementptr inbounds %struct.ispstat_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable, align 4
  tail call void %7(ptr noundef %stat, i32 noundef 0) #9
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp8 = icmp eq i32 %.pr, 2
  br i1 %cmp8, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %10 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp, align 4
  %stat_lock14 = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock14, i32 noundef %call2) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap3isp_stat_resume(ptr nocapture noundef %stat) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_stat_isr_frame_sync(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @isp_stat_try_enable(ptr noundef %stat)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_stat_try_enable(ptr noundef %stat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 12
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp6 = icmp eq i32 %5, 3
  br i1 %cmp6, label %land.lhs.true, label %do.body1.if.else_crit_edge

do.body1.if.else_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.body1
  %buf_processing = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 2
  %6 = ptrtoint ptr %buf_processing to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %buf_processing, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %buf_alloc_size = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 15
  %8 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_alloc_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.else_crit_edge, label %if.then10

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true8
  %bf.set = or i8 %bf.load, 64
  %10 = ptrtoint ptr %buf_processing to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %buf_processing, align 4
  %active_buf.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 19
  %11 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_buf.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i, !prof !116

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_buf_next.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_try_enable, %isp_stat_buf_next.exit)) #9
          to label %if.then12.i [label %isp_stat_buf_next.exit], !srcloc !115

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %isp, align 4
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_buf_next.__UNIQUE_ID_ddebug301, ptr noundef %16, ptr noundef nonnull @.str.43, ptr noundef %name.i) #9
  br label %isp_stat_buf_next.exit

if.else.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i61 = tail call fastcc ptr @__isp_stat_buf_find(ptr noundef %stat, i32 noundef 1) #9
  %17 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i61, ptr %active_buf.i, align 4
  br label %isp_stat_buf_next.exit

isp_stat_buf_next.exit:                           ; preds = %if.else.i, %if.then12.i, %do.body.i
  %ops = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 10
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %setup_regs = getelementptr inbounds %struct.ispstat_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %setup_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup_regs, align 4
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  tail call void %21(ptr noundef %stat, ptr noundef %23) #9
  %24 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active_buf.i, align 4
  tail call fastcc void @isp_stat_buf_insert_magic(ptr noundef %stat, ptr noundef %25)
  %26 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %isp, align 4
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %27, i32 0, i32 21
  %cmp15 = icmp eq ptr %isp_af, %stat
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %27, i32 0, i32 22
  %cmp18 = icmp eq ptr %isp_aewb, %stat
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp18
  br i1 %or.cond, label %isp_stat_buf_next.exit.if.end21_crit_edge, label %if.then20

isp_stat_buf_next.exit.if.end21_crit_edge:        ; preds = %isp_stat_buf_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %isp_stat_buf_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buf_err = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_err, i32 noundef 4) #9
  %28 = ptrtoint ptr %buf_err to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %buf_err, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %isp_stat_buf_next.exit.if.end21_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  %31 = and i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %switch.i = icmp eq i32 %31, 2
  br i1 %switch.i, label %if.end.i, label %if.end21.isp_stat_pcr_enable.exit_crit_edge

if.end21.isp_stat_pcr_enable.exit_crit_edge:      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_pcr_enable.exit

if.end.i:                                         ; preds = %if.end21
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %enable.i = getelementptr inbounds %struct.ispstat_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enable.i, align 4
  tail call void %35(ptr noundef %stat, i32 noundef 1) #9
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp13.i = icmp eq i32 %37, 3
  br i1 %cmp13.i, label %if.then18.i, label %if.end.i.isp_stat_pcr_enable.exit_crit_edge

if.end.i.isp_stat_pcr_enable.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_pcr_enable.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %state, align 4
  br label %isp_stat_pcr_enable.exit

isp_stat_pcr_enable.exit:                         ; preds = %if.then18.i, %if.end.i.isp_stat_pcr_enable.exit_crit_edge, %if.end21.isp_stat_pcr_enable.exit_crit_edge
  %39 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp, align 4
  %stat_lock23 = getelementptr inbounds %struct.isp_device, ptr %40, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock23, i32 noundef %call3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_try_enable.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_try_enable, %cleanup)) #9
          to label %if.then31 [label %cleanup], !srcloc !115

if.then31:                                        ; preds = %isp_stat_pcr_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_try_enable.__UNIQUE_ID_ddebug311, ptr noundef %44, ptr noundef nonnull @.str.41, ptr noundef %name) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %do.body1.if.else_crit_edge
  %45 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %isp, align 4
  %stat_lock37 = getelementptr inbounds %struct.isp_device, ptr %46, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock37, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then31, %isp_stat_pcr_enable.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_stat_sbl_overflow(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %buf_err = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_err, i32 noundef 4) #9
  %2 = ptrtoint ptr %buf_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 2, ptr %buf_err, align 4
  %recover_priv = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 8
  %3 = ptrtoint ptr %recover_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recover_priv, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sbl_ovl_recover = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 2
  %5 = ptrtoint ptr %sbl_ovl_recover to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %sbl_ovl_recover, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %sbl_ovl_recover, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp, align 4
  %stat_lock6 = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock6, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_enable(ptr noundef %stat, i8 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_enable.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_enable, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool4.not = icmp eq i8 %enable, 0
  %cond = select i1 %tobool4.not, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_enable.__UNIQUE_ID_ddebug312, ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ioctl_lock = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %ioctl_lock, i32 noundef 0) #9
  %isp9 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %4 = ptrtoint ptr %isp9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp9, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %5, i32 0, i32 12
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %configured = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 2
  %6 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool16.not = icmp slt i8 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool18.not = icmp eq i8 %enable, 0
  %or.cond = or i1 %tobool18.not, %tobool16.not
  br i1 %or.cond, label %if.end46, label %if.then19

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %isp9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp9, align 4
  %stat_lock21 = getelementptr inbounds %struct.isp_device, ptr %8, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock21, i32 noundef %call11) #9
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_enable.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_enable, %cleanup)) #9
          to label %if.then37 [label %cleanup], !srcloc !115

if.then37:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %isp9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp9, align 4
  %dev39 = getelementptr inbounds %struct.isp_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev39, align 8
  %name41 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_enable.__UNIQUE_ID_ddebug313, ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef %name41) #9
  br label %cleanup

if.end46:                                         ; preds = %do.end
  %state61 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %13 = ptrtoint ptr %state61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state61, align 4
  br i1 %tobool18.not, label %if.else60, label %if.then48

if.then48:                                        ; preds = %if.end46
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.then48.if.end74_crit_edge [
    i32 1, label %if.then51
    i32 0, label %if.then56
  ]

if.then48.if.end74_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %state61 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state61, align 4
  br label %if.end74

if.then56:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %state61 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %state61, align 4
  br label %if.end74

if.else60:                                        ; preds = %if.end46
  %18 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %14, label %if.else60.if.end74_crit_edge [
    i32 3, label %if.then64
    i32 2, label %if.then70
  ]

if.else60.if.end74_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %state61 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state61, align 4
  br label %if.end74

if.then70:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %state61 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state61, align 4
  %buf.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 18
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf.i, align 4
  %empty.i = getelementptr %struct.ispstat_buffer, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %empty.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %empty.i, align 2
  %24 = load ptr, ptr %buf.i, align 4
  %empty.1.i = getelementptr %struct.ispstat_buffer, ptr %24, i32 1, i32 7
  %25 = ptrtoint ptr %empty.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %empty.1.i, align 2
  %26 = load ptr, ptr %buf.i, align 4
  %empty.2.i = getelementptr %struct.ispstat_buffer, ptr %26, i32 2, i32 7
  %27 = ptrtoint ptr %empty.2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %empty.2.i, align 2
  %28 = load ptr, ptr %buf.i, align 4
  %empty.3.i = getelementptr %struct.ispstat_buffer, ptr %28, i32 3, i32 7
  %29 = ptrtoint ptr %empty.3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %empty.3.i, align 2
  %30 = load ptr, ptr %buf.i, align 4
  %empty.4.i = getelementptr %struct.ispstat_buffer, ptr %30, i32 4, i32 7
  %31 = ptrtoint ptr %empty.4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %empty.4.i, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.then64, %if.else60.if.end74_crit_edge, %if.then56, %if.then51, %if.then48.if.end74_crit_edge
  %32 = ptrtoint ptr %isp9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %isp9, align 4
  %stat_lock76 = getelementptr inbounds %struct.isp_device, ptr %33, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock76, i32 noundef %call11) #9
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then37, %if.then19
  %retval.0 = phi i32 [ 0, %if.end74 ], [ -22, %if.then37 ], [ -22, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_s_stream(ptr nocapture noundef readonly %subdev, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @isp_stat_try_enable(ptr noundef %1)
  br label %if.end26

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @omap3isp_stat_enable(ptr noundef %1, i8 noundef zeroext 0)
  %isp = getelementptr inbounds %struct.ispstat, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %ops = getelementptr inbounds %struct.ispstat, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %enable7 = getelementptr inbounds %struct.ispstat_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable7, align 4
  tail call void %7(ptr noundef %1, i32 noundef 0) #9
  %8 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp, align 4
  %stat_lock9 = getelementptr inbounds %struct.isp_device, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock9, i32 noundef %call4) #9
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %busy.i = getelementptr inbounds %struct.ispstat_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %busy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %busy.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.then12, label %if.else.do.body13_crit_edge

if.else.do.body13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__stat_isr(ptr noundef %1, i32 noundef 0) #9
  br label %do.body13

do.body13:                                        ; preds = %if.then12, %if.else.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_stat_s_stream.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_stat_s_stream, %if.end26)) #9
          to label %if.then20 [label %if.end26], !srcloc !115

if.then20:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_stat_s_stream.__UNIQUE_ID_ddebug314, ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef %name) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.body13, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_stat_isr(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__stat_isr(ptr noundef %stat, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__stat_isr(ptr noundef %stat, i32 noundef %from_dma) unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock) #9
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp, align 4
  %stat_lock8 = getelementptr inbounds %struct.isp_device, ptr %5, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock8, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_processing9 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 2
  %6 = ptrtoint ptr %buf_processing9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %buf_processing9, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %buf_processing9, align 4
  %ops = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 10
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %enable = getelementptr inbounds %struct.ispstat_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable, align 4
  tail call void %10(ptr noundef %stat, i32 noundef 0) #9
  %11 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from_dma)
  %tobool13.not = icmp eq i32 %from_dma, 0
  %or.cond = and i1 %tobool13.not, %tobool.not
  br i1 %or.cond, label %if.then14, label %if.end27

if.then14:                                        ; preds = %if.end
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16 = icmp eq i32 %13, 2
  %14 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp, align 4
  %stat_lock20 = getelementptr inbounds %struct.isp_device, ptr %15, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock20, i32 noundef %call2) #9
  br i1 %cmp16, label %if.then18, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.44, ptr noundef %name) #12
  br label %out

if.end27:                                         ; preds = %if.end
  %20 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp, align 4
  %stat_lock29 = getelementptr inbounds %struct.isp_device, ptr %21, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock29, i32 noundef %call2) #9
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %busy.i = getelementptr inbounds %struct.ispstat_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %busy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %busy.i, align 4
  %call.i = tail call i32 %25(ptr noundef %stat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.then32, label %if.else106

if.then32:                                        ; preds = %if.end27
  br i1 %tobool13.not, label %land.lhs.true34, label %if.then32.do.body47_crit_edge

if.then32.do.body47_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

land.lhs.true34:                                  ; preds = %if.then32
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %buf_process = getelementptr inbounds %struct.ispstat_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %buf_process to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf_process, align 4
  %tobool36.not = icmp eq ptr %29, null
  br i1 %tobool36.not, label %land.lhs.true34.do.body47_crit_edge, label %if.end41

land.lhs.true34.do.body47_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.end41:                                         ; preds = %land.lhs.true34
  %call40 = tail call i32 %29(ptr noundef %stat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call40)
  %cmp42 = icmp eq i32 %call40, 2
  br i1 %cmp42, label %if.end41.cleanup_crit_edge, label %if.end41.do.body47_crit_edge

if.end41.do.body47_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body47:                                        ; preds = %if.end41.do.body47_crit_edge, %land.lhs.true34.do.body47_crit_edge, %if.then32.do.body47_crit_edge
  %ret.0200 = phi i32 [ %call40, %if.end41.do.body47_crit_edge ], [ 0, %if.then32.do.body47_crit_edge ], [ 0, %land.lhs.true34.do.body47_crit_edge ]
  %30 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %isp, align 4
  %stat_lock54 = getelementptr inbounds %struct.isp_device, ptr %31, i32 0, i32 12
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stat_lock54) #9
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp62 = icmp eq i32 %33, 1
  br i1 %cmp62, label %if.then64, label %if.end72

if.then64:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state, align 4
  %35 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %isp, align 4
  %stat_lock67 = getelementptr inbounds %struct.isp_device, ptr %36, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock67, i32 noundef %call56) #9
  %37 = ptrtoint ptr %buf_processing9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load69 = load i8, ptr %buf_processing9, align 4
  %bf.clear70 = and i8 %bf.load69, -33
  store i8 %bf.clear70, ptr %buf_processing9, align 4
  br label %cleanup

if.end72:                                         ; preds = %do.body47
  %pipe74 = getelementptr inbounds %struct.media_entity, ptr %stat, i32 0, i32 14
  %38 = ptrtoint ptr %pipe74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pipe74, align 4
  %frame_number = getelementptr inbounds %struct.isp_pipeline, ptr %39, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_number, i32 noundef 4) #9
  %40 = ptrtoint ptr %frame_number to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %frame_number, align 4
  %frame_number77 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 13
  %42 = ptrtoint ptr %frame_number77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %frame_number77, align 4
  %call78 = tail call fastcc i32 @isp_stat_buf_process(ptr noundef %stat, i32 noundef %ret.0200)
  %43 = ptrtoint ptr %buf_processing9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load79 = load i8, ptr %buf_processing9, align 4
  %44 = and i8 %bf.load79, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool83.not = icmp eq i8 %44, 0
  br i1 %tobool83.not, label %if.then87, label %if.else89, !prof !116

if.then87:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %setup_regs = getelementptr inbounds %struct.ispstat_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %setup_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %setup_regs, align 4
  %priv = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 7
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 4
  tail call void %48(ptr noundef %stat, ptr noundef %50) #9
  br label %if.end103

if.else89:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set92 = or i8 %bf.load79, 64
  %51 = ptrtoint ptr %buf_processing9 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.set92, ptr %buf_processing9, align 4
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %setup_regs94 = getelementptr inbounds %struct.ispstat_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %setup_regs94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %setup_regs94, align 4
  %recover_priv = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 8
  %56 = ptrtoint ptr %recover_priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %recover_priv, align 4
  tail call void %55(ptr noundef %stat, ptr noundef %57) #9
  %58 = ptrtoint ptr %buf_processing9 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load96 = load i8, ptr %buf_processing9, align 4
  %bf.clear101 = and i8 %bf.load96, -81
  %bf.set102 = or i8 %bf.clear101, 64
  store i8 %bf.set102, ptr %buf_processing9, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else89, %if.then87
  %active_buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 19
  %59 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %active_buf, align 4
  tail call fastcc void @isp_stat_buf_insert_magic(ptr noundef %stat, ptr noundef %60)
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state, align 4
  %63 = and i32 %62, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %switch.i = icmp eq i32 %63, 2
  br i1 %switch.i, label %if.end.i, label %if.end103.isp_stat_pcr_enable.exit_crit_edge

if.end103.isp_stat_pcr_enable.exit_crit_edge:     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_pcr_enable.exit

if.end.i:                                         ; preds = %if.end103
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops, align 4
  %enable.i = getelementptr inbounds %struct.ispstat_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %enable.i, align 4
  tail call void %67(ptr noundef %stat, i32 noundef 1) #9
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp13.i = icmp eq i32 %69, 3
  br i1 %cmp13.i, label %if.then18.i, label %if.end.i.isp_stat_pcr_enable.exit_crit_edge

if.end.i.isp_stat_pcr_enable.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_pcr_enable.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %state, align 4
  br label %isp_stat_pcr_enable.exit

isp_stat_pcr_enable.exit:                         ; preds = %if.then18.i, %if.end.i.isp_stat_pcr_enable.exit_crit_edge, %if.end103.isp_stat_pcr_enable.exit_crit_edge
  %71 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %isp, align 4
  %stat_lock105 = getelementptr inbounds %struct.isp_device, ptr %72, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stat_lock105, i32 noundef %call56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %phi.cmp = icmp eq i32 %call78, 0
  br label %out

if.else106:                                       ; preds = %if.end27
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops, align 4
  %buf_process108 = getelementptr inbounds %struct.ispstat_ops, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %buf_process108 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf_process108, align 4
  %tobool109.not = icmp eq ptr %76, null
  br i1 %tobool109.not, label %if.else106.if.end111_crit_edge, label %if.then110

if.else106.if.end111_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then110:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  %buf_err = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 4
  %call.i.i195 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_err, i32 noundef 4) #9
  %77 = ptrtoint ptr %buf_err to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 1, ptr %buf_err, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.else106.if.end111_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__stat_isr.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__stat_isr, %out)) #9
          to label %if.then124 [label %out], !srcloc !115

if.then124:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %isp, align 4
  %dev126 = getelementptr inbounds %struct.isp_device, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev126, align 8
  %name128 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__stat_isr.__UNIQUE_ID_ddebug315, ptr noundef %81, ptr noundef nonnull @.str.46, ptr noundef %name128) #9
  br label %out

out:                                              ; preds = %if.then124, %if.end111, %isp_stat_pcr_enable.exit, %if.then18
  %ret.1 = phi i1 [ false, %if.then124 ], [ %phi.cmp, %isp_stat_pcr_enable.exit ], [ false, %if.then18 ], [ false, %if.end111 ]
  %82 = ptrtoint ptr %buf_processing9 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load135 = load i8, ptr %buf_processing9, align 4
  %bf.clear136 = and i8 %bf.load135, -33
  store i8 %bf.clear136, ptr %buf_processing9, align 4
  %devnode.i = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 13
  %83 = ptrtoint ptr %devnode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %devnode.i, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %event.i) #9
  %u.i = getelementptr inbounds %struct.v4l2_event, ptr %event.i, i32 0, i32 1
  %85 = call ptr @memset(ptr %event.i, i32 0, i32 136)
  br i1 %ret.1, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %frame_number.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 13
  %86 = ptrtoint ptr %frame_number.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %frame_number.i, align 4
  %88 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %u.i, align 8
  %config_counter.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 12
  %89 = ptrtoint ptr %config_counter.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %config_counter.i, align 2
  %config_counter2.i = getelementptr inbounds %struct.v4l2_event, ptr %event.i, i32 0, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %config_counter2.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %config_counter2.i, align 4
  br label %isp_stat_queue_event.exit

if.else.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %buf_err.i = getelementptr inbounds %struct.omap3isp_stat_event_status, ptr %u.i, i32 0, i32 2
  %92 = ptrtoint ptr %buf_err.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %buf_err.i, align 2
  br label %isp_stat_queue_event.exit

isp_stat_queue_event.exit:                        ; preds = %if.else.i, %if.then.i
  %event_type.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 17
  %93 = ptrtoint ptr %event_type.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %event_type.i, align 4
  %95 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %event.i, align 8
  call void @v4l2_event_queue(ptr noundef %84, ptr noundef nonnull %event.i) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %event.i) #9
  br label %cleanup

cleanup:                                          ; preds = %isp_stat_queue_event.exit, %if.then64, %if.end41.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_stat_dma_isr(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__stat_isr(ptr noundef %stat, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_subscribe_event(ptr nocapture noundef readonly %subdev, ptr noundef %fh, ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sub, align 4
  %event_type = getelementptr inbounds %struct.ispstat, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 8, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_unsubscribe_event(ptr nocapture noundef readnone %subdev, ptr noundef %fh, ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_event_unsubscribe(ptr noundef %fh, ptr noundef %sub) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_stat_unregister_entities(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %stat) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_register_entities(ptr noundef %stat, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
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
  %dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 14
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev1, align 4
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %stat) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_stat_init(ptr noundef %stat, ptr noundef %name, ptr noundef %sd_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 280) #14
  %buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 18
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %empty.i = getelementptr %struct.ispstat_buffer, ptr %call7.i.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %empty.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %empty.i, align 2
  %empty.1.i = getelementptr %struct.ispstat_buffer, ptr %call7.i.i.i, i32 1, i32 7
  %3 = ptrtoint ptr %empty.1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %empty.1.i, align 2
  %empty.2.i = getelementptr %struct.ispstat_buffer, ptr %call7.i.i.i, i32 2, i32 7
  %4 = ptrtoint ptr %empty.2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %empty.2.i, align 2
  %empty.3.i = getelementptr %struct.ispstat_buffer, ptr %call7.i.i.i, i32 3, i32 7
  %5 = ptrtoint ptr %empty.3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %empty.3.i, align 2
  %empty.4.i = getelementptr %struct.ispstat_buffer, ptr %call7.i.i.i, i32 4, i32 7
  %6 = ptrtoint ptr %empty.4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %empty.4.i, align 2
  %ioctl_lock = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %ioctl_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @omap3isp_stat_init.__key) #9
  %buf_err = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_err, i32 noundef 4) #9
  %7 = ptrtoint ptr %buf_err to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %buf_err, align 4
  tail call void @v4l2_subdev_init(ptr noundef %stat, ptr noundef %sd_ops) #9
  %name2.i = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name2.i, i32 noundef 32, ptr noundef nonnull @.str.49, ptr noundef %name) #9
  %grp_id.i = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 10
  %8 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %grp_id.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %10, 12
  store i32 %or.i, ptr %flags.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %stat, ptr %dev_priv.i.i, align 4
  %pad.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 1
  %flags3.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %flags3.i, align 4
  %ops.i = getelementptr inbounds %struct.media_entity, ptr %stat, i32 0, i32 11
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ops.i, align 4
  %call5.i = tail call i32 @media_entity_pads_init(ptr noundef %stat, i16 noundef zeroext 1, ptr noundef %pad.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_destroy(ptr noundef %ioctl_lock) #9
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call5.i, %if.then3 ], [ %call5.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_stat_cleanup(ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctl_lock = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %ioctl_lock) #9
  tail call fastcc void @isp_stat_bufs_free(ptr noundef %stat)
  %buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 18
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %1) #9
  %priv = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %3) #9
  %recover_priv = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 8
  %4 = ptrtoint ptr %recover_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recover_priv, align 4
  tail call void @kfree(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_stat_bufs_free(ptr noundef %stat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ch = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 16
  %0 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ch, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %dev1 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.false ], [ null, %entry.cond.end_crit_edge ]
  %buf3 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 18
  %buf_alloc_size = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 15
  %6 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf3, align 4
  %virt_addr = getelementptr %struct.ispstat_buffer, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sg_free_table(ptr noundef %7) #9
  %10 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_alloc_size, align 4
  %12 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt_addr, align 4
  %dma_addr = getelementptr %struct.ispstat_buffer, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %cond, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dma_addr, align 8
  %17 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %virt_addr, align 4
  %empty = getelementptr %struct.ispstat_buffer, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %empty to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %empty, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %19 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf3, align 4
  %virt_addr.1 = getelementptr %struct.ispstat_buffer, ptr %20, i32 1, i32 1
  %21 = ptrtoint ptr %virt_addr.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt_addr.1, align 4
  %tobool.not.1 = icmp eq ptr %22, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr %struct.ispstat_buffer, ptr %20, i32 1
  tail call void @sg_free_table(ptr noundef %arrayidx.1) #9
  %23 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_alloc_size, align 4
  %25 = ptrtoint ptr %virt_addr.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_addr.1, align 4
  %dma_addr.1 = getelementptr %struct.ispstat_buffer, ptr %20, i32 1, i32 2
  %27 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_addr.1, align 8
  tail call void @dma_free_attrs(ptr noundef %cond, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #9
  %29 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma_addr.1, align 8
  %30 = ptrtoint ptr %virt_addr.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %virt_addr.1, align 4
  %empty.1 = getelementptr %struct.ispstat_buffer, ptr %20, i32 1, i32 7
  %31 = ptrtoint ptr %empty.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %empty.1, align 2
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %32 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf3, align 4
  %virt_addr.2 = getelementptr %struct.ispstat_buffer, ptr %33, i32 2, i32 1
  %34 = ptrtoint ptr %virt_addr.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_addr.2, align 4
  %tobool.not.2 = icmp eq ptr %35, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2 = getelementptr %struct.ispstat_buffer, ptr %33, i32 2
  tail call void @sg_free_table(ptr noundef %arrayidx.2) #9
  %36 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_alloc_size, align 4
  %38 = ptrtoint ptr %virt_addr.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt_addr.2, align 4
  %dma_addr.2 = getelementptr %struct.ispstat_buffer, ptr %33, i32 2, i32 2
  %40 = ptrtoint ptr %dma_addr.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.2, align 8
  tail call void @dma_free_attrs(ptr noundef %cond, i32 noundef %37, ptr noundef %39, i32 noundef %41, i32 noundef 0) #9
  %42 = ptrtoint ptr %dma_addr.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %dma_addr.2, align 8
  %43 = ptrtoint ptr %virt_addr.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %virt_addr.2, align 4
  %empty.2 = getelementptr %struct.ispstat_buffer, ptr %33, i32 2, i32 7
  %44 = ptrtoint ptr %empty.2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %empty.2, align 2
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %45 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf3, align 4
  %virt_addr.3 = getelementptr %struct.ispstat_buffer, ptr %46, i32 3, i32 1
  %47 = ptrtoint ptr %virt_addr.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %virt_addr.3, align 4
  %tobool.not.3 = icmp eq ptr %48, null
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr %struct.ispstat_buffer, ptr %46, i32 3
  tail call void @sg_free_table(ptr noundef %arrayidx.3) #9
  %49 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_alloc_size, align 4
  %51 = ptrtoint ptr %virt_addr.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virt_addr.3, align 4
  %dma_addr.3 = getelementptr %struct.ispstat_buffer, ptr %46, i32 3, i32 2
  %53 = ptrtoint ptr %dma_addr.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_addr.3, align 8
  tail call void @dma_free_attrs(ptr noundef %cond, i32 noundef %50, ptr noundef %52, i32 noundef %54, i32 noundef 0) #9
  %55 = ptrtoint ptr %dma_addr.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %dma_addr.3, align 8
  %56 = ptrtoint ptr %virt_addr.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %virt_addr.3, align 4
  %empty.3 = getelementptr %struct.ispstat_buffer, ptr %46, i32 3, i32 7
  %57 = ptrtoint ptr %empty.3 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %empty.3, align 2
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %58 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf3, align 4
  %virt_addr.4 = getelementptr %struct.ispstat_buffer, ptr %59, i32 4, i32 1
  %60 = ptrtoint ptr %virt_addr.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %virt_addr.4, align 4
  %tobool.not.4 = icmp eq ptr %61, null
  br i1 %tobool.not.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4 = getelementptr %struct.ispstat_buffer, ptr %59, i32 4
  tail call void @sg_free_table(ptr noundef %arrayidx.4) #9
  %62 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_alloc_size, align 4
  %64 = ptrtoint ptr %virt_addr.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %virt_addr.4, align 4
  %dma_addr.4 = getelementptr %struct.ispstat_buffer, ptr %59, i32 4, i32 2
  %66 = ptrtoint ptr %dma_addr.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_addr.4, align 8
  tail call void @dma_free_attrs(ptr noundef %cond, i32 noundef %63, ptr noundef %65, i32 noundef %67, i32 noundef 0) #9
  %68 = ptrtoint ptr %dma_addr.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %dma_addr.4, align 8
  %69 = ptrtoint ptr %virt_addr.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %virt_addr.4, align 4
  %empty.4 = getelementptr %struct.ispstat_buffer, ptr %59, i32 4, i32 7
  %70 = ptrtoint ptr %empty.4 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %empty.4, align 2
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end.4, %cleanup.3.cleanup.4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_bufs_free.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_bufs_free, %do.end)) #9
          to label %if.then11 [label %do.end], !srcloc !115

if.then11:                                        ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #11
  %isp12 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %71 = ptrtoint ptr %isp12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %isp12, align 4
  %dev13 = getelementptr inbounds %struct.isp_device, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev13, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_bufs_free.__UNIQUE_ID_ddebug304, ptr noundef %74, ptr noundef nonnull @.str.51, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %cleanup.4
  %75 = ptrtoint ptr %buf_alloc_size to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %buf_alloc_size, align 4
  %active_buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 19
  %76 = ptrtoint ptr %active_buf to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %active_buf, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_stat_buf_check_magic(ptr noundef %stat, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 21
  %cmp = icmp eq ptr %isp_af, %stat
  %buf_size1 = getelementptr inbounds %struct.ispstat_buffer, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %buf_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_size1, align 8
  %add = add i32 %3, 48
  %cond = select i1 %cmp, i32 %add, i32 %3
  %dma_ch.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 16
  %4 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_ch.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %if.end.i, label %entry.isp_stat_buf_sync_magic_for_cpu.exit_crit_edge

entry.isp_stat_buf_sync_magic_for_cpu.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_sync_magic_for_cpu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  %dma_addr.i.i = getelementptr inbounds %struct.ispstat_buffer, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr.i.i, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %7, i32 noundef %9, i32 noundef 16, i32 noundef 2) #9
  %10 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp, align 4
  %dev2.i.i = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2.i.i, align 8
  %14 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i.i, align 8
  %add.i1.i = add i32 %15, %cond
  tail call void @dma_sync_single_for_cpu(ptr noundef %13, i32 noundef %add.i1.i, i32 noundef 16, i32 noundef 2) #9
  br label %isp_stat_buf_sync_magic_for_cpu.exit

isp_stat_buf_sync_magic_for_cpu.exit:             ; preds = %if.end.i, %entry.isp_stat_buf_sync_magic_for_cpu.exit_crit_edge
  %virt_addr = getelementptr inbounds %struct.ispstat_buffer, ptr %buf, i32 0, i32 1
  %16 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt_addr, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 16
  %cmp3104 = icmp ult ptr %17, %add.ptr
  br i1 %cmp3104, label %for.body.preheader, label %isp_stat_buf_sync_magic_for_cpu.exit.do.body_crit_edge

isp_stat_buf_sync_magic_for_cpu.exit.do.body_crit_edge: ; preds = %isp_stat_buf_sync_magic_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.preheader:                               ; preds = %isp_stat_buf_sync_magic_for_cpu.exit
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %19)
  %cmp4.not = icmp eq i8 %19, 85
  %incdec.ptr = getelementptr i8, ptr %17, i32 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %21)
  %cmp4.not.1 = icmp eq i8 %21, 85
  %incdec.ptr.1 = getelementptr i8, ptr %17, i32 2
  %22 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %23)
  %cmp4.not.2 = icmp eq i8 %23, 85
  %incdec.ptr.2 = getelementptr i8, ptr %17, i32 3
  %24 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %25)
  %cmp4.not.3 = icmp eq i8 %25, 85
  %incdec.ptr.3 = getelementptr i8, ptr %17, i32 4
  %26 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %27)
  %cmp4.not.4 = icmp eq i8 %27, 85
  %incdec.ptr.4 = getelementptr i8, ptr %17, i32 5
  %28 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %29)
  %cmp4.not.5 = icmp eq i8 %29, 85
  %incdec.ptr.5 = getelementptr i8, ptr %17, i32 6
  %30 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %31)
  %cmp4.not.6 = icmp eq i8 %31, 85
  %incdec.ptr.6 = getelementptr i8, ptr %17, i32 7
  %32 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %33)
  %cmp4.not.7 = icmp eq i8 %33, 85
  %incdec.ptr.7 = getelementptr i8, ptr %17, i32 8
  %34 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %35)
  %cmp4.not.8 = icmp eq i8 %35, 85
  %incdec.ptr.8 = getelementptr i8, ptr %17, i32 9
  %36 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %37)
  %cmp4.not.9 = icmp eq i8 %37, 85
  %incdec.ptr.9 = getelementptr i8, ptr %17, i32 10
  %38 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %39)
  %cmp4.not.10 = icmp eq i8 %39, 85
  %incdec.ptr.10 = getelementptr i8, ptr %17, i32 11
  %40 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %41)
  %cmp4.not.11 = icmp eq i8 %41, 85
  %incdec.ptr.11 = getelementptr i8, ptr %17, i32 12
  %42 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %43)
  %cmp4.not.12 = icmp eq i8 %43, 85
  %incdec.ptr.12 = getelementptr i8, ptr %17, i32 13
  %44 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %45)
  %cmp4.not.13 = icmp eq i8 %45, 85
  %incdec.ptr.13 = getelementptr i8, ptr %17, i32 14
  %46 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %47)
  %cmp4.not.14 = icmp eq i8 %47, 85
  %incdec.ptr.14 = getelementptr i8, ptr %17, i32 15
  %48 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %49)
  %cmp4.not.15 = icmp eq i8 %49, 85
  %50 = select i1 %cmp4.not.15, i1 %cmp4.not.14, i1 false
  %51 = select i1 %50, i1 %cmp4.not.13, i1 false
  %52 = select i1 %51, i1 %cmp4.not.12, i1 false
  %53 = select i1 %52, i1 %cmp4.not.11, i1 false
  %54 = select i1 %53, i1 %cmp4.not.10, i1 false
  %55 = select i1 %54, i1 %cmp4.not.9, i1 false
  %56 = select i1 %55, i1 %cmp4.not.8, i1 false
  %57 = select i1 %56, i1 %cmp4.not.7, i1 false
  %58 = select i1 %57, i1 %cmp4.not.6, i1 false
  %59 = select i1 %58, i1 %cmp4.not.5, i1 false
  %60 = select i1 %59, i1 %cmp4.not.4, i1 false
  %61 = select i1 %60, i1 %cmp4.not.3, i1 false
  %62 = select i1 %61, i1 %cmp4.not.2, i1 false
  %63 = select i1 %62, i1 %cmp4.not.1, i1 false
  %64 = select i1 %63, i1 %cmp4.not, i1 false
  br i1 %64, label %for.body.preheader.do.body_crit_edge, label %if.end21

for.body.preheader.do.body_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.body.preheader.do.body_crit_edge, %isp_stat_buf_sync_magic_for_cpu.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_buf_check_magic.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_buf_check_magic, %cleanup)) #9
          to label %if.then18 [label %cleanup], !srcloc !115

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_buf_check_magic.__UNIQUE_ID_ddebug298, ptr noundef %68, ptr noundef nonnull @.str.28, ptr noundef %name) #9
  br label %cleanup

if.end21:                                         ; preds = %for.body.preheader
  %add.ptr23 = getelementptr i8, ptr %17, i32 %cond
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 16
  %cmp26107 = icmp ult ptr %add.ptr23, %add.ptr24
  br i1 %cmp26107, label %for.body28.preheader, label %if.end21.for.end65_crit_edge

if.end21.for.end65_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end65

for.body28.preheader:                             ; preds = %if.end21
  %69 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %70)
  %cmp30.not = icmp eq i8 %70, 85
  br i1 %cmp30.not, label %for.cond25, label %for.body28.preheader.do.body39_crit_edge, !prof !116

for.body28.preheader.do.body39_crit_edge:         ; preds = %for.body28.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25:                                       ; preds = %for.body28.preheader
  %incdec.ptr64 = getelementptr i8, ptr %add.ptr23, i32 1
  %71 = ptrtoint ptr %incdec.ptr64 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %72)
  %cmp30.not.1 = icmp eq i8 %72, 85
  br i1 %cmp30.not.1, label %for.cond25.1, label %for.cond25.do.body39_crit_edge, !prof !116

for.cond25.do.body39_crit_edge:                   ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.1:                                     ; preds = %for.cond25
  %incdec.ptr64.1 = getelementptr i8, ptr %incdec.ptr64, i32 1
  %73 = ptrtoint ptr %incdec.ptr64.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr64.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %74)
  %cmp30.not.2 = icmp eq i8 %74, 85
  br i1 %cmp30.not.2, label %for.cond25.2, label %for.cond25.1.do.body39_crit_edge, !prof !116

for.cond25.1.do.body39_crit_edge:                 ; preds = %for.cond25.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.2:                                     ; preds = %for.cond25.1
  %incdec.ptr64.2 = getelementptr i8, ptr %incdec.ptr64.1, i32 1
  %75 = ptrtoint ptr %incdec.ptr64.2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %incdec.ptr64.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %76)
  %cmp30.not.3 = icmp eq i8 %76, 85
  br i1 %cmp30.not.3, label %for.cond25.3, label %for.cond25.2.do.body39_crit_edge, !prof !116

for.cond25.2.do.body39_crit_edge:                 ; preds = %for.cond25.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.3:                                     ; preds = %for.cond25.2
  %incdec.ptr64.3 = getelementptr i8, ptr %incdec.ptr64.2, i32 1
  %77 = ptrtoint ptr %incdec.ptr64.3 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %incdec.ptr64.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %78)
  %cmp30.not.4 = icmp eq i8 %78, 85
  br i1 %cmp30.not.4, label %for.cond25.4, label %for.cond25.3.do.body39_crit_edge, !prof !116

for.cond25.3.do.body39_crit_edge:                 ; preds = %for.cond25.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.4:                                     ; preds = %for.cond25.3
  %incdec.ptr64.4 = getelementptr i8, ptr %incdec.ptr64.3, i32 1
  %79 = ptrtoint ptr %incdec.ptr64.4 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %incdec.ptr64.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %80)
  %cmp30.not.5 = icmp eq i8 %80, 85
  br i1 %cmp30.not.5, label %for.cond25.5, label %for.cond25.4.do.body39_crit_edge, !prof !116

for.cond25.4.do.body39_crit_edge:                 ; preds = %for.cond25.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.5:                                     ; preds = %for.cond25.4
  %incdec.ptr64.5 = getelementptr i8, ptr %incdec.ptr64.4, i32 1
  %81 = ptrtoint ptr %incdec.ptr64.5 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr64.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %82)
  %cmp30.not.6 = icmp eq i8 %82, 85
  br i1 %cmp30.not.6, label %for.cond25.6, label %for.cond25.5.do.body39_crit_edge, !prof !116

for.cond25.5.do.body39_crit_edge:                 ; preds = %for.cond25.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.6:                                     ; preds = %for.cond25.5
  %incdec.ptr64.6 = getelementptr i8, ptr %incdec.ptr64.5, i32 1
  %83 = ptrtoint ptr %incdec.ptr64.6 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr64.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %84)
  %cmp30.not.7 = icmp eq i8 %84, 85
  br i1 %cmp30.not.7, label %for.cond25.7, label %for.cond25.6.do.body39_crit_edge, !prof !116

for.cond25.6.do.body39_crit_edge:                 ; preds = %for.cond25.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.7:                                     ; preds = %for.cond25.6
  %incdec.ptr64.7 = getelementptr i8, ptr %incdec.ptr64.6, i32 1
  %85 = ptrtoint ptr %incdec.ptr64.7 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %incdec.ptr64.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %86)
  %cmp30.not.8 = icmp eq i8 %86, 85
  br i1 %cmp30.not.8, label %for.cond25.8, label %for.cond25.7.do.body39_crit_edge, !prof !116

for.cond25.7.do.body39_crit_edge:                 ; preds = %for.cond25.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.8:                                     ; preds = %for.cond25.7
  %incdec.ptr64.8 = getelementptr i8, ptr %incdec.ptr64.7, i32 1
  %87 = ptrtoint ptr %incdec.ptr64.8 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %incdec.ptr64.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %88)
  %cmp30.not.9 = icmp eq i8 %88, 85
  br i1 %cmp30.not.9, label %for.cond25.9, label %for.cond25.8.do.body39_crit_edge, !prof !116

for.cond25.8.do.body39_crit_edge:                 ; preds = %for.cond25.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.9:                                     ; preds = %for.cond25.8
  %incdec.ptr64.9 = getelementptr i8, ptr %incdec.ptr64.8, i32 1
  %89 = ptrtoint ptr %incdec.ptr64.9 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %incdec.ptr64.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %90)
  %cmp30.not.10 = icmp eq i8 %90, 85
  br i1 %cmp30.not.10, label %for.cond25.10, label %for.cond25.9.do.body39_crit_edge, !prof !116

for.cond25.9.do.body39_crit_edge:                 ; preds = %for.cond25.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.10:                                    ; preds = %for.cond25.9
  %incdec.ptr64.10 = getelementptr i8, ptr %incdec.ptr64.9, i32 1
  %91 = ptrtoint ptr %incdec.ptr64.10 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %incdec.ptr64.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %92)
  %cmp30.not.11 = icmp eq i8 %92, 85
  br i1 %cmp30.not.11, label %for.cond25.11, label %for.cond25.10.do.body39_crit_edge, !prof !116

for.cond25.10.do.body39_crit_edge:                ; preds = %for.cond25.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.11:                                    ; preds = %for.cond25.10
  %incdec.ptr64.11 = getelementptr i8, ptr %incdec.ptr64.10, i32 1
  %93 = ptrtoint ptr %incdec.ptr64.11 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %incdec.ptr64.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %94)
  %cmp30.not.12 = icmp eq i8 %94, 85
  br i1 %cmp30.not.12, label %for.cond25.12, label %for.cond25.11.do.body39_crit_edge, !prof !116

for.cond25.11.do.body39_crit_edge:                ; preds = %for.cond25.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.12:                                    ; preds = %for.cond25.11
  %incdec.ptr64.12 = getelementptr i8, ptr %incdec.ptr64.11, i32 1
  %95 = ptrtoint ptr %incdec.ptr64.12 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %incdec.ptr64.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %96)
  %cmp30.not.13 = icmp eq i8 %96, 85
  br i1 %cmp30.not.13, label %for.cond25.13, label %for.cond25.12.do.body39_crit_edge, !prof !116

for.cond25.12.do.body39_crit_edge:                ; preds = %for.cond25.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.13:                                    ; preds = %for.cond25.12
  %incdec.ptr64.13 = getelementptr i8, ptr %incdec.ptr64.12, i32 1
  %97 = ptrtoint ptr %incdec.ptr64.13 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %incdec.ptr64.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %98)
  %cmp30.not.14 = icmp eq i8 %98, 85
  br i1 %cmp30.not.14, label %for.cond25.14, label %for.cond25.13.do.body39_crit_edge, !prof !116

for.cond25.13.do.body39_crit_edge:                ; preds = %for.cond25.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.14:                                    ; preds = %for.cond25.13
  %incdec.ptr64.14 = getelementptr i8, ptr %incdec.ptr64.13, i32 1
  %99 = ptrtoint ptr %incdec.ptr64.14 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %incdec.ptr64.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %100)
  %cmp30.not.15 = icmp eq i8 %100, 85
  br i1 %cmp30.not.15, label %for.cond25.14.for.end65_crit_edge, label %for.cond25.14.do.body39_crit_edge, !prof !116

for.cond25.14.do.body39_crit_edge:                ; preds = %for.cond25.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.cond25.14.for.end65_crit_edge:                ; preds = %for.cond25.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end65

do.body39:                                        ; preds = %for.cond25.14.do.body39_crit_edge, %for.cond25.13.do.body39_crit_edge, %for.cond25.12.do.body39_crit_edge, %for.cond25.11.do.body39_crit_edge, %for.cond25.10.do.body39_crit_edge, %for.cond25.9.do.body39_crit_edge, %for.cond25.8.do.body39_crit_edge, %for.cond25.7.do.body39_crit_edge, %for.cond25.6.do.body39_crit_edge, %for.cond25.5.do.body39_crit_edge, %for.cond25.4.do.body39_crit_edge, %for.cond25.3.do.body39_crit_edge, %for.cond25.2.do.body39_crit_edge, %for.cond25.1.do.body39_crit_edge, %for.cond25.do.body39_crit_edge, %for.body28.preheader.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_buf_check_magic.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_buf_check_magic, %cleanup)) #9
          to label %if.then53 [label %cleanup], !srcloc !115

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %isp, align 4
  %dev55 = getelementptr inbounds %struct.isp_device, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev55, align 8
  %name57 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_buf_check_magic.__UNIQUE_ID_ddebug299, ptr noundef %104, ptr noundef nonnull @.str.29, ptr noundef %name57) #9
  br label %cleanup

for.end65:                                        ; preds = %for.cond25.14.for.end65_crit_edge, %if.end21.for.end65_crit_edge
  %105 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_ch.i, align 4
  %cmp.not.i96 = icmp eq ptr %106, null
  br i1 %cmp.not.i96, label %if.end.i101, label %for.end65.cleanup_crit_edge

for.end65.cleanup_crit_edge:                      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i101:                                      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %isp, align 4
  %dev.i.i98 = getelementptr inbounds %struct.isp_device, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %dev.i.i98 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i.i98, align 8
  %dma_addr.i.i99 = getelementptr inbounds %struct.ispstat_buffer, ptr %buf, i32 0, i32 2
  %111 = ptrtoint ptr %dma_addr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_addr.i.i99, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %110, i32 noundef %112, i32 noundef 16, i32 noundef 2) #9
  %113 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %isp, align 4
  %dev2.i.i100 = getelementptr inbounds %struct.isp_device, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %dev2.i.i100 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev2.i.i100, align 8
  %117 = ptrtoint ptr %dma_addr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr.i.i99, align 8
  %add.i2.i = add i32 %118, %cond
  tail call void @dma_sync_single_for_device(ptr noundef %116, i32 noundef %add.i2.i, i32 noundef 16, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i101, %for.end65.cleanup_crit_edge, %if.then53, %do.body39, %if.then18, %do.body
  %retval.0 = phi i32 [ -22, %if.then18 ], [ -22, %if.then53 ], [ 0, %for.end65.cleanup_crit_edge ], [ 0, %if.end.i101 ], [ -22, %do.body ], [ -22, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__isp_stat_buf_find(ptr nocapture noundef readonly %stat, i32 noundef %look_empty) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 18
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %locked_buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 20
  %2 = ptrtoint ptr %locked_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locked_buf, align 4
  %active_buf = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %look_empty)
  %tobool.not = icmp eq i32 %look_empty, 0
  %cmp1 = icmp eq ptr %1, %3
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %lor.lhs.false

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_buf, align 4
  %cmp2 = icmp eq ptr %1, %5
  br i1 %cmp2, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %empty = getelementptr %struct.ispstat_buffer, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %empty to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %empty, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %empty6 = getelementptr %struct.ispstat_buffer, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %empty6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %empty6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end5.for.inc_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %found.2.ph = phi ptr [ null, %land.lhs.true.for.inc_crit_edge ], [ null, %entry.for.inc_crit_edge ], [ null, %lor.lhs.false.for.inc_crit_edge ], [ %1, %if.end5.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.ispstat_buffer, ptr %1, i32 1
  %cmp1.1 = icmp eq ptr %arrayidx.1, %3
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %10 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active_buf, align 4
  %cmp2.1 = icmp eq ptr %arrayidx.1, %11
  br i1 %cmp2.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  br i1 %tobool.not, label %land.lhs.true.1, label %if.end.1.if.end5.1_crit_edge

if.end.1.if.end5.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.1

land.lhs.true.1:                                  ; preds = %if.end.1
  %empty.1 = getelementptr %struct.ispstat_buffer, ptr %1, i32 1, i32 7
  %12 = ptrtoint ptr %empty.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %empty.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.1 = icmp eq i8 %13, 0
  br i1 %tobool3.not.1, label %land.lhs.true.1.if.end5.1_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1.if.end5.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.1

if.end5.1:                                        ; preds = %land.lhs.true.1.if.end5.1_crit_edge, %if.end.1.if.end5.1_crit_edge
  %empty6.1 = getelementptr %struct.ispstat_buffer, ptr %1, i32 1, i32 7
  %14 = ptrtoint ptr %empty6.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %empty6.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not.1 = icmp eq i8 %15, 0
  br i1 %tobool7.not.1, label %if.end9.1, label %if.end5.1.for.end_crit_edge

if.end5.1.for.end_crit_edge:                      ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end9.1:                                        ; preds = %if.end5.1
  %tobool10.not.1 = icmp eq ptr %found.2.ph, null
  br i1 %tobool10.not.1, label %if.end9.1.if.then15.1_crit_edge, label %lor.lhs.false11.1

if.end9.1.if.then15.1_crit_edge:                  ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.1

lor.lhs.false11.1:                                ; preds = %if.end9.1
  %frame_number.1 = getelementptr %struct.ispstat_buffer, ptr %1, i32 1, i32 5
  %16 = ptrtoint ptr %frame_number.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_number.1, align 4
  %frame_number12.1 = getelementptr inbounds %struct.ispstat_buffer, ptr %found.2.ph, i32 0, i32 5
  %18 = ptrtoint ptr %frame_number12.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_number12.1, align 4
  %sub.1 = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp13.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp13.1, label %lor.lhs.false11.1.if.then15.1_crit_edge, label %lor.lhs.false11.1.for.inc.1_crit_edge

lor.lhs.false11.1.for.inc.1_crit_edge:            ; preds = %lor.lhs.false11.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

lor.lhs.false11.1.if.then15.1_crit_edge:          ; preds = %lor.lhs.false11.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.1

if.then15.1:                                      ; preds = %lor.lhs.false11.1.if.then15.1_crit_edge, %if.end9.1.if.then15.1_crit_edge
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then15.1, %lor.lhs.false11.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %found.2.ph.1 = phi ptr [ %found.2.ph, %lor.lhs.false11.1.for.inc.1_crit_edge ], [ %arrayidx.1, %if.then15.1 ], [ %found.2.ph, %land.lhs.true.1.for.inc.1_crit_edge ], [ %found.2.ph, %for.inc.for.inc.1_crit_edge ], [ %found.2.ph, %lor.lhs.false.1.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.ispstat_buffer, ptr %1, i32 2
  %cmp1.2 = icmp eq ptr %arrayidx.2, %3
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %lor.lhs.false.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %20 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_buf, align 4
  %cmp2.2 = icmp eq ptr %arrayidx.2, %21
  br i1 %cmp2.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %if.end.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end.2:                                         ; preds = %lor.lhs.false.2
  br i1 %tobool.not, label %land.lhs.true.2, label %if.end.2.if.end5.2_crit_edge

if.end.2.if.end5.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.2

land.lhs.true.2:                                  ; preds = %if.end.2
  %empty.2 = getelementptr %struct.ispstat_buffer, ptr %1, i32 2, i32 7
  %22 = ptrtoint ptr %empty.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %empty.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.2 = icmp eq i8 %23, 0
  br i1 %tobool3.not.2, label %land.lhs.true.2.if.end5.2_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2.if.end5.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.2

if.end5.2:                                        ; preds = %land.lhs.true.2.if.end5.2_crit_edge, %if.end.2.if.end5.2_crit_edge
  %empty6.2 = getelementptr %struct.ispstat_buffer, ptr %1, i32 2, i32 7
  %24 = ptrtoint ptr %empty6.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %empty6.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not.2 = icmp eq i8 %25, 0
  br i1 %tobool7.not.2, label %if.end9.2, label %if.end5.2.for.end_crit_edge

if.end5.2.for.end_crit_edge:                      ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end9.2:                                        ; preds = %if.end5.2
  %tobool10.not.2 = icmp eq ptr %found.2.ph.1, null
  br i1 %tobool10.not.2, label %if.end9.2.if.then15.2_crit_edge, label %lor.lhs.false11.2

if.end9.2.if.then15.2_crit_edge:                  ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.2

lor.lhs.false11.2:                                ; preds = %if.end9.2
  %frame_number.2 = getelementptr %struct.ispstat_buffer, ptr %1, i32 2, i32 5
  %26 = ptrtoint ptr %frame_number.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_number.2, align 4
  %frame_number12.2 = getelementptr inbounds %struct.ispstat_buffer, ptr %found.2.ph.1, i32 0, i32 5
  %28 = ptrtoint ptr %frame_number12.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frame_number12.2, align 4
  %sub.2 = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2)
  %cmp13.2 = icmp slt i32 %sub.2, 0
  br i1 %cmp13.2, label %lor.lhs.false11.2.if.then15.2_crit_edge, label %lor.lhs.false11.2.for.inc.2_crit_edge

lor.lhs.false11.2.for.inc.2_crit_edge:            ; preds = %lor.lhs.false11.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

lor.lhs.false11.2.if.then15.2_crit_edge:          ; preds = %lor.lhs.false11.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.2

if.then15.2:                                      ; preds = %lor.lhs.false11.2.if.then15.2_crit_edge, %if.end9.2.if.then15.2_crit_edge
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then15.2, %lor.lhs.false11.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %lor.lhs.false.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %found.2.ph.2 = phi ptr [ %found.2.ph.1, %lor.lhs.false11.2.for.inc.2_crit_edge ], [ %arrayidx.2, %if.then15.2 ], [ %found.2.ph.1, %land.lhs.true.2.for.inc.2_crit_edge ], [ %found.2.ph.1, %for.inc.1.for.inc.2_crit_edge ], [ %found.2.ph.1, %lor.lhs.false.2.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.ispstat_buffer, ptr %1, i32 3
  %cmp1.3 = icmp eq ptr %arrayidx.3, %3
  br i1 %cmp1.3, label %for.inc.2.for.inc.3_crit_edge, label %lor.lhs.false.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %30 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %active_buf, align 4
  %cmp2.3 = icmp eq ptr %arrayidx.3, %31
  br i1 %cmp2.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %if.end.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.end.3:                                         ; preds = %lor.lhs.false.3
  br i1 %tobool.not, label %land.lhs.true.3, label %if.end.3.if.end5.3_crit_edge

if.end.3.if.end5.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.3

land.lhs.true.3:                                  ; preds = %if.end.3
  %empty.3 = getelementptr %struct.ispstat_buffer, ptr %1, i32 3, i32 7
  %32 = ptrtoint ptr %empty.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %empty.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.3 = icmp eq i8 %33, 0
  br i1 %tobool3.not.3, label %land.lhs.true.3.if.end5.3_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3.if.end5.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.3

if.end5.3:                                        ; preds = %land.lhs.true.3.if.end5.3_crit_edge, %if.end.3.if.end5.3_crit_edge
  %empty6.3 = getelementptr %struct.ispstat_buffer, ptr %1, i32 3, i32 7
  %34 = ptrtoint ptr %empty6.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %empty6.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool7.not.3 = icmp eq i8 %35, 0
  br i1 %tobool7.not.3, label %if.end9.3, label %if.end5.3.for.end_crit_edge

if.end5.3.for.end_crit_edge:                      ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end9.3:                                        ; preds = %if.end5.3
  %tobool10.not.3 = icmp eq ptr %found.2.ph.2, null
  br i1 %tobool10.not.3, label %if.end9.3.if.then15.3_crit_edge, label %lor.lhs.false11.3

if.end9.3.if.then15.3_crit_edge:                  ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.3

lor.lhs.false11.3:                                ; preds = %if.end9.3
  %frame_number.3 = getelementptr %struct.ispstat_buffer, ptr %1, i32 3, i32 5
  %36 = ptrtoint ptr %frame_number.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frame_number.3, align 4
  %frame_number12.3 = getelementptr inbounds %struct.ispstat_buffer, ptr %found.2.ph.2, i32 0, i32 5
  %38 = ptrtoint ptr %frame_number12.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frame_number12.3, align 4
  %sub.3 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.3)
  %cmp13.3 = icmp slt i32 %sub.3, 0
  br i1 %cmp13.3, label %lor.lhs.false11.3.if.then15.3_crit_edge, label %lor.lhs.false11.3.for.inc.3_crit_edge

lor.lhs.false11.3.for.inc.3_crit_edge:            ; preds = %lor.lhs.false11.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

lor.lhs.false11.3.if.then15.3_crit_edge:          ; preds = %lor.lhs.false11.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.3

if.then15.3:                                      ; preds = %lor.lhs.false11.3.if.then15.3_crit_edge, %if.end9.3.if.then15.3_crit_edge
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then15.3, %lor.lhs.false11.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %lor.lhs.false.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %found.2.ph.3 = phi ptr [ %found.2.ph.2, %lor.lhs.false11.3.for.inc.3_crit_edge ], [ %arrayidx.3, %if.then15.3 ], [ %found.2.ph.2, %land.lhs.true.3.for.inc.3_crit_edge ], [ %found.2.ph.2, %for.inc.2.for.inc.3_crit_edge ], [ %found.2.ph.2, %lor.lhs.false.3.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.ispstat_buffer, ptr %1, i32 4
  %cmp1.4 = icmp eq ptr %arrayidx.4, %3
  br i1 %cmp1.4, label %for.inc.3.for.end_crit_edge, label %lor.lhs.false.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %40 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %active_buf, align 4
  %cmp2.4 = icmp eq ptr %arrayidx.4, %41
  br i1 %cmp2.4, label %lor.lhs.false.4.for.end_crit_edge, label %if.end.4

lor.lhs.false.4.for.end_crit_edge:                ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.4:                                         ; preds = %lor.lhs.false.4
  br i1 %tobool.not, label %land.lhs.true.4, label %if.end.4.if.end5.4_crit_edge

if.end.4.if.end5.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.4

land.lhs.true.4:                                  ; preds = %if.end.4
  %empty.4 = getelementptr %struct.ispstat_buffer, ptr %1, i32 4, i32 7
  %42 = ptrtoint ptr %empty.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %empty.4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.4 = icmp eq i8 %43, 0
  br i1 %tobool3.not.4, label %land.lhs.true.4.if.end5.4_crit_edge, label %land.lhs.true.4.for.end_crit_edge

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true.4.if.end5.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.4

if.end5.4:                                        ; preds = %land.lhs.true.4.if.end5.4_crit_edge, %if.end.4.if.end5.4_crit_edge
  %empty6.4 = getelementptr %struct.ispstat_buffer, ptr %1, i32 4, i32 7
  %44 = ptrtoint ptr %empty6.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %empty6.4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool7.not.4 = icmp eq i8 %45, 0
  br i1 %tobool7.not.4, label %if.end9.4, label %if.end5.4.for.end_crit_edge

if.end5.4.for.end_crit_edge:                      ; preds = %if.end5.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end9.4:                                        ; preds = %if.end5.4
  %tobool10.not.4 = icmp eq ptr %found.2.ph.3, null
  br i1 %tobool10.not.4, label %if.end9.4.if.then15.4_crit_edge, label %lor.lhs.false11.4

if.end9.4.if.then15.4_crit_edge:                  ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.4

lor.lhs.false11.4:                                ; preds = %if.end9.4
  %frame_number.4 = getelementptr %struct.ispstat_buffer, ptr %1, i32 4, i32 5
  %46 = ptrtoint ptr %frame_number.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %frame_number.4, align 4
  %frame_number12.4 = getelementptr inbounds %struct.ispstat_buffer, ptr %found.2.ph.3, i32 0, i32 5
  %48 = ptrtoint ptr %frame_number12.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame_number12.4, align 4
  %sub.4 = sub i32 %47, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.4)
  %cmp13.4 = icmp slt i32 %sub.4, 0
  br i1 %cmp13.4, label %lor.lhs.false11.4.if.then15.4_crit_edge, label %lor.lhs.false11.4.for.end_crit_edge

lor.lhs.false11.4.for.end_crit_edge:              ; preds = %lor.lhs.false11.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false11.4.if.then15.4_crit_edge:          ; preds = %lor.lhs.false11.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.4

if.then15.4:                                      ; preds = %lor.lhs.false11.4.if.then15.4_crit_edge, %if.end9.4.if.then15.4_crit_edge
  br label %for.end

for.end:                                          ; preds = %if.then15.4, %lor.lhs.false11.4.for.end_crit_edge, %if.end5.4.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %lor.lhs.false.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %if.end5.3.for.end_crit_edge, %if.end5.2.for.end_crit_edge, %if.end5.1.for.end_crit_edge, %if.end5.for.end_crit_edge
  %found.3 = phi ptr [ %1, %if.end5.for.end_crit_edge ], [ %arrayidx.1, %if.end5.1.for.end_crit_edge ], [ %arrayidx.2, %if.end5.2.for.end_crit_edge ], [ %arrayidx.3, %if.end5.3.for.end_crit_edge ], [ %arrayidx.4, %if.end5.4.for.end_crit_edge ], [ %found.2.ph.3, %lor.lhs.false11.4.for.end_crit_edge ], [ %arrayidx.4, %if.then15.4 ], [ %found.2.ph.3, %land.lhs.true.4.for.end_crit_edge ], [ %found.2.ph.3, %for.inc.3.for.end_crit_edge ], [ %found.2.ph.3, %lor.lhs.false.4.for.end_crit_edge ]
  ret ptr %found.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_stat_buf_insert_magic(ptr noundef readonly %stat, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 21
  %cmp = icmp eq ptr %isp_af, %stat
  %buf_size1 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 14
  %2 = ptrtoint ptr %buf_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_size1, align 4
  %add = add i32 %3, 48
  %cond = select i1 %cmp, i32 %add, i32 %3
  %dma_ch.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 16
  %4 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_ch.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %if.end.i, label %entry.isp_stat_buf_sync_magic_for_cpu.exit_crit_edge

entry.isp_stat_buf_sync_magic_for_cpu.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_sync_magic_for_cpu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  %dma_addr.i.i = getelementptr inbounds %struct.ispstat_buffer, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr.i.i, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %7, i32 noundef %9, i32 noundef 16, i32 noundef 2) #9
  %10 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp, align 4
  %dev2.i.i = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2.i.i, align 8
  %14 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i.i, align 8
  %add.i1.i = add i32 %15, %cond
  tail call void @dma_sync_single_for_cpu(ptr noundef %13, i32 noundef %add.i1.i, i32 noundef 16, i32 noundef 2) #9
  br label %isp_stat_buf_sync_magic_for_cpu.exit

isp_stat_buf_sync_magic_for_cpu.exit:             ; preds = %if.end.i, %entry.isp_stat_buf_sync_magic_for_cpu.exit_crit_edge
  %virt_addr = getelementptr inbounds %struct.ispstat_buffer, ptr %buf, i32 0, i32 1
  %16 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt_addr, align 4
  %18 = call ptr @memset(ptr %17, i32 85, i32 16)
  %19 = load ptr, ptr %virt_addr, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %cond
  %20 = call ptr @memset(ptr %add.ptr, i32 85, i32 16)
  %21 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_ch.i, align 4
  %cmp.not.i15 = icmp eq ptr %22, null
  br i1 %cmp.not.i15, label %if.end.i20, label %isp_stat_buf_sync_magic_for_cpu.exit.isp_stat_buf_sync_magic_for_device.exit_crit_edge

isp_stat_buf_sync_magic_for_cpu.exit.isp_stat_buf_sync_magic_for_device.exit_crit_edge: ; preds = %isp_stat_buf_sync_magic_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_sync_magic_for_device.exit

if.end.i20:                                       ; preds = %isp_stat_buf_sync_magic_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %isp, align 4
  %dev.i.i17 = getelementptr inbounds %struct.isp_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i.i17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i17, align 8
  %dma_addr.i.i18 = getelementptr inbounds %struct.ispstat_buffer, ptr %buf, i32 0, i32 2
  %27 = ptrtoint ptr %dma_addr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_addr.i.i18, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %26, i32 noundef %28, i32 noundef 16, i32 noundef 0) #9
  %29 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %isp, align 4
  %dev2.i.i19 = getelementptr inbounds %struct.isp_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev2.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2.i.i19, align 8
  %33 = ptrtoint ptr %dma_addr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr.i.i18, align 8
  %add.i2.i = add i32 %34, %cond
  tail call void @dma_sync_single_for_device(ptr noundef %32, i32 noundef %add.i2.i, i32 noundef 16, i32 noundef 0) #9
  br label %isp_stat_buf_sync_magic_for_device.exit

isp_stat_buf_sync_magic_for_device.exit:          ; preds = %if.end.i20, %isp_stat_buf_sync_magic_for_cpu.exit.isp_stat_buf_sync_magic_for_device.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_stat_buf_process(ptr noundef %stat, i32 noundef %buf_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_err = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_err, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %buf_err, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %buf_err, ptr %buf_err, i32 0, i32 -1, ptr elementtype(i32) %buf_err) #9, !srcloc !120
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %atomic_add_unless.exit, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  br label %if.end

atomic_add_unless.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_state)
  %cmp = icmp eq i32 %buf_state, 0
  br i1 %cmp, label %land.lhs.true1, label %atomic_add_unless.exit.if.end_crit_edge

atomic_add_unless.exit.if.end_crit_edge:          ; preds = %atomic_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true1:                                   ; preds = %atomic_add_unless.exit
  %state = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %if.then, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %active_buf.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 19
  %3 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %active_buf.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.isp_stat_buf_queue.exit_crit_edge, label %if.end.i

if.then.isp_stat_buf_queue.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp_stat_buf_queue.exit

if.end.i:                                         ; preds = %if.then
  %ts.i = getelementptr inbounds %struct.ispstat_buffer, ptr %4, i32 0, i32 3
  tail call void @ktime_get_ts64(ptr noundef %ts.i) #9
  %buf_size.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 14
  %5 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_size.i, align 4
  %7 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_buf.i, align 4
  %buf_size3.i = getelementptr inbounds %struct.ispstat_buffer, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %buf_size3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %buf_size3.i, align 8
  %10 = load ptr, ptr %active_buf.i, align 4
  %call.i = tail call fastcc i32 @isp_stat_buf_check_magic(ptr noundef %stat, ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end14.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_buf_queue.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_buf_process, %isp_stat_buf_queue.exit)) #9
          to label %if.then12.i [label %isp_stat_buf_queue.exit], !srcloc !115

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %isp.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %11 = ptrtoint ptr %isp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp.i, align 4
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_buf_queue.__UNIQUE_ID_ddebug300, ptr noundef %14, ptr noundef nonnull @.str.48, ptr noundef %name.i) #9
  br label %isp_stat_buf_queue.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %config_counter.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 12
  %15 = ptrtoint ptr %config_counter.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %config_counter.i, align 2
  %17 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %active_buf.i, align 4
  %config_counter16.i = getelementptr inbounds %struct.ispstat_buffer, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %config_counter16.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %16, ptr %config_counter16.i, align 8
  %frame_number.i = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 13
  %20 = ptrtoint ptr %frame_number.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_number.i, align 4
  %22 = load ptr, ptr %active_buf.i, align 4
  %frame_number18.i = getelementptr inbounds %struct.ispstat_buffer, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %frame_number18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %frame_number18.i, align 4
  %24 = load ptr, ptr %active_buf.i, align 4
  %empty.i = getelementptr inbounds %struct.ispstat_buffer, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %empty.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %empty.i, align 2
  store ptr null, ptr %active_buf.i, align 4
  br label %isp_stat_buf_queue.exit

isp_stat_buf_queue.exit:                          ; preds = %if.end14.i, %if.then12.i, %do.body.i, %if.then.isp_stat_buf_queue.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ 1, %if.then.isp_stat_buf_queue.exit_crit_edge ], [ 1, %if.then12.i ], [ 1, %do.body.i ]
  %26 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %active_buf.i, align 4
  %tobool.not.i8 = icmp eq ptr %27, null
  br i1 %tobool.not.i8, label %if.else.i, label %do.body.i9, !prof !116

do.body.i9:                                       ; preds = %isp_stat_buf_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_stat_buf_next.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_stat_buf_process, %if.end)) #9
          to label %if.then12.i13 [label %if.end], !srcloc !115

if.then12.i13:                                    ; preds = %do.body.i9
  call void @__sanitizer_cov_trace_pc() #11
  %isp.i10 = getelementptr inbounds %struct.ispstat, ptr %stat, i32 0, i32 6
  %28 = ptrtoint ptr %isp.i10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %isp.i10, align 4
  %dev.i11 = getelementptr inbounds %struct.isp_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i11, align 8
  %name.i12 = getelementptr inbounds %struct.v4l2_subdev, ptr %stat, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_stat_buf_next.__UNIQUE_ID_ddebug301, ptr noundef %31, ptr noundef nonnull @.str.43, ptr noundef %name.i12) #9
  br label %if.end

if.else.i:                                        ; preds = %isp_stat_buf_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i14 = tail call fastcc ptr @__isp_stat_buf_find(ptr noundef %stat, i32 noundef 1) #9
  %32 = ptrtoint ptr %active_buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i14, ptr %active_buf.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then12.i13, %do.body.i9, %land.lhs.true1.if.end_crit_edge, %atomic_add_unless.exit.if.end_crit_edge, %atomic_add_unless.exit.thread
  %ret.0 = phi i32 [ 1, %atomic_add_unless.exit.if.end_crit_edge ], [ 1, %land.lhs.true1.if.end_crit_edge ], [ 1, %atomic_add_unless.exit.thread ], [ %retval.0.i, %do.body.i9 ], [ %retval.0.i, %if.then12.i13 ], [ %retval.0.i, %if.else.i ]
  ret i32 %ret.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !98, !99, !100, !102, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 487, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @omap3isp_stat_request_statistics.__UNIQUE_ID_ddebug306, !1, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 546, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug307, !7, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 553, i32 3}
!12 = !{ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug308, !11, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 559, i32 3}
!15 = !{ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug309, !14, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 612, i32 2}
!18 = !{ptr @omap3isp_stat_config.__UNIQUE_ID_ddebug310, !17, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 769, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap3isp_stat_enable.__UNIQUE_ID_ddebug312, !20, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!23 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 780, i32 3}
!27 = !{ptr @omap3isp_stat_enable.__UNIQUE_ID_ddebug313, !26, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 842, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @omap3isp_stat_s_stream.__UNIQUE_ID_ddebug314, !29, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!32 = !{ptr @omap3isp_stat_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 1062, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 290, i32 4}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @isp_stat_buf_get.__UNIQUE_ID_ddebug302, !36, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 295, i32 4}
!41 = !{ptr @isp_stat_buf_get.__UNIQUE_ID_ddebug303, !40, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 311, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @isp_stat_buf_get._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @isp_stat_buf_get._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 325, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @isp_stat_buf_get._entry.23, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @isp_stat_buf_get._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 114, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @isp_stat_buf_check_magic.__UNIQUE_ID_ddebug298, !54, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 124, i32 4}
!59 = !{ptr @isp_stat_buf_check_magic.__UNIQUE_ID_ddebug299, !58, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 421, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @isp_stat_bufs_alloc._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @isp_stat_bufs_alloc._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 440, i32 4}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @isp_stat_bufs_alloc._entry.35, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @isp_stat_bufs_alloc._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 449, i32 3}
!79 = !{ptr @isp_stat_bufs_alloc.__UNIQUE_ID_ddebug305, !78, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 724, i32 3}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @isp_stat_try_enable.__UNIQUE_ID_ddebug311, !81, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 259, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @isp_stat_buf_next.__UNIQUE_ID_ddebug301, !85, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 876, i32 4}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__stat_isr._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @__stat_isr._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 982, i32 3}
!95 = !{ptr @__stat_isr.__UNIQUE_ID_ddebug315, !94, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 242, i32 3}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @isp_stat_buf_queue.__UNIQUE_ID_ddebug300, !97, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 1041, i32 48}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/omap3isp/ispstat.c", i32 357, i32 2}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @isp_stat_bufs_free.__UNIQUE_ID_ddebug304, !103, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2148349977, i64 2148349982, i64 2148349995, i64 2148350039, i64 2148350073, i64 2148350094}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2153241599, i64 2153241624}
!118 = !{i64 2156607695, i64 2156608201, i64 2156607732, i64 2156607788, i64 2156607822, i64 2156607846, i64 2156607887, i64 2156607908, i64 2156607936, i64 2156607970}
!119 = !{i64 2148536003}
!120 = !{i64 1022603, i64 1022628, i64 1022650, i64 1022666, i64 1022678, i64 1022698, i64 1022722, i64 1022738, i64 1022750}
!121 = !{i64 2148536191}
