; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/isph3a_aewb.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/isph3a_aewb.c"
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
%struct.omap3isp_h3a_aewb_config = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.ispstat_buffer = type { %struct.sg_table, ptr, i32, %struct.timespec64, i32, i32, i16, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@h3a_aewb_ops = internal constant { %struct.ispstat_ops, [40 x i8] } { %struct.ispstat_ops { ptr @h3a_aewb_validate_params, ptr @h3a_aewb_set_params, ptr @h3a_aewb_setup_regs, ptr @h3a_aewb_enable, ptr @h3a_aewb_busy, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap3isp_h3a_aewb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"AEWB: cannot allocate memory for recover configuration.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap3isp_h3a_aewb_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/omap3isp/isph3a_aewb.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap3isp_h3a_aewb_init._entry_ptr = internal global ptr @omap3isp_h3a_aewb_init._entry, section ".printk_index", align 4
@omap3isp_h3a_aewb_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AEWB: recover configuration is invalid.\0A\00", [55 x i8] zeroinitializer }, align 32
@omap3isp_h3a_aewb_init._entry_ptr.7 = internal global ptr @omap3isp_h3a_aewb_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AEWB\00", [27 x i8] zeroinitializer }, align 32
@h3a_aewb_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @h3a_aewb_subdev_core_ops, ptr null, ptr null, ptr @h3a_aewb_subdev_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@h3a_aewb_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @h3a_aewb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @omap3isp_stat_subscribe_event, ptr @omap3isp_stat_unsubscribe_event }, [40 x i8] zeroinitializer }, align 32
@h3a_aewb_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3isp_stat_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3221509831, i64 3222820550, i64 3223344835, i64 3223344838]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"h3a_aewb_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 261, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 306, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 324, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 333, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"h3a_aewb_subdev_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 279, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"h3a_aewb_subdev_core_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 269, i32 42 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"h3a_aewb_subdev_video_ops\00", align 1
@___asan_gen_.46 = private constant [49 x i8] c"../drivers/media/platform/omap3isp/isph3a_aewb.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 275, i32 43 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @omap3isp_h3a_aewb_init._entry, ptr @omap3isp_h3a_aewb_init._entry.5, ptr @omap3isp_h3a_aewb_init._entry_ptr, ptr @omap3isp_h3a_aewb_init._entry_ptr.7, ptr @h3a_aewb_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @h3a_aewb_subdev_ops, ptr @h3a_aewb_subdev_core_ops, ptr @h3a_aewb_subdev_video_ops], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_aewb_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_h3a_aewb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_h3a_aewb_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_aewb_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_aewb_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h3a_aewb_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_h3a_aewb_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22, i32 10
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @h3a_aewb_ops, ptr %ops, align 4
  %priv = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22, i32 7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 4
  %event_type = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22, i32 17
  %3 = ptrtoint ptr %event_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 134217985, ptr %event_type, align 4
  %isp1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22, i32 6
  %4 = ptrtoint ptr %isp1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %isp, ptr %isp1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 32) #9
  %tobool3.not = icmp eq ptr %call7.i.i58, null
  br i1 %tobool3.not, label %if.end.if.then24.sink.split_crit_edge, label %if.end6

if.end.if.then24.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.sink.split

if.end6:                                          ; preds = %if.end
  %saturation_limit = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 2
  %6 = ptrtoint ptr %saturation_limit to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1023, ptr %saturation_limit, align 2
  %win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 3
  %7 = ptrtoint ptr %win_height to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %win_height, align 8
  %win_width = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 4
  %8 = ptrtoint ptr %win_width to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 6, ptr %win_width, align 2
  %ver_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 5
  %9 = ptrtoint ptr %ver_win_count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %ver_win_count, align 4
  %hor_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 6
  %10 = ptrtoint ptr %hor_win_count to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %hor_win_count, align 2
  %ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 7
  %11 = ptrtoint ptr %ver_win_start to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ver_win_start, align 8
  %add = add i16 %12, 2
  %blk_ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 9
  %13 = ptrtoint ptr %blk_ver_win_start to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %add, ptr %blk_ver_win_start, align 4
  %blk_win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 10
  %14 = ptrtoint ptr %blk_win_height to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %blk_win_height, align 2
  %subsample_ver_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 11
  %15 = ptrtoint ptr %subsample_ver_inc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %subsample_ver_inc, align 8
  %subsample_hor_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %call7.i.i58, i32 0, i32 12
  %16 = ptrtoint ptr %subsample_hor_inc to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %subsample_hor_inc, align 2
  %call12 = tail call i32 @h3a_aewb_validate_params(ptr noundef %isp_aewb, ptr noundef nonnull %call7.i.i58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end6.if.then24.sink.split_crit_edge

if.end6.if.then24.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.sink.split

err:                                              ; preds = %if.end6
  %17 = ptrtoint ptr %ver_win_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ver_win_count, align 4
  %conv.i = zext i16 %18 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %19 = ptrtoint ptr %hor_win_count to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hor_win_count, align 2
  %conv1.i = zext i16 %20 to i32
  %mul.i = mul nuw i32 %add.i, %conv1.i
  %add2.i = add nuw i32 %mul.i, 7
  %div8.i = lshr i32 %add2.i, 3
  %add3.i = add i32 %div8.i, %mul.i
  %mul4.i = shl i32 %add3.i, 4
  %21 = ptrtoint ptr %call7.i.i58 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul4.i, ptr %call7.i.i58, align 8
  %recover_priv = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22, i32 8
  %22 = ptrtoint ptr %recover_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i58, ptr %recover_priv, align 4
  %call22 = tail call i32 @omap3isp_stat_init(ptr noundef %isp_aewb, ptr noundef nonnull @.str.8, ptr noundef nonnull @h3a_aewb_subdev_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err.cleanup_crit_edge, label %err.if.then24_crit_edge

err.if.then24_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24.sink.split:                             ; preds = %if.end6.if.then24.sink.split_crit_edge, %if.end.if.then24.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str, %if.end.if.then24.sink.split_crit_edge ], [ @.str.6, %if.end6.if.then24.sink.split_crit_edge ]
  %ret.061.ph = phi i32 [ -12, %if.end.if.then24.sink.split_crit_edge ], [ -22, %if.end6.if.then24.sink.split_crit_edge ]
  %23 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %isp1, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull %.str.sink) #10
  br label %if.then24

if.then24:                                        ; preds = %if.then24.sink.split, %err.if.then24_crit_edge
  %ret.061 = phi i32 [ %call22, %err.if.then24_crit_edge ], [ %ret.061.ph, %if.then24.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  tail call void @kfree(ptr noundef %call7.i.i58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %err.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.061, %if.then24 ], [ 0, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h3a_aewb_validate_params(ptr nocapture noundef readnone %aewb, ptr nocapture noundef %new_conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %saturation_limit = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 2
  %0 = ptrtoint ptr %saturation_limit to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %saturation_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %1)
  %cmp = icmp ugt i16 %1, 1023
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 3
  %2 = ptrtoint ptr %win_height to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %win_height, align 4
  %4 = add i16 %3, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %4)
  %5 = icmp ult i16 %4, -255
  %6 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool12 = icmp ne i16 %6, 0
  %or.cond222 = or i1 %5, %tobool12
  br i1 %or.cond222, label %if.end.cleanup_crit_edge, label %if.end20, !prof !32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %win_width = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 4
  %7 = ptrtoint ptr %win_width to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %win_width, align 2
  %9 = add i16 %8, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -251, i16 %9)
  %10 = icmp ult i16 %9, -251
  %11 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool33 = icmp ne i16 %11, 0
  %or.cond223 = or i1 %10, %tobool33
  br i1 %or.cond223, label %if.end20.cleanup_crit_edge, label %if.end42, !prof !32

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end20
  %ver_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 5
  %12 = ptrtoint ptr %ver_win_count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ver_win_count, align 4
  %14 = add i16 %13, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %14)
  %15 = icmp ult i16 %14, -128
  br i1 %15, label %if.end42.cleanup_crit_edge, label %if.end59, !prof !31

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end42
  %hor_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 6
  %16 = ptrtoint ptr %hor_win_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hor_win_count, align 2
  %18 = add i16 %17, -37
  call void @__sanitizer_cov_trace_const_cmp2(i16 -36, i16 %18)
  %19 = icmp ult i16 %18, -36
  br i1 %19, label %if.end59.cleanup_crit_edge, label %if.end76, !prof !31

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end76:                                         ; preds = %if.end59
  %ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 7
  %20 = ptrtoint ptr %ver_win_start to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ver_win_start, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %21)
  %cmp78 = icmp ugt i16 %21, 4095
  br i1 %cmp78, label %if.end76.cleanup_crit_edge, label %if.end87, !prof !31

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  %hor_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 8
  %22 = ptrtoint ptr %hor_win_start to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hor_win_start, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %23)
  %cmp89 = icmp ugt i16 %23, 4095
  br i1 %cmp89, label %if.end87.cleanup_crit_edge, label %if.end98, !prof !31

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end98:                                         ; preds = %if.end87
  %blk_ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 9
  %24 = ptrtoint ptr %blk_ver_win_start to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %blk_ver_win_start, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %25)
  %cmp100 = icmp ugt i16 %25, 4095
  br i1 %cmp100, label %if.end98.cleanup_crit_edge, label %if.end109, !prof !31

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end109:                                        ; preds = %if.end98
  %blk_win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 10
  %26 = ptrtoint ptr %blk_win_height to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %blk_win_height, align 2
  %28 = add i16 %27, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %28)
  %29 = icmp ult i16 %28, -255
  %30 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool122 = icmp ne i16 %30, 0
  %or.cond224 = or i1 %29, %tobool122
  br i1 %or.cond224, label %if.end109.cleanup_crit_edge, label %if.end131, !prof !32

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end131:                                        ; preds = %if.end109
  %subsample_ver_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 11
  %31 = ptrtoint ptr %subsample_ver_inc to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsample_ver_inc, align 4
  %33 = add i16 %32, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31, i16 %33)
  %34 = icmp ult i16 %33, -31
  %35 = and i16 %32, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool144 = icmp ne i16 %35, 0
  %or.cond225 = or i1 %34, %tobool144
  br i1 %or.cond225, label %if.end131.cleanup_crit_edge, label %if.end153, !prof !32

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end153:                                        ; preds = %if.end131
  %subsample_hor_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 12
  %36 = ptrtoint ptr %subsample_hor_inc to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %subsample_hor_inc, align 2
  %38 = add i16 %37, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31, i16 %38)
  %39 = icmp ult i16 %38, -31
  %40 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool166 = icmp ne i16 %40, 0
  %or.cond226 = or i1 %39, %tobool166
  br i1 %or.cond226, label %if.end153.cleanup_crit_edge, label %if.end175, !prof !32

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end175:                                        ; preds = %if.end153
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %conv1.i = zext i16 %17 to i32
  %mul.i = mul nuw nsw i32 %add.i, %conv1.i
  %add2.i = add nuw nsw i32 %mul.i, 7
  %div8.i = lshr i32 %add2.i, 3
  %add3.i = add nuw nsw i32 %div8.i, %mul.i
  %mul4.i = shl nuw nsw i32 %add3.i, 4
  %41 = ptrtoint ptr %new_conf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %new_conf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i, i32 %42)
  %cmp177 = icmp ugt i32 %mul4.i, %42
  br i1 %cmp177, label %if.end175.cleanup.sink.split_crit_edge, label %if.else

if.end175.cleanup.sink.split_crit_edge:           ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end175
  call void @__sanitizer_cov_trace_const_cmp4(i32 83600, i32 %42)
  %cmp182 = icmp ugt i32 %42, 83600
  br i1 %cmp182, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end175.cleanup.sink.split_crit_edge
  %mul4.i.sink = phi i32 [ %mul4.i, %if.end175.cleanup.sink.split_crit_edge ], [ 83600, %if.else.cleanup.sink.split_crit_edge ]
  %43 = ptrtoint ptr %new_conf to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul4.i.sink, ptr %new_conf, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end153.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end42.cleanup_crit_edge ], [ -22, %if.end59.cleanup_crit_edge ], [ -22, %if.end76.cleanup_crit_edge ], [ -22, %if.end87.cleanup_crit_edge ], [ -22, %if.end98.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end109.cleanup_crit_edge ], [ -22, %if.end131.cleanup_crit_edge ], [ -22, %if.end153.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_h3a_aewb_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22
  tail call void @omap3isp_stat_cleanup(ptr noundef %isp_aewb) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @h3a_aewb_set_params(ptr nocapture noundef %aewb, ptr nocapture noundef readonly %new_conf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %saturation_limit = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %saturation_limit to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %saturation_limit, align 2
  %saturation_limit1 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 2
  %4 = ptrtoint ptr %saturation_limit1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %saturation_limit1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp eq i16 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %saturation_limit to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %saturation_limit, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %update.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %alaw_enable = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %alaw_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alaw_enable, align 4
  %alaw_enable7 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 13
  %9 = ptrtoint ptr %alaw_enable7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %alaw_enable7, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp9.not = icmp eq i8 %8, %10
  br i1 %cmp9.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %alaw_enable to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %alaw_enable, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %update.1 = phi i32 [ 1, %if.then11 ], [ %update.0, %if.end.if.end14_crit_edge ]
  %win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %win_height to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %win_height, align 4
  %win_height16 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 3
  %14 = ptrtoint ptr %win_height16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %win_height16, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp18.not = icmp eq i16 %13, %15
  br i1 %cmp18.not, label %if.end14.if.end23_crit_edge, label %if.then20

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %win_height to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %win_height, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end14.if.end23_crit_edge
  %update.2 = phi i32 [ 1, %if.then20 ], [ %update.1, %if.end14.if.end23_crit_edge ]
  %win_width = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %win_width to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %win_width, align 2
  %win_width25 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 4
  %19 = ptrtoint ptr %win_width25 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %win_width25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp27.not = icmp eq i16 %18, %20
  br i1 %cmp27.not, label %if.end23.if.end32_crit_edge, label %if.then29

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %win_width to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %win_width, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end23.if.end32_crit_edge
  %update.3 = phi i32 [ 1, %if.then29 ], [ %update.2, %if.end23.if.end32_crit_edge ]
  %ver_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %ver_win_count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ver_win_count, align 4
  %ver_win_count34 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 5
  %24 = ptrtoint ptr %ver_win_count34 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ver_win_count34, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp36.not = icmp eq i16 %23, %25
  br i1 %cmp36.not, label %if.end32.if.end41_crit_edge, label %if.then38

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %ver_win_count to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ver_win_count, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end32.if.end41_crit_edge
  %update.4 = phi i32 [ 1, %if.then38 ], [ %update.3, %if.end32.if.end41_crit_edge ]
  %hor_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %hor_win_count to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hor_win_count, align 2
  %hor_win_count43 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 6
  %29 = ptrtoint ptr %hor_win_count43 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hor_win_count43, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp45.not = icmp eq i16 %28, %30
  br i1 %cmp45.not, label %if.end41.if.end50_crit_edge, label %if.then47

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %hor_win_count to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %hor_win_count, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end41.if.end50_crit_edge
  %update.5 = phi i32 [ 1, %if.then47 ], [ %update.4, %if.end41.if.end50_crit_edge ]
  %ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %ver_win_start to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ver_win_start, align 4
  %ver_win_start52 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 7
  %34 = ptrtoint ptr %ver_win_start52 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ver_win_start52, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp54.not = icmp eq i16 %33, %35
  br i1 %cmp54.not, label %if.end50.if.end59_crit_edge, label %if.then56

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %ver_win_start to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %ver_win_start, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end50.if.end59_crit_edge
  %update.6 = phi i32 [ 1, %if.then56 ], [ %update.5, %if.end50.if.end59_crit_edge ]
  %hor_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %hor_win_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hor_win_start, align 2
  %hor_win_start61 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 8
  %39 = ptrtoint ptr %hor_win_start61 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hor_win_start61, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp63.not = icmp eq i16 %38, %40
  br i1 %cmp63.not, label %if.end59.if.end68_crit_edge, label %if.then65

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %hor_win_start to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %hor_win_start, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end59.if.end68_crit_edge
  %update.7 = phi i32 [ 1, %if.then65 ], [ %update.6, %if.end59.if.end68_crit_edge ]
  %blk_ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %blk_ver_win_start to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %blk_ver_win_start, align 4
  %blk_ver_win_start70 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 9
  %44 = ptrtoint ptr %blk_ver_win_start70 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %blk_ver_win_start70, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp72.not = icmp eq i16 %43, %45
  br i1 %cmp72.not, label %if.end68.if.end77_crit_edge, label %if.then74

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %blk_ver_win_start to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %blk_ver_win_start, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end68.if.end77_crit_edge
  %update.8 = phi i32 [ 1, %if.then74 ], [ %update.7, %if.end68.if.end77_crit_edge ]
  %blk_win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 10
  %47 = ptrtoint ptr %blk_win_height to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %blk_win_height, align 2
  %blk_win_height79 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 10
  %49 = ptrtoint ptr %blk_win_height79 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %blk_win_height79, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp81.not = icmp eq i16 %48, %50
  br i1 %cmp81.not, label %if.end77.if.end86_crit_edge, label %if.then83

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %blk_win_height to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %blk_win_height, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end77.if.end86_crit_edge
  %update.9 = phi i32 [ 1, %if.then83 ], [ %update.8, %if.end77.if.end86_crit_edge ]
  %subsample_ver_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %subsample_ver_inc to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %subsample_ver_inc, align 4
  %subsample_ver_inc88 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 11
  %54 = ptrtoint ptr %subsample_ver_inc88 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %subsample_ver_inc88, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp90.not = icmp eq i16 %53, %55
  br i1 %cmp90.not, label %if.end95, label %if.end95.thread

if.end95:                                         ; preds = %if.end86
  %subsample_hor_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 12
  %56 = ptrtoint ptr %subsample_hor_inc to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %subsample_hor_inc, align 2
  %subsample_hor_inc97 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 12
  %58 = ptrtoint ptr %subsample_hor_inc97 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %subsample_hor_inc97, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp99.not = icmp eq i16 %57, %59
  br i1 %cmp99.not, label %if.end104, label %if.end95.if.end104.thread_crit_edge

if.end95.if.end104.thread_crit_edge:              ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.thread

if.end95.thread:                                  ; preds = %if.end86
  %60 = ptrtoint ptr %subsample_ver_inc to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %55, ptr %subsample_ver_inc, align 4
  %subsample_hor_inc164 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %subsample_hor_inc164 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %subsample_hor_inc164, align 2
  %subsample_hor_inc97165 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %new_conf, i32 0, i32 12
  %63 = ptrtoint ptr %subsample_hor_inc97165 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %subsample_hor_inc97165, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %64)
  %cmp99.not166 = icmp eq i16 %62, %64
  br i1 %cmp99.not166, label %if.end95.thread.if.then106_crit_edge, label %if.end95.thread.if.end104.thread_crit_edge

if.end95.thread.if.end104.thread_crit_edge:       ; preds = %if.end95.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.thread

if.end95.thread.if.then106_crit_edge:             ; preds = %if.end95.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

if.end104.thread:                                 ; preds = %if.end95.thread.if.end104.thread_crit_edge, %if.end95.if.end104.thread_crit_edge
  %65 = phi i16 [ %64, %if.end95.thread.if.end104.thread_crit_edge ], [ %59, %if.end95.if.end104.thread_crit_edge ]
  %subsample_hor_inc168 = phi ptr [ %subsample_hor_inc164, %if.end95.thread.if.end104.thread_crit_edge ], [ %subsample_hor_inc, %if.end95.if.end104.thread_crit_edge ]
  %66 = ptrtoint ptr %subsample_hor_inc168 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %subsample_hor_inc168, align 2
  br label %if.then106

if.end104:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update.9)
  %tobool.not = icmp eq i32 %update.9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end104.if.then106_crit_edge

if.end104.if.then106_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

lor.lhs.false:                                    ; preds = %if.end104
  %configured = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 2
  %67 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool105.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool105.not, label %lor.lhs.false.if.then106_crit_edge, label %lor.lhs.false.if.end109_crit_edge

lor.lhs.false.if.end109_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

lor.lhs.false.if.then106_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

if.then106:                                       ; preds = %lor.lhs.false.if.then106_crit_edge, %if.end104.if.then106_crit_edge, %if.end104.thread, %if.end95.thread.if.then106_crit_edge
  %inc_config = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 3
  %68 = ptrtoint ptr %inc_config to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %inc_config, align 1
  %inc = add i8 %69, 1
  store i8 %inc, ptr %inc_config, align 1
  %update107 = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 2
  %70 = ptrtoint ptr %update107 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load108 = load i8, ptr %update107, align 4
  %bf.set = or i8 %bf.load108, 64
  store i8 %bf.set, ptr %update107, align 4
  %71 = ptrtoint ptr %ver_win_count to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ver_win_count, align 4
  %conv.i = zext i16 %72 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %73 = ptrtoint ptr %hor_win_count to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hor_win_count, align 2
  %conv1.i = zext i16 %74 to i32
  %mul.i = mul nuw i32 %add.i, %conv1.i
  %add2.i = add nuw i32 %mul.i, 7
  %div8.i = lshr i32 %add2.i, 3
  %add3.i = add i32 %div8.i, %mul.i
  %mul4.i = shl i32 %add3.i, 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul4.i, ptr %1, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %lor.lhs.false.if.end109_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h3a_aewb_setup_regs(ptr nocapture noundef %aewb, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 5
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
  %isp = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 6
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %active_buf = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 19
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
  %add.ptr.i = getelementptr i8, ptr %9, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !33
  %update = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #8
  %saturation_limit = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 2
  %12 = ptrtoint ptr %saturation_limit to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %saturation_limit, align 2
  %conv = zext i16 %13 to i32
  %shl = shl i32 %conv, 22
  %alaw_enable = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 13
  %14 = ptrtoint ptr %alaw_enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %alaw_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  %shl5 = select i1 %tobool3.not, i32 0, i32 2
  %or = or i32 %shl5, %shl
  %win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %win_height to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %win_height, align 4
  %18 = lshr i16 %17, 1
  %narrow = add nuw i16 %18, 255
  %sub = zext i16 %narrow to i32
  %shl7 = shl i32 %sub, 24
  %win_width = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 4
  %19 = ptrtoint ptr %win_width to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %win_width, align 2
  %21 = lshr i16 %20, 1
  %22 = zext i16 %21 to i32
  %sub10 = shl nuw nsw i32 %22, 13
  %shl11 = add nsw i32 %sub10, -8192
  %or12 = or i32 %shl11, %shl7
  %ver_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 5
  %23 = ptrtoint ptr %ver_win_count to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ver_win_count, align 4
  %conv13 = zext i16 %24 to i32
  %sub14 = shl nuw nsw i32 %conv13, 6
  %shl15 = add nsw i32 %sub14, -64
  %or16 = or i32 %or12, %shl15
  %hor_win_count = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 6
  %25 = ptrtoint ptr %hor_win_count to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hor_win_count, align 2
  %conv17 = zext i16 %26 to i32
  %sub18 = add nsw i32 %conv17, -1
  %or20 = or i32 %or16, %sub18
  %hor_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 8
  %27 = ptrtoint ptr %hor_win_start to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hor_win_start, align 2
  %conv21 = zext i16 %28 to i32
  %ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 7
  %29 = ptrtoint ptr %ver_win_start to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ver_win_start, align 4
  %conv23 = zext i16 %30 to i32
  %shl24 = shl nuw i32 %conv23, 16
  %or25 = or i32 %shl24, %conv21
  %blk_ver_win_start = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 9
  %31 = ptrtoint ptr %blk_ver_win_start to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %blk_ver_win_start, align 4
  %conv26 = zext i16 %32 to i32
  %shl27 = shl nuw i32 %conv26, 16
  %blk_win_height = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 10
  %33 = ptrtoint ptr %blk_win_height to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %blk_win_height, align 2
  %35 = lshr i16 %34, 1
  %36 = zext i16 %35 to i32
  %sub30 = add nsw i32 %36, -1
  %or32 = or i32 %sub30, %shl27
  %subsample_ver_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 11
  %37 = ptrtoint ptr %subsample_ver_inc to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %subsample_ver_inc, align 4
  %39 = lshr i16 %38, 1
  %40 = zext i16 %39 to i32
  %sub35 = shl nuw nsw i32 %40, 8
  %shl36 = add nsw i32 %sub35, -256
  %subsample_hor_inc = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, ptr %priv, i32 0, i32 12
  %41 = ptrtoint ptr %subsample_hor_inc to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %subsample_hor_inc, align 2
  %43 = lshr i16 %42, 1
  %44 = zext i16 %43 to i32
  %sub39 = add nsw i32 %44, -1
  %or41 = or i32 %shl36, %sub39
  %45 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %isp, align 4
  %arrayidx.i92 = getelementptr %struct.isp_device, ptr %46, i32 0, i32 6, i32 4
  %47 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %48, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %or20) #6, !srcloc !33
  %49 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %isp, align 4
  %arrayidx.i94 = getelementptr %struct.isp_device, ptr %50, i32 0, i32 6, i32 4
  %51 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %52, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %or25) #6, !srcloc !33
  %53 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %isp, align 4
  %arrayidx.i96 = getelementptr %struct.isp_device, ptr %54, i32 0, i32 6, i32 4
  %55 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i97 = getelementptr i8, ptr %56, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %or32) #6, !srcloc !33
  %57 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %isp, align 4
  %arrayidx.i98 = getelementptr %struct.isp_device, ptr %58, i32 0, i32 6, i32 4
  %59 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %60, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %or41) #6, !srcloc !33
  %61 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %isp, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %62, i32 0, i32 6, i32 4
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !34
  %and.i = and i32 %65, 4063231
  %or.i = or i32 %and.i, %or
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #6, !srcloc !33
  %68 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load48 = load i8, ptr %update, align 4
  %bf.clear49 = and i8 %bf.load48, -65
  store i8 %bf.clear49, ptr %update, align 4
  %inc_config = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 3
  %69 = ptrtoint ptr %inc_config to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %inc_config, align 1
  %conv50 = zext i8 %70 to i16
  %config_counter = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 12
  %71 = ptrtoint ptr %config_counter to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %config_counter, align 2
  %add = add i16 %72, %conv50
  store i16 %add, ptr %config_counter, align 2
  store i8 0, ptr %inc_config, align 1
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %priv, align 4
  %buf_size54 = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 14
  %75 = ptrtoint ptr %buf_size54 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %buf_size54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h3a_aewb_enable(ptr nocapture noundef readonly %aewb, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %isp2 = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 6
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
  %or.i = or i32 %4, 65536
  %5 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #6, !srcloc !33
  %7 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp2, align 4
  tail call void @omap3isp_subclk_enable(ptr noundef %8, i32 noundef 2) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %4, -65537
  %9 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i2.i9 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9, i32 %and.i) #6, !srcloc !33
  %11 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp2, align 4
  tail call void @omap3isp_subclk_disable(ptr noundef %12, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h3a_aewb_busy(ptr nocapture noundef readonly %aewb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %aewb, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %arrayidx.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !34
  %and = and i32 %4, 262144
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h3a_aewb_ioctl(ptr nocapture noundef readonly %sd, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
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
    i32 -1071622461, label %sw.bb
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
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/isph3a_aewb.c", i32 306, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap3isp_h3a_aewb_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap3isp_h3a_aewb_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap3isp/isph3a_aewb.c", i32 324, i32 3}
!10 = !{ptr @omap3isp_h3a_aewb_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap3isp_h3a_aewb_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap3isp/isph3a_aewb.c", i32 333, i32 33}
!14 = !{ptr @h3a_aewb_ops, !15, !"h3a_aewb_ops", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/omap3isp/isph3a_aewb.c", i32 261, i32 33}
!16 = !{ptr @h3a_aewb_subdev_ops, !17, !"h3a_aewb_subdev_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/omap3isp/isph3a_aewb.c", i32 279, i32 37}
!18 = !{ptr @h3a_aewb_subdev_core_ops, !19, !"h3a_aewb_subdev_core_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/omap3isp/isph3a_aewb.c", i32 269, i32 42}
!20 = !{ptr @h3a_aewb_subdev_video_ops, !21, !"h3a_aewb_subdev_video_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap3isp/isph3a_aewb.c", i32 275, i32 43}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 6003000, i32 -294967296}
!33 = !{i64 7281357}
!34 = !{i64 7281775}
