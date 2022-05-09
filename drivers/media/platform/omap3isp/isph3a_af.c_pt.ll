; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/isph3a_af.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/isph3a_af.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ispstat_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isp_device = type { %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, i32, [14 x ptr], i32, ptr, i32, i32, ptr, %struct.spinlock, %struct.mutex, i8, %struct.media_entity_enum, i32, i32, i32, [4 x ptr], [2 x %struct.isp_xclk], %struct.ispstat, %struct.ispstat, %struct.ispstat, %struct.isp_res_device, %struct.isp_prev_device, %struct.isp_ccdc_device, %struct.isp_csi2_device, %struct.isp_csi2_device, %struct.isp_ccp2_device, %struct.isp_csiphy, %struct.isp_csiphy, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.omap3isp_h3a_af_config = type { i32, i16, %struct.omap3isp_h3a_af_hmf, %struct.omap3isp_h3a_af_iir, %struct.omap3isp_h3a_af_paxel, i32, i32, i8 }
%struct.omap3isp_h3a_af_hmf = type { i8, i8 }
%struct.omap3isp_h3a_af_iir = type { i16, [11 x i16], [11 x i16] }
%struct.omap3isp_h3a_af_paxel = type { i16, i16, i8, i8, i8, i8, i8 }
%struct.ispstat_buffer = type { %struct.sg_table, ptr, i32, %struct.timespec64, i32, i32, i16, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@h3a_af_ops = internal constant { %struct.ispstat_ops, [40 x i8] } { %struct.ispstat_ops { ptr @h3a_af_validate_params, ptr @h3a_af_set_params, ptr @h3a_af_setup_regs, ptr @h3a_af_enable, ptr @h3a_af_busy, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap3isp_h3a_af_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 370, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"AF: cannot allocate memory for recover configuration.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap3isp_h3a_af_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/omap3isp/isph3a_af.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap3isp_h3a_af_init._entry_ptr = internal global ptr @omap3isp_h3a_af_init._entry, section ".printk_index", align 4
@omap3isp_h3a_af_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AF: recover configuration is invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@omap3isp_h3a_af_init._entry_ptr.7 = internal global ptr @omap3isp_h3a_af_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AF\00", [29 x i8] zeroinitializer }, align 32
@h3a_af_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @h3a_af_subdev_core_ops, ptr null, ptr null, ptr @h3a_af_subdev_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@h3a_af_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @h3a_af_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @omap3isp_stat_subscribe_event, ptr @omap3isp_stat_unsubscribe_event }, [40 x i8] zeroinitializer }, align 32
@h3a_af_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3isp_stat_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3221509831, i64 3222820550, i64 3223344838, i64 3226228421]
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"h3a_af_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 326, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 369, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 382, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 391, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"h3a_af_subdev_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 344, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"h3a_af_subdev_core_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 334, i32 42 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"h3a_af_subdev_video_ops\00", align 1
@___asan_gen_.46 = private constant [47 x i8] c"../drivers/media/platform/omap3isp/isph3a_af.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 340, i32 43 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @omap3isp_h3a_af_init._entry, ptr @omap3isp_h3a_af_init._entry.5, ptr @omap3isp_h3a_af_init._entry_ptr, ptr @omap3isp_h3a_af_init._entry_ptr.7, ptr @h3a_af_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @h3a_af_subdev_ops, ptr @h3a_af_subdev_core_ops, ptr @h3a_af_subdev_video_ops], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_af_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_h3a_af_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_h3a_af_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_af_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_af_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_af_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_h3a_af_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21, i32 10
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @h3a_af_ops, ptr %ops, align 4
  %priv = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21, i32 7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 4
  %event_type = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21, i32 17
  %3 = ptrtoint ptr %event_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 134217986, ptr %event_type, align 4
  %isp1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21, i32 6
  %4 = ptrtoint ptr %isp1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %isp, ptr %isp1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 76) #9
  %tobool.not = icmp eq ptr %call7.i.i51, null
  br i1 %tobool.not, label %if.end.if.then23.sink.split_crit_edge, label %if.end5

if.end.if.then23.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.sink.split

if.end5:                                          ; preds = %if.end
  %paxel = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %call7.i.i51, i32 0, i32 4
  %6 = ptrtoint ptr %paxel to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %paxel, align 2
  %width = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %call7.i.i51, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %width, align 2
  %height = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %call7.i.i51, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %height, align 1
  %h_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %call7.i.i51, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %h_cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %h_cnt, align 4
  %v_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %call7.i.i51, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %v_cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %v_cnt, align 1
  %line_inc = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %call7.i.i51, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %line_inc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %line_inc, align 2
  %call11 = tail call i32 @h3a_af_validate_params(ptr noundef %isp_af, ptr noundef nonnull %call7.i.i51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end5.if.then23.sink.split_crit_edge

if.end5.if.then23.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.sink.split

err:                                              ; preds = %if.end5
  %12 = ptrtoint ptr %h_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %h_cnt, align 4
  %conv.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %v_cnt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %v_cnt, align 1
  %conv2.i = zext i8 %15 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 48
  %mul3.i = mul nuw nsw i32 %mul.i, %conv2.i
  %16 = ptrtoint ptr %call7.i.i51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul3.i, ptr %call7.i.i51, align 8
  %recover_priv = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21, i32 8
  %17 = ptrtoint ptr %recover_priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i51, ptr %recover_priv, align 4
  %call21 = tail call i32 @omap3isp_stat_init(ptr noundef %isp_af, ptr noundef nonnull @.str.8, ptr noundef nonnull @h3a_af_subdev_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err.cleanup_crit_edge, label %err.if.then23_crit_edge

err.if.then23_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23.sink.split:                             ; preds = %if.end5.if.then23.sink.split_crit_edge, %if.end.if.then23.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str, %if.end.if.then23.sink.split_crit_edge ], [ @.str.6, %if.end5.if.then23.sink.split_crit_edge ]
  %ret.054.ph = phi i32 [ -12, %if.end.if.then23.sink.split_crit_edge ], [ -22, %if.end5.if.then23.sink.split_crit_edge ]
  %18 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %isp1, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull %.str.sink) #10
  br label %if.then23

if.then23:                                        ; preds = %if.then23.sink.split, %err.if.then23_crit_edge
  %ret.054 = phi i32 [ %call21, %err.if.then23_crit_edge ], [ %ret.054.ph, %if.then23.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  tail call void @kfree(ptr noundef %call7.i.i51) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %err.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.054, %if.then23 ], [ 0, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h3a_af_validate_params(ptr nocapture noundef readnone %af, ptr nocapture noundef %new_conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %paxel = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4
  %iir = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3
  %h_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %h_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %h_cnt, align 2
  %2 = add i8 %1, -37
  call void @__sanitizer_cov_trace_const_cmp1(i8 -36, i8 %2)
  %3 = icmp ult i8 %2, -36
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %v_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %v_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v_cnt, align 1
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %7 = icmp slt i8 %6, 0
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %height = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %height, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp17 = icmp ugt i8 %9, 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %or.cond165 = and i1 %cmp17, %tobool.not
  br i1 %or.cond165, label %if.end28, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %width = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %12)
  %cmp30 = icmp ugt i8 %12, 15
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool41.not = icmp eq i8 %13, 0
  %or.cond166 = and i1 %cmp30, %tobool41.not
  br i1 %or.cond166, label %if.end43, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %line_inc = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %line_inc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %line_inc, align 2
  %16 = add i8 %15, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %16)
  %17 = icmp ult i8 %16, 31
  %18 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool56.not = icmp eq i8 %18, 0
  %or.cond168 = and i1 %17, %tobool56.not
  br i1 %or.cond168, label %if.end58, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end43
  %19 = ptrtoint ptr %paxel to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %paxel, align 2
  %21 = ptrtoint ptr %iir to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %iir, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp62 = icmp ult i16 %20, %22
  %23 = add i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4095, i16 %23)
  %24 = icmp ult i16 %23, -4095
  %25 = or i1 %24, %cmp62
  br i1 %25, label %if.end58.cleanup_crit_edge, label %for.body.preheader

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end58
  %arrayidx = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %27)
  %cmp79 = icmp ugt i16 %27, 4095
  br i1 %cmp79, label %for.body.preheader.cleanup_crit_edge, label %if.end82

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end82
  %arrayidx.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %29)
  %cmp79.1 = icmp ugt i16 %29, 4095
  br i1 %cmp79.1, label %for.cond.cleanup_crit_edge, label %if.end82.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.1:                                       ; preds = %for.cond
  %arrayidx83.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx83.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %31)
  %cmp85.1 = icmp ugt i16 %31, 4095
  br i1 %cmp85.1, label %if.end82.1.cleanup_crit_edge, label %for.cond.1

if.end82.1.cleanup_crit_edge:                     ; preds = %if.end82.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %if.end82.1
  %arrayidx.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %33)
  %cmp79.2 = icmp ugt i16 %33, 4095
  br i1 %cmp79.2, label %for.cond.1.cleanup_crit_edge, label %if.end82.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.2:                                       ; preds = %for.cond.1
  %arrayidx83.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 2
  %34 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx83.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %35)
  %cmp85.2 = icmp ugt i16 %35, 4095
  br i1 %cmp85.2, label %if.end82.2.cleanup_crit_edge, label %for.cond.2

if.end82.2.cleanup_crit_edge:                     ; preds = %if.end82.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %if.end82.2
  %arrayidx.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %37)
  %cmp79.3 = icmp ugt i16 %37, 4095
  br i1 %cmp79.3, label %for.cond.2.cleanup_crit_edge, label %if.end82.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.3:                                       ; preds = %for.cond.2
  %arrayidx83.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx83.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %39)
  %cmp85.3 = icmp ugt i16 %39, 4095
  br i1 %cmp85.3, label %if.end82.3.cleanup_crit_edge, label %for.cond.3

if.end82.3.cleanup_crit_edge:                     ; preds = %if.end82.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %if.end82.3
  %arrayidx.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %41)
  %cmp79.4 = icmp ugt i16 %41, 4095
  br i1 %cmp79.4, label %for.cond.3.cleanup_crit_edge, label %if.end82.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.4:                                       ; preds = %for.cond.3
  %arrayidx83.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 4
  %42 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx83.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %43)
  %cmp85.4 = icmp ugt i16 %43, 4095
  br i1 %cmp85.4, label %if.end82.4.cleanup_crit_edge, label %for.cond.4

if.end82.4.cleanup_crit_edge:                     ; preds = %if.end82.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %if.end82.4
  %arrayidx.5 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %45)
  %cmp79.5 = icmp ugt i16 %45, 4095
  br i1 %cmp79.5, label %for.cond.4.cleanup_crit_edge, label %if.end82.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.5:                                       ; preds = %for.cond.4
  %arrayidx83.5 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 5
  %46 = ptrtoint ptr %arrayidx83.5 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx83.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %47)
  %cmp85.5 = icmp ugt i16 %47, 4095
  br i1 %cmp85.5, label %if.end82.5.cleanup_crit_edge, label %for.cond.5

if.end82.5.cleanup_crit_edge:                     ; preds = %if.end82.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.5:                                       ; preds = %if.end82.5
  %arrayidx.6 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 6
  %48 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %49)
  %cmp79.6 = icmp ugt i16 %49, 4095
  br i1 %cmp79.6, label %for.cond.5.cleanup_crit_edge, label %if.end82.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.6:                                       ; preds = %for.cond.5
  %arrayidx83.6 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 6
  %50 = ptrtoint ptr %arrayidx83.6 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx83.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %51)
  %cmp85.6 = icmp ugt i16 %51, 4095
  br i1 %cmp85.6, label %if.end82.6.cleanup_crit_edge, label %for.cond.6

if.end82.6.cleanup_crit_edge:                     ; preds = %if.end82.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.6:                                       ; preds = %if.end82.6
  %arrayidx.7 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 7
  %52 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %53)
  %cmp79.7 = icmp ugt i16 %53, 4095
  br i1 %cmp79.7, label %for.cond.6.cleanup_crit_edge, label %if.end82.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.7:                                       ; preds = %for.cond.6
  %arrayidx83.7 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 7
  %54 = ptrtoint ptr %arrayidx83.7 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx83.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %55)
  %cmp85.7 = icmp ugt i16 %55, 4095
  br i1 %cmp85.7, label %if.end82.7.cleanup_crit_edge, label %for.cond.7

if.end82.7.cleanup_crit_edge:                     ; preds = %if.end82.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.7:                                       ; preds = %if.end82.7
  %arrayidx.8 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 8
  %56 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %57)
  %cmp79.8 = icmp ugt i16 %57, 4095
  br i1 %cmp79.8, label %for.cond.7.cleanup_crit_edge, label %if.end82.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.8:                                       ; preds = %for.cond.7
  %arrayidx83.8 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 8
  %58 = ptrtoint ptr %arrayidx83.8 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx83.8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %59)
  %cmp85.8 = icmp ugt i16 %59, 4095
  br i1 %cmp85.8, label %if.end82.8.cleanup_crit_edge, label %for.cond.8

if.end82.8.cleanup_crit_edge:                     ; preds = %if.end82.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.8:                                       ; preds = %if.end82.8
  %arrayidx.9 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 9
  %60 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %61)
  %cmp79.9 = icmp ugt i16 %61, 4095
  br i1 %cmp79.9, label %for.cond.8.cleanup_crit_edge, label %if.end82.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.9:                                       ; preds = %for.cond.8
  %arrayidx83.9 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 9
  %62 = ptrtoint ptr %arrayidx83.9 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx83.9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %63)
  %cmp85.9 = icmp ugt i16 %63, 4095
  br i1 %cmp85.9, label %if.end82.9.cleanup_crit_edge, label %for.cond.9

if.end82.9.cleanup_crit_edge:                     ; preds = %if.end82.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.9:                                       ; preds = %if.end82.9
  %arrayidx.10 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 10
  %64 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %65)
  %cmp79.10 = icmp ugt i16 %65, 4095
  br i1 %cmp79.10, label %for.cond.9.cleanup_crit_edge, label %if.end82.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.10:                                      ; preds = %for.cond.9
  %arrayidx83.10 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 10
  %66 = ptrtoint ptr %arrayidx83.10 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx83.10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %67)
  %cmp85.10 = icmp ugt i16 %67, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %22)
  %cmp96 = icmp ugt i16 %22, 4095
  %or.cond = select i1 %cmp85.10, i1 true, i1 %cmp96
  br i1 %or.cond, label %if.end82.10.cleanup_crit_edge, label %if.end114

if.end82.10.cleanup_crit_edge:                    ; preds = %if.end82.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82:                                         ; preds = %for.body.preheader
  %arrayidx83 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 0
  %68 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %69)
  %cmp85 = icmp ugt i16 %69, 4095
  br i1 %cmp85, label %if.end82.cleanup_crit_edge, label %for.cond

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end114:                                        ; preds = %if.end82.10
  %conv103 = zext i8 %5 to i32
  %conv101 = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv103, %conv101
  %mul3.i = mul nuw nsw i32 %mul, 48
  %70 = ptrtoint ptr %new_conf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %new_conf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %71)
  %cmp116 = icmp ugt i32 %mul3.i, %71
  br i1 %cmp116, label %if.end114.cleanup.sink.split_crit_edge, label %if.else

if.end114.cleanup.sink.split_crit_edge:           ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_const_cmp4(i32 221184, i32 %71)
  %cmp121 = icmp ugt i32 %71, 221184
  br i1 %cmp121, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end114.cleanup.sink.split_crit_edge
  %mul3.i.sink = phi i32 [ %mul3.i, %if.end114.cleanup.sink.split_crit_edge ], [ 221184, %if.else.cleanup.sink.split_crit_edge ]
  %72 = ptrtoint ptr %new_conf to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul3.i.sink, ptr %new_conf, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end82.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %if.end82.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %if.end82.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %if.end82.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %if.end82.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %if.end82.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %if.end82.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end82.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end82.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end82.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ], [ -22, %if.end58.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -22, %if.end82.10.cleanup_crit_edge ], [ -22, %for.cond.9.cleanup_crit_edge ], [ -22, %if.end82.9.cleanup_crit_edge ], [ -22, %for.cond.8.cleanup_crit_edge ], [ -22, %if.end82.8.cleanup_crit_edge ], [ -22, %for.cond.7.cleanup_crit_edge ], [ -22, %if.end82.7.cleanup_crit_edge ], [ -22, %for.cond.6.cleanup_crit_edge ], [ -22, %if.end82.6.cleanup_crit_edge ], [ -22, %for.cond.5.cleanup_crit_edge ], [ -22, %if.end82.5.cleanup_crit_edge ], [ -22, %for.cond.4.cleanup_crit_edge ], [ -22, %if.end82.4.cleanup_crit_edge ], [ -22, %for.cond.3.cleanup_crit_edge ], [ -22, %if.end82.3.cleanup_crit_edge ], [ -22, %for.cond.2.cleanup_crit_edge ], [ -22, %if.end82.2.cleanup_crit_edge ], [ -22, %for.cond.1.cleanup_crit_edge ], [ -22, %if.end82.1.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %if.end82.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_h3a_af_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21
  tail call void @omap3isp_stat_cleanup(ptr noundef %isp_af) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h3a_af_set_params(ptr nocapture noundef %af, ptr nocapture noundef readonly %new_conf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %alaw_enable = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %alaw_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alaw_enable, align 4
  %alaw_enable1 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 7
  %4 = ptrtoint ptr %alaw_enable1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alaw_enable1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not = icmp eq i8 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.if.then120_crit_edge

entry.if.then120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end:                                           ; preds = %entry
  %hmf = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hmf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hmf, align 2
  %hmf5 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 2
  %8 = ptrtoint ptr %hmf5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hmf5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp8.not = icmp eq i8 %7, %9
  br i1 %cmp8.not, label %if.end11, label %if.end.if.then120_crit_edge

if.end.if.then120_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end11:                                         ; preds = %if.end
  %threshold = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %threshold, align 1
  %threshold15 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %threshold15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %threshold15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp17.not = icmp eq i8 %11, %13
  br i1 %cmp17.not, label %if.end20, label %if.end11.if.then120_crit_edge

if.end11.if.then120_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end20:                                         ; preds = %if.end11
  %rgb_pos = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %rgb_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rgb_pos, align 4
  %rgb_pos21 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 5
  %16 = ptrtoint ptr %rgb_pos21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rgb_pos21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp22.not = icmp eq i32 %15, %17
  br i1 %cmp22.not, label %if.end25, label %if.end20.if.then120_crit_edge

if.end20.if.then120_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end25:                                         ; preds = %if.end20
  %iir = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %iir to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %iir, align 4
  %iir27 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3
  %20 = ptrtoint ptr %iir27 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %iir27, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp30.not = icmp eq i16 %19, %21
  br i1 %cmp30.not, label %for.body.preheader, label %if.end25.if.then120_crit_edge

if.end25.if.then120_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.body.preheader:                               ; preds = %if.end25
  %arrayidx = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %arrayidx40 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 0
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx40, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp42.not = icmp eq i16 %23, %25
  br i1 %cmp42.not, label %if.end45, label %for.body.preheader.if.then120_crit_edge

for.body.preheader.if.then120_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond:                                         ; preds = %if.end45
  %arrayidx.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.1, align 2
  %arrayidx40.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx40.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp42.not.1 = icmp eq i16 %27, %29
  br i1 %cmp42.not.1, label %if.end45.1, label %for.cond.if.then120_crit_edge

for.cond.if.then120_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.1:                                       ; preds = %for.cond
  %arrayidx47.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx47.1, align 2
  %arrayidx51.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx51.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp53.not.1 = icmp eq i16 %31, %33
  br i1 %cmp53.not.1, label %for.cond.1, label %if.end45.1.if.then120_crit_edge

if.end45.1.if.then120_crit_edge:                  ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.1:                                       ; preds = %if.end45.1
  %arrayidx.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.2, align 2
  %arrayidx40.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx40.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp42.not.2 = icmp eq i16 %35, %37
  br i1 %cmp42.not.2, label %if.end45.2, label %for.cond.1.if.then120_crit_edge

for.cond.1.if.then120_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.2:                                       ; preds = %for.cond.1
  %arrayidx47.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx47.2, align 2
  %arrayidx51.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 2
  %40 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx51.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp53.not.2 = icmp eq i16 %39, %41
  br i1 %cmp53.not.2, label %for.cond.2, label %if.end45.2.if.then120_crit_edge

if.end45.2.if.then120_crit_edge:                  ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.2:                                       ; preds = %if.end45.2
  %arrayidx.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.3, align 2
  %arrayidx40.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 3
  %44 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx40.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp42.not.3 = icmp eq i16 %43, %45
  br i1 %cmp42.not.3, label %if.end45.3, label %for.cond.2.if.then120_crit_edge

for.cond.2.if.then120_crit_edge:                  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.3:                                       ; preds = %for.cond.2
  %arrayidx47.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 3
  %46 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx47.3, align 2
  %arrayidx51.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 3
  %48 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx51.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp53.not.3 = icmp eq i16 %47, %49
  br i1 %cmp53.not.3, label %for.cond.3, label %if.end45.3.if.then120_crit_edge

if.end45.3.if.then120_crit_edge:                  ; preds = %if.end45.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.3:                                       ; preds = %if.end45.3
  %arrayidx.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 4
  %50 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.4, align 2
  %arrayidx40.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 4
  %52 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx40.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp42.not.4 = icmp eq i16 %51, %53
  br i1 %cmp42.not.4, label %if.end45.4, label %for.cond.3.if.then120_crit_edge

for.cond.3.if.then120_crit_edge:                  ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.4:                                       ; preds = %for.cond.3
  %arrayidx47.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 4
  %54 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx47.4, align 2
  %arrayidx51.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 4
  %56 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx51.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %57)
  %cmp53.not.4 = icmp eq i16 %55, %57
  br i1 %cmp53.not.4, label %for.cond.4, label %if.end45.4.if.then120_crit_edge

if.end45.4.if.then120_crit_edge:                  ; preds = %if.end45.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.4:                                       ; preds = %if.end45.4
  %arrayidx.5 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 5
  %58 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.5, align 2
  %arrayidx40.5 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 5
  %60 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx40.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp42.not.5 = icmp eq i16 %59, %61
  br i1 %cmp42.not.5, label %if.end45.5, label %for.cond.4.if.then120_crit_edge

for.cond.4.if.then120_crit_edge:                  ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.5:                                       ; preds = %for.cond.4
  %arrayidx47.5 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 5
  %62 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx47.5, align 2
  %arrayidx51.5 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 5
  %64 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx51.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp53.not.5 = icmp eq i16 %63, %65
  br i1 %cmp53.not.5, label %for.cond.5, label %if.end45.5.if.then120_crit_edge

if.end45.5.if.then120_crit_edge:                  ; preds = %if.end45.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.5:                                       ; preds = %if.end45.5
  %arrayidx.6 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 6
  %66 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.6, align 2
  %arrayidx40.6 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 6
  %68 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx40.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %69)
  %cmp42.not.6 = icmp eq i16 %67, %69
  br i1 %cmp42.not.6, label %if.end45.6, label %for.cond.5.if.then120_crit_edge

for.cond.5.if.then120_crit_edge:                  ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.6:                                       ; preds = %for.cond.5
  %arrayidx47.6 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 6
  %70 = ptrtoint ptr %arrayidx47.6 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx47.6, align 2
  %arrayidx51.6 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 6
  %72 = ptrtoint ptr %arrayidx51.6 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx51.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp53.not.6 = icmp eq i16 %71, %73
  br i1 %cmp53.not.6, label %for.cond.6, label %if.end45.6.if.then120_crit_edge

if.end45.6.if.then120_crit_edge:                  ; preds = %if.end45.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.6:                                       ; preds = %if.end45.6
  %arrayidx.7 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 7
  %74 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.7, align 2
  %arrayidx40.7 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 7
  %76 = ptrtoint ptr %arrayidx40.7 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx40.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp42.not.7 = icmp eq i16 %75, %77
  br i1 %cmp42.not.7, label %if.end45.7, label %for.cond.6.if.then120_crit_edge

for.cond.6.if.then120_crit_edge:                  ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.7:                                       ; preds = %for.cond.6
  %arrayidx47.7 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 7
  %78 = ptrtoint ptr %arrayidx47.7 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx47.7, align 2
  %arrayidx51.7 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 7
  %80 = ptrtoint ptr %arrayidx51.7 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx51.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %79, i16 %81)
  %cmp53.not.7 = icmp eq i16 %79, %81
  br i1 %cmp53.not.7, label %for.cond.7, label %if.end45.7.if.then120_crit_edge

if.end45.7.if.then120_crit_edge:                  ; preds = %if.end45.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.7:                                       ; preds = %if.end45.7
  %arrayidx.8 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 8
  %82 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.8, align 2
  %arrayidx40.8 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 8
  %84 = ptrtoint ptr %arrayidx40.8 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx40.8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %85)
  %cmp42.not.8 = icmp eq i16 %83, %85
  br i1 %cmp42.not.8, label %if.end45.8, label %for.cond.7.if.then120_crit_edge

for.cond.7.if.then120_crit_edge:                  ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.8:                                       ; preds = %for.cond.7
  %arrayidx47.8 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 8
  %86 = ptrtoint ptr %arrayidx47.8 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx47.8, align 2
  %arrayidx51.8 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 8
  %88 = ptrtoint ptr %arrayidx51.8 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx51.8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %89)
  %cmp53.not.8 = icmp eq i16 %87, %89
  br i1 %cmp53.not.8, label %for.cond.8, label %if.end45.8.if.then120_crit_edge

if.end45.8.if.then120_crit_edge:                  ; preds = %if.end45.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.8:                                       ; preds = %if.end45.8
  %arrayidx.9 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 9
  %90 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.9, align 2
  %arrayidx40.9 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 9
  %92 = ptrtoint ptr %arrayidx40.9 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx40.9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %93)
  %cmp42.not.9 = icmp eq i16 %91, %93
  br i1 %cmp42.not.9, label %if.end45.9, label %for.cond.8.if.then120_crit_edge

for.cond.8.if.then120_crit_edge:                  ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.9:                                       ; preds = %for.cond.8
  %arrayidx47.9 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 9
  %94 = ptrtoint ptr %arrayidx47.9 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx47.9, align 2
  %arrayidx51.9 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 9
  %96 = ptrtoint ptr %arrayidx51.9 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx51.9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %97)
  %cmp53.not.9 = icmp eq i16 %95, %97
  br i1 %cmp53.not.9, label %for.cond.9, label %if.end45.9.if.then120_crit_edge

if.end45.9.if.then120_crit_edge:                  ; preds = %if.end45.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.9:                                       ; preds = %if.end45.9
  %arrayidx.10 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 1, i32 10
  %98 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.10, align 2
  %arrayidx40.10 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 1, i32 10
  %100 = ptrtoint ptr %arrayidx40.10 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx40.10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %101)
  %cmp42.not.10 = icmp eq i16 %99, %101
  br i1 %cmp42.not.10, label %if.end45.10, label %for.cond.9.if.then120_crit_edge

for.cond.9.if.then120_crit_edge:                  ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45.10:                                      ; preds = %for.cond.9
  %arrayidx47.10 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 10
  %102 = ptrtoint ptr %arrayidx47.10 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx47.10, align 2
  %arrayidx51.10 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 10
  %104 = ptrtoint ptr %arrayidx51.10 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx51.10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %105)
  %cmp53.not.10 = icmp eq i16 %103, %105
  br i1 %cmp53.not.10, label %for.cond.10, label %if.end45.10.if.then120_crit_edge

if.end45.10.if.then120_crit_edge:                 ; preds = %if.end45.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.cond.10:                                      ; preds = %if.end45.10
  %paxel = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4
  %width = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 2
  %106 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %width, align 2
  %paxel58 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4
  %width59 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 2
  %108 = ptrtoint ptr %width59 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %width59, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %109)
  %cmp61.not = icmp eq i8 %107, %109
  br i1 %cmp61.not, label %lor.lhs.false, label %for.cond.10.if.then120_crit_edge

for.cond.10.if.then120_crit_edge:                 ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end45:                                         ; preds = %for.body.preheader
  %arrayidx47 = getelementptr %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 3, i32 2, i32 0
  %110 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx47, align 2
  %arrayidx51 = getelementptr %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 3, i32 2, i32 0
  %112 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx51, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %111, i16 %113)
  %cmp53.not = icmp eq i16 %111, %113
  br i1 %cmp53.not, label %for.cond, label %if.end45.if.then120_crit_edge

if.end45.if.then120_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

lor.lhs.false:                                    ; preds = %for.cond.10
  %height = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 3
  %114 = ptrtoint ptr %height to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %height, align 1
  %height66 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 3
  %116 = ptrtoint ptr %height66 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %height66, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %115, i8 %117)
  %cmp68.not = icmp eq i8 %115, %117
  br i1 %cmp68.not, label %lor.lhs.false70, label %lor.lhs.false.if.then120_crit_edge

lor.lhs.false.if.then120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

lor.lhs.false70:                                  ; preds = %lor.lhs.false
  %118 = ptrtoint ptr %paxel to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %paxel, align 2
  %120 = ptrtoint ptr %paxel58 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %paxel58, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %121)
  %cmp77.not = icmp eq i16 %119, %121
  br i1 %cmp77.not, label %lor.lhs.false79, label %lor.lhs.false70.if.then120_crit_edge

lor.lhs.false70.if.then120_crit_edge:             ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

lor.lhs.false79:                                  ; preds = %lor.lhs.false70
  %v_start = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 1
  %122 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %v_start, align 2
  %v_start83 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 1
  %124 = ptrtoint ptr %v_start83 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %v_start83, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %125)
  %cmp85.not = icmp eq i16 %123, %125
  br i1 %cmp85.not, label %lor.lhs.false87, label %lor.lhs.false79.if.then120_crit_edge

lor.lhs.false79.if.then120_crit_edge:             ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

lor.lhs.false87:                                  ; preds = %lor.lhs.false79
  %h_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 4
  %126 = ptrtoint ptr %h_cnt to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %h_cnt, align 2
  %h_cnt91 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 4
  %128 = ptrtoint ptr %h_cnt91 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %h_cnt91, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %127, i8 %129)
  %cmp93.not = icmp eq i8 %127, %129
  br i1 %cmp93.not, label %lor.lhs.false95, label %lor.lhs.false87.if.then120_crit_edge

lor.lhs.false87.if.then120_crit_edge:             ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

lor.lhs.false95:                                  ; preds = %lor.lhs.false87
  %v_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 5
  %130 = ptrtoint ptr %v_cnt to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %v_cnt, align 1
  %v_cnt99 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 5
  %132 = ptrtoint ptr %v_cnt99 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %v_cnt99, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %133)
  %cmp101.not = icmp eq i8 %131, %133
  br i1 %cmp101.not, label %lor.lhs.false103, label %lor.lhs.false95.if.then120_crit_edge

lor.lhs.false95.if.then120_crit_edge:             ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

lor.lhs.false103:                                 ; preds = %lor.lhs.false95
  %line_inc = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 6
  %134 = ptrtoint ptr %line_inc to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %line_inc, align 2
  %line_inc107 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 4, i32 6
  %136 = ptrtoint ptr %line_inc107 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %line_inc107, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %135, i8 %137)
  %cmp109.not = icmp eq i8 %135, %137
  br i1 %cmp109.not, label %if.end112, label %lor.lhs.false103.if.then120_crit_edge

lor.lhs.false103.if.then120_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end112:                                        ; preds = %lor.lhs.false103
  %fvmode = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 6
  %138 = ptrtoint ptr %fvmode to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fvmode, align 4
  %fvmode113 = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %new_conf, i32 0, i32 6
  %140 = ptrtoint ptr %fvmode113 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fvmode113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp114.not = icmp eq i32 %139, %141
  br i1 %cmp114.not, label %lor.lhs.false118, label %if.end112.if.then120_crit_edge

if.end112.if.then120_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

lor.lhs.false118:                                 ; preds = %if.end112
  %configured = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 2
  %142 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool119.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool119.not, label %lor.lhs.false118.if.then120_crit_edge, label %lor.lhs.false118.if.end124_crit_edge

lor.lhs.false118.if.end124_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

lor.lhs.false118.if.then120_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.then120:                                       ; preds = %lor.lhs.false118.if.then120_crit_edge, %if.end112.if.then120_crit_edge, %lor.lhs.false103.if.then120_crit_edge, %lor.lhs.false95.if.then120_crit_edge, %lor.lhs.false87.if.then120_crit_edge, %lor.lhs.false79.if.then120_crit_edge, %lor.lhs.false70.if.then120_crit_edge, %lor.lhs.false.if.then120_crit_edge, %if.end45.if.then120_crit_edge, %for.cond.10.if.then120_crit_edge, %if.end45.10.if.then120_crit_edge, %for.cond.9.if.then120_crit_edge, %if.end45.9.if.then120_crit_edge, %for.cond.8.if.then120_crit_edge, %if.end45.8.if.then120_crit_edge, %for.cond.7.if.then120_crit_edge, %if.end45.7.if.then120_crit_edge, %for.cond.6.if.then120_crit_edge, %if.end45.6.if.then120_crit_edge, %for.cond.5.if.then120_crit_edge, %if.end45.5.if.then120_crit_edge, %for.cond.4.if.then120_crit_edge, %if.end45.4.if.then120_crit_edge, %for.cond.3.if.then120_crit_edge, %if.end45.3.if.then120_crit_edge, %for.cond.2.if.then120_crit_edge, %if.end45.2.if.then120_crit_edge, %for.cond.1.if.then120_crit_edge, %if.end45.1.if.then120_crit_edge, %for.cond.if.then120_crit_edge, %for.body.preheader.if.then120_crit_edge, %if.end25.if.then120_crit_edge, %if.end20.if.then120_crit_edge, %if.end11.if.then120_crit_edge, %if.end.if.then120_crit_edge, %entry.if.then120_crit_edge
  %143 = call ptr @memcpy(ptr %1, ptr %new_conf, i32 76)
  %inc_config = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 3
  %144 = ptrtoint ptr %inc_config to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %inc_config, align 1
  %inc121 = add i8 %145, 1
  store i8 %inc121, ptr %inc_config, align 1
  %update122 = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 2
  %146 = ptrtoint ptr %update122 to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load123 = load i8, ptr %update122, align 4
  %bf.set = or i8 %bf.load123, 64
  store i8 %bf.set, ptr %update122, align 4
  %h_cnt.i = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 4
  %147 = ptrtoint ptr %h_cnt.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %h_cnt.i, align 2
  %conv.i = zext i8 %148 to i32
  %v_cnt.i = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %1, i32 0, i32 4, i32 5
  %149 = ptrtoint ptr %v_cnt.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %v_cnt.i, align 1
  %conv2.i = zext i8 %150 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 48
  %mul3.i = mul nuw nsw i32 %mul.i, %conv2.i
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %mul3.i, ptr %1, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %lor.lhs.false118.if.end124_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h3a_af_setup_regs(ptr nocapture noundef %af, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %isp = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %active_buf = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 19
  %4 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_buf, align 4
  %dma_addr = getelementptr inbounds %struct.ispstat_buffer, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %arrayidx.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !31
  %update = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 2
  %10 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %update, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %paxel = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 4
  %width = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 2
  %14 = lshr i8 %13, 1
  %15 = zext i8 %14 to i32
  %sub = shl nuw nsw i32 %15, 16
  %shl = add nsw i32 %sub, -65536
  %height = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %height, align 1
  %18 = lshr i8 %17, 1
  %19 = zext i8 %18 to i32
  %sub6 = add nsw i32 %19, -1
  %or = or i32 %shl, %sub6
  %20 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp, align 4
  %arrayidx.i162 = getelementptr %struct.isp_device, ptr %21, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %or) #6, !srcloc !31
  %line_inc = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %line_inc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %line_inc, align 2
  %26 = lshr i8 %25, 1
  %27 = zext i8 %26 to i32
  %sub11 = shl nuw nsw i32 %27, 13
  %shl12 = add nsw i32 %sub11, -8192
  %v_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %v_cnt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %v_cnt, align 1
  %conv14 = zext i8 %29 to i32
  %sub15 = shl nuw nsw i32 %conv14, 6
  %shl16 = add nsw i32 %sub15, -64
  %or17 = or i32 %shl12, %shl16
  %h_cnt = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %h_cnt to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %h_cnt, align 2
  %conv19 = zext i8 %31 to i32
  %sub20 = add nsw i32 %conv19, -1
  %or21 = or i32 %or17, %sub20
  %32 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %isp, align 4
  %arrayidx.i164 = getelementptr %struct.isp_device, ptr %33, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i164, align 4
  %add.ptr.i165 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %or21) #6, !srcloc !31
  %36 = ptrtoint ptr %paxel to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %paxel, align 2
  %conv24 = zext i16 %37 to i32
  %shl25 = shl nuw i32 %conv24, 16
  %v_start = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %v_start, align 2
  %conv27 = zext i16 %39 to i32
  %or28 = or i32 %shl25, %conv27
  %40 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %isp, align 4
  %arrayidx.i166 = getelementptr %struct.isp_device, ptr %41, i32 0, i32 6, i32 4
  %42 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i166, align 4
  %add.ptr.i167 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 %or28) #6, !srcloc !31
  %44 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %isp, align 4
  %iir = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3
  %46 = ptrtoint ptr %iir to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %iir, align 4
  %conv32 = zext i16 %47 to i32
  %arrayidx.i168 = getelementptr %struct.isp_device, ptr %45, i32 0, i32 6, i32 4
  %48 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i168, align 4
  %add.ptr.i169 = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %conv32) #6, !srcloc !31
  %arrayidx = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 0
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx, align 2
  %conv36 = zext i16 %51 to i32
  %arrayidx40 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 1
  %52 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %53 to i32
  %shl42 = shl nuw i32 %conv41, 16
  %or43 = or i32 %shl42, %conv36
  %54 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %isp, align 4
  %arrayidx.i170 = getelementptr %struct.isp_device, ptr %55, i32 0, i32 6, i32 4
  %56 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i170, align 4
  %add.ptr.i171 = getelementptr i8, ptr %57, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %or43) #6, !srcloc !31
  %arrayidx47 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 0
  %58 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx47, align 2
  %conv48 = zext i16 %59 to i32
  %arrayidx53 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx53, align 2
  %conv54 = zext i16 %61 to i32
  %shl55 = shl nuw i32 %conv54, 16
  %or56 = or i32 %shl55, %conv48
  %62 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %isp, align 4
  %arrayidx.i172 = getelementptr %struct.isp_device, ptr %63, i32 0, i32 6, i32 4
  %64 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %65, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %or56) #6, !srcloc !31
  %arrayidx.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 2
  %66 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.1, align 2
  %conv36.1 = zext i16 %67 to i32
  %arrayidx40.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 3
  %68 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx40.1, align 2
  %conv41.1 = zext i16 %69 to i32
  %shl42.1 = shl nuw i32 %conv41.1, 16
  %or43.1 = or i32 %shl42.1, %conv36.1
  %70 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %isp, align 4
  %arrayidx.i170.1 = getelementptr %struct.isp_device, ptr %71, i32 0, i32 6, i32 4
  %72 = ptrtoint ptr %arrayidx.i170.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i170.1, align 4
  %add.ptr.i171.1 = getelementptr i8, ptr %73, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.1, i32 %or43.1) #6, !srcloc !31
  %arrayidx47.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 2
  %74 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx47.1, align 2
  %conv48.1 = zext i16 %75 to i32
  %arrayidx53.1 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 3
  %76 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx53.1, align 2
  %conv54.1 = zext i16 %77 to i32
  %shl55.1 = shl nuw i32 %conv54.1, 16
  %or56.1 = or i32 %shl55.1, %conv48.1
  %78 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %isp, align 4
  %arrayidx.i172.1 = getelementptr %struct.isp_device, ptr %79, i32 0, i32 6, i32 4
  %80 = ptrtoint ptr %arrayidx.i172.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i172.1, align 4
  %add.ptr.i173.1 = getelementptr i8, ptr %81, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.1, i32 %or56.1) #6, !srcloc !31
  %arrayidx.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 4
  %82 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.2, align 2
  %conv36.2 = zext i16 %83 to i32
  %arrayidx40.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 5
  %84 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx40.2, align 2
  %conv41.2 = zext i16 %85 to i32
  %shl42.2 = shl nuw i32 %conv41.2, 16
  %or43.2 = or i32 %shl42.2, %conv36.2
  %86 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %isp, align 4
  %arrayidx.i170.2 = getelementptr %struct.isp_device, ptr %87, i32 0, i32 6, i32 4
  %88 = ptrtoint ptr %arrayidx.i170.2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i170.2, align 4
  %add.ptr.i171.2 = getelementptr i8, ptr %89, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.2, i32 %or43.2) #6, !srcloc !31
  %arrayidx47.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 4
  %90 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx47.2, align 2
  %conv48.2 = zext i16 %91 to i32
  %arrayidx53.2 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 5
  %92 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx53.2, align 2
  %conv54.2 = zext i16 %93 to i32
  %shl55.2 = shl nuw i32 %conv54.2, 16
  %or56.2 = or i32 %shl55.2, %conv48.2
  %94 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %isp, align 4
  %arrayidx.i172.2 = getelementptr %struct.isp_device, ptr %95, i32 0, i32 6, i32 4
  %96 = ptrtoint ptr %arrayidx.i172.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i172.2, align 4
  %add.ptr.i173.2 = getelementptr i8, ptr %97, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.2, i32 %or56.2) #6, !srcloc !31
  %arrayidx.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 6
  %98 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.3, align 2
  %conv36.3 = zext i16 %99 to i32
  %arrayidx40.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 7
  %100 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx40.3, align 2
  %conv41.3 = zext i16 %101 to i32
  %shl42.3 = shl nuw i32 %conv41.3, 16
  %or43.3 = or i32 %shl42.3, %conv36.3
  %102 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %isp, align 4
  %arrayidx.i170.3 = getelementptr %struct.isp_device, ptr %103, i32 0, i32 6, i32 4
  %104 = ptrtoint ptr %arrayidx.i170.3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i170.3, align 4
  %add.ptr.i171.3 = getelementptr i8, ptr %105, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.3, i32 %or43.3) #6, !srcloc !31
  %arrayidx47.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 6
  %106 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx47.3, align 2
  %conv48.3 = zext i16 %107 to i32
  %arrayidx53.3 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 7
  %108 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx53.3, align 2
  %conv54.3 = zext i16 %109 to i32
  %shl55.3 = shl nuw i32 %conv54.3, 16
  %or56.3 = or i32 %shl55.3, %conv48.3
  %110 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %isp, align 4
  %arrayidx.i172.3 = getelementptr %struct.isp_device, ptr %111, i32 0, i32 6, i32 4
  %112 = ptrtoint ptr %arrayidx.i172.3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i172.3, align 4
  %add.ptr.i173.3 = getelementptr i8, ptr %113, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.3, i32 %or56.3) #6, !srcloc !31
  %arrayidx.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 8
  %114 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx.4, align 2
  %conv36.4 = zext i16 %115 to i32
  %arrayidx40.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 9
  %116 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx40.4, align 2
  %conv41.4 = zext i16 %117 to i32
  %shl42.4 = shl nuw i32 %conv41.4, 16
  %or43.4 = or i32 %shl42.4, %conv36.4
  %118 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %isp, align 4
  %arrayidx.i170.4 = getelementptr %struct.isp_device, ptr %119, i32 0, i32 6, i32 4
  %120 = ptrtoint ptr %arrayidx.i170.4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i170.4, align 4
  %add.ptr.i171.4 = getelementptr i8, ptr %121, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.4, i32 %or43.4) #6, !srcloc !31
  %arrayidx47.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 8
  %122 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx47.4, align 2
  %conv48.4 = zext i16 %123 to i32
  %arrayidx53.4 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 9
  %124 = ptrtoint ptr %arrayidx53.4 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx53.4, align 2
  %conv54.4 = zext i16 %125 to i32
  %shl55.4 = shl nuw i32 %conv54.4, 16
  %or56.4 = or i32 %shl55.4, %conv48.4
  %126 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %isp, align 4
  %arrayidx.i172.4 = getelementptr %struct.isp_device, ptr %127, i32 0, i32 6, i32 4
  %128 = ptrtoint ptr %arrayidx.i172.4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i172.4, align 4
  %add.ptr.i173.4 = getelementptr i8, ptr %129, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.4, i32 %or56.4) #6, !srcloc !31
  %130 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %isp, align 4
  %arrayidx63 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 1, i32 10
  %132 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx63, align 2
  %conv64 = zext i16 %133 to i32
  %arrayidx.i174 = getelementptr %struct.isp_device, ptr %131, i32 0, i32 6, i32 4
  %134 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i174, align 4
  %add.ptr.i175 = getelementptr i8, ptr %135, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 %conv64) #6, !srcloc !31
  %136 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %isp, align 4
  %arrayidx68 = getelementptr %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 3, i32 2, i32 10
  %138 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx68, align 4
  %conv69 = zext i16 %139 to i32
  %arrayidx.i176 = getelementptr %struct.isp_device, ptr %137, i32 0, i32 6, i32 4
  %140 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %141, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %conv69) #6, !srcloc !31
  %rgb_pos = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 5
  %142 = ptrtoint ptr %rgb_pos to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rgb_pos, align 4
  %shl70 = shl i32 %143, 11
  %fvmode = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 6
  %144 = ptrtoint ptr %fvmode to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %fvmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp71 = icmp eq i32 %145, 1
  %or74 = or i32 %shl70, 16384
  %spec.select = select i1 %cmp71, i32 %or74, i32 %shl70
  %alaw_enable = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 7
  %146 = ptrtoint ptr %alaw_enable to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %alaw_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool76.not = icmp eq i8 %147, 0
  %or78 = or i32 %spec.select, 2
  %pcr.1 = select i1 %tobool76.not, i32 %spec.select, i32 %or78
  %hmf = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 2
  %148 = ptrtoint ptr %hmf to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %hmf, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool80.not = icmp eq i8 %149, 0
  br i1 %tobool80.not, label %if.end2.if.end87_crit_edge, label %if.then81

if.end2.if.end87_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then81:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %threshold = getelementptr inbounds %struct.omap3isp_h3a_af_config, ptr %priv, i32 0, i32 2, i32 1
  %150 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %threshold, align 1
  %conv84 = zext i8 %151 to i32
  %shl85 = shl nuw nsw i32 %conv84, 3
  %or82 = or i32 %shl85, %pcr.1
  %or86 = or i32 %or82, 4
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %if.end2.if.end87_crit_edge
  %pcr.2 = phi i32 [ %or86, %if.then81 ], [ %pcr.1, %if.end2.if.end87_crit_edge ]
  %152 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %isp, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %153, i32 0, i32 6, i32 4
  %154 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %155, i32 4
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !32
  %and.i = and i32 %156, -32767
  %or.i = or i32 %and.i, %pcr.2
  %157 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %158, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #6, !srcloc !31
  %159 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load90 = load i8, ptr %update, align 4
  %bf.clear91 = and i8 %bf.load90, -65
  store i8 %bf.clear91, ptr %update, align 4
  %inc_config = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 3
  %160 = ptrtoint ptr %inc_config to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %inc_config, align 1
  %conv92 = zext i8 %161 to i16
  %config_counter = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 12
  %162 = ptrtoint ptr %config_counter to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %config_counter, align 2
  %add94 = add i16 %163, %conv92
  store i16 %add94, ptr %config_counter, align 2
  store i8 0, ptr %inc_config, align 1
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %priv, align 4
  %buf_size97 = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 14
  %166 = ptrtoint ptr %buf_size97 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %buf_size97, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h3a_af_enable(ptr nocapture noundef readonly %af, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %isp2 = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 6
  %0 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp2, align 4
  %arrayidx.i.i7 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %4, 1
  %5 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #6, !srcloc !31
  %7 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp2, align 4
  tail call void @omap3isp_subclk_enable(ptr noundef %8, i32 noundef 4) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %4, -2
  %9 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i2.i9 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9, i32 %and.i) #6, !srcloc !31
  %11 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp2, align 4
  tail call void @omap3isp_subclk_disable(ptr noundef %12, i32 noundef 4) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h3a_af_busy(ptr nocapture noundef readonly %af) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %af, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %arrayidx.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !32
  %and = and i32 %4, 32768
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h3a_af_ioctl(ptr nocapture noundef readonly %sd, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1068738875, label %sw.bb
    i32 -1071622458, label %sw.bb2
    i32 -1072146746, label %sw.bb4
    i32 -1073457465, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @omap3isp_stat_config(ptr noundef %1, ptr noundef %arg) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @omap3isp_stat_request_statistics(ptr noundef %1, ptr noundef %arg) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @omap3isp_stat_request_statistics_time32(ptr noundef %1, ptr noundef %arg) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %conv = zext i1 %tobool to i8
  %call8 = tail call i32 @omap3isp_stat_enable(ptr noundef %1, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_unsubscribe_event(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_request_statistics(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_request_statistics_time32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_enable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_s_stream(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/isph3a_af.c", i32 369, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap3isp_h3a_af_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap3isp_h3a_af_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap3isp/isph3a_af.c", i32 382, i32 3}
!10 = !{ptr @omap3isp_h3a_af_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap3isp_h3a_af_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap3isp/isph3a_af.c", i32 391, i32 31}
!14 = !{ptr @h3a_af_ops, !15, !"h3a_af_ops", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/omap3isp/isph3a_af.c", i32 326, i32 33}
!16 = !{ptr @h3a_af_subdev_ops, !17, !"h3a_af_subdev_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/omap3isp/isph3a_af.c", i32 344, i32 37}
!18 = !{ptr @h3a_af_subdev_core_ops, !19, !"h3a_af_subdev_core_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/omap3isp/isph3a_af.c", i32 334, i32 42}
!20 = !{ptr @h3a_af_subdev_video_ops, !21, !"h3a_af_subdev_video_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap3isp/isph3a_af.c", i32 340, i32 43}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 7281969}
!32 = !{i64 7282387}
