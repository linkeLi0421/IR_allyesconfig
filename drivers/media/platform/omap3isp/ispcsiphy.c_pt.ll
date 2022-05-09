; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/ispcsiphy.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/ispcsiphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.isp_csiphy = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.isp_async_subdev = type { %struct.v4l2_async_subdev, %struct.isp_bus_cfg }
%struct.v4l2_async_subdev = type { i32, %union.anon.93, %struct.list_head, %struct.list_head }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i16 }
%struct.isp_bus_cfg = type { i32, %union.anon.104 }
%union.anon.104 = type { %struct.isp_parallel_cfg, [4 x i8] }
%struct.isp_parallel_cfg = type { i16, [2 x i8] }
%struct.isp_ccp2_cfg = type { i8, %struct.isp_csiphy_lanes_cfg, i8 }
%struct.isp_csiphy_lanes_cfg = type { [2 x %struct.isp_csiphy_lane], %struct.isp_csiphy_lane }
%struct.isp_csiphy_lane = type { i8, i8 }
%struct.isp_csi2_cfg = type { i8, %struct.isp_csiphy_lanes_cfg, i8 }

@omap3isp_csiphy_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 266, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Power regulator for CSI PHY not available\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap3isp_csiphy_acquire\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/omap3isp/ispcsiphy.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap3isp_csiphy_acquire._entry_ptr = internal global ptr @omap3isp_csiphy_acquire._entry, section ".printk_index", align 4
@omap3isp_csiphy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&phy2->mutex\00", [19 x i8] zeroinitializer }, align 32
@omap3isp_csiphy_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&phy1->mutex\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@csiphy_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CSI2 CIO set power failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csiphy_set_power\00", [47 x i8] zeroinitializer }, align 32
@csiphy_set_power._entry_ptr = internal global ptr @csiphy_set_power._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 265, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 336, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 339, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [47 x i8] c"../drivers/media/platform/omap3isp/ispcsiphy.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 148, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @csiphy_set_power._entry, ptr @csiphy_set_power._entry_ptr, ptr @omap3isp_csiphy_acquire._entry, ptr @omap3isp_csiphy_acquire._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @omap3isp_csiphy_init.__key, ptr @.str.5, ptr @omap3isp_csiphy_init.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_csiphy_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_csiphy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_csiphy_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_csiphy_acquire(ptr noundef %phy, ptr noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.if.then24_crit_edge, label %if.end4

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end4:                                          ; preds = %if.end
  %csi2 = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 2
  %8 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csi2, align 4
  %call5 = tail call i32 @omap3isp_csi2_reset(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.if.then24_crit_edge, label %if.end8

if.end4.if.then24_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end8:                                          ; preds = %if.end4
  %entity9 = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 4
  %10 = ptrtoint ptr %entity9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entity, ptr %entity9, align 4
  %pipe1.i = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 14
  %11 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe1.i, align 4
  %external.i = getelementptr inbounds %struct.isp_pipeline, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %external.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %external.i, align 4
  %asd.i = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %asd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asd.i, align 4
  %bus.i = getelementptr inbounds %struct.isp_async_subdev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus.i, align 4
  %19 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch.i = icmp eq i32 %19, 2
  %bus7.i = getelementptr inbounds %struct.isp_async_subdev, ptr %16, i32 0, i32 1, i32 1
  br i1 %switch.i, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %if.end8
  %num_data_lanes11.i = getelementptr inbounds %struct.isp_async_subdev, ptr %16, i32 0, i32 1, i32 1, i32 1, i32 3
  %20 = ptrtoint ptr %num_data_lanes11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_data_lanes11.i, align 1
  %num_data_lanes12.i = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 7
  %22 = ptrtoint ptr %num_data_lanes12.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_data_lanes12.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp14.i = icmp ugt i8 %21, %23
  br i1 %cmp14.i, label %if.end.i.if.then24_crit_edge, label %for.cond.preheader.i

if.end.i.if.then24_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end.thread.i:                                  ; preds = %if.end8
  %lanecfg.i = getelementptr inbounds %struct.isp_ccp2_cfg, ptr %bus7.i, i32 0, i32 1
  %num_data_lanes12557.i = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 7
  %24 = ptrtoint ptr %num_data_lanes12557.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_data_lanes12557.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp14559.i = icmp eq i8 %25, 0
  br i1 %cmp14559.i, label %if.end.thread.i.if.then24_crit_edge, label %if.end.thread.i.for.body.preheader.i_crit_edge

if.end.thread.i.for.body.preheader.i_crit_edge:   ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader.i

if.end.thread.i.if.then24_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

for.cond.preheader.i:                             ; preds = %if.end.i
  %conv.i = zext i8 %21 to i32
  %lanecfg9.i = getelementptr inbounds %struct.isp_csi2_cfg, ptr %bus7.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp18547.not.i = icmp eq i8 %21, 0
  br i1 %cmp18547.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.preheader.i_crit_edge

for.cond.preheader.i.for.body.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i.for.body.preheader.i_crit_edge, %if.end.thread.i.for.body.preheader.i_crit_edge
  %lanes.0560567.i = phi ptr [ %lanecfg9.i, %for.cond.preheader.i.for.body.preheader.i_crit_edge ], [ %lanecfg.i, %if.end.thread.i.for.body.preheader.i_crit_edge ]
  %num_data_lanes.0561566.i = phi i32 [ %conv.i, %for.cond.preheader.i.for.body.preheader.i_crit_edge ], [ 1, %if.end.thread.i.for.body.preheader.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end36.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0549.i = phi i32 [ %inc.i, %if.end36.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %used_lanes.0548.i = phi i32 [ %or.i, %if.end36.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pol.i = getelementptr [2 x %struct.isp_csiphy_lane], ptr %lanes.0560567.i, i32 0, i32 %i.0549.i, i32 1
  %26 = ptrtoint ptr %pol.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp21.i = icmp ugt i8 %27, 1
  br i1 %cmp21.i, label %for.body.i.if.then24_crit_edge, label %lor.lhs.false23.i

for.body.i.if.then24_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false23.i:                                ; preds = %for.body.i
  %arrayidx.i = getelementptr [2 x %struct.isp_csiphy_lane], ptr %lanes.0560567.i, i32 0, i32 %i.0549.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp27.i = icmp ugt i8 %29, 3
  br i1 %cmp27.i, label %lor.lhs.false23.i.if.then24_crit_edge, label %if.end30.i

lor.lhs.false23.i.if.then24_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end30.i:                                       ; preds = %lor.lhs.false23.i
  %conv26.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 1, %conv26.i
  %and.i = and i32 %shl.i, %used_lanes.0548.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end36.i, label %if.end30.i.if.then24_crit_edge

if.end30.i.if.then24_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end36.i:                                       ; preds = %if.end30.i
  %or.i = or i32 %shl.i, %used_lanes.0548.i
  %inc.i = add nuw nsw i32 %i.0549.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_data_lanes.0561566.i
  br i1 %exitcond.not.i, label %if.end36.i.for.end.i_crit_edge, label %if.end36.i.for.body.i_crit_edge

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end36.i.for.end.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %if.end36.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %cmp18547.not570.i = phi i1 [ true, %for.cond.preheader.i.for.end.i_crit_edge ], [ false, %if.end36.i.for.end.i_crit_edge ]
  %lanes.0560568.i = phi ptr [ %lanecfg9.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %lanes.0560567.i, %if.end36.i.for.end.i_crit_edge ]
  %num_data_lanes.0562.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %num_data_lanes.0561566.i, %if.end36.i.for.end.i_crit_edge ]
  %used_lanes.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %or.i, %if.end36.i.for.end.i_crit_edge ]
  %clk.i = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, ptr %lanes.0560568.i, i32 0, i32 1
  %pol42.i = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, ptr %lanes.0560568.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %pol42.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pol42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp44.i = icmp ugt i8 %31, 1
  br i1 %cmp44.i, label %for.end.i.if.then24_crit_edge, label %lor.lhs.false46.i

for.end.i.if.then24_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false46.i:                                ; preds = %for.end.i
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %clk.i, align 1
  %34 = add i8 %33, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %34)
  %35 = icmp ult i8 %34, -3
  br i1 %35, label %lor.lhs.false46.i.if.then24_crit_edge, label %lor.lhs.false59.i

lor.lhs.false46.i.if.then24_crit_edge:            ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false59.i:                                ; preds = %lor.lhs.false46.i
  %conv49.i = zext i8 %33 to i32
  %shl63.i = shl nuw nsw i32 1, %conv49.i
  %and64.i = and i32 %shl63.i, %used_lanes.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %lor.lhs.false59.i.if.then24_crit_edge

lor.lhs.false59.i.if.then24_crit_edge:            ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end67.i:                                       ; preds = %lor.lhs.false59.i
  %36 = ptrtoint ptr %bus7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %bus7.i, align 4
  %37 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool70.i = icmp ne i8 %37, 0
  tail call fastcc void @csiphy_routing_cfg(ptr noundef %phy, i32 noundef %18, i1 noundef zeroext true, i1 noundef zeroext %tobool70.i) #4
  %external_rate.i = getelementptr inbounds %struct.isp_pipeline, ptr %12, i32 0, i32 15
  %38 = ptrtoint ptr %external_rate.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %external_rate.i, align 4
  %div.i = udiv i32 %39, 1000
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %used_lanes.0.lcssa.i) #4
  %mul.i = shl i32 %call.i.i, 1
  %div353.i = udiv i32 %div.i, %mul.i
  %external_width.i = getelementptr inbounds %struct.isp_pipeline, ptr %12, i32 0, i32 16
  %40 = ptrtoint ptr %external_width.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %external_width.i, align 4
  %mul354.i = mul i32 %41, %div353.i
  %42 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy, align 4
  %phy_regs.i = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 6
  %44 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_regs.i, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %43, i32 0, i32 6, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !28
  %and356.i = and i32 %48, -65536
  %mul357.i = mul i32 %mul354.i, 25
  %sub.i = add i32 %mul357.i, 1999999
  %div359.i = sdiv i32 %sub.i, 2000000
  %sub360.i = shl nsw i32 %div359.i, 8
  %shl361.i = add nsw i32 %sub360.i, -256
  %mul363.i = mul i32 %mul354.i, 90
  %sub365.i = add i32 %mul363.i, 999999
  %div366.i = sdiv i32 %sub365.i, 1000000
  %add367.i = add nsw i32 %div366.i, 3
  %or362.i = or i32 %add367.i, %and356.i
  %or369.i = or i32 %or362.i, %shl361.i
  %49 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy, align 4
  %51 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phy_regs.i, align 4
  %arrayidx.i538.i = getelementptr %struct.isp_device, ptr %50, i32 0, i32 6, i32 %52
  %53 = ptrtoint ptr %arrayidx.i538.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i538.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %or369.i) #4, !srcloc !29
  %55 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy, align 4
  %57 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %phy_regs.i, align 4
  %arrayidx.i539.i = getelementptr %struct.isp_device, ptr %56, i32 0, i32 6, i32 %58
  %59 = ptrtoint ptr %arrayidx.i539.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i539.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !28
  %and375.i = and i32 %61, -33293312
  %or378.i = or i32 %and375.i, 270
  %62 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy, align 4
  %64 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %phy_regs.i, align 4
  %arrayidx.i540.i = getelementptr %struct.isp_device, ptr %63, i32 0, i32 6, i32 %65
  %66 = ptrtoint ptr %arrayidx.i540.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i540.i, align 4
  %add.ptr.i541.i = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i541.i, i32 %or378.i) #4, !srcloc !29
  %68 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy, align 4
  %cfg_regs.i = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 5
  %70 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i542.i = getelementptr %struct.isp_device, ptr %69, i32 0, i32 6, i32 %71
  %72 = ptrtoint ptr %arrayidx.i542.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i542.i, align 4
  %add.ptr.i543.i = getelementptr i8, ptr %73, i32 80
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i543.i) #4, !srcloc !28
  br i1 %cmp18547.not570.i, label %if.end67.i.if.end13_crit_edge, label %if.end67.i.for.body386.i_crit_edge

if.end67.i.for.body386.i_crit_edge:               ; preds = %if.end67.i
  br label %for.body386.i

if.end67.i.if.end13_crit_edge:                    ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

for.body386.i:                                    ; preds = %for.body386.i.for.body386.i_crit_edge, %if.end67.i.for.body386.i_crit_edge
  %reg.0552.i = phi i32 [ %or412.i, %for.body386.i.for.body386.i_crit_edge ], [ %74, %if.end67.i.for.body386.i_crit_edge ]
  %i.1551.i = phi i32 [ %add387.i, %for.body386.i.for.body386.i_crit_edge ], [ 0, %if.end67.i.for.body386.i_crit_edge ]
  %add387.i = add nuw nsw i32 %i.1551.i, 1
  %mul388.i = shl i32 %add387.i, 2
  %add389.i = or i32 %mul388.i, 3
  %shl390.i = shl nuw i32 1, %add389.i
  %shl393.i = shl i32 7, %mul388.i
  %or394.i = or i32 %shl390.i, %shl393.i
  %neg.i = xor i32 %or394.i, -1
  %and395.i = and i32 %reg.0552.i, %neg.i
  %arrayidx397.i = getelementptr [2 x %struct.isp_csiphy_lane], ptr %lanes.0560568.i, i32 0, i32 %i.1551.i
  %pol398.i = getelementptr [2 x %struct.isp_csiphy_lane], ptr %lanes.0560568.i, i32 0, i32 %i.1551.i, i32 1
  %75 = ptrtoint ptr %pol398.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %pol398.i, align 1
  %conv399.i = zext i8 %76 to i32
  %shl403.i = shl i32 %conv399.i, %add389.i
  %77 = ptrtoint ptr %arrayidx397.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx397.i, align 1
  %conv408.i = zext i8 %78 to i32
  %shl411.i = shl i32 %conv408.i, %mul388.i
  %or404.i = or i32 %shl411.i, %shl403.i
  %or412.i = or i32 %or404.i, %and395.i
  %exitcond554.not.i = icmp eq i32 %add387.i, %num_data_lanes.0562.i
  br i1 %exitcond554.not.i, label %for.body386.i.if.end13_crit_edge, label %for.body386.i.for.body386.i_crit_edge

for.body386.i.for.body386.i_crit_edge:            ; preds = %for.body386.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body386.i

for.body386.i.if.end13_crit_edge:                 ; preds = %for.body386.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %for.body386.i.if.end13_crit_edge, %if.end67.i.if.end13_crit_edge
  %reg.0.lcssa.i = phi i32 [ %74, %if.end67.i.if.end13_crit_edge ], [ %or412.i, %for.body386.i.if.end13_crit_edge ]
  %and416.i = and i32 %reg.0.lcssa.i, -16
  %79 = ptrtoint ptr %pol42.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pol42.i, align 1
  %conv419.i = zext i8 %80 to i32
  %shl420.i = shl nuw nsw i32 %conv419.i, 3
  %or421.i = or i32 %shl420.i, %and416.i
  %81 = ptrtoint ptr %clk.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %clk.i, align 1
  %conv424.i = zext i8 %82 to i32
  %or426.i = or i32 %or421.i, %conv424.i
  %83 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy, align 4
  %85 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i544.i = getelementptr %struct.isp_device, ptr %84, i32 0, i32 6, i32 %86
  %87 = ptrtoint ptr %arrayidx.i544.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i544.i, align 4
  %add.ptr.i545.i = getelementptr i8, ptr %88, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i545.i, i32 %or426.i) #4, !srcloc !29
  %89 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %phy, align 4
  %revision = getelementptr inbounds %struct.isp_device, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %92)
  %cmp15 = icmp eq i32 %92, 240
  br i1 %cmp15, label %if.then16, label %if.end13.if.end26_crit_edge

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then16:                                        ; preds = %if.end13
  %93 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %90, i32 0, i32 6, i32 %94
  %95 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %96, i32 80
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !28
  %and.i.i = and i32 %97, -402653185
  %or.i.i = or i32 %and.i.i, 134217728
  %98 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %99, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #4, !srcloc !29
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then16
  %retry_count.0.i = phi i8 [ 0, %if.then16 ], [ %spec.select.i, %do.body.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 10737400) #4
  %101 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %phy, align 4
  %103 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i.i46 = getelementptr %struct.isp_device, ptr %102, i32 0, i32 6, i32 %104
  %105 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i46, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %106, i32 80
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47) #4, !srcloc !28
  %and.i48 = and i32 %107, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i48)
  %cmp.not.i = icmp ne i32 %and.i48, 33554432
  %inc.i49 = zext i1 %cmp.not.i to i8
  %spec.select.i = add nuw nsw i8 %retry_count.0.i, %inc.i49
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %spec.select.i)
  %cmp5.i = icmp ult i8 %spec.select.i, 100
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %spec.select.i)
  %cmp8.i = icmp eq i8 %spec.select.i, 100
  %108 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %phy, align 4
  br i1 %cmp8.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.8) #7
  %112 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vdd, align 4
  %call20 = tail call i32 @regulator_disable(ptr noundef %113) #4
  br label %if.then24

if.end21:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %114 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i.i.i52 = getelementptr %struct.isp_device, ptr %109, i32 0, i32 6, i32 %115
  %116 = ptrtoint ptr %arrayidx.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i.i.i52, align 4
  %add.ptr.i.i.i53 = getelementptr i8, ptr %117, i32 80
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i53) #4, !srcloc !28
  %or.i.i55 = or i32 %118, 16777216
  %119 = ptrtoint ptr %arrayidx.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i.i52, align 4
  %add.ptr.i2.i.i56 = getelementptr i8, ptr %120, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i56, i32 %or.i.i55) #4, !srcloc !29
  br label %if.end26

if.then24:                                        ; preds = %if.then18, %lor.lhs.false59.i.if.then24_crit_edge, %lor.lhs.false46.i.if.then24_crit_edge, %for.end.i.if.then24_crit_edge, %if.end30.i.if.then24_crit_edge, %lor.lhs.false23.i.if.then24_crit_edge, %for.body.i.if.then24_crit_edge, %if.end.thread.i.if.then24_crit_edge, %if.end.i.if.then24_crit_edge, %if.end4.if.then24_crit_edge, %if.end.if.then24_crit_edge
  %rval.0.ph = phi i32 [ -16, %if.then18 ], [ %call5, %if.end4.if.then24_crit_edge ], [ %call, %if.end.if.then24_crit_edge ], [ -22, %if.end.i.if.then24_crit_edge ], [ -22, %lor.lhs.false46.i.if.then24_crit_edge ], [ -22, %for.end.i.if.then24_crit_edge ], [ -22, %lor.lhs.false59.i.if.then24_crit_edge ], [ -22, %if.end.thread.i.if.then24_crit_edge ], [ -22, %lor.lhs.false23.i.if.then24_crit_edge ], [ -22, %for.body.i.if.then24_crit_edge ], [ -22, %if.end30.i.if.then24_crit_edge ]
  %entity25 = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 4
  %121 = ptrtoint ptr %entity25 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %entity25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21, %if.end13.if.end26_crit_edge
  %rval.063 = phi i32 [ %rval.0.ph, %if.then24 ], [ 0, %if.end21 ], [ 0, %if.end13.if.end26_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %rval.063, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_csi2_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_csiphy_release(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %entity = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 4
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  %pipe2 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe2, align 4
  %external = getelementptr inbounds %struct.isp_pipeline, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %external, align 4
  %asd = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %asd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asd, align 4
  %bus = getelementptr inbounds %struct.isp_async_subdev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus, align 4
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %phy_type.i = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.i = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 2
  %or.cond.i = and i1 %cmp.not.i.i, %cmp5.i
  br i1 %or.cond.i, label %if.end.i.i, label %if.then.csiphy_routing_cfg.exit_crit_edge

if.then.csiphy_routing_cfg.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %csiphy_routing_cfg.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %syscon9.i.i = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %syscon9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %syscon9.i.i, align 8
  %syscon_offset11.i.i = getelementptr inbounds %struct.isp_device, ptr %11, i32 0, i32 9
  %16 = ptrtoint ptr %syscon_offset11.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %syscon_offset11.i.i, align 4
  %call12.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %17, i32 noundef 0) #4
  br label %csiphy_routing_cfg.exit

csiphy_routing_cfg.exit:                          ; preds = %if.end.i.i, %if.then.csiphy_routing_cfg.exit_crit_edge
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %revision = getelementptr inbounds %struct.isp_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %21)
  %cmp = icmp eq i32 %21, 240
  br i1 %cmp, label %if.then8, label %csiphy_routing_cfg.exit.if.end_crit_edge

csiphy_routing_cfg.exit.if.end_crit_edge:         ; preds = %csiphy_routing_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then8:                                         ; preds = %csiphy_routing_cfg.exit
  %cfg_regs.i = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 5
  %22 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %19, i32 0, i32 6, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 80
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !28
  %and.i.i = and i32 %26, -16777217
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %28, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and.i.i) #4, !srcloc !29
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy, align 4
  %31 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i.i.i24 = getelementptr %struct.isp_device, ptr %30, i32 0, i32 6, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i24, align 4
  %add.ptr.i.i.i25 = getelementptr i8, ptr %34, i32 80
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i25) #4, !srcloc !28
  %and.i.i26 = and i32 %35, -402653185
  %36 = ptrtoint ptr %arrayidx.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i24, align 4
  %add.ptr.i2.i.i27 = getelementptr i8, ptr %37, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i27, i32 %and.i.i26) #4, !srcloc !29
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then8
  %retry_count.0.i = phi i8 [ 0, %if.then8 ], [ %spec.select.i, %do.body.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 10737400) #4
  %39 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy, align 4
  %41 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %40, i32 0, i32 6, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 80
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !28
  %and.i = and i32 %45, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp ne i32 %and.i, 0
  %inc.i = zext i1 %cmp.not.i to i8
  %spec.select.i = add nuw nsw i8 %retry_count.0.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %spec.select.i)
  %cmp5.i28 = icmp ult i8 %spec.select.i, 100
  %or.cond.i29 = select i1 %cmp.not.i, i1 %cmp5.i28, i1 false
  br i1 %or.cond.i29, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %spec.select.i)
  %cmp8.i = icmp eq i8 %spec.select.i, 100
  br i1 %cmp8.i, label %do.end13.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end13.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 4
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.8) #7
  br label %if.end

if.end:                                           ; preds = %do.end13.i, %do.end.i.if.end_crit_edge, %csiphy_routing_cfg.exit.if.end_crit_edge
  %vdd = getelementptr inbounds %struct.isp_csiphy, ptr %phy, i32 0, i32 3
  %50 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vdd, align 4
  %call9 = tail call i32 @regulator_disable(ptr noundef %51) #4
  %52 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %entity, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csiphy_routing_cfg(ptr nocapture noundef readonly %phy, i32 noundef %iface, i1 noundef zeroext %on, i1 noundef zeroext %ccp2_strobe) unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %phy_type = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %4 = and i1 %cmp, %on
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #4
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg.i, align 4, !annotation !30
  %syscon.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscon.i, align 8
  %syscon_offset.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %syscon_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %syscon_offset.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %reg.i) #4
  %10 = zext i32 %iface to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %iface, label %sw.bb.i [
    i32 1, label %sw.bb4.i
    i32 4, label %if.then.csiphy_routing_cfg_3630.exit_crit_edge
    i32 3, label %sw.bb3.i
  ]

if.then.csiphy_routing_cfg_3630.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %csiphy_routing_cfg_3630.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %12, -17
  store i32 %and.i, ptr %reg.i, align 4
  br label %csiphy_routing_cfg_3630.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %14, 16
  store i32 %or.i, ptr %reg.i, align 4
  br label %csiphy_routing_cfg_3630.exit

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %csiphy_routing_cfg_3630.exit

csiphy_routing_cfg_3630.exit:                     ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb.i, %if.then.csiphy_routing_cfg_3630.exit_crit_edge
  %shift.0.i = phi i32 [ 2, %sw.bb.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb4.i ], [ 2, %if.then.csiphy_routing_cfg_3630.exit_crit_edge ]
  %mode.0.i = phi i32 [ -1, %sw.bb.i ], [ -1, %sw.bb3.i ], [ 0, %sw.bb4.i ], [ 0, %if.then.csiphy_routing_cfg_3630.exit_crit_edge ]
  %15 = and i32 %iface, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch.i = icmp eq i32 %15, 2
  %..i = select i1 %ccp2_strobe, i32 1, i32 2
  %spec.select.i = select i1 %switch.i, i32 %..i, i32 %mode.0.i
  %shl.i = shl nuw nsw i32 3, %shift.0.i
  %neg.i = xor i32 %shl.i, -1
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  %and8.i = and i32 %17, %neg.i
  %shl9.i = shl nsw i32 %spec.select.i, %shift.0.i
  %or10.i = or i32 %and8.i, %shl9.i
  store i32 %or10.i, ptr %reg.i, align 4
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %syscon12.i = getelementptr inbounds %struct.isp_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %syscon12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %syscon12.i, align 8
  %syscon_offset14.i = getelementptr inbounds %struct.isp_device, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %syscon_offset14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syscon_offset14.i, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef %or10.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #4
  br label %if.end9

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %iface)
  %cmp.not.i = icmp eq i32 %iface, 2
  %or.cond = and i1 %cmp.not.i, %cmp5
  br i1 %or.cond, label %if.end.i, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select.i16 = select i1 %ccp2_strobe, i32 13312, i32 12288
  %spec.select.sink.i = select i1 %on, i32 %spec.select.i16, i32 0
  %syscon9.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %syscon9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %syscon9.i, align 8
  %syscon_offset11.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %syscon_offset11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %syscon_offset11.i, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %27, i32 noundef %spec.select.sink.i) #4
  br label %if.end9

if.end9:                                          ; preds = %if.end.i, %if.end.if.end9_crit_edge, %csiphy_routing_cfg_3630.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_csiphy_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_csiphy1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30
  %isp_csiphy2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31
  %0 = ptrtoint ptr %isp_csiphy2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %isp, ptr %isp_csiphy2, align 4
  %isp_csi2a = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27
  %csi2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31, i32 2
  %1 = ptrtoint ptr %csi2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %isp_csi2a, ptr %csi2, align 4
  %num_data_lanes = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31, i32 7
  %2 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %num_data_lanes, align 4
  %cfg_regs = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31, i32 5
  %3 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %cfg_regs, align 4
  %phy_regs = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31, i32 6
  %4 = ptrtoint ptr %phy_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %phy_regs, align 4
  %mutex = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @omap3isp_csiphy_init.__key) #4
  %5 = ptrtoint ptr %isp_csiphy1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %isp, ptr %isp_csiphy1, align 4
  %mutex4 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30, i32 1
  tail call void @__mutex_init(ptr noundef %mutex4, ptr noundef nonnull @.str.7, ptr noundef nonnull @omap3isp_csiphy_init.__key.6) #4
  %revision = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 4
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %7)
  %cmp = icmp eq i32 %7, 240
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %isp_csi2c = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28
  %csi27 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30, i32 2
  %8 = ptrtoint ptr %csi27 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %isp_csi2c, ptr %csi27, align 4
  %num_data_lanes8 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30, i32 7
  %9 = ptrtoint ptr %num_data_lanes8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %num_data_lanes8, align 4
  %cfg_regs9 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30, i32 5
  %10 = ptrtoint ptr %cfg_regs9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %cfg_regs9, align 4
  %phy_regs10 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30, i32 6
  %11 = ptrtoint ptr %phy_regs10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %phy_regs10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_csiphy_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30, i32 1
  tail call void @mutex_destroy(ptr noundef %mutex) #4
  %mutex1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31, i32 1
  tail call void @mutex_destroy(ptr noundef %mutex1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/ispcsiphy.c", i32 265, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap3isp_csiphy_acquire._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap3isp_csiphy_acquire._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @omap3isp_csiphy_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap3isp/ispcsiphy.c", i32 336, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @omap3isp_csiphy_init.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/omap3isp/ispcsiphy.c", i32 339, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/omap3isp/ispcsiphy.c", i32 148, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @csiphy_set_power._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @csiphy_set_power._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 4859401}
!29 = !{i64 4858983}
!30 = !{!"auto-init"}
