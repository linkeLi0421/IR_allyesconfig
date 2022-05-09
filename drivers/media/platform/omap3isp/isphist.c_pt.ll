; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/isphist.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/isphist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ispstat_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.omap3isp_hist_config = type { i32, i16, i8, i16, i8, [4 x i8], i8, [4 x %struct.omap3isp_hist_region] }
%struct.omap3isp_hist_region = type { i16, i16, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.ispstat_buffer = type { %struct.sg_table, ptr, i32, %struct.timespec64, i32, i32, i16, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@omap3isp_hist_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 506, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"hist: DMA channel request failed, using PIO\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap3isp_hist_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/omap3isp/isphist.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap3isp_hist_init._entry_ptr = internal global ptr @omap3isp_hist_init._entry, section ".printk_index", align 4
@omap3isp_hist_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hist: using DMA channel %s\0A\00", [36 x i8] zeroinitializer }, align 32
@hist_ops = internal constant { %struct.ispstat_ops, [40 x i8] } { %struct.ispstat_ops { ptr @hist_validate_params, ptr @hist_set_params, ptr @hist_setup_regs, ptr @hist_enable, ptr @hist_busy, ptr @hist_buf_process }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"histogram\00", [22 x i8] zeroinitializer }, align 32
@hist_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @hist_subdev_core_ops, ptr null, ptr null, ptr @hist_subdev_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hist_buf_dma.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hist_buf_dma\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hist: invalid DMA buffer address\0A\00", [62 x i8] zeroinitializer }, align 32
@hist_buf_dma.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hist: DMA slave configuration failed\0A\00", [58 x i8] zeroinitializer }, align 32
@hist_buf_dma.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hist: DMA slave preparation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@hist_buf_dma.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hist: DMA submission failed\0A\00", [35 x i8] zeroinitializer }, align 32
@hist_buf_pio.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hist_buf_pio\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hist: invalid PIO buffer address\0A\00", [62 x i8] zeroinitializer }, align 32
@hist_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hist_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @omap3isp_stat_subscribe_event, ptr @omap3isp_stat_unsubscribe_event }, [40 x i8] zeroinitializer }, align 32
@hist_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3isp_stat_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 3221509831, i64 3222820550, i64 3223344838, i64 3224393412]
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 505, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 508, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"hist_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 447, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 517, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"hist_subdev_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 466, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 182, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 198, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 207, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 216, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 236, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"hist_subdev_core_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 456, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"hist_subdev_video_ops\00", align 1
@___asan_gen_.74 = private constant [45 x i8] c"../drivers/media/platform/omap3isp/isphist.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 462, i32 43 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @omap3isp_hist_init._entry, ptr @omap3isp_hist_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hist_ops, ptr @.str.7, ptr @hist_subdev_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @hist_subdev_core_ops, ptr @hist_subdev_video_ops], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_hist_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hist_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hist_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hist_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hist_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_hist_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %entry
  %isp1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23, i32 6
  %1 = ptrtoint ptr %isp1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %isp, ptr %isp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #7
  %call2 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %mask) #7
  %dma_ch = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23, i32 16
  %3 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %dma_ch, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body12

if.then5:                                         ; preds = %if.end
  %cmp8 = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp8, label %err.thread, label %if.end10

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dma_ch, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str) #11
  br label %err

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_hist_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_hist_init, %err)) #7
          to label %if.then17 [label %err], !srcloc !48

if.then17:                                        ; preds = %do.body12
  %dev18 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %7 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev18, align 8
  %9 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_ch, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then17.dma_chan_name.exit_crit_edge

if.then17.dma_chan_name.exit_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %if.then17.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then17.dma_chan_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_hist_init.__UNIQUE_ID_ddebug303, ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i) #7
  br label %err

err.thread:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  br label %if.then27

err:                                              ; preds = %dma_chan_name.exit, %do.body12, %if.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  %ops = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23, i32 10
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hist_ops, ptr %ops, align 4
  %priv = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23, i32 7
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %priv, align 4
  %event_type = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23, i32 17
  %19 = ptrtoint ptr %event_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 134217987, ptr %event_type, align 4
  %call25 = call i32 @omap3isp_stat_init(ptr noundef %isp_hist, ptr noundef nonnull @.str.7, ptr noundef nonnull @hist_subdev_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err.cleanup34_crit_edge, label %err.if.then27_crit_edge

err.if.then27_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

err.cleanup34_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.then27:                                        ; preds = %err.if.then27_crit_edge, %err.thread
  %ret.263 = phi i32 [ -517, %err.thread ], [ %call25, %err.if.then27_crit_edge ]
  %20 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_ch, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %cmp.i56 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i56
  br i1 %spec.select.i, label %if.then27.if.end32_crit_edge, label %if.then30

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_release_channel(ptr noundef nonnull %21) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then27.if.end32_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup34

cleanup34:                                        ; preds = %if.end32, %err.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup34_crit_edge ], [ %ret.263, %if.end32 ], [ 0, %err.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_hist_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ch = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23, i32 16
  %0 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ch, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23
  tail call void @omap3isp_stat_cleanup(ptr noundef %isp_hist) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hist_validate_params(ptr nocapture noundef readnone %hist, ptr nocapture noundef %new_conf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cfa = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 4
  %0 = ptrtoint ptr %cfa to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfa, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_regions = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 6
  %2 = ptrtoint ptr %num_regions to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_regions, align 1
  %4 = add i8 %3, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %4)
  %5 = icmp ult i8 %4, -4
  br i1 %5, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %conv12 = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %tobool.not = icmp ult i16 %7, 16384
  br i1 %tobool.not, label %if.end17, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cond = icmp eq i8 %3, 1
  br i1 %cond, label %for.cond.sw.bb_crit_edge, label %for.body.1

for.cond.sw.bb_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %tobool.not.1 = icmp ult i16 %9, 16384
  br i1 %tobool.not.1, label %if.end17.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.1:                                       ; preds = %for.body.1
  %h_end.1 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 1, i32 1
  %10 = ptrtoint ptr %h_end.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %h_end.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %tobool22.not.1 = icmp ult i16 %11, 16384
  br i1 %tobool22.not.1, label %if.end24.1, label %if.end17.1.cleanup_crit_edge

if.end17.1.cleanup_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.1:                                       ; preds = %if.end17.1
  %v_start.1 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 1, i32 2
  %12 = ptrtoint ptr %v_start.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %v_start.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %tobool29.not.1 = icmp ult i16 %13, 16384
  br i1 %tobool29.not.1, label %if.end31.1, label %if.end24.1.cleanup_crit_edge

if.end24.1.cleanup_crit_edge:                     ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.1:                                       ; preds = %if.end24.1
  %v_end.1 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 1, i32 3
  %14 = ptrtoint ptr %v_end.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %v_end.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %15)
  %tobool36.not.1 = icmp ugt i16 %15, 16383
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp47.1 = icmp ugt i16 %9, %11
  %or.cond127.1 = select i1 %tobool36.not.1, i1 true, i1 %cmp47.1
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp59.1 = icmp ugt i16 %13, %15
  %or.cond128.1 = select i1 %or.cond127.1, i1 true, i1 %cmp59.1
  br i1 %or.cond128.1, label %if.end31.1.cleanup_crit_edge, label %for.cond.1

if.end31.1.cleanup_crit_edge:                     ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cond132 = icmp eq i8 %3, 2
  br i1 %cond132, label %for.cond.1.sw.bb70_crit_edge, label %for.body.2

for.cond.1.sw.bb70_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb70

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %tobool.not.2 = icmp ult i16 %17, 16384
  br i1 %tobool.not.2, label %if.end17.2, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.2:                                       ; preds = %for.body.2
  %h_end.2 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 2, i32 1
  %18 = ptrtoint ptr %h_end.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_end.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %tobool22.not.2 = icmp ult i16 %19, 16384
  br i1 %tobool22.not.2, label %if.end24.2, label %if.end17.2.cleanup_crit_edge

if.end17.2.cleanup_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.2:                                       ; preds = %if.end17.2
  %v_start.2 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 2, i32 2
  %20 = ptrtoint ptr %v_start.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %v_start.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %tobool29.not.2 = icmp ult i16 %21, 16384
  br i1 %tobool29.not.2, label %if.end31.2, label %if.end24.2.cleanup_crit_edge

if.end24.2.cleanup_crit_edge:                     ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.2:                                       ; preds = %if.end24.2
  %v_end.2 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 2, i32 3
  %22 = ptrtoint ptr %v_end.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %v_end.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %23)
  %tobool36.not.2 = icmp ugt i16 %23, 16383
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp47.2 = icmp ugt i16 %17, %19
  %or.cond127.2 = select i1 %tobool36.not.2, i1 true, i1 %cmp47.2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp59.2 = icmp ugt i16 %21, %23
  %or.cond128.2 = select i1 %or.cond127.2, i1 true, i1 %cmp59.2
  br i1 %or.cond128.2, label %if.end31.2.cleanup_crit_edge, label %for.cond.2

if.end31.2.cleanup_crit_edge:                     ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cond133 = icmp eq i8 %3, 3
  br i1 %cond133, label %for.cond.2.sw.default_crit_edge, label %for.body.3

for.cond.2.sw.default_crit_edge:                  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

for.body.3:                                       ; preds = %for.cond.2
  %arrayidx.3 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %25)
  %tobool.not.3 = icmp ult i16 %25, 16384
  br i1 %tobool.not.3, label %if.end17.3, label %for.body.3.cleanup_crit_edge

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.3:                                       ; preds = %for.body.3
  %h_end.3 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 3, i32 1
  %26 = ptrtoint ptr %h_end.3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %h_end.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %tobool22.not.3 = icmp ult i16 %27, 16384
  br i1 %tobool22.not.3, label %if.end24.3, label %if.end17.3.cleanup_crit_edge

if.end17.3.cleanup_crit_edge:                     ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.3:                                       ; preds = %if.end17.3
  %v_start.3 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 3, i32 2
  %28 = ptrtoint ptr %v_start.3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %v_start.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %tobool29.not.3 = icmp ult i16 %29, 16384
  br i1 %tobool29.not.3, label %if.end31.3, label %if.end24.3.cleanup_crit_edge

if.end24.3.cleanup_crit_edge:                     ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.3:                                       ; preds = %if.end24.3
  %v_end.3 = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 3, i32 3
  %30 = ptrtoint ptr %v_end.3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %v_end.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %31)
  %tobool36.not.3 = icmp ugt i16 %31, 16383
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp47.3 = icmp ugt i16 %25, %27
  %or.cond127.3 = select i1 %tobool36.not.3, i1 true, i1 %cmp47.3
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp59.3 = icmp ugt i16 %29, %31
  %or.cond128.3 = select i1 %or.cond127.3, i1 true, i1 %cmp59.3
  br i1 %or.cond128.3, label %if.end31.3.cleanup_crit_edge, label %for.end

if.end31.3.cleanup_crit_edge:                     ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %for.body.preheader
  %h_end = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %h_end to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %h_end, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %33)
  %tobool22.not = icmp ult i16 %33, 16384
  br i1 %tobool22.not, label %if.end24, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %v_start = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 0, i32 2
  %34 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %v_start, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %35)
  %tobool29.not = icmp ult i16 %35, 16384
  br i1 %tobool29.not, label %if.end31, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %v_end = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 0, i32 3
  %36 = ptrtoint ptr %v_end to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %v_end, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %37)
  %tobool36.not = icmp ugt i16 %37, 16383
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %33)
  %cmp47 = icmp ugt i16 %7, %33
  %or.cond127 = select i1 %tobool36.not, i1 true, i1 %cmp47
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp59 = icmp ugt i16 %35, %37
  %or.cond128 = select i1 %or.cond127, i1 true, i1 %cmp59
  br i1 %or.cond128, label %if.end31.cleanup_crit_edge, label %for.cond

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %if.end31.3
  %38 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %for.end.sw.default_crit_edge [
    i8 1, label %for.end.sw.bb_crit_edge
    i8 2, label %for.end.sw.bb70_crit_edge
  ]

for.end.sw.bb70_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb70

for.end.sw.bb_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.end.sw.default_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %for.end.sw.bb_crit_edge, %for.cond.sw.bb_crit_edge
  %hist_bins = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 3
  %39 = ptrtoint ptr %hist_bins to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hist_bins, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %40)
  %cmp66 = icmp ugt i16 %40, 3
  br i1 %cmp66, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb70:                                          ; preds = %for.end.sw.bb70_crit_edge, %for.cond.1.sw.bb70_crit_edge
  %hist_bins71 = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 3
  %41 = ptrtoint ptr %hist_bins71 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hist_bins71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %42)
  %cmp73 = icmp ugt i16 %42, 2
  br i1 %cmp73, label %sw.bb70.cleanup_crit_edge, label %sw.bb70.sw.epilog_crit_edge

sw.bb70.sw.epilog_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb70.cleanup_crit_edge:                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %for.end.sw.default_crit_edge, %for.cond.2.sw.default_crit_edge
  %hist_bins77 = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 3
  %43 = ptrtoint ptr %hist_bins77 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hist_bins77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp79 = icmp ugt i16 %44, 1
  br i1 %cmp79, label %sw.default.cleanup_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb70.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %hist_bins.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 3
  %45 = ptrtoint ptr %hist_bins.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hist_bins.i, align 4
  %conv.i = zext i16 %46 to i32
  %mul1.i = shl i32 512, %conv.i
  %mul3.i = mul i32 %mul1.i, %conv12
  %47 = ptrtoint ptr %new_conf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %new_conf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %48)
  %cmp84 = icmp ugt i32 %mul3.i, %48
  br i1 %cmp84, label %sw.epilog.cleanup.sink.split_crit_edge, label %if.else

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %48)
  %cmp89 = icmp ugt i32 %48, 4096
  br i1 %cmp89, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %sw.epilog.cleanup.sink.split_crit_edge
  %mul3.i.sink = phi i32 [ %mul3.i, %sw.epilog.cleanup.sink.split_crit_edge ], [ 4096, %if.else.cleanup.sink.split_crit_edge ]
  %49 = ptrtoint ptr %new_conf to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul3.i.sink, ptr %new_conf, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb70.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end31.3.cleanup_crit_edge, %if.end24.3.cleanup_crit_edge, %if.end17.3.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %if.end31.2.cleanup_crit_edge, %if.end24.2.cleanup_crit_edge, %if.end17.2.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %if.end31.1.cleanup_crit_edge, %if.end24.1.cleanup_crit_edge, %if.end17.1.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb70.cleanup_crit_edge ], [ -22, %sw.default.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %if.end31.3.cleanup_crit_edge ], [ -22, %if.end24.3.cleanup_crit_edge ], [ -22, %if.end17.3.cleanup_crit_edge ], [ -22, %for.body.3.cleanup_crit_edge ], [ -22, %if.end31.2.cleanup_crit_edge ], [ -22, %if.end24.2.cleanup_crit_edge ], [ -22, %if.end17.2.cleanup_crit_edge ], [ -22, %for.body.2.cleanup_crit_edge ], [ -22, %if.end31.1.cleanup_crit_edge ], [ -22, %if.end24.1.cleanup_crit_edge ], [ -22, %if.end17.1.cleanup_crit_edge ], [ -22, %for.body.1.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hist_set_params(ptr nocapture noundef %hist, ptr nocapture noundef %new_conf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %configured = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 2
  %2 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cfa.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %cfa.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfa.i, align 2
  %cfa1.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 4
  %5 = ptrtoint ptr %cfa1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cfa1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not.i = icmp eq i8 %4, %6
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false
  %num_acc_frames.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %num_acc_frames.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_acc_frames.i, align 2
  %num_acc_frames5.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 2
  %9 = ptrtoint ptr %num_acc_frames5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_acc_frames5.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp7.not.i = icmp eq i8 %8, %10
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end10.i:                                       ; preds = %if.end.i
  %hist_bins.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %hist_bins.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hist_bins.i, align 4
  %hist_bins12.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 3
  %13 = ptrtoint ptr %hist_bins12.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hist_bins12.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp14.not.i = icmp eq i16 %12, %14
  br i1 %cmp14.not.i, label %if.else.i, label %if.end10.i.if.then_crit_edge

if.end10.i.if.then_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else.1.i:                                      ; preds = %if.else.i
  %arrayidx.1.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx29.1.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx29.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp31.not.1.i = icmp eq i8 %16, %18
  br i1 %cmp31.not.1.i, label %if.else.2.i, label %if.else.1.i.if.then_crit_edge

if.else.1.i.if.then_crit_edge:                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else.2.i:                                      ; preds = %if.else.1.i
  %arrayidx.2.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx29.2.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx29.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp31.not.2.i = icmp eq i8 %20, %22
  br i1 %cmp31.not.2.i, label %for.cond.2.i, label %if.else.2.i.if.then_crit_edge

if.else.2.i.if.then_crit_edge:                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.2.i:                                     ; preds = %if.else.2.i
  br i1 %cmp24.i, label %for.cond.2.i.for.end.i_crit_edge, label %if.else.3.i

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.else.3.i:                                      ; preds = %for.cond.2.i
  %arrayidx.3.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx29.3.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx29.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp31.not.3.i = icmp eq i8 %24, %26
  br i1 %cmp31.not.3.i, label %if.else.3.i.for.end.i_crit_edge, label %if.else.3.i.if.then_crit_edge

if.else.3.i.if.then_crit_edge:                    ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else.3.i.for.end.i_crit_edge:                  ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp24.i = icmp eq i8 %4, 1
  %arrayidx.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 5, i32 0
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %arrayidx29.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 5, i32 0
  %29 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp31.not.i = icmp eq i8 %28, %30
  br i1 %cmp31.not.i, label %if.else.1.i, label %if.else.i.if.then_crit_edge

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end.i:                                        ; preds = %if.else.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge
  %num_regions.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_regions.i, align 1
  %num_regions37.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 6
  %33 = ptrtoint ptr %num_regions37.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_regions37.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp39.not.i = icmp eq i8 %32, %34
  br i1 %cmp39.not.i, label %for.cond43.preheader.i, label %for.end.i.if.then_crit_edge

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond43.preheader.i:                           ; preds = %for.end.i
  %conv45.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp46130.not.i = icmp eq i8 %32, 0
  br i1 %cmp46130.not.i, label %for.cond43.preheader.i.if.end7_crit_edge, label %for.cond43.preheader.i.for.body48.i_crit_edge

for.cond43.preheader.i.for.body48.i_crit_edge:    ; preds = %for.cond43.preheader.i
  br label %for.body48.i

for.cond43.preheader.i.if.end7_crit_edge:         ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond43.i:                                     ; preds = %if.end80.i
  %inc93.i = add nuw nsw i32 %c.1131.i, 1
  %exitcond.not.i = icmp eq i32 %inc93.i, %conv45.i
  br i1 %exitcond.not.i, label %for.cond43.i.if.end7_crit_edge, label %for.cond43.i.for.body48.i_crit_edge

for.cond43.i.for.body48.i_crit_edge:              ; preds = %for.cond43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48.i

for.cond43.i.if.end7_crit_edge:                   ; preds = %for.cond43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body48.i:                                     ; preds = %for.cond43.i.for.body48.i_crit_edge, %for.cond43.preheader.i.for.body48.i_crit_edge
  %c.1131.i = phi i32 [ %inc93.i, %for.cond43.i.for.body48.i_crit_edge ], [ 0, %for.cond43.preheader.i.for.body48.i_crit_edge ]
  %arrayidx49.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 7, i32 %c.1131.i
  %35 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx49.i, align 4
  %arrayidx52.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 %c.1131.i
  %37 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx52.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp55.not.i = icmp eq i16 %36, %38
  br i1 %cmp55.not.i, label %if.end58.i, label %for.body48.i.if.then_crit_edge

for.body48.i.if.then_crit_edge:                   ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end58.i:                                       ; preds = %for.body48.i
  %h_end.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 7, i32 %c.1131.i, i32 1
  %39 = ptrtoint ptr %h_end.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %h_end.i, align 2
  %h_end64.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 %c.1131.i, i32 1
  %41 = ptrtoint ptr %h_end64.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %h_end64.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp66.not.i = icmp eq i16 %40, %42
  br i1 %cmp66.not.i, label %if.end69.i, label %if.end58.i.if.then_crit_edge

if.end58.i.if.then_crit_edge:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end69.i:                                       ; preds = %if.end58.i
  %v_start.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 7, i32 %c.1131.i, i32 2
  %43 = ptrtoint ptr %v_start.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %v_start.i, align 4
  %v_start75.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 %c.1131.i, i32 2
  %45 = ptrtoint ptr %v_start75.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %v_start75.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %46)
  %cmp77.not.i = icmp eq i16 %44, %46
  br i1 %cmp77.not.i, label %if.end80.i, label %if.end69.i.if.then_crit_edge

if.end69.i.if.then_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end80.i:                                       ; preds = %if.end69.i
  %v_end.i = getelementptr %struct.omap3isp_hist_config, ptr %1, i32 0, i32 7, i32 %c.1131.i, i32 3
  %47 = ptrtoint ptr %v_end.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %v_end.i, align 2
  %v_end86.i = getelementptr %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 7, i32 %c.1131.i, i32 3
  %49 = ptrtoint ptr %v_end86.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %v_end86.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp88.not.i = icmp eq i16 %48, %50
  br i1 %cmp88.not.i, label %for.cond43.i, label %if.end80.i.if.then_crit_edge

if.end80.i.if.then_crit_edge:                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end80.i.if.then_crit_edge, %if.end69.i.if.then_crit_edge, %if.end58.i.if.then_crit_edge, %for.body48.i.if.then_crit_edge, %for.end.i.if.then_crit_edge, %if.else.i.if.then_crit_edge, %if.else.3.i.if.then_crit_edge, %if.else.2.i.if.then_crit_edge, %if.else.1.i.if.then_crit_edge, %if.end10.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %51 = call ptr @memcpy(ptr %1, ptr %new_conf, i32 48)
  %num_acc_frames = getelementptr inbounds %struct.omap3isp_hist_config, ptr %new_conf, i32 0, i32 2
  %52 = ptrtoint ptr %num_acc_frames to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_acc_frames, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp = icmp eq i8 %53, 0
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %num_acc_frames to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %num_acc_frames, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %inc_config = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 3
  %55 = ptrtoint ptr %inc_config to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %inc_config, align 1
  %inc = add i8 %56, 1
  store i8 %inc, ptr %inc_config, align 1
  %57 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load5 = load i8, ptr %configured, align 4
  %bf.set = or i8 %bf.load5, 64
  store i8 %bf.set, ptr %configured, align 4
  %hist_bins.i17 = getelementptr inbounds %struct.omap3isp_hist_config, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %hist_bins.i17 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hist_bins.i17, align 4
  %conv.i = zext i16 %59 to i32
  %mul1.i = shl i32 512, %conv.i
  %num_regions.i18 = getelementptr inbounds %struct.omap3isp_hist_config, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %num_regions.i18 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_regions.i18, align 1
  %conv2.i = zext i8 %61 to i32
  %mul3.i = mul i32 %mul1.i, %conv2.i
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul3.i, ptr %1, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %for.cond43.i.if.end7_crit_edge, %for.cond43.preheader.i.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hist_setup_regs(ptr nocapture noundef %hist, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isp1 = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %0 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp1, align 4
  %update = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 2
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %update, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cfa = getelementptr inbounds %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %cfa to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cfa, align 2
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 6
  %wg = getelementptr inbounds %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %wg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wg, align 1
  %conv5 = zext i8 %9 to i32
  %shl6 = shl nuw i32 %conv5, 24
  %arrayidx8 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or = or i32 %shl10, %shl6
  %arrayidx12 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or, %shl14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp18 = icmp eq i8 %7, 0
  br i1 %cmp18, label %if.then20, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %or25 = or i32 %or15, %conv23
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end.if.end26_crit_edge
  %wb_gain.0 = phi i32 [ %or25, %if.then20 ], [ %or15, %if.end.if.end26_crit_edge ]
  %num_regions = getelementptr inbounds %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 6
  %16 = ptrtoint ptr %num_regions to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_regions, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp30.not = icmp eq i8 %17, 0
  br i1 %cmp30.not, label %if.end26.for.inc.3_crit_edge, label %for.inc

if.end26.for.inc.3_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc:                                          ; preds = %if.end26
  %arrayidx33 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 0
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx33, align 4
  %conv34 = zext i16 %19 to i32
  %shl35 = shl nuw i32 %conv34, 16
  %h_end = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %h_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %h_end, align 2
  %conv38 = zext i16 %21 to i32
  %or40 = or i32 %shl35, %conv38
  %v_start = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 0, i32 2
  %22 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %v_start, align 4
  %conv44 = zext i16 %23 to i32
  %shl45 = shl nuw i32 %conv44, 16
  %v_end = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 0, i32 3
  %24 = ptrtoint ptr %v_end to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %v_end, align 2
  %conv48 = zext i16 %25 to i32
  %or50 = or i32 %shl45, %conv48
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp30.1.not = icmp eq i8 %17, 1
  br i1 %cmp30.1.not, label %for.inc.for.inc.3_crit_edge, label %for.inc.1

for.inc.for.inc.3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.1:                                        ; preds = %for.inc
  %arrayidx33.1 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx33.1, align 4
  %conv34.1 = zext i16 %27 to i32
  %shl35.1 = shl nuw i32 %conv34.1, 16
  %h_end.1 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 1, i32 1
  %28 = ptrtoint ptr %h_end.1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %h_end.1, align 2
  %conv38.1 = zext i16 %29 to i32
  %or40.1 = or i32 %shl35.1, %conv38.1
  %v_start.1 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 1, i32 2
  %30 = ptrtoint ptr %v_start.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %v_start.1, align 4
  %conv44.1 = zext i16 %31 to i32
  %shl45.1 = shl nuw i32 %conv44.1, 16
  %v_end.1 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 1, i32 3
  %32 = ptrtoint ptr %v_end.1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %v_end.1, align 2
  %conv48.1 = zext i16 %33 to i32
  %or50.1 = or i32 %shl45.1, %conv48.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp30.2 = icmp ugt i8 %17, 2
  br i1 %cmp30.2, label %for.inc.2, label %for.inc.1.for.inc.3_crit_edge

for.inc.1.for.inc.3_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx33.2 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx33.2, align 4
  %conv34.2 = zext i16 %35 to i32
  %shl35.2 = shl nuw i32 %conv34.2, 16
  %h_end.2 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 2, i32 1
  %36 = ptrtoint ptr %h_end.2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %h_end.2, align 2
  %conv38.2 = zext i16 %37 to i32
  %or40.2 = or i32 %shl35.2, %conv38.2
  %v_start.2 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 2, i32 2
  %38 = ptrtoint ptr %v_start.2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %v_start.2, align 4
  %conv44.2 = zext i16 %39 to i32
  %shl45.2 = shl nuw i32 %conv44.2, 16
  %v_end.2 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 2, i32 3
  %40 = ptrtoint ptr %v_end.2 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %v_end.2, align 2
  %conv48.2 = zext i16 %41 to i32
  %or50.2 = or i32 %shl45.2, %conv48.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp30.3.not = icmp eq i8 %17, 3
  br i1 %cmp30.3.not, label %for.inc.2.for.inc.3_crit_edge, label %if.then32.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then32.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.3 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 3
  %42 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx33.3, align 4
  %conv34.3 = zext i16 %43 to i32
  %shl35.3 = shl nuw i32 %conv34.3, 16
  %h_end.3 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 3, i32 1
  %44 = ptrtoint ptr %h_end.3 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %h_end.3, align 2
  %conv38.3 = zext i16 %45 to i32
  %or40.3 = or i32 %shl35.3, %conv38.3
  %v_start.3 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 3, i32 2
  %46 = ptrtoint ptr %v_start.3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %v_start.3, align 4
  %conv44.3 = zext i16 %47 to i32
  %shl45.3 = shl nuw i32 %conv44.3, 16
  %v_end.3 = getelementptr %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 7, i32 3, i32 3
  %48 = ptrtoint ptr %v_end.3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %v_end.3, align 2
  %conv48.3 = zext i16 %49 to i32
  %or50.3 = or i32 %shl45.3, %conv48.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then32.3, %for.inc.2.for.inc.3_crit_edge, %for.inc.1.for.inc.3_crit_edge, %for.inc.for.inc.3_crit_edge, %if.end26.for.inc.3_crit_edge
  %reg_ver.sroa.10.0194 = phi i32 [ %or50.2, %if.then32.3 ], [ %or50.2, %for.inc.2.for.inc.3_crit_edge ], [ 0, %for.inc.1.for.inc.3_crit_edge ], [ 0, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %reg_hor.sroa.10.0192 = phi i32 [ %or40.2, %if.then32.3 ], [ %or40.2, %for.inc.2.for.inc.3_crit_edge ], [ 0, %for.inc.1.for.inc.3_crit_edge ], [ 0, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %reg_ver.sroa.0.0162169190 = phi i32 [ %or50, %if.then32.3 ], [ %or50, %for.inc.2.for.inc.3_crit_edge ], [ %or50, %for.inc.1.for.inc.3_crit_edge ], [ %or50, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %reg_hor.sroa.0.0160171188 = phi i32 [ %or40, %if.then32.3 ], [ %or40, %for.inc.2.for.inc.3_crit_edge ], [ %or40, %for.inc.1.for.inc.3_crit_edge ], [ %or40, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %reg_hor.sroa.6.0173186 = phi i32 [ %or40.1, %if.then32.3 ], [ %or40.1, %for.inc.2.for.inc.3_crit_edge ], [ %or40.1, %for.inc.1.for.inc.3_crit_edge ], [ 0, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %reg_ver.sroa.6.0175184 = phi i32 [ %or50.1, %if.then32.3 ], [ %or50.1, %for.inc.2.for.inc.3_crit_edge ], [ %or50.1, %for.inc.1.for.inc.3_crit_edge ], [ 0, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %reg_hor.sroa.14.0 = phi i32 [ %or40.3, %if.then32.3 ], [ 0, %for.inc.2.for.inc.3_crit_edge ], [ 0, %for.inc.1.for.inc.3_crit_edge ], [ 0, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %reg_ver.sroa.14.0 = phi i32 [ %or50.3, %if.then32.3 ], [ 0, %for.inc.2.for.inc.3_crit_edge ], [ 0, %for.inc.1.for.inc.3_crit_edge ], [ 0, %for.inc.for.inc.3_crit_edge ], [ 0, %if.end26.for.inc.3_crit_edge ]
  %hist_bins = getelementptr inbounds %struct.omap3isp_hist_config, ptr %priv, i32 0, i32 3
  %50 = ptrtoint ptr %hist_bins to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hist_bins, align 4
  %conv55 = zext i16 %51 to i32
  %shl56 = shl nuw nsw i32 %conv55, 4
  %or57 = or i32 %shl56, %shl
  %switch.tableidx = add i16 %51, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %52 = icmp ult i16 %switch.tableidx, 3
  %switch.idx.cast = zext i16 %switch.tableidx to i32
  %switch.offset = sub nsw i32 4, %switch.idx.cast
  %.sink = select i1 %52, i32 %switch.offset, i32 5
  %or65 = or i32 %or57, %.sink
  %priv.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 7
  %53 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv.i, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 3
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !49
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !50
  %or.i.i = or i32 %59, 128
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #7, !srcloc !49
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.inc.3
  %i.025.i = phi i32 [ 256, %for.inc.3 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %63, i32 52
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !50
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %66, i32 52
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !50
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %69, i32 52
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !50
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %72, i32 52
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #7, !srcloc !50
  %dec.i = add nsw i32 %i.025.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %hist_reset_mem.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

hist_reset_mem.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %75, i32 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #7, !srcloc !50
  %and.i.i = and i32 %76, -129
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i24.i = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i24.i, i32 %and.i.i) #7, !srcloc !49
  %num_acc_frames.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %54, i32 0, i32 2
  %79 = ptrtoint ptr %num_acc_frames.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_acc_frames.i, align 2
  %wait_acc_frames.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 11
  %81 = ptrtoint ptr %wait_acc_frames.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %wait_acc_frames.i, align 4
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %83, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or65) #7, !srcloc !49
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %85, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %wb_gain.0) #7, !srcloc !49
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %87, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %reg_hor.sroa.0.0160171188) #7, !srcloc !49
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %89, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %reg_ver.sroa.0.0162169190) #7, !srcloc !49
  %90 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %reg_hor.sroa.6.0173186) #7, !srcloc !49
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %93, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %reg_ver.sroa.6.0175184) #7, !srcloc !49
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %95, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %reg_hor.sroa.10.0192) #7, !srcloc !49
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %97, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %reg_ver.sroa.10.0194) #7, !srcloc !49
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %99, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %reg_hor.sroa.14.0) #7, !srcloc !49
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %101, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %reg_ver.sroa.14.0) #7, !srcloc !49
  %102 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load75 = load i8, ptr %update, align 4
  %bf.clear76 = and i8 %bf.load75, -65
  store i8 %bf.clear76, ptr %update, align 4
  %inc_config = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 3
  %103 = ptrtoint ptr %inc_config to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %inc_config, align 1
  %conv77 = zext i8 %104 to i16
  %config_counter = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 12
  %105 = ptrtoint ptr %config_counter to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %config_counter, align 2
  %add = add i16 %106, %conv77
  store i16 %add, ptr %config_counter, align 2
  store i8 0, ptr %inc_config, align 1
  %107 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %priv, align 4
  %buf_size81 = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 14
  %109 = ptrtoint ptr %buf_size81 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %buf_size81, align 4
  br label %cleanup

cleanup:                                          ; preds = %hist_reset_mem.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hist_enable(ptr nocapture noundef readonly %hist, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %isp2 = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %0 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp2, align 4
  %arrayidx.i.i7 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %4, 1
  %5 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !49
  %7 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp2, align 4
  tail call void @omap3isp_subclk_enable(ptr noundef %8, i32 noundef 8) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %4, -2
  %9 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i2.i9 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9, i32 %and.i) #7, !srcloc !49
  %11 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp2, align 4
  tail call void @omap3isp_subclk_disable(ptr noundef %12, i32 noundef 8) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hist_busy(ptr nocapture noundef readonly %hist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %arrayidx.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  %and = and i32 %4, 2
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hist_buf_process(ptr noundef %hist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %buf_err = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buf_err, i32 noundef 4) #7
  %2 = ptrtoint ptr %buf_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %buf_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %isp1.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %6 = ptrtoint ptr %isp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp1.i, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %7, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !49
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !50
  %or.i.i = or i32 %14, 128
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #7, !srcloc !49
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.025.i = phi i32 [ 256, %if.then ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %18, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !50
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %21, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !50
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !50
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %27, i32 52
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #7, !srcloc !50
  %dec.i = add nsw i32 %i.025.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %hist_reset_mem.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

hist_reset_mem.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #7, !srcloc !50
  %and.i.i = and i32 %31, -129
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i24.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i24.i, i32 %and.i.i) #7, !srcloc !49
  %num_acc_frames.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %9, i32 0, i32 2
  %34 = ptrtoint ptr %num_acc_frames.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_acc_frames.i, align 2
  %wait_acc_frames.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 11
  %36 = ptrtoint ptr %wait_acc_frames.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %wait_acc_frames.i, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %wait_acc_frames = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 11
  %37 = ptrtoint ptr %wait_acc_frames to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wait_acc_frames, align 4
  %dec = add i8 %38, -1
  store i8 %dec, ptr %wait_acc_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool1.not = icmp eq i8 %dec, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dma_ch = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 16
  %39 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_ch, align 4
  %tobool4.not = icmp eq ptr %40, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call fastcc i32 @hist_buf_dma(ptr noundef %hist)
  br label %if.end8

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @hist_buf_pio(ptr noundef %hist)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ]
  %num_acc_frames = getelementptr inbounds %struct.omap3isp_hist_config, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %num_acc_frames to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_acc_frames, align 2
  %43 = ptrtoint ptr %wait_acc_frames to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %wait_acc_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %hist_reset_mem.exit
  %retval.0 = phi i32 [ 1, %hist_reset_mem.exit ], [ %ret.0, %if.end8 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hist_buf_dma(ptr noundef %hist) unnamed_addr #0 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_buf = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 19
  %0 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_buf, align 4
  %dma_addr1 = getelementptr inbounds %struct.ispstat_buffer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dma_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #7
  %4 = call ptr @memset(ptr %cfg, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end15, !prof !51

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hist_buf_dma.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hist_buf_dma, %error)) #7
          to label %if.then14 [label %error], !srcloc !48

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %isp = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %5 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isp, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hist_buf_dma.__UNIQUE_ID_ddebug298, ptr noundef %8, ptr noundef nonnull @.str.9) #7
  br label %error

if.end15:                                         ; preds = %entry
  %isp16 = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %9 = ptrtoint ptr %isp16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp16, align 4
  %arrayidx.i = getelementptr %struct.isp_device, ptr %10, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !49
  %13 = ptrtoint ptr %isp16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %isp16, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %14, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %or.i = or i32 %17, 128
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !49
  %20 = ptrtoint ptr %isp16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp16, align 4
  tail call void @omap3isp_flush(ptr noundef %21) #7
  %22 = call ptr @memset(ptr %cfg, i32 0, i32 48)
  %23 = ptrtoint ptr %isp16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %isp16, align 4
  %mmio_hist_base_phys = getelementptr inbounds %struct.isp_device, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %mmio_hist_base_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mmio_hist_base_phys, align 4
  %add = add i32 %26, 52
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %27 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %28 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %src_addr_width, align 4
  %buf_size = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 14
  %29 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_size, align 4
  %div119 = lshr i32 %30, 2
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %31 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div119, ptr %src_maxburst, align 4
  %dma_ch = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 16
  %32 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_ch, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end15.do.body22_crit_edge, label %dmaengine_slave_config.exit

if.end15.do.body22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

dmaengine_slave_config.exit:                      ; preds = %if.end15
  %call.i = call i32 %37(ptr noundef %33, ptr noundef nonnull %cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dmaengine_slave_config.exit.do.body22_crit_edge, label %if.end42

dmaengine_slave_config.exit.do.body22_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.body22:                                        ; preds = %dmaengine_slave_config.exit.do.body22_crit_edge, %if.end15.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hist_buf_dma.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hist_buf_dma, %error)) #7
          to label %if.then36 [label %error], !srcloc !48

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %isp16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %isp16, align 4
  %dev38 = getelementptr inbounds %struct.isp_device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev38, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hist_buf_dma.__UNIQUE_ID_ddebug299, ptr noundef %41, ptr noundef nonnull @.str.10) #7
  br label %error

if.end42:                                         ; preds = %dmaengine_slave_config.exit
  %42 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_ch, align 4
  %44 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_size, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #7
  %46 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %47 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %48 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #7
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %3, ptr %46, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %45, ptr %47, align 4
  %tobool.not.i130 = icmp eq ptr %43, null
  br i1 %tobool.not.i130, label %if.end42.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end42.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end42
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %43, align 4
  %tobool1.not.i = icmp eq ptr %52, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %52, i32 0, i32 39
  %53 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end42.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  br label %do.body48

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i131 = call ptr %54(ptr noundef nonnull %43, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  %cmp46 = icmp eq ptr %call.i131, null
  br i1 %cmp46, label %dmaengine_prep_slave_single.exit.do.body48_crit_edge, label %if.end68

dmaengine_prep_slave_single.exit.do.body48_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

do.body48:                                        ; preds = %dmaengine_prep_slave_single.exit.do.body48_crit_edge, %dmaengine_prep_slave_single.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hist_buf_dma.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hist_buf_dma, %error)) #7
          to label %if.then62 [label %error], !srcloc !48

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %isp16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %isp16, align 4
  %dev64 = getelementptr inbounds %struct.isp_device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev64, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hist_buf_dma.__UNIQUE_ID_ddebug300, ptr noundef %58, ptr noundef nonnull @.str.11) #7
  br label %error

if.end68:                                         ; preds = %dmaengine_prep_slave_single.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i131, i32 0, i32 6
  %59 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @hist_dma_cb, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i131, i32 0, i32 8
  %60 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %hist, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i131, i32 0, i32 4
  %61 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_submit, align 4
  %call69 = call i32 %62(ptr noundef nonnull %call.i131) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call69)
  %tobool71.not = icmp sgt i32 %call69, -1
  br i1 %tobool71.not, label %if.end93, label %do.body73

do.body73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hist_buf_dma.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hist_buf_dma, %error)) #7
          to label %if.then87 [label %error], !srcloc !48

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %isp16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %isp16, align 4
  %dev89 = getelementptr inbounds %struct.isp_device, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev89, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hist_buf_dma.__UNIQUE_ID_ddebug301, ptr noundef %66, ptr noundef nonnull @.str.12) #7
  br label %error

if.end93:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_ch, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 50
  %71 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device_issue_pending.i, align 4
  call void %72(ptr noundef %68) #7
  br label %cleanup

error:                                            ; preds = %if.then87, %do.body73, %if.then62, %do.body48, %if.then36, %do.body22, %if.then14, %do.body
  %isp1.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %73 = ptrtoint ptr %isp1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %isp1.i, align 4
  %priv.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 7
  %75 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv.i, align 4
  %arrayidx.i.i133 = getelementptr %struct.isp_device, ptr %74, i32 0, i32 6, i32 3
  %77 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i.i134 = getelementptr i8, ptr %78, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i134, i32 0) #7, !srcloc !49
  %79 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %80, i32 8
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !50
  %or.i.i = or i32 %81, 128
  %82 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %83, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #7, !srcloc !49
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %error
  %i.025.i = phi i32 [ 256, %error ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %85, i32 52
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !50
  %87 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %88, i32 52
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !50
  %90 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %91, i32 52
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !50
  %93 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %94, i32 52
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #7, !srcloc !50
  %dec.i = add nsw i32 %i.025.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %hist_reset_mem.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

hist_reset_mem.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %97, i32 8
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #7, !srcloc !50
  %and.i.i = and i32 %98, -129
  %99 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i.i133, align 4
  %add.ptr.i2.i24.i = getelementptr i8, ptr %100, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i24.i, i32 %and.i.i) #7, !srcloc !49
  %num_acc_frames.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %76, i32 0, i32 2
  %101 = ptrtoint ptr %num_acc_frames.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_acc_frames.i, align 2
  %wait_acc_frames.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 11
  %103 = ptrtoint ptr %wait_acc_frames.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %wait_acc_frames.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hist_reset_mem.exit, %if.end93
  %retval.0 = phi i32 [ 1, %hist_reset_mem.exit ], [ 2, %if.end93 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hist_buf_pio(ptr nocapture noundef %hist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isp1 = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 6
  %0 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp1, align 4
  %active_buf = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 19
  %2 = ptrtoint ptr %active_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_buf, align 4
  %virt_addr = getelementptr inbounds %struct.ispstat_buffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hist_buf_pio.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hist_buf_pio, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !48

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hist_buf_pio.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %8 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp1, align 4
  %priv.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 7
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %9, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !49
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !50
  %or.i.i = or i32 %16, 128
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #7, !srcloc !49
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end
  %i.025.i = phi i32 [ 256, %do.end ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %20, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !50
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %23, i32 52
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !50
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %26, i32 52
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !50
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %29, i32 52
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #7, !srcloc !50
  %dec.i = add nsw i32 %i.025.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %hist_reset_mem.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

hist_reset_mem.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #7, !srcloc !50
  %and.i.i = and i32 %33, -129
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i24.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i24.i, i32 %and.i.i) #7, !srcloc !49
  %num_acc_frames.i = getelementptr inbounds %struct.omap3isp_hist_config, ptr %11, i32 0, i32 2
  %36 = ptrtoint ptr %num_acc_frames.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_acc_frames.i, align 2
  %wait_acc_frames.i = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 11
  %38 = ptrtoint ptr %wait_acc_frames.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %wait_acc_frames.i, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !49
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %42, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #7, !srcloc !50
  %or.i = or i32 %43, 128
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !49
  %buf_size = getelementptr inbounds %struct.ispstat, ptr %hist, i32 0, i32 14
  %46 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %47)
  %cmp.not48 = icmp ult i32 %47, 16
  br i1 %cmp.not48, label %if.end7.for.end_crit_edge, label %for.body.preheader

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end7
  %div33 = lshr i32 %47, 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.050 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %div33, %for.body.preheader ]
  %buf.049 = phi ptr [ %incdec.ptr14, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %49, i32 52
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !50
  %incdec.ptr = getelementptr i32, ptr %buf.049, i32 1
  %51 = ptrtoint ptr %buf.049 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %buf.049, align 4
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %53, i32 52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #7, !srcloc !50
  %incdec.ptr10 = getelementptr i32, ptr %buf.049, i32 2
  %55 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %incdec.ptr, align 4
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %57, i32 52
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #7, !srcloc !50
  %incdec.ptr12 = getelementptr i32, ptr %buf.049, i32 3
  %59 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %incdec.ptr10, align 4
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %61, i32 52
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #7, !srcloc !50
  %incdec.ptr14 = getelementptr i32, ptr %buf.049, i32 4
  %63 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %incdec.ptr12, align 4
  %dec = add nsw i32 %i.050, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %64 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %isp1, align 4
  %arrayidx.i.i44 = getelementptr %struct.isp_device, ptr %65, i32 0, i32 6, i32 3
  %66 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i44, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %67, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #7, !srcloc !50
  %and.i = and i32 %68, -129
  %69 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i44, align 4
  %add.ptr.i2.i46 = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i46, i32 %and.i) #7, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %for.end, %hist_reset_mem.exit
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %hist_reset_mem.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hist_dma_cb(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.ispstat, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %and.i = and i32 %4, -129
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %and.i) #7, !srcloc !49
  tail call void @omap3isp_stat_dma_isr(ptr noundef %data) #7
  %state = getelementptr inbounds %struct.ispstat, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp, align 4
  tail call void @omap3isp_hist_dma_done(ptr noundef %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_dma_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_hist_dma_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hist_ioctl(ptr nocapture noundef readonly %sd, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1070573884, label %sw.bb
    i32 -1071622458, label %sw.bb2
    i32 -1072146746, label %sw.bb4
    i32 -1073457465, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @omap3isp_stat_config(ptr noundef %1, ptr noundef %arg) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @omap3isp_stat_request_statistics(ptr noundef %1, ptr noundef %arg) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @omap3isp_stat_request_statistics_time32(ptr noundef %1, ptr noundef %arg) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %conv = zext i1 %tobool to i8
  %call8 = tail call i32 @omap3isp_stat_enable(ptr noundef %1, i8 noundef zeroext %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_unsubscribe_event(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_request_statistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_request_statistics_time32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_enable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_s_stream(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 505, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap3isp_hist_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap3isp_hist_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 508, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @omap3isp_hist_init.__UNIQUE_ID_ddebug303, !9, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 517, i32 33}
!14 = !{ptr @hist_ops, !15, !"hist_ops", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 447, i32 33}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 182, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hist_buf_dma.__UNIQUE_ID_ddebug298, !17, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 198, i32 3}
!22 = !{ptr @hist_buf_dma.__UNIQUE_ID_ddebug299, !21, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 207, i32 3}
!25 = !{ptr @hist_buf_dma.__UNIQUE_ID_ddebug300, !24, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 216, i32 3}
!28 = !{ptr @hist_buf_dma.__UNIQUE_ID_ddebug301, !27, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 236, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hist_buf_pio.__UNIQUE_ID_ddebug302, !30, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!33 = !{ptr @hist_subdev_ops, !34, !"hist_subdev_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 466, i32 37}
!35 = !{ptr @hist_subdev_core_ops, !36, !"hist_subdev_core_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 456, i32 42}
!37 = !{ptr @hist_subdev_video_ops, !38, !"hist_subdev_video_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/omap3isp/isphist.c", i32 462, i32 43}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148769345, i64 2148769350, i64 2148769363, i64 2148769407, i64 2148769441, i64 2148769462}
!49 = !{i64 6287583}
!50 = !{i64 6288001}
!51 = !{!"branch_weights", i32 1, i32 2000}
