; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/isp.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/isp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.isp_reg = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.isp_res_mapping = type { i32, [14 x i32], i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.anon.107 = type { i32, i32, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
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
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.isp_res_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, %struct.isp_video, %struct.isp_video, i32, i32, %struct.resizer_ratio, i32, i8, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.101 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
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
%struct.anon.101 = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isp_prev_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_ctrl_handler, i32, i32, %struct.isp_video, %struct.isp_video, %struct.anon.102, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.102 = type { i32, [2 x %struct.prev_params], i32, %struct.spinlock }
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
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.106, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.106 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.isp_async_subdev = type { %struct.v4l2_async_subdev, %struct.isp_bus_cfg }
%struct.v4l2_async_subdev = type { i32, %union.anon.99, %struct.list_head, %struct.list_head }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16 }
%struct.isp_bus_cfg = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.isp_parallel_cfg, [4 x i8] }
%struct.isp_parallel_cfg = type { i16, [2 x i8] }
%struct.isp_ccp2_cfg = type { i8, %struct.isp_csiphy_lanes_cfg, i8 }
%struct.isp_csiphy_lanes_cfg = type { [2 x %struct.isp_csiphy_lane], %struct.isp_csiphy_lane }
%struct.isp_csiphy_lane = type { i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.isp_csi2_cfg = type { i8, %struct.isp_csiphy_lanes_cfg, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__param_str_autoidle = internal constant [19 x i8] c"omap3_isp.autoidle\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@autoidle = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_autoidle = internal constant %struct.kernel_param { ptr @__param_str_autoidle, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @autoidle } }, section "__param", align 4
@__UNIQUE_ID_autoidletype298 = internal constant [32 x i8] c"omap3_isp.parmtype=autoidle:int\00", section ".modinfo", align 1
@__UNIQUE_ID_autoidle299 = internal constant [57 x i8] c"omap3_isp.parm=autoidle:Enable OMAP3ISP AUTOIDLE support\00", section ".modinfo", align 1
@omap3isp_hist_dma_done.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap3isp_hist_dma_done\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/platform/omap3isp/isp.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"hist: Out of synchronization with CCDC. Ignoring next buffer.\0A\00", [33 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap3isp_print_status\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"-------------ISP Register dump--------------\0A\00", [50 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 1, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###ISP SYSCONFIG=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 1, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###ISP SYSSTATUS=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 1, i8 118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###ISP IRQ0ENABLE=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 1, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###ISP IRQ0STATUS=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 1, i8 118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"###ISP TCTRL_GRESET_LENGTH=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.11, i8 1, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"###ISP TCTRL_PSTRB_REPLAY=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.12, i8 1, i8 119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###ISP CTRL=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.13, i8 1, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###ISP TCTRL_CTRL=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.14, i8 1, i8 119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###ISP TCTRL_FRAME=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.15, i8 1, i8 120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###ISP TCTRL_PSTRB_DELAY=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.16, i8 1, i8 120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###ISP TCTRL_STRB_DELAY=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.17, i8 1, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###ISP TCTRL_SHUT_DELAY=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.18, i8 1, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"###ISP TCTRL_PSTRB_LENGTH=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.19, i8 1, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###ISP TCTRL_STRB_LENGTH=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.20, i8 1, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###ISP TCTRL_SHUT_LENGTH=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.21, i8 1, i8 121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###SBL PCR=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.22, i8 1, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###SBL SDR_REQ_EXP=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@omap3isp_print_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.23, i8 1, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@__initcall__kmod_omap3_isp__329_2482_omap3isp_driver_init6 = internal global ptr @omap3isp_driver_init, section ".initcall6.init", align 4
@omap3isp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @isp_probe, ptr @isp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.50, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap3isp_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3isp_pm_ops, ptr null, ptr null }, ptr @omap3isp_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap3isp_driver_exit = internal global ptr @omap3isp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [35 x i8] c"omap3_isp.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [42 x i8] c"omap3_isp.description=TI OMAP3 ISP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [57 x i8] c"omap3_isp.file=drivers/media/platform/omap3isp/omap3-isp\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [22 x i8] c"omap3_isp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version334 = internal constant [24 x i8] c"omap3_isp.version=0.0.2\00", section ".modinfo", align 1
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.25 }, section "__modver", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@isp_pipeline_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 842, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unable to stop %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isp_pipeline_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isp_pipeline_disable._entry_ptr = internal global ptr @isp_pipeline_disable._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/media/media-entity.h\00", [35 x i8] zeroinitializer }, align 32
@isp_enable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1326, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable cam_ick clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp_enable_clocks\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@isp_enable_clocks._entry_ptr = internal global ptr @isp_enable_clocks._entry, section ".printk_index", align 4
@isp_enable_clocks._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.2, i32 1331, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clk_set_rate for cam_mclk failed\0A\00", [62 x i8] zeroinitializer }, align 32
@isp_enable_clocks._entry_ptr.36 = internal global ptr @isp_enable_clocks._entry.34, section ".printk_index", align 4
@isp_enable_clocks._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.2, i32 1336, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable cam_mclk clock\0A\00", [63 x i8] zeroinitializer }, align 32
@isp_enable_clocks._entry_ptr.39 = internal global ptr @isp_enable_clocks._entry.37, section ".printk_index", align 4
@isp_enable_clocks._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str.2, i32 1343, ptr @.str.42, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"unexpected cam_mclk rate:\0A expected : %d\0A actual   : %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@isp_enable_clocks._entry_ptr.43 = internal global ptr @isp_enable_clocks._entry.40, section ".printk_index", align 4
@isp_enable_clocks._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.2, i32 1346, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable csi2_fck clock\0A\00", [63 x i8] zeroinitializer }, align 32
@isp_enable_clocks._entry_ptr.46 = internal global ptr @isp_enable_clocks._entry.44, section ".printk_index", align 4
@isp_reg_list = internal global { [4 x %struct.isp_reg], [48 x i8] } { [4 x %struct.isp_reg] [%struct.isp_reg { i32 0, i32 4, i32 0 }, %struct.isp_reg { i32 0, i32 64, i32 0 }, %struct.isp_reg { i32 0, i32 80, i32 0 }, %struct.isp_reg { i32 0, i32 -1, i32 0 }], [48 x i8] zeroinitializer }, align 32
@isp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1045, ptr @.str.49, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot reset ISP\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isp_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@isp_reset._entry_ptr = internal global ptr @isp_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap3isp\00", [23 x i8] zeroinitializer }, align 32
@omap3isp_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-isp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap3isp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @isp_pm_prepare, ptr @isp_pm_complete, ptr @isp_pm_suspend, ptr @isp_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap3isp_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"omap3isp\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@isp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 2271, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isp_probe\00", [22 x i8] zeroinitializer }, align 32
@isp_probe._entry_ptr = internal global ptr @isp_probe._entry, section ".printk_index", align 4
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,phy-type\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@isp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&isp->isp_mutex\00", [16 x i8] zeroinitializer }, align 32
@isp_probe.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&isp->stat_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-csiphy1\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-csiphy2\00", [20 x i8] zeroinitializer }, align 32
@isp_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.52, ptr @.str.2, i32 2347, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Revision %d.%d found\0A\00", [42 x i8] zeroinitializer }, align 32
@isp_probe._entry_ptr.62 = internal global ptr @isp_probe._entry.60, section ".printk_index", align 4
@isp_res_maps = internal constant { [2 x %struct.isp_res_mapping], [32 x i8] } { [2 x %struct.isp_res_mapping] [%struct.isp_res_mapping { i32 32, [14 x i32] [i32 0, i32 1024, i32 1536, i32 2560, i32 3072, i32 3584, i32 4096, i32 4608, i32 0, i32 368, i32 0, i32 0, i32 0, i32 0], i32 0 }, %struct.isp_res_mapping { i32 240, [14 x i32] [i32 0, i32 1024, i32 1536, i32 2560, i32 3072, i32 3584, i32 4096, i32 4608, i32 0, i32 368, i32 448, i32 1024, i32 1392, i32 1472], i32 1 }], [32 x i8] zeroinitializer }, align 32
@isp_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.52, ptr @.str.2, i32 2371, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No resource map found for ISP rev %d.%d\0A\00", [55 x i8] zeroinitializer }, align 32
@isp_probe._entry_ptr.65 = internal global ptr @isp_probe._entry.63, section ".printk_index", align 4
@isp_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.52, ptr @.str.2, i32 2391, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to attach to IOMMU\0A\00", [37 x i8] zeroinitializer }, align 32
@isp_probe._entry_ptr.68 = internal global ptr @isp_probe._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OMAP3 ISP\00", [22 x i8] zeroinitializer }, align 32
@isp_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.52, ptr @.str.2, i32 2405, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@isp_probe._entry_ptr.72 = internal global ptr @isp_probe._entry.70, section ".printk_index", align 4
@isp_subdev_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr null, ptr @isp_subdev_notifier_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@isp_parse_of_endpoints.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 2, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isp_parse_of_endpoints\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parsing parallel interface\0A\00", [36 x i8] zeroinitializer }, align 32
@isp_bus_interfaces = internal constant { [2 x %struct.anon.107], [40 x i8] } { [2 x %struct.anon.107] [%struct.anon.107 { i32 1, i32 4, i32 2 }, %struct.anon.107 { i32 2, i32 1, i32 3 }], [40 x i8] zeroinitializer }, align 32
@isp_parse_of_endpoints.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.75, i8 2, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"parsing serial interface %u, node %pOF\0A\00", [56 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 2, i8 12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isp_parse_of_csi2_endpoint\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clock lane polarity %u, pos %u\0A\00", [32 x i8] zeroinitializer }, align 32
@isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 2, i8 15, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"data lane %u polarity %u, pos %u\0A\00", [62 x i8] zeroinitializer }, align 32
@isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.77, i8 2, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isp_parse_of_csi1_endpoint\00", [37 x i8] zeroinitializer }, align 32
@isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 2, i8 21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"data lane polarity %u, pos %u\0A\00", [33 x i8] zeroinitializer }, align 32
@isp_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1385, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_get %s failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isp_get_clocks\00", [17 x i8] zeroinitializer }, align 32
@isp_get_clocks._entry_ptr = internal global ptr @isp_get_clocks._entry, section ".printk_index", align 4
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cam_ick\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cam_mclk\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi2_96m_fck\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l3_ick\00", [25 x i8] zeroinitializer }, align 32
@isp_xclk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&xclk->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_xclka\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_xclkb\00", [22 x i8] zeroinitializer }, align 32
@isp_xclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @isp_xclk_prepare, ptr @isp_xclk_unprepare, ptr null, ptr null, ptr @isp_xclk_enable, ptr @isp_xclk_disable, ptr null, ptr null, ptr null, ptr null, ptr @isp_xclk_recalc_rate, ptr @isp_xclk_round_rate, ptr null, ptr null, ptr null, ptr @isp_xclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@isp_xclk_parent_name = internal global { ptr, [28 x i8] } { ptr @.str.84, [28 x i8] zeroinitializer }, align 32
@isp_xclk_set_rate.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp_xclk_set_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: cam_xclk%c set to %lu Hz (div %u)\0A\00", [57 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@isp_attach_iommu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1973, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create ARM IOMMU mapping\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp_attach_iommu\00", [47 x i8] zeroinitializer }, align 32
@isp_attach_iommu._entry_ptr = internal global ptr @isp_attach_iommu._entry, section ".printk_index", align 4
@isp_attach_iommu._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 1982, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to attach device to VA mapping\0A\00", [57 x i8] zeroinitializer }, align 32
@isp_attach_iommu._entry_ptr.96 = internal global ptr @isp_attach_iommu._entry.94, section ".printk_index", align 4
@isp_isr_sbl.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 -121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp_isr_sbl\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SBL overflow (PCR = 0x%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1877, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CSI PHY initialization failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isp_initialize_modules\00", [41 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr = internal global ptr @isp_initialize_modules._entry, section ".printk_index", align 4
@isp_initialize_modules._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 1883, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CSI2 initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.103 = internal global ptr @isp_initialize_modules._entry.101, section ".printk_index", align 4
@isp_initialize_modules._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 1890, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CCP2 initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.106 = internal global ptr @isp_initialize_modules._entry.104, section ".printk_index", align 4
@isp_initialize_modules._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.2, i32 1896, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CCDC initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.109 = internal global ptr @isp_initialize_modules._entry.107, section ".printk_index", align 4
@isp_initialize_modules._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.100, ptr @.str.2, i32 1902, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Preview initialization failed\0A\00", [33 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.112 = internal global ptr @isp_initialize_modules._entry.110, section ".printk_index", align 4
@isp_initialize_modules._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.100, ptr @.str.2, i32 1908, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resizer initialization failed\0A\00", [33 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.115 = internal global ptr @isp_initialize_modules._entry.113, section ".printk_index", align 4
@isp_initialize_modules._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.100, ptr @.str.2, i32 1914, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Histogram initialization failed\0A\00", [63 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.118 = internal global ptr @isp_initialize_modules._entry.116, section ".printk_index", align 4
@isp_initialize_modules._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.100, ptr @.str.2, i32 1920, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"H3A AEWB initialization failed\0A\00", [32 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.121 = internal global ptr @isp_initialize_modules._entry.119, section ".printk_index", align 4
@isp_initialize_modules._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.100, ptr @.str.2, i32 1926, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"H3A AF initialization failed\0A\00", [34 x i8] zeroinitializer }, align 32
@isp_initialize_modules._entry_ptr.124 = internal global ptr @isp_initialize_modules._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TI OMAP3 ISP\00", [19 x i8] zeroinitializer }, align 32
@isp_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr @v4l2_pipeline_link_notify, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@isp_register_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1701, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: V4L2 device registration failed (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isp_register_entities\00", [42 x i8] zeroinitializer }, align 32
@isp_register_entities._entry_ptr = internal global ptr @isp_register_entities._entry, section ".printk_index", align 4
@isp_link_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1657, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: invalid interface type %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isp_link_entity\00", [16 x i8] zeroinitializer }, align 32
@isp_link_entity._entry_ptr = internal global ptr @isp_link_entity._entry, section ".printk_index", align 4
@isp_link_entity._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 1669, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: invalid input %u\0A\00", [42 x i8] zeroinitializer }, align 32
@isp_link_entity._entry_ptr.132 = internal global ptr @isp_link_entity._entry.130, section ".printk_index", align 4
@isp_link_entity._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.2, i32 1679, ptr @.str.33, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: no source pad in external entity %s\0A\00", [55 x i8] zeroinitializer }, align 32
@isp_link_entity._entry_ptr.135 = internal global ptr @isp_link_entity._entry.133, section ".printk_index", align 4
@isp_suspend_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 1005, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't stop modules.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp_suspend_modules\00", [44 x i8] zeroinitializer }, align 32
@isp_suspend_modules._entry_ptr = internal global ptr @isp_suspend_modules._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 240]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.144 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"autoidle\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 78, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 474, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1493, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1495, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1496, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1497, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1498, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1499, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1500, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1501, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1502, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1503, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1504, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1505, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1506, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1507, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1508, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1509, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1511, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1512, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1514, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"omap3isp_driver\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2471, i32 31 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2487, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 842, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant [32 x i8] c"../include/media/media-entity.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 468, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1326, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1331, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1336, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1341, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1346, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [13 x i8] c"isp_reg_list\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 130, i32 23 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1045, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2476, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant [18 x i8] c"omap3isp_of_table\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2465, i32 34 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"omap3isp_pm_ops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2452, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"omap3isp_id_table\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2459, i32 40 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2271, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2276, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2281, i32 13 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2294, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2295, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2312, i32 56 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2313, i32 56 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2346, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [13 x i8] c"isp_res_maps\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 86, i32 37 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2370, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2391, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2404, i32 9 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2405, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [24 x i8] c"isp_subdev_notifier_ops\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2247, i32 52 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2171, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant [19 x i8] c"isp_bus_interfaces\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2148, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2199, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2095, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2106, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2124, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2132, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1385, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1371, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1372, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1373, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1374, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 310, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 312, i32 24 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 312, i32 38 }
@___asan_gen_.439 = private unnamed_addr constant [13 x i8] c"isp_xclk_ops\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 272, i32 29 }
@___asan_gen_.442 = private unnamed_addr constant [21 x i8] c"isp_xclk_parent_name\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 282, i32 20 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 267, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1973, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1982, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 542, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1877, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1883, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1890, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1896, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1902, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1908, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1914, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1920, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1926, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1691, i32 32 }
@___asan_gen_.532 = private unnamed_addr constant [14 x i8] c"isp_media_ops\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 652, i32 38 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1700, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1656, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1668, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1678, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.572 = private constant [41 x i8] c"../drivers/media/platform/omap3isp/isp.c\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1005, i32 4 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_autoidle299, ptr @__UNIQUE_ID_autoidletype298, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__UNIQUE_ID_version334, ptr @__exitcall_omap3isp_driver_exit, ptr @__initcall__kmod_omap3_isp__329_2482_omap3isp_driver_init6, ptr @__modver_attr, ptr @__param_autoidle, ptr @isp_attach_iommu._entry, ptr @isp_attach_iommu._entry.94, ptr @isp_attach_iommu._entry_ptr, ptr @isp_attach_iommu._entry_ptr.96, ptr @isp_enable_clocks._entry, ptr @isp_enable_clocks._entry.34, ptr @isp_enable_clocks._entry.37, ptr @isp_enable_clocks._entry.40, ptr @isp_enable_clocks._entry.44, ptr @isp_enable_clocks._entry_ptr, ptr @isp_enable_clocks._entry_ptr.36, ptr @isp_enable_clocks._entry_ptr.39, ptr @isp_enable_clocks._entry_ptr.43, ptr @isp_enable_clocks._entry_ptr.46, ptr @isp_get_clocks._entry, ptr @isp_get_clocks._entry_ptr, ptr @isp_initialize_modules._entry, ptr @isp_initialize_modules._entry.101, ptr @isp_initialize_modules._entry.104, ptr @isp_initialize_modules._entry.107, ptr @isp_initialize_modules._entry.110, ptr @isp_initialize_modules._entry.113, ptr @isp_initialize_modules._entry.116, ptr @isp_initialize_modules._entry.119, ptr @isp_initialize_modules._entry.122, ptr @isp_initialize_modules._entry_ptr, ptr @isp_initialize_modules._entry_ptr.103, ptr @isp_initialize_modules._entry_ptr.106, ptr @isp_initialize_modules._entry_ptr.109, ptr @isp_initialize_modules._entry_ptr.112, ptr @isp_initialize_modules._entry_ptr.115, ptr @isp_initialize_modules._entry_ptr.118, ptr @isp_initialize_modules._entry_ptr.121, ptr @isp_initialize_modules._entry_ptr.124, ptr @isp_link_entity._entry, ptr @isp_link_entity._entry.130, ptr @isp_link_entity._entry.133, ptr @isp_link_entity._entry_ptr, ptr @isp_link_entity._entry_ptr.132, ptr @isp_link_entity._entry_ptr.135, ptr @isp_pipeline_disable._entry, ptr @isp_pipeline_disable._entry_ptr, ptr @isp_probe._entry, ptr @isp_probe._entry.60, ptr @isp_probe._entry.63, ptr @isp_probe._entry.66, ptr @isp_probe._entry.70, ptr @isp_probe._entry_ptr, ptr @isp_probe._entry_ptr.62, ptr @isp_probe._entry_ptr.65, ptr @isp_probe._entry_ptr.68, ptr @isp_probe._entry_ptr.72, ptr @isp_register_entities._entry, ptr @isp_register_entities._entry_ptr, ptr @isp_reset._entry, ptr @isp_reset._entry_ptr, ptr @isp_suspend_modules._entry, ptr @isp_suspend_modules._entry_ptr, ptr @omap3isp_driver_exit, ptr @autoidle, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @omap3isp_driver, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @isp_reg_list, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @omap3isp_of_table, ptr @omap3isp_pm_ops, ptr @omap3isp_id_table, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @isp_probe.__key, ptr @.str.55, ptr @isp_probe.__key.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @isp_res_maps, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @isp_subdev_notifier_ops, ptr @.str.73, ptr @.str.74, ptr @isp_bus_interfaces, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @isp_xclk_init.__key, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @isp_xclk_ops, ptr @isp_xclk_parent_name, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @isp_media_ops, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoidle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_pipeline_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_enable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_enable_clocks._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_enable_clocks._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_enable_clocks._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_enable_clocks._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_reg_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_probe.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_res_maps to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_subdev_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_bus_interfaces to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_xclk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_xclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_xclk_parent_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_attach_iommu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_attach_iommu._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_initialize_modules._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_register_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_link_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_link_entity._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_link_entity._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_suspend_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_flush(ptr nocapture noundef readonly %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #10, !srcloc !320
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !321
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_configure_bridge(ptr nocapture noundef readonly %isp, i32 noundef %input, ptr nocapture noundef readonly %parcfg, i32 noundef %shift, i32 noundef %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !321
  %and3 = and i32 %2, -224
  %or = or i32 %and3, %bridge
  %3 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb11
    i32 4, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %parcfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %parcfg, align 4
  %5 = lshr i16 %bf.load, 8
  %6 = and i16 %5, 16
  %shl = zext i16 %6 to i32
  %or5 = or i32 %or, %shl
  %bf.lshr7 = lshr i16 %bf.load, 13
  %bf.cast8 = zext i16 %bf.lshr7 to i32
  %add = add i32 %bf.cast8, %shift
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or10 = or i32 %or, 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or12 = or i32 %or, 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or14 = or i32 %or, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb
  %shift.addr.0 = phi i32 [ %shift, %sw.bb13 ], [ %shift, %sw.bb11 ], [ %shift, %sw.bb9 ], [ %add, %sw.bb ]
  %ispctrl_val.0 = phi i32 [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %or5, %sw.bb ]
  %7 = shl i32 %shift.addr.0, 5
  %and16 = and i32 %7, 192
  %or17 = or i32 %and16, %ispctrl_val.0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %or17) #10, !srcloc !320
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_hist_dma_done(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26
  %call = tail call i32 @omap3isp_ccdc_busy(ptr noundef %isp_ccdc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23
  %call1 = tail call i32 @omap3isp_stat_pcr_busy(ptr noundef %isp_hist) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %buf_err = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_err, i32 noundef 4) #10
  %0 = ptrtoint ptr %buf_err to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %buf_err, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_hist_dma_done.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_hist_dma_done, %if.end10)) #10
          to label %if.then9 [label %if.end10], !srcloc !322

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_hist_dma_done.__UNIQUE_ID_ddebug301, ptr noundef %2, ptr noundef nonnull @.str.3) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then, %lor.lhs.false.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_ccdc_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_pcr_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_pipeline_set_stream(ptr noundef %pipe, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @isp_pipeline_disable(ptr noundef %pipe)
  br label %if.then4

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @isp_pipeline_enable(ptr noundef %pipe, i32 noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.if.then4_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.thread
  %ret.016 = phi i32 [ %call, %if.end.thread ], [ 0, %if.end.if.then4_crit_edge ]
  %stream_state = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %state, ptr %stream_state, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %ret.015 = phi i32 [ %call1, %if.end.if.end5_crit_edge ], [ %ret.016, %if.then4 ]
  ret i32 %ret.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_pipeline_disable(ptr nocapture noundef readonly %pipe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %pads259 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pads259 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pads259, align 4
  %flags260 = getelementptr inbounds %struct.media_pad, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags260 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags260, align 4
  %and261 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool.not262 = icmp eq i32 %and261, 0
  br i1 %tobool.not262, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %isp1 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp1, align 4
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 26
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 22
  %tobool15.not = icmp eq ptr %isp_aewb, null
  %ops = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 22, i32 0, i32 6
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 21
  %tobool43.not = icmp eq ptr %isp_af, null
  %ops46 = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 21, i32 0, i32 6
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 23
  %tobool75.not = icmp eq ptr %isp_hist, null
  %ops78 = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 23, i32 0, i32 6
  %dev136 = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 3
  %isp_res = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 24
  %isp_prev = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 25
  %stop_failure = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 14
  %idx_max.i = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 15, i32 1
  %crashed = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 15
  %internal_idx.i = getelementptr inbounds %struct.isp_device, ptr %7, i32 0, i32 25, i32 0, i32 0, i32 8
  br label %if.end

if.end:                                           ; preds = %if.end169.if.end_crit_edge, %if.end.lr.ph
  %8 = phi ptr [ %3, %if.end.lr.ph ], [ %72, %if.end169.if.end_crit_edge ]
  %failure.0263 = phi i32 [ 0, %if.end.lr.ph ], [ %failure.1, %if.end169.if.end_crit_edge ]
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %8) #10
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.while.end_crit_edge, label %lor.lhs.false

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %entity5 = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %entity5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity5, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.lhs.false.while.end_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.end8, label %is_media_entity_v4l2_subdev.exit.while.end_crit_edge

is_media_entity_v4l2_subdev.exit.while.end_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end8:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %cmp = icmp eq ptr %10, %isp_ccdc
  br i1 %cmp, label %if.then13, label %if.end8.if.else109_crit_edge

if.end8.if.else109_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else109

if.then13:                                        ; preds = %if.end8
  br i1 %tobool15.not, label %if.then13.if.end38_crit_edge, label %if.else

if.then13.if.end38_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else:                                          ; preds = %if.then13
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %video17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video17, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.else.if.end38_crit_edge, label %land.lhs.true

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_stream, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %land.lhs.true.if.end38_crit_edge, label %if.else23

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %if.else23.if.else31_crit_edge, label %land.lhs.true25

if.else23.if.else31_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else23
  %s_stream26 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %s_stream26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_stream26, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end38.sink.split_crit_edge

land.lhs.true25.if.end38.sink.split_crit_edge:    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.sink.split

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else23.if.else31_crit_edge
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.else31, %land.lhs.true25.if.end38.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.else31 ], [ %21, %land.lhs.true25.if.end38.sink.split_crit_edge ]
  %call35 = tail call i32 %.sink(ptr noundef nonnull %isp_aewb, i32 noundef 0) #10
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %land.lhs.true.if.end38_crit_edge, %if.else.if.end38_crit_edge, %if.then13.if.end38_crit_edge
  br i1 %tobool43.not, label %if.end38.if.end70_crit_edge, label %if.else45

if.end38.if.end70_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else45:                                        ; preds = %if.end38
  %22 = ptrtoint ptr %ops46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops46, align 4
  %video47 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %video47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %video47, align 4
  %tobool48.not = icmp eq ptr %25, null
  br i1 %tobool48.not, label %if.else45.if.end70_crit_edge, label %land.lhs.true49

if.else45.if.end70_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

land.lhs.true49:                                  ; preds = %if.else45
  %s_stream52 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %s_stream52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_stream52, align 4
  %tobool53.not = icmp eq ptr %27, null
  br i1 %tobool53.not, label %land.lhs.true49.if.end70_crit_edge, label %if.else55

land.lhs.true49.if.end70_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else55:                                        ; preds = %land.lhs.true49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool56.not = icmp eq ptr %28, null
  br i1 %tobool56.not, label %if.else55.if.else63_crit_edge, label %land.lhs.true57

if.else55.if.else63_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else63

land.lhs.true57:                                  ; preds = %if.else55
  %s_stream58 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %s_stream58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_stream58, align 4
  %tobool59.not = icmp eq ptr %30, null
  br i1 %tobool59.not, label %land.lhs.true57.if.else63_crit_edge, label %land.lhs.true57.if.end70.sink.split_crit_edge

land.lhs.true57.if.end70.sink.split_crit_edge:    ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.sink.split

land.lhs.true57.if.else63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else63

if.else63:                                        ; preds = %land.lhs.true57.if.else63_crit_edge, %if.else55.if.else63_crit_edge
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.else63, %land.lhs.true57.if.end70.sink.split_crit_edge
  %.sink268 = phi ptr [ %27, %if.else63 ], [ %30, %land.lhs.true57.if.end70.sink.split_crit_edge ]
  %call67 = tail call i32 %.sink268(ptr noundef nonnull %isp_af, i32 noundef 0) #10
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %land.lhs.true49.if.end70_crit_edge, %if.else45.if.end70_crit_edge, %if.end38.if.end70_crit_edge
  br i1 %tobool75.not, label %if.end70.if.else109_crit_edge, label %if.else77

if.end70.if.else109_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else109

if.else77:                                        ; preds = %if.end70
  %31 = ptrtoint ptr %ops78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops78, align 4
  %video79 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video79, align 4
  %tobool80.not = icmp eq ptr %34, null
  br i1 %tobool80.not, label %if.else77.if.else109_crit_edge, label %land.lhs.true81

if.else77.if.else109_crit_edge:                   ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else109

land.lhs.true81:                                  ; preds = %if.else77
  %s_stream84 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_stream84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_stream84, align 4
  %tobool85.not = icmp eq ptr %36, null
  br i1 %tobool85.not, label %land.lhs.true81.if.else109_crit_edge, label %if.else87

land.lhs.true81.if.else109_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else109

if.else87:                                        ; preds = %land.lhs.true81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool88.not = icmp eq ptr %37, null
  br i1 %tobool88.not, label %if.else87.if.else95_crit_edge, label %land.lhs.true89

if.else87.if.else95_crit_edge:                    ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else95

land.lhs.true89:                                  ; preds = %if.else87
  %s_stream90 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %s_stream90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_stream90, align 4
  %tobool91.not = icmp eq ptr %39, null
  br i1 %tobool91.not, label %land.lhs.true89.if.else95_crit_edge, label %land.lhs.true89.if.else109.sink.split_crit_edge

land.lhs.true89.if.else109.sink.split_crit_edge:  ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else109.sink.split

land.lhs.true89.if.else95_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else95

if.else95:                                        ; preds = %land.lhs.true89.if.else95_crit_edge, %if.else87.if.else95_crit_edge
  br label %if.else109.sink.split

if.else109.sink.split:                            ; preds = %if.else95, %land.lhs.true89.if.else109.sink.split_crit_edge
  %.sink269 = phi ptr [ %36, %if.else95 ], [ %39, %land.lhs.true89.if.else109.sink.split_crit_edge ]
  %call99 = tail call i32 %.sink269(ptr noundef nonnull %isp_hist, i32 noundef 0) #10
  br label %if.else109

if.else109:                                       ; preds = %if.else109.sink.split, %land.lhs.true81.if.else109_crit_edge, %if.else77.if.else109_crit_edge, %if.end70.if.else109_crit_edge, %if.end8.if.else109_crit_edge
  %ops110 = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %40 = ptrtoint ptr %ops110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops110, align 4
  %video111 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %video111 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %video111, align 4
  %tobool112.not = icmp eq ptr %43, null
  br i1 %tobool112.not, label %if.else109.if.end134_crit_edge, label %land.lhs.true113

if.else109.if.end134_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.lhs.true113:                                 ; preds = %if.else109
  %s_stream116 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %s_stream116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_stream116, align 4
  %tobool117.not = icmp eq ptr %45, null
  br i1 %tobool117.not, label %land.lhs.true113.if.end134_crit_edge, label %if.else119

land.lhs.true113.if.end134_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.else119:                                       ; preds = %land.lhs.true113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool120.not = icmp eq ptr %46, null
  br i1 %tobool120.not, label %if.else119.if.else127_crit_edge, label %land.lhs.true121

if.else119.if.else127_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else127

land.lhs.true121:                                 ; preds = %if.else119
  %s_stream122 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %s_stream122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_stream122, align 4
  %tobool123.not = icmp eq ptr %48, null
  br i1 %tobool123.not, label %land.lhs.true121.if.else127_crit_edge, label %land.lhs.true121.if.end134.sink.split_crit_edge

land.lhs.true121.if.end134.sink.split_crit_edge:  ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.sink.split

land.lhs.true121.if.else127_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else127

if.else127:                                       ; preds = %land.lhs.true121.if.else127_crit_edge, %if.else119.if.else127_crit_edge
  br label %if.end134.sink.split

if.end134.sink.split:                             ; preds = %if.else127, %land.lhs.true121.if.end134.sink.split_crit_edge
  %.sink270 = phi ptr [ %45, %if.else127 ], [ %48, %land.lhs.true121.if.end134.sink.split_crit_edge ]
  %call131 = tail call i32 %.sink270(ptr noundef nonnull %10, i32 noundef 0) #10
  br label %if.end134

if.end134:                                        ; preds = %if.end134.sink.split, %land.lhs.true113.if.end134_crit_edge, %if.else109.if.end134_crit_edge
  %__result106.0 = phi i32 [ -515, %land.lhs.true113.if.end134_crit_edge ], [ -515, %if.else109.if.end134_crit_edge ], [ %call131, %if.end134.sink.split ]
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 14
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %dev136 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev136, align 8
  %cmp137.not = icmp eq ptr %50, %52
  br i1 %cmp137.not, label %if.end139, label %if.end134.while.end_crit_edge

if.end134.while.end_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end139:                                        ; preds = %if.end134
  %cmp141 = icmp eq ptr %10, %isp_res
  br i1 %cmp141, label %if.then142, label %if.else144

if.then142:                                       ; preds = %if.end139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %53, 100
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i234 = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i234, label %while.body.i, label %while.cond.i.isp_pipeline_wait.exit_crit_edge

while.cond.i.isp_pipeline_wait.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait.exit

while.body.i:                                     ; preds = %while.cond.i
  %call.i = tail call i32 @omap3isp_resizer_busy(ptr noundef %isp_res) #10
  %tobool.not.i235 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i235, label %while.body.i.isp_pipeline_wait.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.isp_pipeline_wait.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait.exit

isp_pipeline_wait.exit:                           ; preds = %while.body.i.isp_pipeline_wait.exit_crit_edge, %while.cond.i.isp_pipeline_wait.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.body.i.isp_pipeline_wait.exit_crit_edge ], [ 1, %while.cond.i.isp_pipeline_wait.exit_crit_edge ]
  %or = or i32 %retval.0.i, %__result106.0
  br label %if.end159

if.else144:                                       ; preds = %if.end139
  %cmp146 = icmp eq ptr %10, %isp_prev
  br i1 %cmp146, label %if.then147, label %if.else150

if.then147:                                       ; preds = %if.else144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.i236 = add i32 %55, 100
  br label %while.cond.i239

while.cond.i239:                                  ; preds = %while.body.i242.while.cond.i239_crit_edge, %if.then147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub.i237 = sub i32 %add.i236, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i237)
  %cmp.i238 = icmp sgt i32 %sub.i237, -1
  br i1 %cmp.i238, label %while.body.i242, label %while.cond.i239.isp_pipeline_wait.exit244_crit_edge

while.cond.i239.isp_pipeline_wait.exit244_crit_edge: ; preds = %while.cond.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait.exit244

while.body.i242:                                  ; preds = %while.cond.i239
  %call.i254 = tail call i32 @omap3isp_preview_busy(ptr noundef %isp_prev) #10
  %tobool.not.i241 = icmp eq i32 %call.i254, 0
  br i1 %tobool.not.i241, label %while.body.i242.isp_pipeline_wait.exit244_crit_edge, label %while.body.i242.while.cond.i239_crit_edge

while.body.i242.while.cond.i239_crit_edge:        ; preds = %while.body.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i239

while.body.i242.isp_pipeline_wait.exit244_crit_edge: ; preds = %while.body.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait.exit244

isp_pipeline_wait.exit244:                        ; preds = %while.body.i242.isp_pipeline_wait.exit244_crit_edge, %while.cond.i239.isp_pipeline_wait.exit244_crit_edge
  %retval.0.i243 = phi i32 [ 0, %while.body.i242.isp_pipeline_wait.exit244_crit_edge ], [ 1, %while.cond.i239.isp_pipeline_wait.exit244_crit_edge ]
  %or149 = or i32 %retval.0.i243, %__result106.0
  br label %if.end159

if.else150:                                       ; preds = %if.else144
  br i1 %cmp, label %if.then154, label %if.else150.if.end159_crit_edge

if.else150.if.end159_crit_edge:                   ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then154:                                       ; preds = %if.else150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %add.i245 = add i32 %57, 100
  br label %while.cond.i248

while.cond.i248:                                  ; preds = %isp_pipeline_wait_ccdc.exit.while.cond.i248_crit_edge, %if.then154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub.i246 = sub i32 %add.i245, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i246)
  %cmp.i247 = icmp sgt i32 %sub.i246, -1
  br i1 %cmp.i247, label %while.body.i251, label %while.cond.i248.isp_pipeline_wait.exit253_crit_edge

while.cond.i248.isp_pipeline_wait.exit253_crit_edge: ; preds = %while.cond.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait.exit253

while.body.i251:                                  ; preds = %while.cond.i248
  %call.i255 = tail call i32 @omap3isp_stat_busy(ptr noundef %isp_af) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool.not.i256, label %lor.lhs.false.i, label %while.body.i251.isp_pipeline_wait_ccdc.exit_crit_edge

while.body.i251.isp_pipeline_wait_ccdc.exit_crit_edge: ; preds = %while.body.i251
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait_ccdc.exit

lor.lhs.false.i:                                  ; preds = %while.body.i251
  %call1.i = tail call i32 @omap3isp_stat_busy(ptr noundef %isp_aewb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.isp_pipeline_wait_ccdc.exit_crit_edge

lor.lhs.false.i.isp_pipeline_wait_ccdc.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait_ccdc.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @omap3isp_stat_busy(ptr noundef %isp_hist) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.rhs.i, label %lor.lhs.false3.i.isp_pipeline_wait_ccdc.exit_crit_edge

lor.lhs.false3.i.isp_pipeline_wait_ccdc.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait_ccdc.exit

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @omap3isp_ccdc_busy(ptr noundef %isp_ccdc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.i = icmp ne i32 %call6.i, 0
  %phi.cast.i = zext i1 %tobool7.i to i32
  br label %isp_pipeline_wait_ccdc.exit

isp_pipeline_wait_ccdc.exit:                      ; preds = %lor.rhs.i, %lor.lhs.false3.i.isp_pipeline_wait_ccdc.exit_crit_edge, %lor.lhs.false.i.isp_pipeline_wait_ccdc.exit_crit_edge, %while.body.i251.isp_pipeline_wait_ccdc.exit_crit_edge
  %59 = phi i32 [ 1, %lor.lhs.false3.i.isp_pipeline_wait_ccdc.exit_crit_edge ], [ 1, %lor.lhs.false.i.isp_pipeline_wait_ccdc.exit_crit_edge ], [ 1, %while.body.i251.isp_pipeline_wait_ccdc.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  %tobool.not.i250 = icmp eq i32 %59, 0
  br i1 %tobool.not.i250, label %isp_pipeline_wait_ccdc.exit.isp_pipeline_wait.exit253_crit_edge, label %isp_pipeline_wait_ccdc.exit.while.cond.i248_crit_edge

isp_pipeline_wait_ccdc.exit.while.cond.i248_crit_edge: ; preds = %isp_pipeline_wait_ccdc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i248

isp_pipeline_wait_ccdc.exit.isp_pipeline_wait.exit253_crit_edge: ; preds = %isp_pipeline_wait_ccdc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_wait.exit253

isp_pipeline_wait.exit253:                        ; preds = %isp_pipeline_wait_ccdc.exit.isp_pipeline_wait.exit253_crit_edge, %while.cond.i248.isp_pipeline_wait.exit253_crit_edge
  %retval.0.i252 = phi i32 [ 0, %isp_pipeline_wait_ccdc.exit.isp_pipeline_wait.exit253_crit_edge ], [ 1, %while.cond.i248.isp_pipeline_wait.exit253_crit_edge ]
  %or156 = or i32 %retval.0.i252, %__result106.0
  br label %if.end159

if.end159:                                        ; preds = %isp_pipeline_wait.exit253, %if.else150.if.end159_crit_edge, %isp_pipeline_wait.exit244, %isp_pipeline_wait.exit
  %ret.0 = phi i32 [ %or, %isp_pipeline_wait.exit ], [ %or149, %isp_pipeline_wait.exit244 ], [ %or156, %isp_pipeline_wait.exit253 ], [ %__result106.0, %if.else150.if.end159_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool160.not = icmp eq i32 %ret.0, 0
  br i1 %tobool160.not, label %if.end159.if.end169_crit_edge, label %do.end

if.end159.if.end169_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

do.end:                                           ; preds = %if.end159
  %60 = ptrtoint ptr %dev136 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev136, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.26, ptr noundef %name) #13
  %62 = ptrtoint ptr %stop_failure to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %stop_failure, align 8
  %cmp165 = icmp eq ptr %10, %isp_prev
  br i1 %cmp165, label %if.then166, label %do.end.if.end169_crit_edge

do.end.if.end169_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then166:                                       ; preds = %do.end
  %63 = ptrtoint ptr %internal_idx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %internal_idx.i, align 4
  %65 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %idx_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.not.i = icmp slt i32 %64, %66
  br i1 %cmp.not.i, label %if.end21.critedge.i, label %do.end.i, !prof !323

do.end.i:                                         ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end169

if.end21.critedge.i:                              ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %crashed, align 4
  %rem.i.i = and i32 %64, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %64, 5
  %add.ptr.i.i = getelementptr i32, ptr %68, i32 %div2.i.i
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %70, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.end21.critedge.i, %do.end.i, %do.end.if.end169_crit_edge, %if.end159.if.end169_crit_edge
  %failure.1 = phi i32 [ %failure.0263, %if.end159.if.end169_crit_edge ], [ -110, %do.end.if.end169_crit_edge ], [ -110, %do.end.i ], [ -110, %if.end21.critedge.i ]
  %pads = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 9
  %71 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pads, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags, align 4
  %and = and i32 %74, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end169.while.end_crit_edge, label %if.end169.if.end_crit_edge

if.end169.if.end_crit_edge:                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end169.while.end_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end169.while.end_crit_edge, %if.end134.while.end_crit_edge, %is_media_entity_v4l2_subdev.exit.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %failure.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %failure.1, %if.end169.while.end_crit_edge ], [ %failure.0263, %is_media_entity_v4l2_subdev.exit.while.end_crit_edge ], [ %failure.0263, %if.end.while.end_crit_edge ], [ %failure.0263, %if.end134.while.end_crit_edge ], [ %failure.0263, %lor.lhs.false.while.end_crit_edge ]
  ret i32 %failure.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_pipeline_enable(ptr noundef %pipe, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %isp1 = getelementptr inbounds %struct.isp_video, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp1, align 4
  %ent_enum = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 6
  %crashed = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 15
  %idx_max.i = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx_max.i, align 4
  %idx_max1.i = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %idx_max1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx_max1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp eq i32 %5, %7
  br i1 %cmp.not.i, label %entry.if.else.i.i_crit_edge, label %do.end.i, !prof !323

entry.if.else.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 550, i32 noundef 9, ptr noundef null) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %do.end.i, %entry.if.else.i.i_crit_edge
  %8 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx_max.i, align 4
  %10 = ptrtoint ptr %idx_max1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx_max1.i, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 %11) #10
  %13 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crashed, align 4
  %15 = ptrtoint ptr %ent_enum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ent_enum, align 4
  %call.i.i = tail call i32 @__bitmap_intersects(ptr noundef %16, ptr noundef %14, i32 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.i.not, label %do.body2, label %if.else.i.i.cleanup_crit_edge

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i
  %lock = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 2
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %and = and i32 %18, -49
  store i32 %and, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %do_propagation = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 11
  %19 = ptrtoint ptr %do_propagation to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %do_propagation, align 4
  %graph_mutex = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 2, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #10
  %20 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %output, align 4
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 26
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 22
  %tobool65.not = icmp eq ptr %isp_aewb, null
  %ops68 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 22, i32 0, i32 6
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 21
  %tobool97.not = icmp eq ptr %isp_af, null
  %ops100 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 21, i32 0, i32 6
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 23
  %tobool129.not = icmp eq ptr %isp_hist, null
  %ops132 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 23, i32 0, i32 6
  %dev160 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end159.while.cond_crit_edge, %do.body2
  %entity.0 = phi ptr [ %21, %do.body2 ], [ %27, %if.end159.while.cond_crit_edge ]
  %pads = getelementptr inbounds %struct.media_entity, ptr %entity.0, i32 0, i32 9
  %22 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pads, align 4
  %flags10 = getelementptr inbounds %struct.media_pad, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags10, align 4
  %and11 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %while.cond.cleanup.sink.split_crit_edge, label %if.end13

while.cond.cleanup.sink.split_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end13:                                         ; preds = %while.cond
  %call14 = tail call ptr @media_entity_remote_pad(ptr noundef %23) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end13
  %entity16 = getelementptr inbounds %struct.media_pad, ptr %call14, i32 0, i32 1
  %26 = ptrtoint ptr %entity16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entity16, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i = icmp eq i32 %29, 2
  br i1 %cmp.i, label %if.else, label %is_media_entity_v4l2_subdev.exit.cleanup.sink.split_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup.sink.split_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 6
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %video26 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %video26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %video26, align 4
  %tobool27.not = icmp eq ptr %33, null
  br i1 %tobool27.not, label %if.else.if.end57_crit_edge, label %land.lhs.true

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_stream, align 4
  %tobool30.not = icmp eq ptr %35, null
  br i1 %tobool30.not, label %land.lhs.true.if.end57_crit_edge, label %if.else32

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.else32:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool33.not = icmp eq ptr %36, null
  br i1 %tobool33.not, label %if.else32.if.else40_crit_edge, label %land.lhs.true34

if.else32.if.else40_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

land.lhs.true34:                                  ; preds = %if.else32
  %s_stream35 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %s_stream35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_stream35, align 4
  %tobool36.not = icmp eq ptr %38, null
  br i1 %tobool36.not, label %land.lhs.true34.if.else40_crit_edge, label %land.lhs.true34.if.end47_crit_edge

land.lhs.true34.if.end47_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true34.if.else40_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

if.else40:                                        ; preds = %land.lhs.true34.if.else40_crit_edge, %if.else32.if.else40_crit_edge
  br label %if.end47

if.end47:                                         ; preds = %if.else40, %land.lhs.true34.if.end47_crit_edge
  %.sink = phi ptr [ %35, %if.else40 ], [ %38, %land.lhs.true34.if.end47_crit_edge ]
  %call44 = tail call i32 %.sink(ptr noundef nonnull %27, i32 noundef %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44)
  %cmp49 = icmp sgt i32 %call44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call44)
  %cmp52.not = icmp eq i32 %call44, -515
  %or.cond = or i1 %cmp49, %cmp52.not
  br i1 %or.cond, label %if.end47.if.end57_crit_edge, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %if.end47.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.else.if.end57_crit_edge
  %cmp59 = icmp eq ptr %27, %isp_ccdc
  br i1 %cmp59, label %if.then61, label %if.end57.if.end159_crit_edge

if.end57.if.end159_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then61:                                        ; preds = %if.end57
  br i1 %tobool65.not, label %if.then61.if.end92_crit_edge, label %if.else67

if.then61.if.end92_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.else67:                                        ; preds = %if.then61
  %39 = ptrtoint ptr %ops68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops68, align 4
  %video69 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %video69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %video69, align 4
  %tobool70.not = icmp eq ptr %42, null
  br i1 %tobool70.not, label %if.else67.if.end92_crit_edge, label %land.lhs.true71

if.else67.if.end92_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.lhs.true71:                                  ; preds = %if.else67
  %s_stream74 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %s_stream74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_stream74, align 4
  %tobool75.not = icmp eq ptr %44, null
  br i1 %tobool75.not, label %land.lhs.true71.if.end92_crit_edge, label %if.else77

land.lhs.true71.if.end92_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.else77:                                        ; preds = %land.lhs.true71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool78.not = icmp eq ptr %45, null
  br i1 %tobool78.not, label %if.else77.if.else85_crit_edge, label %land.lhs.true79

if.else77.if.else85_crit_edge:                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85

land.lhs.true79:                                  ; preds = %if.else77
  %s_stream80 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %s_stream80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_stream80, align 4
  %tobool81.not = icmp eq ptr %47, null
  br i1 %tobool81.not, label %land.lhs.true79.if.else85_crit_edge, label %land.lhs.true79.if.end92.sink.split_crit_edge

land.lhs.true79.if.end92.sink.split_crit_edge:    ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.sink.split

land.lhs.true79.if.else85_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85

if.else85:                                        ; preds = %land.lhs.true79.if.else85_crit_edge, %if.else77.if.else85_crit_edge
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %if.else85, %land.lhs.true79.if.end92.sink.split_crit_edge
  %.sink240 = phi ptr [ %44, %if.else85 ], [ %47, %land.lhs.true79.if.end92.sink.split_crit_edge ]
  %call89 = tail call i32 %.sink240(ptr noundef nonnull %isp_aewb, i32 noundef %mode) #10
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %land.lhs.true71.if.end92_crit_edge, %if.else67.if.end92_crit_edge, %if.then61.if.end92_crit_edge
  br i1 %tobool97.not, label %if.end92.if.end124_crit_edge, label %if.else99

if.end92.if.end124_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.else99:                                        ; preds = %if.end92
  %48 = ptrtoint ptr %ops100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops100, align 4
  %video101 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %video101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %video101, align 4
  %tobool102.not = icmp eq ptr %51, null
  br i1 %tobool102.not, label %if.else99.if.end124_crit_edge, label %land.lhs.true103

if.else99.if.end124_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

land.lhs.true103:                                 ; preds = %if.else99
  %s_stream106 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %s_stream106 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_stream106, align 4
  %tobool107.not = icmp eq ptr %53, null
  br i1 %tobool107.not, label %land.lhs.true103.if.end124_crit_edge, label %if.else109

land.lhs.true103.if.end124_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.else109:                                       ; preds = %land.lhs.true103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool110.not = icmp eq ptr %54, null
  br i1 %tobool110.not, label %if.else109.if.else117_crit_edge, label %land.lhs.true111

if.else109.if.else117_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else117

land.lhs.true111:                                 ; preds = %if.else109
  %s_stream112 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %s_stream112 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_stream112, align 4
  %tobool113.not = icmp eq ptr %56, null
  br i1 %tobool113.not, label %land.lhs.true111.if.else117_crit_edge, label %land.lhs.true111.if.end124.sink.split_crit_edge

land.lhs.true111.if.end124.sink.split_crit_edge:  ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.sink.split

land.lhs.true111.if.else117_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else117

if.else117:                                       ; preds = %land.lhs.true111.if.else117_crit_edge, %if.else109.if.else117_crit_edge
  br label %if.end124.sink.split

if.end124.sink.split:                             ; preds = %if.else117, %land.lhs.true111.if.end124.sink.split_crit_edge
  %.sink241 = phi ptr [ %53, %if.else117 ], [ %56, %land.lhs.true111.if.end124.sink.split_crit_edge ]
  %call121 = tail call i32 %.sink241(ptr noundef nonnull %isp_af, i32 noundef %mode) #10
  br label %if.end124

if.end124:                                        ; preds = %if.end124.sink.split, %land.lhs.true103.if.end124_crit_edge, %if.else99.if.end124_crit_edge, %if.end92.if.end124_crit_edge
  br i1 %tobool129.not, label %if.end124.if.end156_crit_edge, label %if.else131

if.end124.if.end156_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.else131:                                       ; preds = %if.end124
  %57 = ptrtoint ptr %ops132 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops132, align 4
  %video133 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %video133 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %video133, align 4
  %tobool134.not = icmp eq ptr %60, null
  br i1 %tobool134.not, label %if.else131.if.end156_crit_edge, label %land.lhs.true135

if.else131.if.end156_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

land.lhs.true135:                                 ; preds = %if.else131
  %s_stream138 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %s_stream138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_stream138, align 4
  %tobool139.not = icmp eq ptr %62, null
  br i1 %tobool139.not, label %land.lhs.true135.if.end156_crit_edge, label %if.else141

land.lhs.true135.if.end156_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.else141:                                       ; preds = %land.lhs.true135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool142.not = icmp eq ptr %63, null
  br i1 %tobool142.not, label %if.else141.if.else149_crit_edge, label %land.lhs.true143

if.else141.if.else149_crit_edge:                  ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else149

land.lhs.true143:                                 ; preds = %if.else141
  %s_stream144 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %s_stream144 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_stream144, align 4
  %tobool145.not = icmp eq ptr %65, null
  br i1 %tobool145.not, label %land.lhs.true143.if.else149_crit_edge, label %land.lhs.true143.if.end156.sink.split_crit_edge

land.lhs.true143.if.end156.sink.split_crit_edge:  ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156.sink.split

land.lhs.true143.if.else149_crit_edge:            ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else149

if.else149:                                       ; preds = %land.lhs.true143.if.else149_crit_edge, %if.else141.if.else149_crit_edge
  br label %if.end156.sink.split

if.end156.sink.split:                             ; preds = %if.else149, %land.lhs.true143.if.end156.sink.split_crit_edge
  %.sink242 = phi ptr [ %62, %if.else149 ], [ %65, %land.lhs.true143.if.end156.sink.split_crit_edge ]
  %call153 = tail call i32 %.sink242(ptr noundef nonnull %isp_hist, i32 noundef %mode) #10
  br label %if.end156

if.end156:                                        ; preds = %if.end156.sink.split, %land.lhs.true135.if.end156_crit_edge, %if.else131.if.end156_crit_edge, %if.end124.if.end156_crit_edge
  %66 = ptrtoint ptr %do_propagation to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %do_propagation, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.end156, %if.end57.if.end159_crit_edge
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 14
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %69 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev160, align 8
  %cmp161.not = icmp eq ptr %68, %70
  br i1 %cmp161.not, label %if.end159.while.cond_crit_edge, label %if.end159.cleanup.sink.split_crit_edge

if.end159.cleanup.sink.split_crit_edge:           ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end159.while.cond_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup.sink.split:                               ; preds = %if.end159.cleanup.sink.split_crit_edge, %if.end47.cleanup.sink.split_crit_edge, %is_media_entity_v4l2_subdev.exit.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %while.cond.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call44, %if.end47.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 0, %if.end159.cleanup.sink.split_crit_edge ], [ 0, %if.end13.cleanup.sink.split_crit_edge ], [ 0, %is_media_entity_v4l2_subdev.exit.cleanup.sink.split_crit_edge ], [ 0, %while.cond.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.else.i.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_pipeline_cancel_stream(ptr nocapture noundef readonly %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 4
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap3isp_video_cancel_stream(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %output = getelementptr inbounds %struct.isp_pipeline, ptr %pipe, i32 0, i32 5
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap3isp_video_cancel_stream(ptr noundef nonnull %3) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_cancel_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_sbl_enable(ptr nocapture noundef %isp, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sbl_resources = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 32
  %0 = ptrtoint ptr %sbl_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sbl_resources, align 8
  %or = or i32 %1, %res
  store i32 %or, ptr %sbl_resources, align 8
  %and = shl i32 %or, 27
  %2 = and i32 %and, 134217728
  %and4 = shl i32 %or, 24
  %3 = and i32 %and4, 268435456
  %4 = or i32 %3, %2
  %and10 = shl i32 %or, 23
  %5 = and i32 %and10, 67108864
  %6 = or i32 %4, %5
  %and16 = shl i32 %or, 11
  %7 = and i32 %and16, 1048576
  %8 = or i32 %6, %7
  %and22 = and i32 %or, 174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or25 = or i32 %8, 524288
  %sbl.4 = select i1 %tobool23.not, i32 %8, i32 %or25
  %and28 = and i32 %or, 337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or31 = or i32 %sbl.4, 262144
  %sbl.5 = select i1 %tobool29.not, i32 %sbl.4, i32 %or31
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !321
  %or.i = or i32 %sbl.5, %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #10, !srcloc !320
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_sbl_disable(ptr nocapture noundef %isp, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i32 %res, -1
  %sbl_resources = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 32
  %0 = ptrtoint ptr %sbl_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sbl_resources, align 8
  %and = and i32 %1, %neg
  store i32 %and, ptr %sbl_resources, align 8
  %and2 = shl i32 %and, 27
  %2 = and i32 %and2, 134217728
  %and4 = shl i32 %and, 24
  %3 = and i32 %and4, 268435456
  %4 = or i32 %2, %3
  %and10 = shl i32 %and, 23
  %5 = and i32 %and10, 67108864
  %6 = or i32 %4, %5
  %and16 = shl i32 %and, 11
  %7 = and i32 %and16, 1048576
  %8 = or i32 %6, %7
  %9 = xor i32 %8, 470810624
  %and22 = and i32 %and, 174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or25 = or i32 %9, 524288
  %sbl.4 = select i1 %tobool23.not, i32 %or25, i32 %9
  %and28 = and i32 %and, 337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or31 = or i32 %sbl.4, 262144
  %sbl.5 = select i1 %tobool29.not, i32 %or31, i32 %sbl.4
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !321
  %neg.i = xor i32 %sbl.5, -1
  %and.i = and i32 %12, %neg.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %and.i) #10, !srcloc !320
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_module_sync_idle(ptr noundef readonly %me, ptr noundef %wait, ptr noundef %stopping) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %me, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %stream_state = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stream_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 0, label %entry.cleanup96_crit_edge
    i32 2, label %land.lhs.true
  ]

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 63
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup96_crit_edge

land.lhs.true.cleanup96_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #10
  %7 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %stopping, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  %8 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.cleanup96_crit_edge, label %if.end.i

if.end.cleanup96_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

if.end.i:                                         ; preds = %if.end
  %stream_state.i = getelementptr inbounds %struct.isp_pipeline, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %stream_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i123 = icmp eq i32 %11, 0
  br i1 %cmp.i123, label %if.end.i.cleanup96_crit_edge, label %isp_pipeline_is_last.exit

if.end.i.cleanup96_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

isp_pipeline_is_last.exit:                        ; preds = %if.end.i
  %output.i = getelementptr inbounds %struct.isp_pipeline, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %output.i, align 4
  %pad5.i = getelementptr inbounds %struct.isp_video, ptr %13, i32 0, i32 2
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i) #10
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entity.i, align 4
  %cmp6.i.not = icmp eq ptr %15, %me
  br i1 %cmp6.i.not, label %if.then9, label %isp_pipeline_is_last.exit.cleanup96_crit_edge

isp_pipeline_is_last.exit.cleanup96_crit_edge:    ; preds = %isp_pipeline_is_last.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

if.then9:                                         ; preds = %isp_pipeline_is_last.exit
  %output = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %output, align 4
  %irqlock = getelementptr inbounds %struct.isp_video, ptr %17, i32 0, i32 17
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %dmaqueue_flags = getelementptr inbounds %struct.isp_video, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmaqueue_flags, align 8
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call15) #10
  br i1 %tobool20.not, label %if.end29, label %if.then21

if.then21:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i119 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #10
  %20 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %stopping, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !325
  br label %cleanup96

if.end29:                                         ; preds = %if.then9
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1228) #10
  %call.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stopping, i32 noundef 4) #10
  %21 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool39.not = icmp eq i32 %22, 0
  br i1 %tobool39.not, label %if.end29.cleanup96_crit_edge, label %if.then52

if.end29.cleanup96_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

if.then52:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call55135 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i121136 = call zeroext i1 @__kasan_check_read(ptr noundef %stopping, i32 noundef 4) #10
  %24 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool58.not137 = icmp eq i32 %25, 0
  br i1 %tobool58.not137, label %if.end80.thread, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  br label %cleanup

if.end80.thread:                                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup96

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then52.cleanup_crit_edge
  %__ret53.1138 = phi i32 [ %__ret53.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then52.cleanup_crit_edge ]
  %call78 = call i32 @schedule_timeout(i32 noundef %__ret53.1138) #10
  %call55 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i121 = call zeroext i1 @__kasan_check_read(ptr noundef %stopping, i32 noundef 4) #10
  %26 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool58.not = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool64.not = icmp eq i32 %call78, 0
  %28 = select i1 %tobool58.not, i1 %tobool64.not, i1 false
  %__ret53.1 = select i1 %28, i32 1, i32 %call78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret53.1)
  %tobool71.not = icmp eq i32 %__ret53.1, 0
  %29 = select i1 %tobool58.not, i1 true, i1 %tobool71.not
  br i1 %29, label %if.end80, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end80:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret53.1)
  %phi.cmp = icmp eq i32 %__ret53.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %if.then83, label %if.end80.cleanup96_crit_edge

if.end80.cleanup96_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i122 = call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #10
  %30 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %stopping, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !326
  br label %cleanup96

cleanup96:                                        ; preds = %if.then83, %if.end80.cleanup96_crit_edge, %if.end80.thread, %if.end29.cleanup96_crit_edge, %if.then21, %isp_pipeline_is_last.exit.cleanup96_crit_edge, %if.end.i.cleanup96_crit_edge, %if.end.cleanup96_crit_edge, %land.lhs.true.cleanup96_crit_edge, %entry.cleanup96_crit_edge
  %retval.1 = phi i32 [ %3, %entry.cleanup96_crit_edge ], [ 0, %land.lhs.true.cleanup96_crit_edge ], [ -110, %if.then83 ], [ 0, %if.then21 ], [ 0, %isp_pipeline_is_last.exit.cleanup96_crit_edge ], [ 0, %if.end.cleanup96_crit_edge ], [ 0, %if.end.i.cleanup96_crit_edge ], [ 0, %if.end80.cleanup96_crit_edge ], [ 0, %if.end29.cleanup96_crit_edge ], [ 0, %if.end80.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !327
  tail call void @llvm.prefetch.p0(ptr %stopping, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %stopping, ptr %stopping, i32 1, i32 0, ptr elementtype(i32) %stopping) #10, !srcloc !328
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %atomic_cmpxchg.exit.return_crit_edge, label %if.then

atomic_cmpxchg.exit.return_crit_edge:             ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %return

return:                                           ; preds = %if.then, %atomic_cmpxchg.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %atomic_cmpxchg.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_subclk_enable(ptr nocapture noundef %isp, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subclk_resources = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 33
  %0 = ptrtoint ptr %subclk_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subclk_resources, align 4
  %or = or i32 %1, %res
  store i32 %or, ptr %subclk_resources, align 4
  %and.i = and i32 %or, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 1024
  %and2.i = shl i32 %or, 8
  %2 = and i32 %and2.i, 10240
  %3 = or i32 %spec.select.i, %2
  %and14.i = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or17.i = or i32 %3, 65792
  %clk.3.i = select i1 %tobool15.not.i, i32 %3, i32 %or17.i
  %and20.i = and i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %or23.i = or i32 %clk.3.i, 135168
  %clk.4.i = select i1 %tobool21.not.i, i32 %clk.3.i, i32 %or23.i
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !321
  %and.i.i = and i32 %6, -212225
  %or.i.i = or i32 %clk.4.i, %and.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #10, !srcloc !320
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_subclk_disable(ptr nocapture noundef %isp, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i32 %res, -1
  %subclk_resources = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 33
  %0 = ptrtoint ptr %subclk_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subclk_resources, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %subclk_resources, align 4
  %and.i = and i32 %and, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 1024
  %and2.i = shl i32 %and, 8
  %2 = and i32 %and2.i, 10240
  %3 = or i32 %spec.select.i, %2
  %and14.i = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or17.i = or i32 %3, 65792
  %clk.3.i = select i1 %tobool15.not.i, i32 %3, i32 %or17.i
  %and20.i = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %or23.i = or i32 %clk.3.i, 135168
  %clk.4.i = select i1 %tobool21.not.i, i32 %clk.3.i, i32 %or23.i
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !321
  %and.i.i = and i32 %6, -212225
  %or.i.i = or i32 %clk.4.i, %and.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #10, !srcloc !320
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap3isp_get(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__omap3isp_get(ptr noundef %isp, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__omap3isp_get(ptr noundef %isp, i1 noundef zeroext %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %isp, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %isp_mutex = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %isp_mutex, i32 noundef 0) #10
  %ref_count = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 17
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.end.if.then13_crit_edge, label %if.end3

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc i32 @isp_enable_clocks(ptr noundef nonnull %isp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.if.end15_crit_edge, label %if.end6

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end6:                                          ; preds = %if.end3
  %has_context = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 16
  %2 = ptrtoint ptr %has_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end6.if.end8_crit_edge, label %if.then7

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.isp_reg], ptr @isp_reg_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not1.i.i = icmp eq i32 %4, -1
  br i1 %cmp.not1.i.i, label %if.then7.isp_restore_ctx.exit_crit_edge, label %if.then7.for.body.i.i_crit_edge

if.then7.for.body.i.i_crit_edge:                  ; preds = %if.then7
  br label %for.body.i.i

if.then7.isp_restore_ctx.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_restore_ctx.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then7.for.body.i.i_crit_edge
  %5 = phi i32 [ %13, %for.body.i.i.for.body.i.i_crit_edge ], [ %4, %if.then7.for.body.i.i_crit_edge ]
  %next.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ @isp_reg_list, %if.then7.for.body.i.i_crit_edge ]
  %val.i.i = getelementptr inbounds %struct.isp_reg, ptr %next.02.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i.i, align 4
  %8 = ptrtoint ptr %next.02.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next.02.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %7) #10, !srcloc !320
  %incdec.ptr.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1
  %reg.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %13, -1
  br i1 %cmp.not.i.i, label %for.body.i.i.isp_restore_ctx.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.isp_restore_ctx.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_restore_ctx.exit

isp_restore_ctx.exit:                             ; preds = %for.body.i.i.isp_restore_ctx.exit_crit_edge, %if.then7.isp_restore_ctx.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call void @omap_iommu_restore_ctx(ptr noundef %15) #10
  tail call void @omap3isp_ccdc_restore_context(ptr noundef nonnull %isp) #10
  tail call void @omap3isp_preview_restore_context(ptr noundef nonnull %isp) #10
  br label %if.end8

if.end8:                                          ; preds = %isp_restore_ctx.exit, %if.end6.if.end8_crit_edge
  br i1 %irq, label %if.then10, label %if.end8.if.then13_crit_edge

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2128923655) #10, !srcloc !320
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -2128923655) #10, !srcloc !320
  br label %if.then13

if.then13:                                        ; preds = %if.then10, %if.end8.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %20 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref_count, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %ref_count, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end3.if.end15_crit_edge
  %__isp.029 = phi ptr [ %isp, %if.then13 ], [ null, %if.end3.if.end15_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %isp_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %__isp.029, %if.end15 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_put(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__omap3isp_put(ptr noundef %isp, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__omap3isp_put(ptr noundef %isp, i1 noundef zeroext %save_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %isp, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %isp_mutex = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %isp_mutex, i32 noundef 0) #10
  %ref_count = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 17
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %do.body4, label %do.end8, !prof !330

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/omap3isp/isp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1453, 0\0A.popsection", ""() #10, !srcloc !331
  unreachable

do.end8:                                          ; preds = %if.end
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %if.then11, label %do.end8.if.end19_crit_edge

do.end8.if.end19_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then11:                                        ; preds = %do.end8
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !320
  br i1 %save_ctx, label %if.then13, label %if.then11.if.end14_crit_edge

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.then11
  %5 = load i32, ptr getelementptr inbounds ([4 x %struct.isp_reg], ptr @isp_reg_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not1.i.i = icmp eq i32 %5, -1
  br i1 %cmp.not1.i.i, label %if.then13.isp_save_ctx.exit_crit_edge, label %if.then13.for.body.i.i_crit_edge

if.then13.for.body.i.i_crit_edge:                 ; preds = %if.then13
  br label %for.body.i.i

if.then13.isp_save_ctx.exit_crit_edge:            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_save_ctx.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then13.for.body.i.i_crit_edge
  %6 = phi i32 [ %14, %for.body.i.i.for.body.i.i_crit_edge ], [ %5, %if.then13.for.body.i.i_crit_edge ]
  %next.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ @isp_reg_list, %if.then13.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %next.02.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next.02.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !321
  %val.i.i = getelementptr inbounds %struct.isp_reg, ptr %next.02.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1
  %reg.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1, i32 1
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %14, -1
  br i1 %cmp.not.i.i, label %for.body.i.i.isp_save_ctx.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.isp_save_ctx.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_save_ctx.exit

isp_save_ctx.exit:                                ; preds = %for.body.i.i.isp_save_ctx.exit_crit_edge, %if.then13.isp_save_ctx.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void @omap_iommu_save_ctx(ptr noundef %16) #10
  %has_context = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 16
  %17 = ptrtoint ptr %has_context to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %has_context, align 4
  br label %if.end14

if.end14:                                         ; preds = %isp_save_ctx.exit, %if.then11.if.end14_crit_edge
  %crashed = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 15
  %idx_max.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx_max.i, align 4
  %20 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crashed, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %21, i32 noundef %19) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %19)
  %cmp4.i.i = icmp eq i32 %call.i.i, %19
  br i1 %cmp4.i.i, label %lor.lhs.false, label %if.end14.if.then16_crit_edge

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end14
  %stop_failure = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 14
  %22 = ptrtoint ptr %stop_failure to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stop_failure, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end14.if.then16_crit_edge
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #10, !srcloc !321
  %or.i = or i32 %26, 2
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %or.i) #10, !srcloc !320
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i1011.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1011.i) #10, !srcloc !321
  %and12.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not13.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not13.i, label %if.then16.while.body.i_crit_edge, label %if.then16.while.end.i_crit_edge

if.then16.while.end.i_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.then16.while.body.i_crit_edge:                 ; preds = %if.then16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then16.while.body.i_crit_edge
  %timeout.014.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.then16.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %timeout.014.i)
  %exitcond.i = icmp eq i32 %timeout.014.i, 10001
  br i1 %exitcond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i34 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %32 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i34, align 8
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %33, ptr noundef nonnull @.str.47) #13
  br label %if.end18

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %timeout.014.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #10
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #10, !srcloc !321
  %and.i = and i32 %37, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.then16.while.end.i_crit_edge
  %stop_failure.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 14
  %38 = ptrtoint ptr %stop_failure.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %stop_failure.i, align 8
  %39 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %crashed, align 4
  %41 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx_max.i, align 4
  %sub.i.i.i = add i32 %42, 31
  %43 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %43, 536870908
  %44 = call ptr @memset(ptr %40, i32 0, i32 %mul.i.i.i)
  br label %if.end18

if.end18:                                         ; preds = %while.end.i, %do.end.i, %lor.lhs.false.if.end18_crit_edge
  %clock.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 19
  %45 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clock.i, align 8
  tail call void @clk_disable(ptr noundef %46) #10
  tail call void @clk_unprepare(ptr noundef %46) #10
  %arrayidx2.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 1
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @clk_disable(ptr noundef %48) #10
  tail call void @clk_unprepare(ptr noundef %48) #10
  %arrayidx4.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 2
  %49 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx4.i, align 8
  tail call void @clk_disable(ptr noundef %50) #10
  tail call void @clk_unprepare(ptr noundef %50) #10
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %do.end8.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %isp_mutex) #10
  br label %return

return:                                           ; preds = %if.end19, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_print_status(ptr noundef readonly %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body4)) #10
          to label %if.then [label %do.body4], !srcloc !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.5) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body23)) #10
          to label %if.then18 [label %do.body23], !srcloc !322

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %2 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev19, align 8
  %arrayidx.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %6) #10
  br label %do.body23

do.body23:                                        ; preds = %if.then18, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body42)) #10
          to label %if.then37 [label %do.body42], !srcloc !322

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %7 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev38, align 8
  %arrayidx.i434 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %9 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i434, align 4
  %add.ptr.i435 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i435) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug306, ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %11) #10
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body61)) #10
          to label %if.then56 [label %do.body61], !srcloc !322

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %dev57 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %12 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev57, align 8
  %arrayidx.i436 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %14 = ptrtoint ptr %arrayidx.i436 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i436, align 4
  %add.ptr.i437 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i437) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug307, ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %16) #10
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body80)) #10
          to label %if.then75 [label %do.body80], !srcloc !322

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %dev76 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %17 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev76, align 8
  %arrayidx.i438 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %19 = ptrtoint ptr %arrayidx.i438 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i438, align 4
  %add.ptr.i439 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i439) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug308, ptr noundef %18, ptr noundef nonnull @.str.9, i32 noundef %21) #10
  br label %do.body80

do.body80:                                        ; preds = %if.then75, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body99)) #10
          to label %if.then94 [label %do.body99], !srcloc !322

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %dev95 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %22 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev95, align 8
  %arrayidx.i440 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %24 = ptrtoint ptr %arrayidx.i440 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i440, align 4
  %add.ptr.i441 = getelementptr i8, ptr %25, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i441) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug309, ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %26) #10
  br label %do.body99

do.body99:                                        ; preds = %if.then94, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body118)) #10
          to label %if.then113 [label %do.body118], !srcloc !322

if.then113:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %dev114 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %27 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev114, align 8
  %arrayidx.i442 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %29 = ptrtoint ptr %arrayidx.i442 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i442, align 4
  %add.ptr.i443 = getelementptr i8, ptr %30, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i443) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug310, ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %31) #10
  br label %do.body118

do.body118:                                       ; preds = %if.then113, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body137)) #10
          to label %if.then132 [label %do.body137], !srcloc !322

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #12
  %dev133 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %32 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev133, align 8
  %arrayidx.i444 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %34 = ptrtoint ptr %arrayidx.i444 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i444, align 4
  %add.ptr.i445 = getelementptr i8, ptr %35, i32 64
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i445) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug311, ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %36) #10
  br label %do.body137

do.body137:                                       ; preds = %if.then132, %do.body118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body156)) #10
          to label %if.then151 [label %do.body156], !srcloc !322

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #12
  %dev152 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %37 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev152, align 8
  %arrayidx.i446 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %39 = ptrtoint ptr %arrayidx.i446 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i446, align 4
  %add.ptr.i447 = getelementptr i8, ptr %40, i32 80
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i447) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug312, ptr noundef %38, ptr noundef nonnull @.str.13, i32 noundef %41) #10
  br label %do.body156

do.body156:                                       ; preds = %if.then151, %do.body137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body175)) #10
          to label %if.then170 [label %do.body175], !srcloc !322

if.then170:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #12
  %dev171 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %42 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev171, align 8
  %arrayidx.i448 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %44 = ptrtoint ptr %arrayidx.i448 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i448, align 4
  %add.ptr.i449 = getelementptr i8, ptr %45, i32 84
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i449) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug313, ptr noundef %43, ptr noundef nonnull @.str.14, i32 noundef %46) #10
  br label %do.body175

do.body175:                                       ; preds = %if.then170, %do.body156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body194)) #10
          to label %if.then189 [label %do.body194], !srcloc !322

if.then189:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #12
  %dev190 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %47 = ptrtoint ptr %dev190 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev190, align 8
  %arrayidx.i450 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %49 = ptrtoint ptr %arrayidx.i450 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i450, align 4
  %add.ptr.i451 = getelementptr i8, ptr %50, i32 88
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i451) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug314, ptr noundef %48, ptr noundef nonnull @.str.15, i32 noundef %51) #10
  br label %do.body194

do.body194:                                       ; preds = %if.then189, %do.body175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body213)) #10
          to label %if.then208 [label %do.body213], !srcloc !322

if.then208:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #12
  %dev209 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %52 = ptrtoint ptr %dev209 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev209, align 8
  %arrayidx.i452 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %54 = ptrtoint ptr %arrayidx.i452 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i452, align 4
  %add.ptr.i453 = getelementptr i8, ptr %55, i32 92
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i453) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug315, ptr noundef %53, ptr noundef nonnull @.str.16, i32 noundef %56) #10
  br label %do.body213

do.body213:                                       ; preds = %if.then208, %do.body194
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body232)) #10
          to label %if.then227 [label %do.body232], !srcloc !322

if.then227:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #12
  %dev228 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %57 = ptrtoint ptr %dev228 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev228, align 8
  %arrayidx.i454 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %59 = ptrtoint ptr %arrayidx.i454 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i454, align 4
  %add.ptr.i455 = getelementptr i8, ptr %60, i32 96
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i455) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug316, ptr noundef %58, ptr noundef nonnull @.str.17, i32 noundef %61) #10
  br label %do.body232

do.body232:                                       ; preds = %if.then227, %do.body213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body251)) #10
          to label %if.then246 [label %do.body251], !srcloc !322

if.then246:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #12
  %dev247 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %62 = ptrtoint ptr %dev247 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev247, align 8
  %arrayidx.i456 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %64 = ptrtoint ptr %arrayidx.i456 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i456, align 4
  %add.ptr.i457 = getelementptr i8, ptr %65, i32 100
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i457) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug317, ptr noundef %63, ptr noundef nonnull @.str.18, i32 noundef %66) #10
  br label %do.body251

do.body251:                                       ; preds = %if.then246, %do.body232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body270)) #10
          to label %if.then265 [label %do.body270], !srcloc !322

if.then265:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #12
  %dev266 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %67 = ptrtoint ptr %dev266 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev266, align 8
  %arrayidx.i458 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %69 = ptrtoint ptr %arrayidx.i458 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i458, align 4
  %add.ptr.i459 = getelementptr i8, ptr %70, i32 104
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i459) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug318, ptr noundef %68, ptr noundef nonnull @.str.19, i32 noundef %71) #10
  br label %do.body270

do.body270:                                       ; preds = %if.then265, %do.body251
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body289)) #10
          to label %if.then284 [label %do.body289], !srcloc !322

if.then284:                                       ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #12
  %dev285 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %72 = ptrtoint ptr %dev285 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev285, align 8
  %arrayidx.i460 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %74 = ptrtoint ptr %arrayidx.i460 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i460, align 4
  %add.ptr.i461 = getelementptr i8, ptr %75, i32 108
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i461) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug319, ptr noundef %73, ptr noundef nonnull @.str.20, i32 noundef %76) #10
  br label %do.body289

do.body289:                                       ; preds = %if.then284, %do.body270
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body308)) #10
          to label %if.then303 [label %do.body308], !srcloc !322

if.then303:                                       ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #12
  %dev304 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %77 = ptrtoint ptr %dev304 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev304, align 8
  %arrayidx.i462 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 7
  %79 = ptrtoint ptr %arrayidx.i462 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i462, align 4
  %add.ptr.i463 = getelementptr i8, ptr %80, i32 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i463) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug320, ptr noundef %78, ptr noundef nonnull @.str.21, i32 noundef %81) #10
  br label %do.body308

do.body308:                                       ; preds = %if.then303, %do.body289
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.body327)) #10
          to label %if.then322 [label %do.body327], !srcloc !322

if.then322:                                       ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #12
  %dev323 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %82 = ptrtoint ptr %dev323 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev323, align 8
  %arrayidx.i464 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 7
  %84 = ptrtoint ptr %arrayidx.i464 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i464, align 4
  %add.ptr.i465 = getelementptr i8, ptr %85, i32 248
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i465) #10, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug321, ptr noundef %83, ptr noundef nonnull @.str.22, i32 noundef %86) #10
  br label %do.body327

do.body327:                                       ; preds = %if.then322, %do.body308
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_print_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_print_status, %do.end344)) #10
          to label %if.then341 [label %do.end344], !srcloc !322

if.then341:                                       ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #12
  %dev342 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %87 = ptrtoint ptr %dev342 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev342, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_print_status.__UNIQUE_ID_ddebug322, ptr noundef %88, ptr noundef nonnull @.str.23) #10
  br label %do.end344

do.end344:                                        ; preds = %if.then341, %do.body327
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3isp_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap3isp_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap3isp_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap3isp_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_resizer_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_preview_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_enable_clocks(ptr nocapture noundef readonly %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 19
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %arrayidx2 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef 172800000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev9 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35) #13
  br label %out_clk_enable_mclk

if.end10:                                         ; preds = %if.end
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call.i61 = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i65, label %if.end10.do.end18_crit_edge

if.end10.do.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

if.end.i65:                                       ; preds = %if.end10
  %call1.i63 = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool2.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool2.not.i64, label %if.end20, label %if.then3.i66

if.then3.i66:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %do.end18

do.end18:                                         ; preds = %if.then3.i66, %if.end10.do.end18_crit_edge
  %retval.0.i67.ph = phi i32 [ %call1.i63, %if.then3.i66 ], [ %call.i61, %if.end10.do.end18_crit_edge ]
  %dev19 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38) #13
  br label %out_clk_enable_mclk

if.end20:                                         ; preds = %if.end.i65
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %call23 = tail call i32 @clk_get_rate(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 172800000, i32 %call23)
  %cmp.not = icmp eq i32 %call23, 172800000
  br i1 %cmp.not, label %if.end20.if.end29_crit_edge, label %do.end27

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %dev28 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %14 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.41, i32 noundef 172800000, i32 noundef %call23) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end20.if.end29_crit_edge
  %arrayidx31 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 2
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx31, align 8
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.end29.do.end37_crit_edge

if.end29.do.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.end.i73:                                       ; preds = %if.end29
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end.i73.cleanup_crit_edge, label %if.then3.i74

if.end.i73.cleanup_crit_edge:                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i74:                                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i74, %if.end29.do.end37_crit_edge
  %retval.0.i75.ph = phi i32 [ %call1.i71, %if.then3.i74 ], [ %call.i69, %if.end29.do.end37_crit_edge ]
  %dev38 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %18 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.45) #13
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2, align 4
  tail call void @clk_disable(ptr noundef %21) #10
  tail call void @clk_unprepare(ptr noundef %21) #10
  br label %out_clk_enable_mclk

out_clk_enable_mclk:                              ; preds = %do.end37, %do.end18, %do.end8
  %r.0 = phi i32 [ %call3, %do.end8 ], [ %retval.0.i67.ph, %do.end18 ], [ %retval.0.i75.ph, %do.end37 ]
  %22 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clock, align 8
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  br label %cleanup

cleanup:                                          ; preds = %out_clk_enable_mclk, %if.end.i73.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %r.0, %out_clk_enable_mclk ], [ 0, %if.end.i73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_iommu_restore_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_ccdc_restore_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_preview_restore_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_reset(ptr nocapture noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !321
  %or = or i32 %2, 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %or) #10, !srcloc !320
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i1011 = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1011) #10, !srcloc !321
  %and12 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not13 = icmp eq i32 %and12, 0
  br i1 %tobool.not13, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.014 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %timeout.014)
  %exitcond = icmp eq i32 %timeout.014, 10001
  br i1 %exitcond, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %9, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %timeout.014, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #10, !srcloc !321
  %and = and i32 %13, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %stop_failure = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 14
  %14 = ptrtoint ptr %stop_failure to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %stop_failure, align 8
  %crashed = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 15
  %15 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crashed, align 4
  %idx_max.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx_max.i, align 4
  %sub.i.i = add i32 %18, 31
  %19 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %19, 536870908
  %20 = call ptr @memset(ptr %16, i32 0, i32 %mul.i.i)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_iommu_save_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 53480, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #13
  br label %cleanup183

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %1, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select = select i1 %tobool2.not, ptr null, ptr %fwnode
  %phy_type = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 10
  %call.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef %spec.select, ptr noundef nonnull @.str.53, ptr noundef %phy_type, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.error_release_isp_crit_edge

if.end.error_release_isp_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_release_isp

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.54) #10
  %syscon = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %syscon, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call9 to i32
  br label %error_release_isp

if.end15:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %syscon_offset = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 9
  %call18 = tail call i32 @of_property_read_u32_index(ptr noundef %7, ptr noundef nonnull @.str.54, i32 noundef 1, ptr noundef %syscon_offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.error_release_isp_crit_edge

if.end15.error_release_isp_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_release_isp

if.end21:                                         ; preds = %if.end15
  %8 = load i32, ptr @autoidle, align 4
  %autoidle = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %autoidle to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %autoidle, align 4
  %isp_mutex = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %isp_mutex, ptr noundef nonnull @.str.55, ptr noundef nonnull @isp_probe.__key) #10
  %stat_lock = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %stat_lock, ptr noundef nonnull @.str.57, ptr noundef nonnull @isp_probe.__key.56, i16 noundef signext 3) #10
  %notifier = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 1
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #10
  %dev30 = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev30, align 16
  tail call fastcc void @isp_parse_of_endpoints(ptr noundef nonnull %call1.i.i.i)
  %ref_count = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 17
  %11 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ref_count, align 1024
  %12 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev30, align 16
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %13, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end38, label %if.end21.error_crit_edge

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end38:                                         ; preds = %if.end21
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %13, i64 noundef 4294967295) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %call40 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.58) #10
  %vdd = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 30, i32 3
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %vdd, align 4
  %call42 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.59) #10
  %vdd43 = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 31, i32 3
  %17 = ptrtoint ptr %vdd43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call42, ptr %vdd43, align 4
  %call47 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %18 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev30, align 16
  %call49 = tail call ptr @devm_ioremap_resource(ptr noundef %19, ptr noundef %call47) #10
  %arrayidx = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call49, ptr %arrayidx, align 4
  %cmp.i296 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %if.end38.cleanup_crit_edge, label %for.cond

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %if.end38
  %call47.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %21 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev30, align 16
  %call49.1 = tail call ptr @devm_ioremap_resource(ptr noundef %22, ptr noundef %call47.1) #10
  %arrayidx.1 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 8
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call49.1, ptr %arrayidx.1, align 4
  %cmp.i296.1 = icmp ugt ptr %call49.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call58 = tail call fastcc i32 @isp_get_clocks(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %for.cond.1.error_crit_edge, label %if.end61

for.cond.1.error_crit_edge:                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  %call49.lcssa = phi ptr [ %call49, %if.end38.cleanup_crit_edge ], [ %call49.1, %for.cond.cleanup_crit_edge ]
  %24 = ptrtoint ptr %call49.lcssa to i32
  br label %error

if.end61:                                         ; preds = %for.cond.1
  %clock = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clock, align 8
  %call63 = tail call i32 @clk_enable(ptr noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end61.error_crit_edge, label %if.end66

if.end61.error_crit_edge:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end66:                                         ; preds = %if.end61
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !321
  %revision = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %revision, align 4
  %31 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev30, align 16
  %and = lshr i32 %29, 4
  %shr = and i32 %and, 15
  %and74 = and i32 %29, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.61, i32 noundef %shr, i32 noundef %and74) #13
  %33 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clock, align 8
  tail call void @clk_disable(ptr noundef %34) #10
  %call77 = tail call fastcc ptr @__omap3isp_get(ptr noundef nonnull %call1.i.i.i, i1 noundef zeroext false)
  %cmp78 = icmp eq ptr %call77, null
  br i1 %cmp78, label %if.end66.error_crit_edge, label %if.end80

if.end66.error_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end80:                                         ; preds = %if.end66
  %call81 = tail call fastcc i32 @isp_reset(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.error_isp_crit_edge, label %if.end84

if.end80.error_isp_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_isp

if.end84:                                         ; preds = %if.end80
  %call85 = tail call fastcc i32 @isp_xclk_init(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end84.error_isp_crit_edge, label %for.cond89.preheader

if.end84.error_isp_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_isp

for.cond89.preheader:                             ; preds = %if.end84
  %35 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %revision, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %36, label %do.end104 [
    i32 32, label %for.cond89.preheader.for.cond112.preheader_crit_edge
    i32 240, label %for.cond112.preheader.fold.split
  ]

for.cond89.preheader.for.cond112.preheader_crit_edge: ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond112.preheader

for.cond112.preheader.fold.split:                 ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %for.cond112.preheader.fold.split, %for.cond89.preheader.for.cond112.preheader_crit_edge
  %m.0.lcssa.ph = phi i32 [ 0, %for.cond89.preheader.for.cond112.preheader_crit_edge ], [ 1, %for.cond112.preheader.fold.split ]
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %arrayidx118 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx118, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %41
  %arrayidx120 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %arrayidx120, align 32
  %arrayidx118.1 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx118.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx118.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %39, i32 %44
  %arrayidx120.1 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.1, ptr %arrayidx120.1, align 4
  %arrayidx118.2 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 3
  %46 = ptrtoint ptr %arrayidx118.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx118.2, align 4
  %add.ptr.2 = getelementptr i8, ptr %39, i32 %47
  %arrayidx120.2 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.2, ptr %arrayidx120.2, align 8
  %arrayidx118.3 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 4
  %49 = ptrtoint ptr %arrayidx118.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx118.3, align 4
  %add.ptr.3 = getelementptr i8, ptr %39, i32 %50
  %arrayidx120.3 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 4
  %51 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.3, ptr %arrayidx120.3, align 4
  %arrayidx118.4 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 5
  %52 = ptrtoint ptr %arrayidx118.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx118.4, align 4
  %add.ptr.4 = getelementptr i8, ptr %39, i32 %53
  %arrayidx120.4 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 5
  %54 = ptrtoint ptr %arrayidx120.4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.4, ptr %arrayidx120.4, align 16
  %arrayidx118.5 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 6
  %55 = ptrtoint ptr %arrayidx118.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx118.5, align 4
  %add.ptr.5 = getelementptr i8, ptr %39, i32 %56
  %arrayidx120.5 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 6
  %57 = ptrtoint ptr %arrayidx120.5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.5, ptr %arrayidx120.5, align 4
  %arrayidx118.6 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 7
  %58 = ptrtoint ptr %arrayidx118.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx118.6, align 4
  %add.ptr.6 = getelementptr i8, ptr %39, i32 %59
  %arrayidx120.6 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 7
  %60 = ptrtoint ptr %arrayidx120.6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.6, ptr %arrayidx120.6, align 8
  %61 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.1, align 4
  %arrayidx131 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 9
  %63 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx131, align 4
  %add.ptr132 = getelementptr i8, ptr %62, i32 %64
  %arrayidx134 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 9
  %65 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr132, ptr %arrayidx134, align 64
  %arrayidx131.1 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 10
  %66 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx131.1, align 4
  %add.ptr132.1 = getelementptr i8, ptr %62, i32 %67
  %arrayidx134.1 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 10
  %68 = ptrtoint ptr %arrayidx134.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr132.1, ptr %arrayidx134.1, align 4
  %arrayidx131.2 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 11
  %69 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx131.2, align 4
  %add.ptr132.2 = getelementptr i8, ptr %62, i32 %70
  %arrayidx134.2 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 11
  %71 = ptrtoint ptr %arrayidx134.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr132.2, ptr %arrayidx134.2, align 8
  %arrayidx131.3 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 12
  %72 = ptrtoint ptr %arrayidx131.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx131.3, align 4
  %add.ptr132.3 = getelementptr i8, ptr %62, i32 %73
  %arrayidx134.3 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 12
  %74 = ptrtoint ptr %arrayidx134.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr132.3, ptr %arrayidx134.3, align 4
  %arrayidx131.4 = getelementptr [2 x %struct.isp_res_mapping], ptr @isp_res_maps, i32 0, i32 %m.0.lcssa.ph, i32 1, i32 13
  %75 = ptrtoint ptr %arrayidx131.4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx131.4, align 4
  %add.ptr132.4 = getelementptr i8, ptr %62, i32 %76
  %arrayidx134.4 = getelementptr %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 6, i32 13
  %77 = ptrtoint ptr %arrayidx134.4 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr132.4, ptr %arrayidx134.4, align 16
  %78 = ptrtoint ptr %call47.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call47.1, align 4
  %add = add i32 %47, %79
  %mmio_hist_base_phys = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %mmio_hist_base_phys to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add, ptr %mmio_hist_base_phys, align 4
  %call141 = tail call fastcc i32 @isp_attach_iommu(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %do.end146, label %if.end148

do.end104:                                        ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev30, align 16
  %83 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %revision, align 4
  %and107 = lshr i32 %84, 4
  %shr108 = and i32 %and107, 15
  %and110 = and i32 %84, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.64, i32 noundef %shr108, i32 noundef %and110) #13
  br label %error_isp

do.end146:                                        ; preds = %for.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67) #13
  br label %error_isp

if.end148:                                        ; preds = %for.cond112.preheader
  %call149 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 1
  br i1 %cmp150, label %if.end148.error_iommu_crit_edge, label %if.end152

if.end148.error_iommu_crit_edge:                  ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_iommu

if.end152:                                        ; preds = %if.end148
  %irq_num = getelementptr inbounds %struct.isp_device, ptr %call1.i.i.i, i32 0, i32 5
  %85 = ptrtoint ptr %irq_num to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call149, ptr %irq_num, align 8
  %86 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev30, align 16
  %call.i297 = tail call i32 @devm_request_threaded_irq(ptr noundef %87, i32 noundef %call149, ptr noundef nonnull @isp_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.69, ptr noundef nonnull %call1.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool156.not = icmp eq i32 %call.i297, 0
  br i1 %tobool156.not, label %if.end162, label %do.end160

do.end160:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev30, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.71) #13
  br label %error_iommu

if.end162:                                        ; preds = %if.end152
  %call163 = tail call fastcc i32 @isp_initialize_modules(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.end162.error_iommu_crit_edge, label %if.end166

if.end162.error_iommu_crit_edge:                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_iommu

if.end166:                                        ; preds = %if.end162
  %call167 = tail call fastcc i32 @isp_register_entities(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.end166.error_modules_crit_edge, label %if.end170

if.end166.error_modules_crit_edge:                ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_modules

if.end170:                                        ; preds = %if.end166
  %call171 = tail call fastcc i32 @isp_create_links(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %if.end170.error_register_entities_crit_edge, label %if.end174

if.end170.error_register_entities_crit_edge:      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_register_entities

if.end174:                                        ; preds = %if.end170
  %90 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @isp_subdev_notifier_ops, ptr %notifier, align 128
  %call177 = tail call i32 @v4l2_async_nf_register(ptr noundef nonnull %call1.i.i.i, ptr noundef %notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %if.end174.error_register_entities_crit_edge

if.end174.error_register_entities_crit_edge:      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_register_entities

if.end180:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %92)
  %cmp.i298 = icmp eq i32 %92, 240
  %cond1.i = zext i1 %cmp.i298 to i32
  %or.i = or i32 %cond1.i, 8192
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #10, !srcloc !320
  %95 = ptrtoint ptr %autoidle to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %autoidle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool2.not.i = icmp eq i32 %96, 0
  %or4.i = select i1 %tobool2.not.i, i32 49152, i32 2146304
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %98, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or4.i) #10, !srcloc !320
  tail call fastcc void @__omap3isp_put(ptr noundef nonnull %call1.i.i.i, i1 noundef zeroext true) #10
  br label %cleanup183

error_register_entities:                          ; preds = %if.end174.error_register_entities_crit_edge, %if.end170.error_register_entities_crit_edge
  %ret.2 = phi i32 [ %call171, %if.end170.error_register_entities_crit_edge ], [ %call177, %if.end174.error_register_entities_crit_edge ]
  tail call fastcc void @isp_unregister_entities(ptr noundef nonnull %call1.i.i.i)
  br label %error_modules

error_modules:                                    ; preds = %error_register_entities, %if.end166.error_modules_crit_edge
  %ret.3 = phi i32 [ %call167, %if.end166.error_modules_crit_edge ], [ %ret.2, %error_register_entities ]
  tail call fastcc void @isp_cleanup_modules(ptr noundef nonnull %call1.i.i.i)
  br label %error_iommu

error_iommu:                                      ; preds = %error_modules, %if.end162.error_iommu_crit_edge, %do.end160, %if.end148.error_iommu_crit_edge
  %ret.4 = phi i32 [ -22, %do.end160 ], [ %call163, %if.end162.error_iommu_crit_edge ], [ %ret.3, %error_modules ], [ -19, %if.end148.error_iommu_crit_edge ]
  tail call fastcc void @isp_detach_iommu(ptr noundef nonnull %call1.i.i.i)
  br label %error_isp

error_isp:                                        ; preds = %error_iommu, %do.end146, %do.end104, %if.end84.error_isp_crit_edge, %if.end80.error_isp_crit_edge
  %ret.5 = phi i32 [ %call81, %if.end80.error_isp_crit_edge ], [ %call85, %if.end84.error_isp_crit_edge ], [ -19, %do.end104 ], [ %call141, %do.end146 ], [ %ret.4, %error_iommu ]
  tail call fastcc void @isp_xclk_cleanup(ptr noundef nonnull %call1.i.i.i)
  tail call fastcc void @__omap3isp_put(ptr noundef nonnull %call1.i.i.i, i1 noundef zeroext false)
  br label %error

error:                                            ; preds = %error_isp, %if.end66.error_crit_edge, %if.end61.error_crit_edge, %cleanup, %for.cond.1.error_crit_edge, %if.end21.error_crit_edge
  %ret.6 = phi i32 [ %24, %cleanup ], [ %call58, %for.cond.1.error_crit_edge ], [ %call63, %if.end61.error_crit_edge ], [ %ret.5, %error_isp ], [ -19, %if.end66.error_crit_edge ], [ %call.i.i, %if.end21.error_crit_edge ]
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #10
  tail call void @mutex_destroy(ptr noundef %isp_mutex) #10
  br label %error_release_isp

error_release_isp:                                ; preds = %error, %if.end15.error_release_isp_crit_edge, %if.then12, %if.end.error_release_isp_crit_edge
  %ret.7 = phi i32 [ %call.i, %if.end.error_release_isp_crit_edge ], [ %5, %if.then12 ], [ %call18, %if.end15.error_release_isp_crit_edge ], [ %ret.6, %error ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #10
  br label %cleanup183

cleanup183:                                       ; preds = %error_release_isp, %if.end180, %do.end
  %retval.0 = phi i32 [ %ret.7, %error_release_isp ], [ 0, %if.end180 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 1
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #10
  tail call fastcc void @isp_unregister_entities(ptr noundef %1)
  tail call void @omap3isp_h3a_aewb_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_h3a_af_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_hist_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_resizer_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_preview_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_ccdc_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_ccp2_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_csi2_cleanup(ptr noundef %1) #10
  tail call void @omap3isp_csiphy_cleanup(ptr noundef %1) #10
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_clk_del_provider(ptr noundef nonnull %5) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %clk.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 20, i32 0, i32 2
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unregister(ptr noundef %7) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %clk.1.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 20, i32 1, i32 2
  %8 = ptrtoint ptr %clk.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end3.i.isp_xclk_cleanup.exit_crit_edge, label %if.then1.1.i

if.end3.i.isp_xclk_cleanup.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_xclk_cleanup.exit

if.then1.1.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unregister(ptr noundef %9) #10
  br label %isp_xclk_cleanup.exit

isp_xclk_cleanup.exit:                            ; preds = %if.then1.1.i, %if.end3.i.isp_xclk_cleanup.exit_crit_edge
  %call1 = tail call fastcc ptr @__omap3isp_get(ptr noundef %1, i1 noundef zeroext false)
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call void @arm_iommu_detach_device(ptr noundef %11) #10
  %mapping.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping.i, align 4
  tail call void @arm_iommu_release_mapping(ptr noundef %13) #10
  %14 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mapping.i, align 4
  tail call fastcc void @__omap3isp_put(ptr noundef %1, i1 noundef zeroext false)
  %crashed = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 15
  tail call void @media_entity_enum_cleanup(ptr noundef %crashed) #10
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_parse_of_endpoints(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  %vep19 = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @dev_fwnode(ptr noundef %1) #10
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #10
  %2 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %3 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_parse_of_endpoints.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_parse_of_endpoints, %do.end)) #10
          to label %if.then7 [label %do.end], !srcloc !322

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_parse_of_endpoints.__UNIQUE_ID_ddebug327, ptr noundef %6, ptr noundef nonnull @.str.74) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %call9 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1, ptr noundef nonnull %vep) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %do.end
  %notifier = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 1
  %call12 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef nonnull %call1, i32 noundef 40) #10
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11.if.end17_crit_edge, label %if.then14

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %bus = getelementptr inbounds %struct.isp_async_subdev, ptr %call12, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bus, align 4
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2
  %data_shift.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data_shift.i, align 1
  %bus1.i = getelementptr inbounds %struct.isp_async_subdev, ptr %call12, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %bus1.i, align 4
  %bf.value.i = zext i8 %9 to i16
  %bf.shl.i = shl i16 %bf.value.i, 13
  %bf.clear.i = and i16 %bf.load.i, 127
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus.i, align 4
  %13 = trunc i32 %12 to i16
  %14 = shl i16 %13, 5
  %bf.shl8.i = and i16 %14, 4096
  %bf.set10.i = or i16 %bf.shl8.i, %bf.set.i
  %15 = shl i16 %13, 6
  %bf.shl24.i = and i16 %15, 2048
  %bf.set26.i = or i16 %bf.set10.i, %bf.shl24.i
  %16 = shl i16 %13, 7
  %bf.shl40.i = and i16 %16, 1024
  %bf.set42.i = or i16 %bf.set26.i, %bf.shl40.i
  %17 = lshr i16 %13, 2
  %bf.shl56.i = and i16 %17, 512
  %18 = lshr i16 %13, 1
  %bf.shl72.i = and i16 %18, 256
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i4 = icmp eq i32 %20, 2
  %bf.shl80.i = select i1 %cmp.i4, i16 128, i16 0
  %bf.set58.i.masked = or i16 %bf.set42.i, %bf.shl56.i
  %bf.clear81.i = or i16 %bf.set58.i.masked, %bf.shl72.i
  %bf.set82.i = or i16 %bf.clear81.i, %bf.shl80.i
  %21 = ptrtoint ptr %bus1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %bf.set82.i, ptr %bus1.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11.if.end17_crit_edge, %do.end.if.end17_crit_edge
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry.if.end18_crit_edge
  %22 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep19, i32 0, i32 1
  %.compoundliteral.sroa.3.0.vep19.sroa_idx = getelementptr inbounds i8, ptr %vep19, i32 16
  %notifier64 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 1
  %clock_lane.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep19, i32 0, i32 2, i32 1, i32 3
  %lane_polarity.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep19, i32 0, i32 2, i32 1, i32 1
  %data_lane.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep19, i32 0, i32 2, i32 1, i32 2
  %arrayidx30.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep19, i32 0, i32 2, i32 1, i32 1, i32 1
  %mipi_csi1.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep19, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end18
  %cmp = phi i1 [ true, %if.end18 ], [ false, %cleanup.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %if.end18 ], [ 1, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep19) #10
  %23 = call ptr @memset(ptr %vep19, i32 0, i32 64)
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %22, align 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %call22 = call ptr @dev_fwnode(ptr noundef %26) #10
  %arrayidx = getelementptr [2 x %struct.anon.107], ptr @isp_bus_interfaces, i32 0, i32 %i.016
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %call23 = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call22, i32 noundef %28, i32 noundef 0, i32 noundef 1) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %for.body.cleanup_crit_edge, label %do.body27

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body27:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_parse_of_endpoints.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_parse_of_endpoints, %do.end48)) #10
          to label %if.then41 [label %do.end48], !srcloc !322

if.then41:                                        ; preds = %do.body27
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %cmp.i.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then41.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.then41.is_of_node.exit.thread_crit_edge:       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call23, i32 0, i32 1
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %cmp.i5 = icmp eq ptr %32, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %call23, i32 -12
  %spec.select = select i1 %cmp.i5, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.then41.is_of_node.exit.thread_crit_edge
  %33 = phi ptr [ null, %if.then41.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_parse_of_endpoints.__UNIQUE_ID_ddebug328, ptr noundef %30, ptr noundef nonnull @.str.75, i32 noundef %i.016, ptr noundef %33) #10
  br label %do.end48

do.end48:                                         ; preds = %is_of_node.exit.thread, %do.body27
  %call49 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call23, ptr noundef nonnull %vep19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call49)
  %cmp50 = icmp eq i32 %call49, -6
  br i1 %cmp50, label %if.then51, label %do.end48.if.end61_crit_edge

do.end48.if.end61_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then51:                                        ; preds = %do.end48
  %34 = call ptr @memset(ptr %vep19, i32 0, i32 12)
  %35 = call ptr @memset(ptr %.compoundliteral.sroa.3.0.vep19.sroa_idx, i32 0, i32 48)
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %22, align 4
  %call53 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call23, ptr noundef nonnull %vep19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call53)
  %cmp54 = icmp eq i32 %call53, -6
  br i1 %cmp54, label %if.then55, label %if.then51.if.end61_crit_edge

if.then51.if.end61_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %37 = call ptr @memset(ptr %vep19, i32 0, i32 12)
  %38 = call ptr @memset(ptr %.compoundliteral.sroa.3.0.vep19.sroa_idx, i32 0, i32 48)
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %22, align 4
  %call59 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call23, ptr noundef nonnull %vep19) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.then51.if.end61_crit_edge, %do.end48.if.end61_crit_edge
  %ret20.0 = phi i32 [ %call59, %if.then55 ], [ %call53, %if.then51.if.end61_crit_edge ], [ %call49, %do.end48.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret20.0)
  %tobool62.not = icmp eq i32 %ret20.0, 0
  br i1 %tobool62.not, label %if.then63, label %if.end61.if.end80_crit_edge

if.end61.if.end80_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then63:                                        ; preds = %if.end61
  %call65 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier64, ptr noundef nonnull %call23, i32 noundef 40) #10
  %cmp.i6 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6, label %if.then63.if.end80_crit_edge, label %if.then67

if.then63.if.end80_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then67:                                        ; preds = %if.then63
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %22, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %41, label %if.then67.if.end80_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %if.then67.sw.bb73_crit_edge
    i32 4, label %if.then67.sw.bb73_crit_edge19
  ]

if.then67.sw.bb73_crit_edge19:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb73

if.then67.sw.bb73_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb73

if.then67.if.end80_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

sw.bb:                                            ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %csi2_if = getelementptr [2 x %struct.anon.107], ptr @isp_bus_interfaces, i32 0, i32 %i.016, i32 1
  %43 = ptrtoint ptr %csi2_if to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %csi2_if, align 4
  %bus70 = getelementptr inbounds %struct.isp_async_subdev, ptr %call65, i32 0, i32 1
  %45 = ptrtoint ptr %bus70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %bus70, align 4
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  call fastcc void @isp_parse_of_csi2_endpoint(ptr noundef %47, ptr noundef nonnull %vep19, ptr noundef %bus70)
  br label %if.end80

sw.bb73:                                          ; preds = %if.then67.sw.bb73_crit_edge, %if.then67.sw.bb73_crit_edge19
  %csi1_if = getelementptr [2 x %struct.anon.107], ptr @isp_bus_interfaces, i32 0, i32 %i.016, i32 2
  %48 = ptrtoint ptr %csi1_if to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %csi1_if, align 4
  %bus75 = getelementptr inbounds %struct.isp_async_subdev, ptr %call65, i32 0, i32 1
  %50 = ptrtoint ptr %bus75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %bus75, align 4
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %53 = ptrtoint ptr %clock_lane.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %clock_lane.i, align 4
  %bus1.i7 = getelementptr inbounds %struct.isp_async_subdev, ptr %call65, i32 0, i32 1, i32 1
  %lanecfg.i = getelementptr inbounds %struct.isp_ccp2_cfg, ptr %bus1.i7, i32 0, i32 1
  %clk.i = getelementptr inbounds %struct.isp_async_subdev, ptr %call65, i32 0, i32 1, i32 1, i32 1, i32 1
  %55 = ptrtoint ptr %clk.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %clk.i, align 1
  %56 = ptrtoint ptr %lane_polarity.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %lane_polarity.i, align 1, !range !332
  %pol.i = getelementptr inbounds %struct.isp_async_subdev, ptr %call65, i32 0, i32 1, i32 1, i32 1, i32 2
  %58 = ptrtoint ptr %pol.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %pol.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_parse_of_endpoints, %do.end.i)) #10
          to label %if.then.i [label %do.end.i], !srcloc !322

if.then.i:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %pol.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pol.i, align 1
  %conv15.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %clk.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %clk.i, align 1
  %conv20.i = zext i8 %62 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug325, ptr noundef %52, ptr noundef nonnull @.str.77, i32 noundef %conv15.i, i32 noundef %conv20.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb73
  %63 = ptrtoint ptr %data_lane.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %data_lane.i, align 1
  %65 = ptrtoint ptr %lanecfg.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %lanecfg.i, align 1
  %66 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx30.i, align 2, !range !332
  %pol37.i = getelementptr inbounds %struct.isp_async_subdev, ptr %call65, i32 0, i32 1, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %pol37.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %pol37.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_parse_of_endpoints, %isp_parse_of_csi1_endpoint.exit)) #10
          to label %if.then52.i [label %isp_parse_of_csi1_endpoint.exit], !srcloc !322

if.then52.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %pol37.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pol37.i, align 1
  %conv58.i = zext i8 %70 to i32
  %71 = ptrtoint ptr %lanecfg.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %lanecfg.i, align 1
  %conv64.i = zext i8 %72 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug326, ptr noundef %52, ptr noundef nonnull @.str.80, i32 noundef %conv58.i, i32 noundef %conv64.i) #10
  br label %isp_parse_of_csi1_endpoint.exit

isp_parse_of_csi1_endpoint.exit:                  ; preds = %if.then52.i, %do.end.i
  %73 = ptrtoint ptr %mipi_csi1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i8 = load i8, ptr %mipi_csi1.i, align 4
  %bf.lshr.i = and i8 %bf.load.i8, -128
  %74 = ptrtoint ptr %bus1.i7 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load71.i = load i8, ptr %bus1.i7, align 4
  %bf.clear.i9 = and i8 %bf.load71.i, 13
  %bf.set.i10 = or i8 %bf.clear.i9, %bf.lshr.i
  %75 = lshr i8 %bf.load.i8, 2
  %bf.shl81.i = and i8 %75, 16
  %bf.set83.i = or i8 %bf.set.i10, %bf.shl81.i
  %76 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp.i12 = icmp eq i32 %77, 4
  %bf.set91.i = select i1 %cmp.i12, i8 98, i8 66
  %bf.set100.i = or i8 %bf.set91.i, %bf.set83.i
  %78 = ptrtoint ptr %bus1.i7 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %bf.set100.i, ptr %bus1.i7, align 4
  br label %if.end80

if.end80:                                         ; preds = %isp_parse_of_csi1_endpoint.exit, %sw.bb, %if.then67.if.end80_crit_edge, %if.then63.if.end80_crit_edge, %if.end61.if.end80_crit_edge
  call void @fwnode_handle_put(ptr noundef nonnull %call23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep19) #10
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_get_clocks(ptr nocapture noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.83) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %.lcssa = phi ptr [ @.str.83, %entry.do.end_crit_edge ], [ @.str.84, %if.end.do.end_crit_edge ], [ @.str.85, %if.end.1.do.end_crit_edge ], [ @.str.86, %if.end.2.do.end_crit_edge ]
  %call.lcssa = phi ptr [ %call, %entry.do.end_crit_edge ], [ %call.1, %if.end.do.end_crit_edge ], [ %call.2, %if.end.1.do.end_crit_edge ], [ %call.3, %if.end.2.do.end_crit_edge ]
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.81, ptr noundef nonnull %.lcssa) #13
  %4 = ptrtoint ptr %call.lcssa to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx5 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 0
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %arrayidx5, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.1 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.84) #10
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end.do.end_crit_edge, label %if.end.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.1:                                         ; preds = %if.end
  %arrayidx5.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.1, ptr %arrayidx5.1, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call.2 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef nonnull @.str.85) #10
  %cmp.i.2 = icmp ugt ptr %call.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end.1.do.end_crit_edge, label %if.end.2

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.2:                                         ; preds = %if.end.1
  %arrayidx5.2 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 2
  %11 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.2, ptr %arrayidx5.2, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call.3 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.86) #10
  %cmp.i.3 = icmp ugt ptr %call.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end.2.do.end_crit_edge, label %if.end.3

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.3 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.3, ptr %arrayidx5.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %if.end.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_xclk_init(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %4 = getelementptr inbounds i8, ptr %init, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  %clk = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -22 to ptr), ptr %clk, align 4
  %clk.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1, i32 2
  %7 = ptrtoint ptr %clk.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -22 to ptr), ptr %clk.1, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %arrayidx5 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %isp, ptr %arrayidx5, align 4
  %id = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %id, align 4
  %divider = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0, i32 6
  %10 = ptrtoint ptr %divider to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %divider, align 4
  %lock = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.87, ptr noundef nonnull @isp_xclk_init.__key, i16 noundef signext 3) #10
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.88, ptr %init, align 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @isp_xclk_ops, ptr %ops, align 4
  %13 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @isp_xclk_parent_name, ptr %parent_names, align 4
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %num_parents, align 4
  %hw = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0, i32 1
  %init11 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init11, align 4
  %call13 = call ptr @clk_register(ptr noundef null, ptr noundef %hw) #10
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup.thread_crit_edge, label %for.cond1

entry.cleanup.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond1:                                        ; preds = %entry
  %arrayidx5.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %isp, ptr %arrayidx5.1, align 4
  %id.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1, i32 3
  %18 = ptrtoint ptr %id.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %id.1, align 4
  %divider.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1, i32 6
  %19 = ptrtoint ptr %divider.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %divider.1, align 4
  %lock.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock.1, ptr noundef nonnull @.str.87, ptr noundef nonnull @isp_xclk_init.__key, i16 noundef signext 3) #10
  %20 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.89, ptr %init, align 4
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @isp_xclk_ops, ptr %ops, align 4
  %22 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @isp_xclk_parent_name, ptr %parent_names, align 4
  %23 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %num_parents, align 4
  %hw.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1, i32 1
  %init11.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1, i32 1, i32 2
  %24 = ptrtoint ptr %init11.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %init, ptr %init11.1, align 4
  %call13.1 = call ptr @clk_register(ptr noundef null, ptr noundef %hw.1) #10
  %25 = ptrtoint ptr %clk.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call13.1, ptr %clk.1, align 4
  %cmp.i.1 = icmp ugt ptr %call13.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond1.cleanup.thread_crit_edge, label %for.cond1.1

for.cond1.cleanup.thread_crit_edge:               ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond1.1:                                      ; preds = %for.cond1
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.cond1.1.cleanup25_crit_edge, label %if.then22

for.cond1.1.cleanup25_crit_edge:                  ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

cleanup.thread:                                   ; preds = %for.cond1.cleanup.thread_crit_edge, %entry.cleanup.thread_crit_edge
  %call13.lcssa = phi ptr [ %call13, %entry.cleanup.thread_crit_edge ], [ %call13.1, %for.cond1.cleanup.thread_crit_edge ]
  %26 = ptrtoint ptr %call13.lcssa to i32
  br label %cleanup25

if.then22:                                        ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 @of_clk_add_provider(ptr noundef nonnull %3, ptr noundef nonnull @isp_xclk_src_get, ptr noundef %isp) #10
  br label %cleanup25

cleanup25:                                        ; preds = %if.then22, %cleanup.thread, %for.cond1.1.cleanup25_crit_edge
  %retval.2 = phi i32 [ 0, %if.then22 ], [ 0, %for.cond1.1.cleanup25_crit_edge ], [ %26, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_attach_iommu(ptr nocapture noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @arm_iommu_create_mapping(ptr noundef nonnull @platform_bus_type, i32 noundef 1073741824, i64 noundef 2147483648) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.92) #13
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapping3 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 11
  %3 = ptrtoint ptr %mapping3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %mapping3, align 4
  %dev4 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 8
  %call5 = tail call i32 @arm_iommu_attach_device(ptr noundef %5, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.95) #13
  %8 = ptrtoint ptr %mapping3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping3, align 4
  tail call void @arm_iommu_release_mapping(ptr noundef %9) #10
  %10 = ptrtoint ptr %mapping3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mapping3, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call5, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_isr(i32 noundef %irq, ptr noundef %_isp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.isp_device, ptr %_isp, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !321
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %2) #10, !srcloc !320
  tail call fastcc void @isp_isr_sbl(ptr noundef %_isp)
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %isp_csi2a = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 27
  tail call void @omap3isp_csi2_isr(ptr noundef %isp_csi2a) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %2, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %isp_ccp2 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 29
  tail call void @omap3isp_ccp2_isr(ptr noundef %isp_ccp2) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end18_crit_edge, label %if.then7

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then7:                                         ; preds = %if.end4
  %output = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 26, i32 5
  %5 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output, align 8
  %and8 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then7.if.end11_crit_edge, label %if.then10

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %isp_prev = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 25
  tail call void @omap3isp_preview_isr_frame_sync(ptr noundef %isp_prev) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7.if.end11_crit_edge
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output, align 8
  %and14 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.if.end17_crit_edge, label %if.then16

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %isp_res = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 24
  tail call void @omap3isp_resizer_isr_frame_sync(ptr noundef %isp_res) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11.if.end17_crit_edge
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 22
  tail call void @omap3isp_stat_isr_frame_sync(ptr noundef %isp_aewb) #10
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 21
  tail call void @omap3isp_stat_isr_frame_sync(ptr noundef %isp_af) #10
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 23
  tail call void @omap3isp_stat_isr_frame_sync(ptr noundef %isp_hist) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end4.if.end18_crit_edge
  %and19 = and i32 %2, -2146827520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end25_crit_edge, label %if.then21

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %isp_ccdc22 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 26
  %call24 = tail call i32 @omap3isp_ccdc_isr(ptr noundef %isp_ccdc22, i32 noundef %and19) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18.if.end25_crit_edge
  %and26 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end37_crit_edge, label %if.then28

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then28:                                        ; preds = %if.end25
  %isp_prev29 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 25
  %output30 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 25, i32 6
  %9 = ptrtoint ptr %output30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output30, align 8
  %and31 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then28.if.end35_crit_edge, label %if.then33

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %isp_res34 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 24
  tail call void @omap3isp_resizer_isr_frame_sync(ptr noundef %isp_res34) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then28.if.end35_crit_edge
  tail call void @omap3isp_preview_isr(ptr noundef %isp_prev29) #10
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end25.if.end37_crit_edge
  %and38 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end42_crit_edge, label %if.then40

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %isp_res41 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 24
  tail call void @omap3isp_resizer_isr(ptr noundef %isp_res41) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %and43 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %isp_aewb46 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 22
  tail call void @omap3isp_stat_isr(ptr noundef %isp_aewb46) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %and48 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end52_crit_edge, label %if.then50

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %isp_af51 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 21
  tail call void @omap3isp_stat_isr(ptr noundef %isp_af51) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47.if.end52_crit_edge
  %and53 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.then55

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %isp_hist56 = getelementptr inbounds %struct.isp_device, ptr %_isp, i32 0, i32 23
  tail call void @omap3isp_stat_isr(ptr noundef %isp_hist56) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52.if.end57_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #10, !srcloc !320
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !321
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_initialize_modules(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap3isp_csiphy_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @omap3isp_csi2_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev7 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.102) #13
  br label %error_csi2

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @omap3isp_ccp2_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call9)
  %cmp12.not = icmp eq i32 %call9, -517
  br i1 %cmp12.not, label %if.then11.error_ccp2_crit_edge, label %do.end16

if.then11.error_ccp2_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_ccp2

do.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %4 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.105) #13
  br label %error_ccp2

if.end19:                                         ; preds = %if.end8
  %call20 = tail call i32 @omap3isp_ccdc_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %dev26 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %6 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.108) #13
  br label %error_ccdc

if.end27:                                         ; preds = %if.end19
  %call28 = tail call i32 @omap3isp_preview_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %dev34 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %8 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.111) #13
  br label %error_preview

if.end35:                                         ; preds = %if.end27
  %call36 = tail call i32 @omap3isp_resizer_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %10 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.114) #13
  br label %error_resizer

if.end43:                                         ; preds = %if.end35
  %call44 = tail call i32 @omap3isp_hist_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %dev50 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %12 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.117) #13
  br label %error_hist

if.end51:                                         ; preds = %if.end43
  %call52 = tail call i32 @omap3isp_h3a_aewb_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %dev58 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %14 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev58, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.120) #13
  br label %error_h3a_aewb

if.end59:                                         ; preds = %if.end51
  %call60 = tail call i32 @omap3isp_h3a_af_init(ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end65, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %dev66 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %16 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev66, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.123) #13
  tail call void @omap3isp_h3a_aewb_cleanup(ptr noundef %isp) #10
  br label %error_h3a_aewb

error_h3a_aewb:                                   ; preds = %do.end65, %do.end57
  %ret.0 = phi i32 [ %call52, %do.end57 ], [ %call60, %do.end65 ]
  tail call void @omap3isp_hist_cleanup(ptr noundef %isp) #10
  br label %error_hist

error_hist:                                       ; preds = %error_h3a_aewb, %do.end49
  %ret.1 = phi i32 [ %call44, %do.end49 ], [ %ret.0, %error_h3a_aewb ]
  tail call void @omap3isp_resizer_cleanup(ptr noundef %isp) #10
  br label %error_resizer

error_resizer:                                    ; preds = %error_hist, %do.end41
  %ret.2 = phi i32 [ %call36, %do.end41 ], [ %ret.1, %error_hist ]
  tail call void @omap3isp_preview_cleanup(ptr noundef %isp) #10
  br label %error_preview

error_preview:                                    ; preds = %error_resizer, %do.end33
  %ret.3 = phi i32 [ %call28, %do.end33 ], [ %ret.2, %error_resizer ]
  tail call void @omap3isp_ccdc_cleanup(ptr noundef %isp) #10
  br label %error_ccdc

error_ccdc:                                       ; preds = %error_preview, %do.end25
  %ret.4 = phi i32 [ %call20, %do.end25 ], [ %ret.3, %error_preview ]
  tail call void @omap3isp_ccp2_cleanup(ptr noundef %isp) #10
  br label %error_ccp2

error_ccp2:                                       ; preds = %error_ccdc, %do.end16, %if.then11.error_ccp2_crit_edge
  %ret.5 = phi i32 [ %call9, %do.end16 ], [ -517, %if.then11.error_ccp2_crit_edge ], [ %ret.4, %error_ccdc ]
  tail call void @omap3isp_csi2_cleanup(ptr noundef %isp) #10
  br label %error_csi2

error_csi2:                                       ; preds = %error_ccp2, %do.end6
  %ret.6 = phi i32 [ %call1, %do.end6 ], [ %ret.5, %error_ccp2 ]
  tail call void @omap3isp_csiphy_cleanup(ptr noundef %isp) #10
  br label %cleanup

cleanup:                                          ; preds = %error_csi2, %if.end59.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.6, %error_csi2 ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_register_entities(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %media_dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 2
  %2 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %media_dev, align 8
  %model = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 2, i32 2
  %call = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.125, i32 noundef 32) #10
  %revision = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 4
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revision, align 4
  %hw_revision = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 2, i32 6
  %5 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %hw_revision, align 8
  %ops = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 2, i32 21
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @isp_media_ops, ptr %ops, align 8
  tail call void @media_device_init(ptr noundef %media_dev) #10
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %isp, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %media_dev, ptr %mdev, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call9 = tail call i32 @v4l2_device_register(ptr noundef %9, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef %call9) #13
  br label %if.then52

if.end:                                           ; preds = %entry
  %isp_ccp2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29
  %call12 = tail call i32 @omap3isp_ccp2_register_entities(ptr noundef %isp_ccp2, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end.if.then52_crit_edge, label %if.end15

if.end.if.then52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end15:                                         ; preds = %if.end
  %isp_csi2a = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27
  %call17 = tail call i32 @omap3isp_csi2_register_entities(ptr noundef %isp_csi2a, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.if.then52_crit_edge, label %if.end20

if.end15.if.then52_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end20:                                         ; preds = %if.end15
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26
  %call22 = tail call i32 @omap3isp_ccdc_register_entities(ptr noundef %isp_ccdc, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.if.then52_crit_edge, label %if.end25

if.end20.if.then52_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end25:                                         ; preds = %if.end20
  %isp_prev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25
  %call27 = tail call i32 @omap3isp_preview_register_entities(ptr noundef %isp_prev, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.if.then52_crit_edge, label %if.end30

if.end25.if.then52_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end30:                                         ; preds = %if.end25
  %isp_res = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24
  %call32 = tail call i32 @omap3isp_resizer_register_entities(ptr noundef %isp_res, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.if.then52_crit_edge, label %if.end35

if.end30.if.then52_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end35:                                         ; preds = %if.end30
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22
  %call37 = tail call i32 @omap3isp_stat_register_entities(ptr noundef %isp_aewb, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.if.then52_crit_edge, label %if.end40

if.end35.if.then52_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end40:                                         ; preds = %if.end35
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21
  %call42 = tail call i32 @omap3isp_stat_register_entities(ptr noundef %isp_af, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end40.if.then52_crit_edge, label %done

if.end40.if.then52_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

done:                                             ; preds = %if.end40
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23
  %call47 = tail call i32 @omap3isp_stat_register_entities(ptr noundef %isp_hist, ptr noundef %isp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp51 = icmp slt i32 %call47, 0
  br i1 %cmp51, label %done.if.then52_crit_edge, label %done.if.end53_crit_edge

done.if.end53_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

done.if.then52_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then52:                                        ; preds = %done.if.then52_crit_edge, %if.end40.if.then52_crit_edge, %if.end35.if.then52_crit_edge, %if.end30.if.then52_crit_edge, %if.end25.if.then52_crit_edge, %if.end20.if.then52_crit_edge, %if.end15.if.then52_crit_edge, %if.end.if.then52_crit_edge, %do.end
  %ret.095 = phi i32 [ %call47, %done.if.then52_crit_edge ], [ %call42, %if.end40.if.then52_crit_edge ], [ %call37, %if.end35.if.then52_crit_edge ], [ %call32, %if.end30.if.then52_crit_edge ], [ %call27, %if.end25.if.then52_crit_edge ], [ %call22, %if.end20.if.then52_crit_edge ], [ %call17, %if.end15.if.then52_crit_edge ], [ %call12, %if.end.if.then52_crit_edge ], [ %call9, %do.end ]
  tail call fastcc void @isp_unregister_entities(ptr noundef %isp)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %done.if.end53_crit_edge
  %ret.094 = phi i32 [ %ret.095, %if.then52 ], [ %call47, %done.if.end53_crit_edge ]
  ret i32 %ret.094
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp_create_links(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_csi2a = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27
  %video_out = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3
  %call = tail call i32 @media_create_pad_link(ptr noundef %isp_csi2a, i16 noundef zeroext 1, ptr noundef %video_out, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %isp_ccp2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29
  %video_in = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 7
  %call8 = tail call i32 @media_create_pad_link(ptr noundef %video_in, i16 noundef zeroext 0, ptr noundef %isp_ccp2, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26
  %video_out15 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 6
  %call18 = tail call i32 @media_create_pad_link(ptr noundef %isp_ccdc, i16 noundef zeroext 1, ptr noundef %video_out15, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end11.cleanup_crit_edge, label %if.end21

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %isp_prev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25
  %video_in22 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 7
  %call28 = tail call i32 @media_create_pad_link(ptr noundef %video_in22, i16 noundef zeroext 0, ptr noundef %isp_prev, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end21.cleanup_crit_edge, label %if.end31

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %video_out36 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 8
  %call39 = tail call i32 @media_create_pad_link(ptr noundef %isp_prev, i16 noundef zeroext 1, ptr noundef %video_out36, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end31.cleanup_crit_edge, label %if.end42

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  %isp_res = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24
  %video_in43 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 4
  %call49 = tail call i32 @media_create_pad_link(ptr noundef %video_in43, i16 noundef zeroext 0, ptr noundef %isp_res, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end42.cleanup_crit_edge, label %if.end52

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %video_out57 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 5
  %call60 = tail call i32 @media_create_pad_link(ptr noundef %isp_res, i16 noundef zeroext 1, ptr noundef %video_out57, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end52.cleanup_crit_edge, label %if.end63

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %if.end52
  %call70 = tail call i32 @media_create_pad_link(ptr noundef %isp_csi2a, i16 noundef zeroext 1, ptr noundef %isp_ccdc, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end63.cleanup_crit_edge, label %if.end73

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end73:                                         ; preds = %if.end63
  %call80 = tail call i32 @media_create_pad_link(ptr noundef %isp_ccp2, i16 noundef zeroext 1, ptr noundef %isp_ccdc, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end73.cleanup_crit_edge, label %if.end83

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end83:                                         ; preds = %if.end73
  %call90 = tail call i32 @media_create_pad_link(ptr noundef %isp_ccdc, i16 noundef zeroext 2, ptr noundef %isp_prev, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end83.cleanup_crit_edge, label %if.end93

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end93:                                         ; preds = %if.end83
  %call100 = tail call i32 @media_create_pad_link(ptr noundef %isp_ccdc, i16 noundef zeroext 1, ptr noundef %isp_res, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end93.cleanup_crit_edge, label %if.end103

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end103:                                        ; preds = %if.end93
  %call110 = tail call i32 @media_create_pad_link(ptr noundef %isp_prev, i16 noundef zeroext 1, ptr noundef %isp_res, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end103.cleanup_crit_edge, label %if.end113

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end113:                                        ; preds = %if.end103
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22
  %call119 = tail call i32 @media_create_pad_link(ptr noundef %isp_ccdc, i16 noundef zeroext 2, ptr noundef %isp_aewb, i16 noundef zeroext 0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end113.cleanup_crit_edge, label %if.end122

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end122:                                        ; preds = %if.end113
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21
  %call128 = tail call i32 @media_create_pad_link(ptr noundef %isp_ccdc, i16 noundef zeroext 2, ptr noundef %isp_af, i16 noundef zeroext 0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.end122.cleanup_crit_edge, label %if.end131

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end131:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23
  %call137 = tail call i32 @media_create_pad_link(ptr noundef %isp_ccdc, i16 noundef zeroext 2, ptr noundef %isp_hist, i16 noundef zeroext 0, i32 noundef 3) #10
  %0 = tail call i32 @llvm.smin.i32(i32 %call137, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.end122.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call18, %if.end11.cleanup_crit_edge ], [ %call28, %if.end21.cleanup_crit_edge ], [ %call39, %if.end31.cleanup_crit_edge ], [ %call49, %if.end42.cleanup_crit_edge ], [ %call60, %if.end52.cleanup_crit_edge ], [ %call70, %if.end63.cleanup_crit_edge ], [ %call80, %if.end73.cleanup_crit_edge ], [ %call90, %if.end83.cleanup_crit_edge ], [ %call100, %if.end93.cleanup_crit_edge ], [ %call110, %if.end103.cleanup_crit_edge ], [ %call119, %if.end113.cleanup_crit_edge ], [ %call128, %if.end122.cleanup_crit_edge ], [ %0, %if.end131 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_unregister_entities(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %media_dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %media_dev) #10
  %isp_csi2a = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27
  tail call void @omap3isp_csi2_unregister_entities(ptr noundef %isp_csi2a) #10
  %isp_ccp2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29
  tail call void @omap3isp_ccp2_unregister_entities(ptr noundef %isp_ccp2) #10
  %isp_ccdc = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26
  tail call void @omap3isp_ccdc_unregister_entities(ptr noundef %isp_ccdc) #10
  %isp_prev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25
  tail call void @omap3isp_preview_unregister_entities(ptr noundef %isp_prev) #10
  %isp_res = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24
  tail call void @omap3isp_resizer_unregister_entities(ptr noundef %isp_res) #10
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22
  tail call void @omap3isp_stat_unregister_entities(ptr noundef %isp_aewb) #10
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21
  tail call void @omap3isp_stat_unregister_entities(ptr noundef %isp_af) #10
  %isp_hist = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 23
  tail call void @omap3isp_stat_unregister_entities(ptr noundef %isp_hist) #10
  tail call void @v4l2_device_unregister(ptr noundef %isp) #10
  tail call void @media_device_cleanup(ptr noundef %media_dev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_cleanup_modules(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap3isp_h3a_aewb_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_h3a_af_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_hist_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_resizer_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_preview_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_ccdc_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_ccp2_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_csi2_cleanup(ptr noundef %isp) #10
  tail call void @omap3isp_csiphy_cleanup(ptr noundef %isp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_detach_iommu(ptr nocapture noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @arm_iommu_detach_device(ptr noundef %1) #10
  %mapping = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 11
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  tail call void @arm_iommu_release_mapping(ptr noundef %3) #10
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mapping, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_xclk_cleanup(ptr nocapture noundef readonly %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_clk_del_provider(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unregister(ptr noundef %5) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %clk.1 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 20, i32 1, i32 2
  %6 = ptrtoint ptr %clk.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.1, align 4
  %cmp.i.1 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end3.if.end3.1_crit_edge, label %if.then1.1

if.end3.if.end3.1_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.1

if.then1.1:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unregister(ptr noundef %7) #10
  br label %if.end3.1

if.end3.1:                                        ; preds = %if.then1.1, %if.end3.if.end3.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_parse_of_csi2_endpoint(ptr noundef %dev, ptr nocapture noundef readonly %vep, ptr nocapture noundef %buscfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_lane = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 2
  %0 = ptrtoint ptr %clock_lane to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clock_lane, align 4
  %bus1 = getelementptr inbounds %struct.isp_bus_cfg, ptr %buscfg, i32 0, i32 1
  %lanecfg = getelementptr inbounds %struct.isp_csi2_cfg, ptr %bus1, i32 0, i32 1
  %clk = getelementptr inbounds %struct.isp_bus_cfg, ptr %buscfg, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %clk, align 1
  %lane_polarities = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 4
  %3 = ptrtoint ptr %lane_polarities to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lane_polarities, align 2, !range !332
  %pol = getelementptr inbounds %struct.isp_bus_cfg, ptr %buscfg, i32 0, i32 1, i32 1, i32 2
  %5 = ptrtoint ptr %pol to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pol, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_parse_of_csi2_endpoint, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pol, align 1
  %conv15 = zext i8 %7 to i32
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %clk, align 1
  %conv20 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %conv15, i32 noundef %conv20) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %10 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_data_lanes, align 1
  %num_data_lanes24 = getelementptr inbounds %struct.isp_bus_cfg, ptr %buscfg, i32 0, i32 1, i32 1, i32 3
  %12 = ptrtoint ptr %num_data_lanes24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %num_data_lanes24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp107.not = icmp eq i8 %11, 0
  br i1 %cmp107.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0108 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx31 = getelementptr %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 1, i32 %i.0108
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx31, align 1
  %arrayidx34 = getelementptr [2 x %struct.isp_csiphy_lane], ptr %lanecfg, i32 0, i32 %i.0108
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx34, align 1
  %add = add nuw nsw i32 %i.0108, 1
  %arrayidx39 = getelementptr %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 4, i32 %add
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx39, align 1, !range !332
  %pol46 = getelementptr [2 x %struct.isp_csiphy_lane], ptr %lanecfg, i32 0, i32 %i.0108, i32 1
  %18 = ptrtoint ptr %pol46 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %pol46, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_parse_of_csi2_endpoint, %for.inc)) #10
          to label %if.then61 [label %for.inc], !srcloc !322

if.then61:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %pol46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pol46, align 1
  %conv67 = zext i8 %20 to i32
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx34, align 1
  %conv73 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %i.0108, i32 noundef %conv67, i32 noundef %conv73) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %for.body
  %23 = ptrtoint ptr %num_data_lanes24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_data_lanes24, align 1
  %conv27 = zext i8 %24 to i32
  %cmp = icmp ult i32 %add, %conv27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %25 = ptrtoint ptr %bus1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %bus1, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %bus1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @isp_xclk_src_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr %struct.isp_device, ptr %data, i32 0, i32 20, i32 %1, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_xclk_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call fastcc ptr @__omap3isp_get(ptr noundef %1, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp_xclk_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @__omap3isp_put(ptr noundef %1, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_xclk_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %lock = getelementptr i8, ptr %hw, i32 20
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %divider = getelementptr i8, ptr %hw, i32 68
  %0 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %divider, align 4
  %id.i = getelementptr i8, ptr %hw, i32 16
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %3, label %entry.isp_xclk_update.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.isp_xclk_update.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_xclk_update.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %6, i32 0, i32 6, i32 0
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !321
  %and.i.i = and i32 %9, -32
  %or.i.i = or i32 %and.i.i, %1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #10, !srcloc !320
  br label %isp_xclk_update.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %shl3.i = shl i32 %1, 5
  %arrayidx.i.i7.i = getelementptr %struct.isp_device, ptr %13, i32 0, i32 6, i32 0
  %14 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i7.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %15, i32 80
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #10, !srcloc !321
  %and.i9.i = and i32 %16, -993
  %or.i10.i = or i32 %and.i9.i, %shl3.i
  %17 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i7.i, align 4
  %add.ptr.i2.i11.i = getelementptr i8, ptr %18, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11.i, i32 %or.i10.i) #10, !srcloc !320
  br label %isp_xclk_update.exit

isp_xclk_update.exit:                             ; preds = %sw.bb1.i, %sw.bb.i, %entry.isp_xclk_update.exit_crit_edge
  %enabled = getelementptr i8, ptr %hw, i32 64
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enabled, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp_xclk_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %lock = getelementptr i8, ptr %hw, i32 20
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %id.i = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %1, label %entry.isp_xclk_update.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.isp_xclk_update.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_xclk_update.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %4, i32 0, i32 6, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !321
  %and.i.i = and i32 %7, -32
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and.i.i) #10, !srcloc !320
  br label %isp_xclk_update.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i.i7.i = getelementptr %struct.isp_device, ptr %11, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i7.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %13, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #10, !srcloc !321
  %and.i9.i = and i32 %14, -993
  %15 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i7.i, align 4
  %add.ptr.i2.i11.i = getelementptr i8, ptr %16, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11.i, i32 %and.i9.i) #10, !srcloc !320
  br label %isp_xclk_update.exit

isp_xclk_update.exit:                             ; preds = %sw.bb1.i, %sw.bb.i, %entry.isp_xclk_update.exit_crit_edge
  %enabled = getelementptr i8, ptr %hw, i32 64
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enabled, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isp_xclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %divider = getelementptr i8, ptr %hw, i32 68
  %0 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %divider, align 4
  %div = udiv i32 %parent_rate, %1
  ret i32 %div
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isp_xclk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not.i = icmp ugt i32 %1, %rate
  br i1 %cmp.not.i, label %if.end.i, label %entry.isp_xclk_calc_divider.exit_crit_edge

entry.isp_xclk_calc_divider.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_xclk_calc_divider.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.i = icmp eq i32 %rate, 0
  %spec.select = select i1 %cmp1.i, i32 1, i32 %rate
  %div20.i = lshr i32 %spec.select, 1
  %add.i = add i32 %1, %div20.i
  %div4.i = udiv i32 %add.i, %spec.select
  %2 = tail call i32 @llvm.umin.i32(i32 %div4.i, i32 30) #10
  %div8.i = udiv i32 %1, %2
  br label %isp_xclk_calc_divider.exit

isp_xclk_calc_divider.exit:                       ; preds = %if.end.i, %entry.isp_xclk_calc_divider.exit_crit_edge
  %storemerge.i = phi i32 [ %div8.i, %if.end.i ], [ %1, %entry.isp_xclk_calc_divider.exit_crit_edge ]
  ret i32 %storemerge.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_xclk_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.not.i = icmp ult i32 %rate, %parent_rate
  br i1 %cmp.not.i, label %if.end.i, label %entry.isp_xclk_calc_divider.exit_crit_edge

entry.isp_xclk_calc_divider.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_xclk_calc_divider.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.i = icmp eq i32 %rate, 0
  %spec.select = select i1 %cmp1.i, i32 1, i32 %rate
  %div20.i = lshr i32 %spec.select, 1
  %add.i = add i32 %div20.i, %parent_rate
  %div4.i = udiv i32 %add.i, %spec.select
  %0 = tail call i32 @llvm.umin.i32(i32 %div4.i, i32 30) #10
  %div8.i = udiv i32 %parent_rate, %0
  br label %isp_xclk_calc_divider.exit

isp_xclk_calc_divider.exit:                       ; preds = %if.end.i, %entry.isp_xclk_calc_divider.exit_crit_edge
  %storemerge.i = phi i32 [ %div8.i, %if.end.i ], [ %parent_rate, %entry.isp_xclk_calc_divider.exit_crit_edge ]
  %retval.0.i30 = phi i32 [ %0, %if.end.i ], [ 31, %entry.isp_xclk_calc_divider.exit_crit_edge ]
  %lock = getelementptr i8, ptr %hw, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %divider7 = getelementptr i8, ptr %hw, i32 68
  %1 = ptrtoint ptr %divider7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %retval.0.i30, ptr %divider7, align 4
  %enabled = getelementptr i8, ptr %hw, i32 64
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %isp_xclk_calc_divider.exit.if.end_crit_edge, label %if.then

isp_xclk_calc_divider.exit.if.end_crit_edge:      ; preds = %isp_xclk_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %isp_xclk_calc_divider.exit
  %id.i = getelementptr i8, ptr %hw, i32 16
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %5, label %if.then.if.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %8, i32 0, i32 6, i32 0
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !321
  %and.i.i = and i32 %11, -32
  %or.i.i = or i32 %and.i.i, %retval.0.i30
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #10, !srcloc !320
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %shl3.i = shl nuw nsw i32 %retval.0.i30, 5
  %arrayidx.i.i7.i = getelementptr %struct.isp_device, ptr %15, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i7.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %17, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #10, !srcloc !321
  %and.i9.i = and i32 %18, -993
  %or.i10.i = or i32 %and.i9.i, %shl3.i
  %19 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i7.i, align 4
  %add.ptr.i2.i11.i = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i11.i, i32 %or.i10.i) #10, !srcloc !320
  br label %if.end

if.end:                                           ; preds = %sw.bb1.i, %sw.bb.i, %if.then.if.end_crit_edge, %isp_xclk_calc_divider.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_xclk_set_rate.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_xclk_set_rate, %do.end21)) #10
          to label %if.then16 [label %do.end21], !srcloc !322

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.isp_device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %id = getelementptr i8, ptr %hw, i32 16
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17 = icmp eq i32 %26, 0
  %cond = select i1 %cmp17, i32 97, i32 98
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_xclk_set_rate.__UNIQUE_ID_ddebug300, ptr noundef %24, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef %cond, i32 noundef %storemerge.i, i32 noundef %retval.0.i30) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arm_iommu_create_mapping(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp_isr_sbl(ptr noundef %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %arrayidx.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !321
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %4) #10, !srcloc !320
  %and = and i32 %4, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp_isr_sbl.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isp_isr_sbl, %if.end8)) #10
          to label %if.then7 [label %if.end8], !srcloc !322

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp_isr_sbl.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.98, i32 noundef %and) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %entry.if.end8_crit_edge
  %and9 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  %pipe12 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 29, i32 0, i32 0, i32 14
  %7 = ptrtoint ptr %pipe12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe12, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %if.then11.if.end16_crit_edge, label %if.then14

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.isp_pipeline, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %error, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %and17 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end30_crit_edge, label %if.then19

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then19:                                        ; preds = %if.end16
  %pipe23 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 0, i32 0, i32 14
  %10 = ptrtoint ptr %pipe23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe23, align 4
  %cmp26.not = icmp eq ptr %11, null
  br i1 %cmp26.not, label %if.then19.if.end30_crit_edge, label %if.then27

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %error28 = getelementptr inbounds %struct.isp_pipeline, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %error28 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %error28, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then19.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  %and31 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end44_crit_edge, label %if.then33

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then33:                                        ; preds = %if.end30
  %pipe37 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 26, i32 0, i32 0, i32 14
  %13 = ptrtoint ptr %pipe37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe37, align 4
  %cmp40.not = icmp eq ptr %14, null
  br i1 %cmp40.not, label %if.then33.if.end44_crit_edge, label %if.then41

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %error42 = getelementptr inbounds %struct.isp_pipeline, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %error42 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %error42, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then33.if.end44_crit_edge, %if.end30.if.end44_crit_edge
  %and45 = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end58_crit_edge, label %if.then47

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then47:                                        ; preds = %if.end44
  %pipe51 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 25, i32 0, i32 0, i32 14
  %16 = ptrtoint ptr %pipe51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe51, align 4
  %cmp54.not = icmp eq ptr %17, null
  br i1 %cmp54.not, label %if.then47.if.end58_crit_edge, label %if.then55

if.then47.if.end58_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %error56 = getelementptr inbounds %struct.isp_pipeline, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %error56 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %error56, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.then47.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %and59 = and i32 %4, 3932160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end72_crit_edge, label %if.then61

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then61:                                        ; preds = %if.end58
  %pipe65 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 24, i32 0, i32 0, i32 14
  %19 = ptrtoint ptr %pipe65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pipe65, align 4
  %cmp68.not = icmp eq ptr %20, null
  br i1 %cmp68.not, label %if.then61.if.end72_crit_edge, label %if.then69

if.then61.if.end72_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then69:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %error70 = getelementptr inbounds %struct.isp_pipeline, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %error70 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %error70, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then61.if.end72_crit_edge, %if.end58.if.end72_crit_edge
  %and73 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end76_crit_edge, label %if.then75

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %isp_af = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 21
  tail call void @omap3isp_stat_sbl_overflow(ptr noundef %isp_af) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end72.if.end76_crit_edge
  %and77 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end80_crit_edge, label %if.then79

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %isp_aewb = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 22
  tail call void @omap3isp_stat_sbl_overflow(ptr noundef %isp_aewb) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76.if.end80_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_csi2_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_ccp2_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_preview_isr_frame_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_resizer_isr_frame_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_isr_frame_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_ccdc_isr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_preview_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_resizer_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_sbl_overflow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_csiphy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_csi2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_ccp2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_ccdc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_preview_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_resizer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_hist_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_h3a_aewb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_h3a_af_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_h3a_aewb_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_hist_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_resizer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_preview_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_ccdc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_ccp2_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_csi2_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_csiphy_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_ccp2_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_csi2_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_ccdc_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_preview_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_resizer_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_stat_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_link_notify(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_subdev_notifier_complete(ptr noundef %async) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %async, i32 -128
  %media_dev = getelementptr i8, ptr %async, i32 48
  %graph_mutex = getelementptr i8, ptr %async, i32 308
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #10
  %crashed = getelementptr i8, ptr %async, i32 884
  %entity_internal_idx_max.i = getelementptr i8, ptr %async, i32 264
  %0 = ptrtoint ptr %entity_internal_idx_max.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entity_internal_idx_max.i, align 8
  %add.i = add i32 %1, 1
  %call.i = tail call i32 @__media_entity_enum_init(ptr noundef %crashed, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdevs = getelementptr i8, ptr %async, i32 -120
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn76 = load ptr, ptr %subdevs, align 4
  %cmp.not78 = icmp eq ptr %.pn76, %subdevs
  br i1 %cmp.not78, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %isp_csi2c.i = getelementptr i8, ptr %async, i32 47944
  %isp_ccp2.i = getelementptr i8, ptr %async, i32 50616
  %isp_csi2a.i = getelementptr i8, ptr %async, i32 45272
  %isp_ccdc.i = getelementptr i8, ptr %async, i32 42440
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn79 = phi ptr [ %.pn76, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %sd.080 = getelementptr i8, ptr %.pn79, i32 -80
  %notifier = getelementptr i8, ptr %.pn79, i32 104
  %3 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notifier, align 4
  %cmp10.not = icmp eq ptr %4, %async
  br i1 %cmp10.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %asd = getelementptr i8, ptr %.pn79, i32 100
  %5 = ptrtoint ptr %asd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asd, align 4
  %bus = getelementptr inbounds %struct.isp_async_subdev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %8, label %do.end.i [
    i32 0, label %if.end12.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
    i32 2, label %if.end12.sw.bb5.i_crit_edge
    i32 3, label %if.end12.sw.bb5.i_crit_edge140
    i32 4, label %sw.bb8.i
  ]

if.end12.sw.bb5.i_crit_edge140:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

if.end12.sw.bb5.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

if.end12.sw.epilog.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end12.sw.bb5.i_crit_edge, %if.end12.sw.bb5.i_crit_edge140
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %async, i32 656
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef %8) #13
  br label %if.then18

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb5.i, %sw.bb2.i, %if.end12.sw.epilog.i_crit_edge
  %input.0.i = phi ptr [ %isp_csi2c.i, %sw.bb8.i ], [ %isp_ccp2.i, %sw.bb5.i ], [ %isp_csi2a.i, %sw.bb2.i ], [ %isp_ccdc.i, %if.end12.sw.epilog.i_crit_edge ]
  %flags.0.i = phi i32 [ 3, %sw.bb8.i ], [ 0, %sw.bb5.i ], [ 3, %sw.bb2.i ], [ %8, %if.end12.sw.epilog.i_crit_edge ]
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %input.0.i, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %do.end13.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.epilog.i
  %num_pads15.i = getelementptr i8, ptr %.pn79, i32 -48
  %14 = ptrtoint ptr %num_pads15.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads15.i, align 4
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp55.not.i = icmp eq i16 %15, 0
  br i1 %cmp55.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pads.i = getelementptr i8, ptr %.pn79, i32 -36
  %16 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pads.i, align 4
  br label %for.body.i

do.end13.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev14.i = getelementptr i8, ptr %async, i32 656
  %18 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev14.i, align 8
  %name.i = getelementptr i8, ptr %.pn79, i32 -64
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.131, ptr noundef %21, i32 noundef %8) #13
  br label %if.then18

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %flags17.i = getelementptr %struct.media_pad, ptr %17, i32 %i.056.i, i32 4
  %22 = ptrtoint ptr %flags17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags17.i, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end28.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end28.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.056.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp23.i = icmp eq i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp23.i, label %for.end.i.do.end28.i_crit_edge, label %isp_link_entity.exit

for.end.i.do.end28.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

do.end28.i:                                       ; preds = %for.end.i.do.end28.i_crit_edge, %for.inc.i.do.end28.i_crit_edge
  %dev29.i = getelementptr i8, ptr %async, i32 656
  %24 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev29.i, align 8
  %name30.i = getelementptr i8, ptr %.pn79, i32 -64
  %26 = ptrtoint ptr %name30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name30.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.129, ptr noundef %27) #13
  br label %if.then18

isp_link_entity.exit:                             ; preds = %for.end.i
  %conv32.i = trunc i32 %i.0.lcssa.i to i16
  %call.i59 = tail call i32 @media_create_pad_link(ptr noundef %sd.080, i16 noundef zeroext %conv32.i, ptr noundef %input.0.i, i16 noundef zeroext 0, i32 noundef %flags.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp17 = icmp slt i32 %call.i59, 0
  br i1 %cmp17, label %isp_link_entity.exit.if.then18_crit_edge, label %isp_link_entity.exit.for.inc_crit_edge

isp_link_entity.exit.for.inc_crit_edge:           ; preds = %isp_link_entity.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

isp_link_entity.exit.if.then18_crit_edge:         ; preds = %isp_link_entity.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %isp_link_entity.exit.if.then18_crit_edge, %do.end28.i, %do.end13.i, %do.end.i
  %retval.0.i63 = phi i32 [ -22, %do.end.i ], [ -22, %do.end28.i ], [ -22, %do.end13.i ], [ %call.i59, %isp_link_entity.exit.if.then18_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #10
  br label %cleanup

for.inc:                                          ; preds = %isp_link_entity.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #10
  %call.i60 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %add.ptr, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp31 = icmp slt i32 %call.i60, 0
  br i1 %cmp31, label %for.end.cleanup_crit_edge, label %if.end33

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %for.end.cleanup_crit_edge, %if.then18, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %retval.0.i63, %if.then18 ], [ %call35, %if.end33 ], [ %call.i60, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_enum_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_csi2_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_ccp2_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_ccdc_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_preview_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_resizer_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_h3a_af_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_enum_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_pm_prepare(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %isp_mutex = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 13
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %isp_mutex) #10
  br i1 %call1, label %do.end, label %entry.if.end_crit_edge, !prof !330

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1541, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ref_count = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %isp_aewb.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 22
  tail call void @omap3isp_stat_suspend(ptr noundef %isp_aewb.i) #10
  %isp_af.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 21
  tail call void @omap3isp_stat_suspend(ptr noundef %isp_af.i) #10
  %isp_hist.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 23
  tail call void @omap3isp_stat_suspend(ptr noundef %isp_hist.i) #10
  %isp_res.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 24
  %pipe1.i.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 14
  %4 = ptrtoint ptr %pipe1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end21.isp_suspend_module_pipeline.exit.i_crit_edge, label %if.end.i.i.i

if.end21.isp_suspend_module_pipeline.exit.i_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit.i

if.end.i.i.i:                                     ; preds = %if.end21
  %stream_state.i.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %stream_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.isp_suspend_module_pipeline.exit.i_crit_edge, label %isp_pipeline_is_last.exit.i.i

if.end.i.i.i.isp_suspend_module_pipeline.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit.i

isp_pipeline_is_last.exit.i.i:                    ; preds = %if.end.i.i.i
  %output.i.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %output.i.i.i, align 4
  %pad5.i.i.i = getelementptr inbounds %struct.isp_video, ptr %9, i32 0, i32 2
  %call.i.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i.i) #10
  %entity.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %entity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity.i.i.i, align 4
  %cmp6.i.not.i.i = icmp eq ptr %11, %isp_res.i
  br i1 %cmp6.i.not.i.i, label %if.then.i.i, label %isp_pipeline_is_last.exit.i.i.isp_suspend_module_pipeline.exit.i_crit_edge

isp_pipeline_is_last.exit.i.i.isp_suspend_module_pipeline.exit.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit.i

if.then.i.i:                                      ; preds = %isp_pipeline_is_last.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pipe1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipe1.i.i.i, align 4
  %call.i2.i.i = tail call fastcc i32 @isp_pipeline_disable(ptr noundef %13) #10
  br label %isp_suspend_module_pipeline.exit.i

isp_suspend_module_pipeline.exit.i:               ; preds = %if.then.i.i, %isp_pipeline_is_last.exit.i.i.isp_suspend_module_pipeline.exit.i_crit_edge, %if.end.i.i.i.isp_suspend_module_pipeline.exit.i_crit_edge, %if.end21.isp_suspend_module_pipeline.exit.i_crit_edge
  %isp_prev.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 25
  %pipe1.i.i47.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 14
  %14 = ptrtoint ptr %pipe1.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe1.i.i47.i, align 4
  %tobool.not.i.i48.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i48.i, label %isp_suspend_module_pipeline.exit.i.isp_suspend_module_pipeline.exit60.i_crit_edge, label %if.end.i.i51.i

isp_suspend_module_pipeline.exit.i.isp_suspend_module_pipeline.exit60.i_crit_edge: ; preds = %isp_suspend_module_pipeline.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit60.i

if.end.i.i51.i:                                   ; preds = %isp_suspend_module_pipeline.exit.i
  %stream_state.i.i49.i = getelementptr inbounds %struct.isp_pipeline, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %stream_state.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream_state.i.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i50.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i50.i, label %if.end.i.i51.i.isp_suspend_module_pipeline.exit60.i_crit_edge, label %isp_pipeline_is_last.exit.i57.i

if.end.i.i51.i.isp_suspend_module_pipeline.exit60.i_crit_edge: ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit60.i

isp_pipeline_is_last.exit.i57.i:                  ; preds = %if.end.i.i51.i
  %output.i.i52.i = getelementptr inbounds %struct.isp_pipeline, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %output.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %output.i.i52.i, align 4
  %pad5.i.i53.i = getelementptr inbounds %struct.isp_video, ptr %19, i32 0, i32 2
  %call.i.i54.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i53.i) #10
  %entity.i.i55.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i54.i, i32 0, i32 1
  %20 = ptrtoint ptr %entity.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entity.i.i55.i, align 4
  %cmp6.i.not.i56.i = icmp eq ptr %21, %isp_prev.i
  br i1 %cmp6.i.not.i56.i, label %if.then.i59.i, label %isp_pipeline_is_last.exit.i57.i.isp_suspend_module_pipeline.exit60.i_crit_edge

isp_pipeline_is_last.exit.i57.i.isp_suspend_module_pipeline.exit60.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit60.i

if.then.i59.i:                                    ; preds = %isp_pipeline_is_last.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %pipe1.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe1.i.i47.i, align 4
  %call.i2.i58.i = tail call fastcc i32 @isp_pipeline_disable(ptr noundef %23) #10
  br label %isp_suspend_module_pipeline.exit60.i

isp_suspend_module_pipeline.exit60.i:             ; preds = %if.then.i59.i, %isp_pipeline_is_last.exit.i57.i.isp_suspend_module_pipeline.exit60.i_crit_edge, %if.end.i.i51.i.isp_suspend_module_pipeline.exit60.i_crit_edge, %isp_suspend_module_pipeline.exit.i.isp_suspend_module_pipeline.exit60.i_crit_edge
  %isp_ccdc.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26
  %pipe1.i.i61.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 14
  %24 = ptrtoint ptr %pipe1.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe1.i.i61.i, align 4
  %tobool.not.i.i62.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i62.i, label %isp_suspend_module_pipeline.exit60.i.isp_suspend_module_pipeline.exit74.i_crit_edge, label %if.end.i.i65.i

isp_suspend_module_pipeline.exit60.i.isp_suspend_module_pipeline.exit74.i_crit_edge: ; preds = %isp_suspend_module_pipeline.exit60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit74.i

if.end.i.i65.i:                                   ; preds = %isp_suspend_module_pipeline.exit60.i
  %stream_state.i.i63.i = getelementptr inbounds %struct.isp_pipeline, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %stream_state.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stream_state.i.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i64.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i64.i, label %if.end.i.i65.i.isp_suspend_module_pipeline.exit74.i_crit_edge, label %isp_pipeline_is_last.exit.i71.i

if.end.i.i65.i.isp_suspend_module_pipeline.exit74.i_crit_edge: ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit74.i

isp_pipeline_is_last.exit.i71.i:                  ; preds = %if.end.i.i65.i
  %output.i.i66.i = getelementptr inbounds %struct.isp_pipeline, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %output.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %output.i.i66.i, align 4
  %pad5.i.i67.i = getelementptr inbounds %struct.isp_video, ptr %29, i32 0, i32 2
  %call.i.i68.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i67.i) #10
  %entity.i.i69.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i68.i, i32 0, i32 1
  %30 = ptrtoint ptr %entity.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entity.i.i69.i, align 4
  %cmp6.i.not.i70.i = icmp eq ptr %31, %isp_ccdc.i
  br i1 %cmp6.i.not.i70.i, label %if.then.i73.i, label %isp_pipeline_is_last.exit.i71.i.isp_suspend_module_pipeline.exit74.i_crit_edge

isp_pipeline_is_last.exit.i71.i.isp_suspend_module_pipeline.exit74.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit74.i

if.then.i73.i:                                    ; preds = %isp_pipeline_is_last.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %pipe1.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pipe1.i.i61.i, align 4
  %call.i2.i72.i = tail call fastcc i32 @isp_pipeline_disable(ptr noundef %33) #10
  br label %isp_suspend_module_pipeline.exit74.i

isp_suspend_module_pipeline.exit74.i:             ; preds = %if.then.i73.i, %isp_pipeline_is_last.exit.i71.i.isp_suspend_module_pipeline.exit74.i_crit_edge, %if.end.i.i65.i.isp_suspend_module_pipeline.exit74.i_crit_edge, %isp_suspend_module_pipeline.exit60.i.isp_suspend_module_pipeline.exit74.i_crit_edge
  %isp_csi2a.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27
  %pipe1.i.i75.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 0, i32 0, i32 14
  %34 = ptrtoint ptr %pipe1.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pipe1.i.i75.i, align 4
  %tobool.not.i.i76.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i76.i, label %isp_suspend_module_pipeline.exit74.i.isp_suspend_module_pipeline.exit88.i_crit_edge, label %if.end.i.i79.i

isp_suspend_module_pipeline.exit74.i.isp_suspend_module_pipeline.exit88.i_crit_edge: ; preds = %isp_suspend_module_pipeline.exit74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit88.i

if.end.i.i79.i:                                   ; preds = %isp_suspend_module_pipeline.exit74.i
  %stream_state.i.i77.i = getelementptr inbounds %struct.isp_pipeline, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %stream_state.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stream_state.i.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i78.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i78.i, label %if.end.i.i79.i.isp_suspend_module_pipeline.exit88.i_crit_edge, label %isp_pipeline_is_last.exit.i85.i

if.end.i.i79.i.isp_suspend_module_pipeline.exit88.i_crit_edge: ; preds = %if.end.i.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit88.i

isp_pipeline_is_last.exit.i85.i:                  ; preds = %if.end.i.i79.i
  %output.i.i80.i = getelementptr inbounds %struct.isp_pipeline, ptr %35, i32 0, i32 5
  %38 = ptrtoint ptr %output.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %output.i.i80.i, align 4
  %pad5.i.i81.i = getelementptr inbounds %struct.isp_video, ptr %39, i32 0, i32 2
  %call.i.i82.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i81.i) #10
  %entity.i.i83.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i82.i, i32 0, i32 1
  %40 = ptrtoint ptr %entity.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entity.i.i83.i, align 4
  %cmp6.i.not.i84.i = icmp eq ptr %41, %isp_csi2a.i
  br i1 %cmp6.i.not.i84.i, label %if.then.i87.i, label %isp_pipeline_is_last.exit.i85.i.isp_suspend_module_pipeline.exit88.i_crit_edge

isp_pipeline_is_last.exit.i85.i.isp_suspend_module_pipeline.exit88.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit88.i

if.then.i87.i:                                    ; preds = %isp_pipeline_is_last.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %pipe1.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pipe1.i.i75.i, align 4
  %call.i2.i86.i = tail call fastcc i32 @isp_pipeline_disable(ptr noundef %43) #10
  br label %isp_suspend_module_pipeline.exit88.i

isp_suspend_module_pipeline.exit88.i:             ; preds = %if.then.i87.i, %isp_pipeline_is_last.exit.i85.i.isp_suspend_module_pipeline.exit88.i_crit_edge, %if.end.i.i79.i.isp_suspend_module_pipeline.exit88.i_crit_edge, %isp_suspend_module_pipeline.exit74.i.isp_suspend_module_pipeline.exit88.i_crit_edge
  %isp_ccp2.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 29
  %pipe1.i.i89.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 29, i32 0, i32 0, i32 14
  %44 = ptrtoint ptr %pipe1.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pipe1.i.i89.i, align 4
  %tobool.not.i.i90.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i90.i, label %isp_suspend_module_pipeline.exit88.i.isp_suspend_module_pipeline.exit102.i_crit_edge, label %if.end.i.i93.i

isp_suspend_module_pipeline.exit88.i.isp_suspend_module_pipeline.exit102.i_crit_edge: ; preds = %isp_suspend_module_pipeline.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit102.i

if.end.i.i93.i:                                   ; preds = %isp_suspend_module_pipeline.exit88.i
  %stream_state.i.i91.i = getelementptr inbounds %struct.isp_pipeline, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %stream_state.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stream_state.i.i91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i92.i = icmp eq i32 %47, 0
  br i1 %cmp.i.i92.i, label %if.end.i.i93.i.isp_suspend_module_pipeline.exit102.i_crit_edge, label %isp_pipeline_is_last.exit.i99.i

if.end.i.i93.i.isp_suspend_module_pipeline.exit102.i_crit_edge: ; preds = %if.end.i.i93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit102.i

isp_pipeline_is_last.exit.i99.i:                  ; preds = %if.end.i.i93.i
  %output.i.i94.i = getelementptr inbounds %struct.isp_pipeline, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %output.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %output.i.i94.i, align 4
  %pad5.i.i95.i = getelementptr inbounds %struct.isp_video, ptr %49, i32 0, i32 2
  %call.i.i96.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i95.i) #10
  %entity.i.i97.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i96.i, i32 0, i32 1
  %50 = ptrtoint ptr %entity.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %entity.i.i97.i, align 4
  %cmp6.i.not.i98.i = icmp eq ptr %51, %isp_ccp2.i
  br i1 %cmp6.i.not.i98.i, label %if.then.i101.i, label %isp_pipeline_is_last.exit.i99.i.isp_suspend_module_pipeline.exit102.i_crit_edge

isp_pipeline_is_last.exit.i99.i.isp_suspend_module_pipeline.exit102.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_module_pipeline.exit102.i

if.then.i101.i:                                   ; preds = %isp_pipeline_is_last.exit.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %pipe1.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pipe1.i.i89.i, align 4
  %call.i2.i100.i = tail call fastcc i32 @isp_pipeline_disable(ptr noundef %53) #10
  br label %isp_suspend_module_pipeline.exit102.i

isp_suspend_module_pipeline.exit102.i:            ; preds = %if.then.i101.i, %isp_pipeline_is_last.exit.i99.i.isp_suspend_module_pipeline.exit102.i_crit_edge, %if.end.i.i93.i.isp_suspend_module_pipeline.exit102.i_crit_edge, %isp_suspend_module_pipeline.exit88.i.isp_suspend_module_pipeline.exit102.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %54, 100
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %isp_suspend_module_pipeline.exit102.i
  %call10.i = tail call i32 @omap3isp_stat_busy(ptr noundef %isp_af.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  %call12.i = tail call i32 @omap3isp_stat_busy(ptr noundef %isp_aewb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false.i.while.body.i_crit_edge

lor.lhs.false.i.while.body.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %call16.i = tail call i32 @omap3isp_stat_busy(ptr noundef %isp_hist.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false18.i, label %lor.lhs.false14.i.while.body.i_crit_edge

lor.lhs.false14.i.while.body.i_crit_edge:         ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false14.i
  %call20.i = tail call i32 @omap3isp_preview_busy(ptr noundef %isp_prev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %lor.lhs.false18.i.while.body.i_crit_edge

lor.lhs.false18.i.while.body.i_crit_edge:         ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false18.i
  %call24.i = tail call i32 @omap3isp_resizer_busy(ptr noundef %isp_res.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %lor.rhs.i, label %lor.lhs.false22.i.while.body.i_crit_edge

lor.lhs.false22.i.while.body.i_crit_edge:         ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.rhs.i:                                        ; preds = %lor.lhs.false22.i
  %call27.i = tail call i32 @omap3isp_ccdc_busy(ptr noundef %isp_ccdc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %lor.rhs.i.isp_suspend_modules.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.rhs.i.isp_suspend_modules.exit_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_suspend_modules.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %lor.lhs.false22.i.while.body.i_crit_edge, %lor.lhs.false18.i.while.body.i_crit_edge, %lor.lhs.false14.i.while.body.i_crit_edge, %lor.lhs.false.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %55
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.136) #13
  br label %isp_suspend_modules.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %while.cond.i

isp_suspend_modules.exit:                         ; preds = %do.end.i, %lor.rhs.i.isp_suspend_modules.exit_crit_edge
  %tobool23.not = phi i1 [ false, %do.end.i ], [ true, %lor.rhs.i.isp_suspend_modules.exit_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 0
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !320
  %60 = load i32, ptr getelementptr inbounds ([4 x %struct.isp_reg], ptr @isp_reg_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp.not1.i.i = icmp eq i32 %60, -1
  br i1 %cmp.not1.i.i, label %isp_suspend_modules.exit.isp_save_ctx.exit_crit_edge, label %isp_suspend_modules.exit.for.body.i.i_crit_edge

isp_suspend_modules.exit.for.body.i.i_crit_edge:  ; preds = %isp_suspend_modules.exit
  br label %for.body.i.i

isp_suspend_modules.exit.isp_save_ctx.exit_crit_edge: ; preds = %isp_suspend_modules.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_save_ctx.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %isp_suspend_modules.exit.for.body.i.i_crit_edge
  %61 = phi i32 [ %69, %for.body.i.i.for.body.i.i_crit_edge ], [ %60, %isp_suspend_modules.exit.for.body.i.i_crit_edge ]
  %next.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ @isp_reg_list, %isp_suspend_modules.exit.for.body.i.i_crit_edge ]
  %62 = ptrtoint ptr %next.02.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %next.02.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %65, i32 %61
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !321
  %val.i.i = getelementptr inbounds %struct.isp_reg, ptr %next.02.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1
  %reg.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1, i32 1
  %68 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %69, -1
  br i1 %cmp.not.i.i, label %for.body.i.i.isp_save_ctx.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.isp_save_ctx.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_save_ctx.exit

isp_save_ctx.exit:                                ; preds = %for.body.i.i.isp_save_ctx.exit_crit_edge, %isp_suspend_modules.exit.isp_save_ctx.exit_crit_edge
  %dev.i34 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i34, align 8
  tail call void @omap_iommu_save_ctx(ptr noundef %71) #10
  br i1 %tobool23.not, label %isp_save_ctx.exit.cleanup_crit_edge, label %if.then24

isp_save_ctx.exit.cleanup_crit_edge:              ; preds = %isp_save_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %isp_save_ctx.exit
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %73, i32 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #10, !srcloc !321
  %or.i = or i32 %74, 2
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %or.i) #10, !srcloc !320
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i1011.i = getelementptr i8, ptr %78, i32 8
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1011.i) #10, !srcloc !321
  %and12.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not13.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not13.i, label %if.then24.while.body.i37_crit_edge, label %if.then24.while.end.i_crit_edge

if.then24.while.end.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.then24.while.body.i37_crit_edge:               ; preds = %if.then24
  br label %while.body.i37

while.body.i37:                                   ; preds = %if.end.i41.while.body.i37_crit_edge, %if.then24.while.body.i37_crit_edge
  %timeout.014.i = phi i32 [ %inc.i, %if.end.i41.while.body.i37_crit_edge ], [ 0, %if.then24.while.body.i37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %timeout.014.i)
  %exitcond.i = icmp eq i32 %timeout.014.i, 10001
  br i1 %exitcond.i, label %do.end.i39, label %if.end.i41

do.end.i39:                                       ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i34, align 8
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %81, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end.i41:                                       ; preds = %while.body.i37
  %inc.i = add nuw nsw i32 %timeout.014.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #10
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %84, i32 8
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #10, !srcloc !321
  %and.i = and i32 %85, 1
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %if.end.i41.while.body.i37_crit_edge, label %if.end.i41.while.end.i_crit_edge

if.end.i41.while.end.i_crit_edge:                 ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i41.while.body.i37_crit_edge:              ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i37

while.end.i:                                      ; preds = %if.end.i41.while.end.i_crit_edge, %if.then24.while.end.i_crit_edge
  %stop_failure.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 14
  %86 = ptrtoint ptr %stop_failure.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %stop_failure.i, align 8
  %crashed.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 15
  %87 = ptrtoint ptr %crashed.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %crashed.i, align 4
  %idx_max.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 15, i32 1
  %89 = ptrtoint ptr %idx_max.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %idx_max.i.i, align 4
  %sub.i.i.i = add i32 %90, 31
  %91 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %91, 536870908
  %92 = call ptr @memset(ptr %88, i32 0, i32 %mul.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %do.end.i39, %isp_save_ctx.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp_pm_complete(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ref_count = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.isp_reg], ptr @isp_reg_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not1.i.i = icmp eq i32 %4, -1
  br i1 %cmp.not1.i.i, label %if.end.isp_restore_ctx.exit_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.isp_restore_ctx.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_restore_ctx.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %5 = phi i32 [ %13, %for.body.i.i.for.body.i.i_crit_edge ], [ %4, %if.end.for.body.i.i_crit_edge ]
  %next.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ @isp_reg_list, %if.end.for.body.i.i_crit_edge ]
  %val.i.i = getelementptr inbounds %struct.isp_reg, ptr %next.02.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i.i, align 4
  %8 = ptrtoint ptr %next.02.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next.02.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %7) #10, !srcloc !320
  %incdec.ptr.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1
  %reg.i.i = getelementptr %struct.isp_reg, ptr %next.02.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %13, -1
  br i1 %cmp.not.i.i, label %for.body.i.i.isp_restore_ctx.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.isp_restore_ctx.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_restore_ctx.exit

isp_restore_ctx.exit:                             ; preds = %for.body.i.i.isp_restore_ctx.exit_crit_edge, %if.end.isp_restore_ctx.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call void @omap_iommu_restore_ctx(ptr noundef %15) #10
  tail call void @omap3isp_ccdc_restore_context(ptr noundef %1) #10
  tail call void @omap3isp_preview_restore_context(ptr noundef %1) #10
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2128923655) #10, !srcloc !320
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -2128923655) #10, !srcloc !320
  %isp_aewb.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 22
  tail call void @omap3isp_stat_resume(ptr noundef %isp_aewb.i) #10
  %isp_af.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 21
  tail call void @omap3isp_stat_resume(ptr noundef %isp_af.i) #10
  %isp_hist.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 23
  tail call void @omap3isp_stat_resume(ptr noundef %isp_hist.i) #10
  %isp_res.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 24
  %pipe1.i.i.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 14
  %20 = ptrtoint ptr %pipe1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pipe1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %isp_restore_ctx.exit.isp_resume_module_pipeline.exit.i_crit_edge, label %if.end.i.i.i

isp_restore_ctx.exit.isp_resume_module_pipeline.exit.i_crit_edge: ; preds = %isp_restore_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit.i

if.end.i.i.i:                                     ; preds = %isp_restore_ctx.exit
  %stream_state.i.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %stream_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.isp_resume_module_pipeline.exit.i_crit_edge, label %isp_pipeline_is_last.exit.i.i

if.end.i.i.i.isp_resume_module_pipeline.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit.i

isp_pipeline_is_last.exit.i.i:                    ; preds = %if.end.i.i.i
  %output.i.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %output.i.i.i, align 4
  %pad5.i.i.i = getelementptr inbounds %struct.isp_video, ptr %25, i32 0, i32 2
  %call.i.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i.i) #10
  %entity.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %entity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entity.i.i.i, align 4
  %cmp6.i.not.i.i = icmp eq ptr %27, %isp_res.i
  br i1 %cmp6.i.not.i.i, label %if.then.i.i, label %isp_pipeline_is_last.exit.i.i.isp_resume_module_pipeline.exit.i_crit_edge

isp_pipeline_is_last.exit.i.i.isp_resume_module_pipeline.exit.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit.i

if.then.i.i:                                      ; preds = %isp_pipeline_is_last.exit.i.i
  %28 = ptrtoint ptr %pipe1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe1.i.i.i, align 4
  %stream_state.i2.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %stream_state.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream_state.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i3.i.i = icmp eq i32 %31, 2
  %output.i4.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %output.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %output.i4.i.i, align 4
  %lnot.i.i.i = xor i1 %cmp.i3.i.i, true
  %lnot.ext.i.i.i = zext i1 %lnot.i.i.i to i32
  tail call void @omap3isp_video_resume(ptr noundef %33, i32 noundef %lnot.ext.i.i.i) #10
  br i1 %cmp.i3.i.i, label %if.then.i.i.i, label %if.then.i.i.isp_pipeline_resume.exit.i.i_crit_edge

if.then.i.i.isp_pipeline_resume.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_resume.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %input.i.i.i = getelementptr inbounds %struct.isp_pipeline, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input.i.i.i, align 4
  tail call void @omap3isp_video_resume(ptr noundef %35, i32 noundef 0) #10
  br label %isp_pipeline_resume.exit.i.i

isp_pipeline_resume.exit.i.i:                     ; preds = %if.then.i.i.i, %if.then.i.i.isp_pipeline_resume.exit.i.i_crit_edge
  %36 = ptrtoint ptr %stream_state.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stream_state.i2.i.i, align 4
  %call.i5.i.i = tail call fastcc i32 @isp_pipeline_enable(ptr noundef %29, i32 noundef %37) #10
  br label %isp_resume_module_pipeline.exit.i

isp_resume_module_pipeline.exit.i:                ; preds = %isp_pipeline_resume.exit.i.i, %isp_pipeline_is_last.exit.i.i.isp_resume_module_pipeline.exit.i_crit_edge, %if.end.i.i.i.isp_resume_module_pipeline.exit.i_crit_edge, %isp_restore_ctx.exit.isp_resume_module_pipeline.exit.i_crit_edge
  %isp_prev.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 25
  %pipe1.i.i16.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 14
  %38 = ptrtoint ptr %pipe1.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pipe1.i.i16.i, align 4
  %tobool.not.i.i17.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i17.i, label %isp_resume_module_pipeline.exit.i.isp_resume_module_pipeline.exit37.i_crit_edge, label %if.end.i.i20.i

isp_resume_module_pipeline.exit.i.isp_resume_module_pipeline.exit37.i_crit_edge: ; preds = %isp_resume_module_pipeline.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit37.i

if.end.i.i20.i:                                   ; preds = %isp_resume_module_pipeline.exit.i
  %stream_state.i.i18.i = getelementptr inbounds %struct.isp_pipeline, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %stream_state.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stream_state.i.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i19.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i19.i, label %if.end.i.i20.i.isp_resume_module_pipeline.exit37.i_crit_edge, label %isp_pipeline_is_last.exit.i26.i

if.end.i.i20.i.isp_resume_module_pipeline.exit37.i_crit_edge: ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit37.i

isp_pipeline_is_last.exit.i26.i:                  ; preds = %if.end.i.i20.i
  %output.i.i21.i = getelementptr inbounds %struct.isp_pipeline, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %output.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %output.i.i21.i, align 4
  %pad5.i.i22.i = getelementptr inbounds %struct.isp_video, ptr %43, i32 0, i32 2
  %call.i.i23.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i22.i) #10
  %entity.i.i24.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i23.i, i32 0, i32 1
  %44 = ptrtoint ptr %entity.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entity.i.i24.i, align 4
  %cmp6.i.not.i25.i = icmp eq ptr %45, %isp_prev.i
  br i1 %cmp6.i.not.i25.i, label %if.then.i32.i, label %isp_pipeline_is_last.exit.i26.i.isp_resume_module_pipeline.exit37.i_crit_edge

isp_pipeline_is_last.exit.i26.i.isp_resume_module_pipeline.exit37.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit37.i

if.then.i32.i:                                    ; preds = %isp_pipeline_is_last.exit.i26.i
  %46 = ptrtoint ptr %pipe1.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pipe1.i.i16.i, align 4
  %stream_state.i2.i27.i = getelementptr inbounds %struct.isp_pipeline, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %stream_state.i2.i27.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stream_state.i2.i27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.i3.i28.i = icmp eq i32 %49, 2
  %output.i4.i29.i = getelementptr inbounds %struct.isp_pipeline, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %output.i4.i29.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %output.i4.i29.i, align 4
  %lnot.i.i30.i = xor i1 %cmp.i3.i28.i, true
  %lnot.ext.i.i31.i = zext i1 %lnot.i.i30.i to i32
  tail call void @omap3isp_video_resume(ptr noundef %51, i32 noundef %lnot.ext.i.i31.i) #10
  br i1 %cmp.i3.i28.i, label %if.then.i.i34.i, label %if.then.i32.i.isp_pipeline_resume.exit.i36.i_crit_edge

if.then.i32.i.isp_pipeline_resume.exit.i36.i_crit_edge: ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_resume.exit.i36.i

if.then.i.i34.i:                                  ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  %input.i.i33.i = getelementptr inbounds %struct.isp_pipeline, ptr %47, i32 0, i32 4
  %52 = ptrtoint ptr %input.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input.i.i33.i, align 4
  tail call void @omap3isp_video_resume(ptr noundef %53, i32 noundef 0) #10
  br label %isp_pipeline_resume.exit.i36.i

isp_pipeline_resume.exit.i36.i:                   ; preds = %if.then.i.i34.i, %if.then.i32.i.isp_pipeline_resume.exit.i36.i_crit_edge
  %54 = ptrtoint ptr %stream_state.i2.i27.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stream_state.i2.i27.i, align 4
  %call.i5.i35.i = tail call fastcc i32 @isp_pipeline_enable(ptr noundef %47, i32 noundef %55) #10
  br label %isp_resume_module_pipeline.exit37.i

isp_resume_module_pipeline.exit37.i:              ; preds = %isp_pipeline_resume.exit.i36.i, %isp_pipeline_is_last.exit.i26.i.isp_resume_module_pipeline.exit37.i_crit_edge, %if.end.i.i20.i.isp_resume_module_pipeline.exit37.i_crit_edge, %isp_resume_module_pipeline.exit.i.isp_resume_module_pipeline.exit37.i_crit_edge
  %isp_ccdc.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26
  %pipe1.i.i38.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 14
  %56 = ptrtoint ptr %pipe1.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pipe1.i.i38.i, align 4
  %tobool.not.i.i39.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i39.i, label %isp_resume_module_pipeline.exit37.i.isp_resume_module_pipeline.exit59.i_crit_edge, label %if.end.i.i42.i

isp_resume_module_pipeline.exit37.i.isp_resume_module_pipeline.exit59.i_crit_edge: ; preds = %isp_resume_module_pipeline.exit37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit59.i

if.end.i.i42.i:                                   ; preds = %isp_resume_module_pipeline.exit37.i
  %stream_state.i.i40.i = getelementptr inbounds %struct.isp_pipeline, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %stream_state.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stream_state.i.i40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i41.i = icmp eq i32 %59, 0
  br i1 %cmp.i.i41.i, label %if.end.i.i42.i.isp_resume_module_pipeline.exit59.i_crit_edge, label %isp_pipeline_is_last.exit.i48.i

if.end.i.i42.i.isp_resume_module_pipeline.exit59.i_crit_edge: ; preds = %if.end.i.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit59.i

isp_pipeline_is_last.exit.i48.i:                  ; preds = %if.end.i.i42.i
  %output.i.i43.i = getelementptr inbounds %struct.isp_pipeline, ptr %57, i32 0, i32 5
  %60 = ptrtoint ptr %output.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %output.i.i43.i, align 4
  %pad5.i.i44.i = getelementptr inbounds %struct.isp_video, ptr %61, i32 0, i32 2
  %call.i.i45.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i44.i) #10
  %entity.i.i46.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i45.i, i32 0, i32 1
  %62 = ptrtoint ptr %entity.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %entity.i.i46.i, align 4
  %cmp6.i.not.i47.i = icmp eq ptr %63, %isp_ccdc.i
  br i1 %cmp6.i.not.i47.i, label %if.then.i54.i, label %isp_pipeline_is_last.exit.i48.i.isp_resume_module_pipeline.exit59.i_crit_edge

isp_pipeline_is_last.exit.i48.i.isp_resume_module_pipeline.exit59.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit59.i

if.then.i54.i:                                    ; preds = %isp_pipeline_is_last.exit.i48.i
  %64 = ptrtoint ptr %pipe1.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pipe1.i.i38.i, align 4
  %stream_state.i2.i49.i = getelementptr inbounds %struct.isp_pipeline, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %stream_state.i2.i49.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %stream_state.i2.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp.i3.i50.i = icmp eq i32 %67, 2
  %output.i4.i51.i = getelementptr inbounds %struct.isp_pipeline, ptr %65, i32 0, i32 5
  %68 = ptrtoint ptr %output.i4.i51.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %output.i4.i51.i, align 4
  %lnot.i.i52.i = xor i1 %cmp.i3.i50.i, true
  %lnot.ext.i.i53.i = zext i1 %lnot.i.i52.i to i32
  tail call void @omap3isp_video_resume(ptr noundef %69, i32 noundef %lnot.ext.i.i53.i) #10
  br i1 %cmp.i3.i50.i, label %if.then.i.i56.i, label %if.then.i54.i.isp_pipeline_resume.exit.i58.i_crit_edge

if.then.i54.i.isp_pipeline_resume.exit.i58.i_crit_edge: ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_resume.exit.i58.i

if.then.i.i56.i:                                  ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  %input.i.i55.i = getelementptr inbounds %struct.isp_pipeline, ptr %65, i32 0, i32 4
  %70 = ptrtoint ptr %input.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %input.i.i55.i, align 4
  tail call void @omap3isp_video_resume(ptr noundef %71, i32 noundef 0) #10
  br label %isp_pipeline_resume.exit.i58.i

isp_pipeline_resume.exit.i58.i:                   ; preds = %if.then.i.i56.i, %if.then.i54.i.isp_pipeline_resume.exit.i58.i_crit_edge
  %72 = ptrtoint ptr %stream_state.i2.i49.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stream_state.i2.i49.i, align 4
  %call.i5.i57.i = tail call fastcc i32 @isp_pipeline_enable(ptr noundef %65, i32 noundef %73) #10
  br label %isp_resume_module_pipeline.exit59.i

isp_resume_module_pipeline.exit59.i:              ; preds = %isp_pipeline_resume.exit.i58.i, %isp_pipeline_is_last.exit.i48.i.isp_resume_module_pipeline.exit59.i_crit_edge, %if.end.i.i42.i.isp_resume_module_pipeline.exit59.i_crit_edge, %isp_resume_module_pipeline.exit37.i.isp_resume_module_pipeline.exit59.i_crit_edge
  %isp_csi2a.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27
  %pipe1.i.i60.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 0, i32 0, i32 14
  %74 = ptrtoint ptr %pipe1.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pipe1.i.i60.i, align 4
  %tobool.not.i.i61.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i61.i, label %isp_resume_module_pipeline.exit59.i.isp_resume_module_pipeline.exit81.i_crit_edge, label %if.end.i.i64.i

isp_resume_module_pipeline.exit59.i.isp_resume_module_pipeline.exit81.i_crit_edge: ; preds = %isp_resume_module_pipeline.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit81.i

if.end.i.i64.i:                                   ; preds = %isp_resume_module_pipeline.exit59.i
  %stream_state.i.i62.i = getelementptr inbounds %struct.isp_pipeline, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %stream_state.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %stream_state.i.i62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i.i63.i = icmp eq i32 %77, 0
  br i1 %cmp.i.i63.i, label %if.end.i.i64.i.isp_resume_module_pipeline.exit81.i_crit_edge, label %isp_pipeline_is_last.exit.i70.i

if.end.i.i64.i.isp_resume_module_pipeline.exit81.i_crit_edge: ; preds = %if.end.i.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit81.i

isp_pipeline_is_last.exit.i70.i:                  ; preds = %if.end.i.i64.i
  %output.i.i65.i = getelementptr inbounds %struct.isp_pipeline, ptr %75, i32 0, i32 5
  %78 = ptrtoint ptr %output.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %output.i.i65.i, align 4
  %pad5.i.i66.i = getelementptr inbounds %struct.isp_video, ptr %79, i32 0, i32 2
  %call.i.i67.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i66.i) #10
  %entity.i.i68.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i67.i, i32 0, i32 1
  %80 = ptrtoint ptr %entity.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %entity.i.i68.i, align 4
  %cmp6.i.not.i69.i = icmp eq ptr %81, %isp_csi2a.i
  br i1 %cmp6.i.not.i69.i, label %if.then.i76.i, label %isp_pipeline_is_last.exit.i70.i.isp_resume_module_pipeline.exit81.i_crit_edge

isp_pipeline_is_last.exit.i70.i.isp_resume_module_pipeline.exit81.i_crit_edge: ; preds = %isp_pipeline_is_last.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_resume_module_pipeline.exit81.i

if.then.i76.i:                                    ; preds = %isp_pipeline_is_last.exit.i70.i
  %82 = ptrtoint ptr %pipe1.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pipe1.i.i60.i, align 4
  %stream_state.i2.i71.i = getelementptr inbounds %struct.isp_pipeline, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %stream_state.i2.i71.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %stream_state.i2.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp.i3.i72.i = icmp eq i32 %85, 2
  %output.i4.i73.i = getelementptr inbounds %struct.isp_pipeline, ptr %83, i32 0, i32 5
  %86 = ptrtoint ptr %output.i4.i73.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %output.i4.i73.i, align 4
  %lnot.i.i74.i = xor i1 %cmp.i3.i72.i, true
  %lnot.ext.i.i75.i = zext i1 %lnot.i.i74.i to i32
  tail call void @omap3isp_video_resume(ptr noundef %87, i32 noundef %lnot.ext.i.i75.i) #10
  br i1 %cmp.i3.i72.i, label %if.then.i.i78.i, label %if.then.i76.i.isp_pipeline_resume.exit.i80.i_crit_edge

if.then.i76.i.isp_pipeline_resume.exit.i80.i_crit_edge: ; preds = %if.then.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_resume.exit.i80.i

if.then.i.i78.i:                                  ; preds = %if.then.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  %input.i.i77.i = getelementptr inbounds %struct.isp_pipeline, ptr %83, i32 0, i32 4
  %88 = ptrtoint ptr %input.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %input.i.i77.i, align 4
  tail call void @omap3isp_video_resume(ptr noundef %89, i32 noundef 0) #10
  br label %isp_pipeline_resume.exit.i80.i

isp_pipeline_resume.exit.i80.i:                   ; preds = %if.then.i.i78.i, %if.then.i76.i.isp_pipeline_resume.exit.i80.i_crit_edge
  %90 = ptrtoint ptr %stream_state.i2.i71.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %stream_state.i2.i71.i, align 4
  %call.i5.i79.i = tail call fastcc i32 @isp_pipeline_enable(ptr noundef %83, i32 noundef %91) #10
  br label %isp_resume_module_pipeline.exit81.i

isp_resume_module_pipeline.exit81.i:              ; preds = %isp_pipeline_resume.exit.i80.i, %isp_pipeline_is_last.exit.i70.i.isp_resume_module_pipeline.exit81.i_crit_edge, %if.end.i.i64.i.isp_resume_module_pipeline.exit81.i_crit_edge, %isp_resume_module_pipeline.exit59.i.isp_resume_module_pipeline.exit81.i_crit_edge
  %isp_ccp2.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 29
  %pipe1.i.i82.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 29, i32 0, i32 0, i32 14
  %92 = ptrtoint ptr %pipe1.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pipe1.i.i82.i, align 4
  %tobool.not.i.i83.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i83.i, label %isp_resume_module_pipeline.exit81.i.cleanup_crit_edge, label %if.end.i.i86.i

isp_resume_module_pipeline.exit81.i.cleanup_crit_edge: ; preds = %isp_resume_module_pipeline.exit81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i86.i:                                   ; preds = %isp_resume_module_pipeline.exit81.i
  %stream_state.i.i84.i = getelementptr inbounds %struct.isp_pipeline, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %stream_state.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %stream_state.i.i84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i85.i = icmp eq i32 %95, 0
  br i1 %cmp.i.i85.i, label %if.end.i.i86.i.cleanup_crit_edge, label %isp_pipeline_is_last.exit.i92.i

if.end.i.i86.i.cleanup_crit_edge:                 ; preds = %if.end.i.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

isp_pipeline_is_last.exit.i92.i:                  ; preds = %if.end.i.i86.i
  %output.i.i87.i = getelementptr inbounds %struct.isp_pipeline, ptr %93, i32 0, i32 5
  %96 = ptrtoint ptr %output.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %output.i.i87.i, align 4
  %pad5.i.i88.i = getelementptr inbounds %struct.isp_video, ptr %97, i32 0, i32 2
  %call.i.i89.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i.i88.i) #10
  %entity.i.i90.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i89.i, i32 0, i32 1
  %98 = ptrtoint ptr %entity.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %entity.i.i90.i, align 4
  %cmp6.i.not.i91.i = icmp eq ptr %99, %isp_ccp2.i
  br i1 %cmp6.i.not.i91.i, label %if.then.i98.i, label %isp_pipeline_is_last.exit.i92.i.cleanup_crit_edge

isp_pipeline_is_last.exit.i92.i.cleanup_crit_edge: ; preds = %isp_pipeline_is_last.exit.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i98.i:                                    ; preds = %isp_pipeline_is_last.exit.i92.i
  %100 = ptrtoint ptr %pipe1.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pipe1.i.i82.i, align 4
  %stream_state.i2.i93.i = getelementptr inbounds %struct.isp_pipeline, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %stream_state.i2.i93.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %stream_state.i2.i93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp.i3.i94.i = icmp eq i32 %103, 2
  %output.i4.i95.i = getelementptr inbounds %struct.isp_pipeline, ptr %101, i32 0, i32 5
  %104 = ptrtoint ptr %output.i4.i95.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %output.i4.i95.i, align 4
  %lnot.i.i96.i = xor i1 %cmp.i3.i94.i, true
  %lnot.ext.i.i97.i = zext i1 %lnot.i.i96.i to i32
  tail call void @omap3isp_video_resume(ptr noundef %105, i32 noundef %lnot.ext.i.i97.i) #10
  br i1 %cmp.i3.i94.i, label %if.then.i.i100.i, label %if.then.i98.i.isp_pipeline_resume.exit.i102.i_crit_edge

if.then.i98.i.isp_pipeline_resume.exit.i102.i_crit_edge: ; preds = %if.then.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isp_pipeline_resume.exit.i102.i

if.then.i.i100.i:                                 ; preds = %if.then.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  %input.i.i99.i = getelementptr inbounds %struct.isp_pipeline, ptr %101, i32 0, i32 4
  %106 = ptrtoint ptr %input.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %input.i.i99.i, align 4
  tail call void @omap3isp_video_resume(ptr noundef %107, i32 noundef 0) #10
  br label %isp_pipeline_resume.exit.i102.i

isp_pipeline_resume.exit.i102.i:                  ; preds = %if.then.i.i100.i, %if.then.i98.i.isp_pipeline_resume.exit.i102.i_crit_edge
  %108 = ptrtoint ptr %stream_state.i2.i93.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %stream_state.i2.i93.i, align 4
  %call.i5.i101.i = tail call fastcc i32 @isp_pipeline_enable(ptr noundef %101, i32 noundef %109) #10
  br label %cleanup

cleanup:                                          ; preds = %isp_pipeline_resume.exit.i102.i, %isp_pipeline_is_last.exit.i92.i.cleanup_crit_edge, %if.end.i.i86.i.cleanup_crit_edge, %isp_resume_module_pipeline.exit81.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %isp_mutex = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 13
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %isp_mutex) #10
  br i1 %call1, label %do.end, label %entry.if.end_crit_edge, !prof !330

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1559, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ref_count = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool20.not = icmp eq i32 %3, 0
  br i1 %tobool20.not, label %if.end.if.end22_crit_edge, label %if.then21

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %clock.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock.i, align 8
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %arrayidx2.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %arrayidx4.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 19, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 8
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ref_count = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @isp_enable_clocks(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_stat_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !93, !94, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125, !126, !127, !128, !129, !131, !133, !135, !136, !137, !138, !140, !142, !144, !145, !147, !148, !150, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196, !197, !199, !201, !203, !205, !207, !209, !210, !212, !214, !216, !218, !219, !220, !222, !224, !226, !227, !228, !229, !231, !232, !233, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !280, !281, !282, !283, !285, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !304, !306, !307, !308, !309}
!llvm.module.flags = !{!311, !312, !313, !314, !315, !316, !317, !318}
!llvm.ident = !{!319}

!0 = !{ptr @__param_autoidle, !1, !"__param_autoidle", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_autoidletype298, !1, !"__UNIQUE_ID_autoidletype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_autoidle299, !4, !"__UNIQUE_ID_autoidle299", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 80, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 474, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @omap3isp_hist_dma_done.__UNIQUE_ID_ddebug301, !6, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1493, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug304, !12, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1495, i32 2}
!17 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug305, !16, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1496, i32 2}
!20 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug306, !19, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1497, i32 2}
!23 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug307, !22, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1498, i32 2}
!26 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug308, !25, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1499, i32 2}
!29 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug309, !28, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1500, i32 2}
!32 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug310, !31, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1501, i32 2}
!35 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug311, !34, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1502, i32 2}
!38 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug312, !37, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1503, i32 2}
!41 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug313, !40, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1504, i32 2}
!44 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug314, !43, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1505, i32 2}
!47 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug315, !46, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1506, i32 2}
!50 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug316, !49, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1507, i32 2}
!53 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug317, !52, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1508, i32 2}
!56 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug318, !55, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1509, i32 2}
!59 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug319, !58, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1511, i32 2}
!62 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug320, !61, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1512, i32 2}
!65 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug321, !64, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1514, i32 2}
!68 = !{ptr @omap3isp_print_status.__UNIQUE_ID_ddebug322, !67, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!69 = !{ptr @__initcall__kmod_omap3_isp__329_2482_omap3isp_driver_init6, !70, !"__initcall__kmod_omap3_isp__329_2482_omap3isp_driver_init6", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2482, i32 1}
!71 = !{ptr @__exitcall_omap3isp_driver_exit, !70, !"__exitcall_omap3isp_driver_exit", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_author330, !73, !"__UNIQUE_ID_author330", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2484, i32 1}
!74 = !{ptr @__UNIQUE_ID_description331, !75, !"__UNIQUE_ID_description331", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2485, i32 1}
!76 = !{ptr @__UNIQUE_ID_file332, !77, !"__UNIQUE_ID_file332", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2486, i32 1}
!78 = !{ptr @__UNIQUE_ID_license333, !77, !"__UNIQUE_ID_license333", i1 false, i1 false}
!79 = !{ptr @__UNIQUE_ID_version334, !80, !"__UNIQUE_ID_version334", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2487, i32 1}
!81 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @__modver_attr, !80, !"__modver_attr", i1 false, i1 false}
!84 = !{ptr @autoidle, !85, !"autoidle", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 78, i32 21}
!86 = !{ptr @__param_str_autoidle, !1, !"__param_str_autoidle", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 842, i32 4}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @isp_pipeline_disable._entry, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @isp_pipeline_disable._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/media/media-entity.h", i32 468, i32 6}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1326, i32 3}
!98 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @isp_enable_clocks._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @isp_enable_clocks._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1331, i32 3}
!104 = !{ptr @isp_enable_clocks._entry.34, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @isp_enable_clocks._entry_ptr.36, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1336, i32 3}
!108 = !{ptr @isp_enable_clocks._entry.37, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @isp_enable_clocks._entry_ptr.39, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1341, i32 3}
!112 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @isp_enable_clocks._entry.40, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @isp_enable_clocks._entry_ptr.43, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1346, i32 3}
!117 = !{ptr @isp_enable_clocks._entry.44, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @isp_enable_clocks._entry_ptr.46, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @isp_reg_list, !120, !"isp_reg_list", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 130, i32 23}
!121 = distinct !{null, !122, !"irq", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 361, i32 19}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1045, i32 4}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @isp_reset._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @isp_reset._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2476, i32 11}
!131 = !{ptr @omap3isp_driver, !132, !"omap3isp_driver", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2471, i32 31}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2271, i32 3}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @isp_probe._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @isp_probe._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2276, i32 12}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2281, i32 13}
!142 = !{ptr @isp_probe.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2294, i32 2}
!144 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @isp_probe.__key.56, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2295, i32 2}
!147 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2312, i32 56}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2313, i32 56}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2346, i32 2}
!154 = !{ptr @isp_probe._entry.60, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @isp_probe._entry_ptr.62, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2370, i32 3}
!158 = !{ptr @isp_probe._entry.63, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @isp_probe._entry_ptr.65, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2391, i32 3}
!162 = !{ptr @isp_probe._entry.66, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @isp_probe._entry_ptr.68, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2404, i32 9}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2405, i32 3}
!168 = !{ptr @isp_probe._entry.70, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @isp_probe._entry_ptr.72, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2171, i32 3}
!172 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @isp_parse_of_endpoints.__UNIQUE_ID_ddebug327, !171, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2199, i32 3}
!176 = !{ptr @isp_parse_of_endpoints.__UNIQUE_ID_ddebug328, !175, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!177 = !{ptr @isp_bus_interfaces, !178, !"isp_bus_interfaces", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2148, i32 3}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2095, i32 2}
!181 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug323, !180, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2106, i32 3}
!185 = !{ptr @isp_parse_of_csi2_endpoint.__UNIQUE_ID_ddebug324, !184, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2124, i32 2}
!188 = !{ptr @isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug325, !187, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2132, i32 2}
!191 = !{ptr @isp_parse_of_csi1_endpoint.__UNIQUE_ID_ddebug326, !190, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1385, i32 4}
!194 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @isp_get_clocks._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @isp_get_clocks._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1371, i32 2}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1372, i32 2}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1373, i32 2}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1374, i32 2}
!205 = distinct !{null, !206, !"isp_clocks", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1370, i32 20}
!207 = !{ptr @isp_xclk_init.__key, !208, !"__key", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 310, i32 3}
!209 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 312, i32 24}
!212 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 312, i32 38}
!214 = !{ptr @isp_xclk_ops, !215, !"isp_xclk_ops", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 272, i32 29}
!216 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 267, i32 2}
!218 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @isp_xclk_set_rate.__UNIQUE_ID_ddebug300, !217, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!220 = !{ptr @isp_xclk_parent_name, !221, !"isp_xclk_parent_name", i1 false, i1 false}
!221 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 282, i32 20}
!222 = !{ptr @isp_res_maps, !223, !"isp_res_maps", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 86, i32 37}
!224 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1973, i32 3}
!226 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @isp_attach_iommu._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @isp_attach_iommu._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.95, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1982, i32 3}
!231 = !{ptr @isp_attach_iommu._entry.94, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @isp_attach_iommu._entry_ptr.96, !230, !"_entry_ptr", i1 false, i1 false}
!233 = distinct !{null, !234, !"ccdc_events", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 593, i32 19}
!235 = !{ptr @.str.97, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 542, i32 3}
!237 = !{ptr @.str.98, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @isp_isr_sbl.__UNIQUE_ID_ddebug303, !236, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!239 = !{ptr @.str.99, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1877, i32 3}
!241 = !{ptr @.str.100, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @isp_initialize_modules._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @isp_initialize_modules._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.102, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1883, i32 3}
!246 = !{ptr @isp_initialize_modules._entry.101, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @isp_initialize_modules._entry_ptr.103, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.105, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1890, i32 4}
!250 = !{ptr @isp_initialize_modules._entry.104, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @isp_initialize_modules._entry_ptr.106, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.108, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1896, i32 3}
!254 = !{ptr @isp_initialize_modules._entry.107, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @isp_initialize_modules._entry_ptr.109, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.111, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1902, i32 3}
!258 = !{ptr @isp_initialize_modules._entry.110, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @isp_initialize_modules._entry_ptr.112, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.114, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1908, i32 3}
!262 = !{ptr @isp_initialize_modules._entry.113, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @isp_initialize_modules._entry_ptr.115, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.117, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1914, i32 3}
!266 = !{ptr @isp_initialize_modules._entry.116, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @isp_initialize_modules._entry_ptr.118, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1920, i32 3}
!270 = !{ptr @isp_initialize_modules._entry.119, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @isp_initialize_modules._entry_ptr.121, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.123, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1926, i32 3}
!274 = !{ptr @isp_initialize_modules._entry.122, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @isp_initialize_modules._entry_ptr.124, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.125, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1691, i32 32}
!278 = !{ptr @.str.126, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1700, i32 3}
!280 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @isp_register_entities._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @isp_register_entities._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @isp_media_ops, !284, !"isp_media_ops", i1 false, i1 false}
!284 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 652, i32 38}
!285 = !{ptr @isp_subdev_notifier_ops, !286, !"isp_subdev_notifier_ops", i1 false, i1 false}
!286 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2247, i32 52}
!287 = !{ptr @.str.128, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1656, i32 3}
!289 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @isp_link_entity._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @isp_link_entity._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1668, i32 3}
!294 = !{ptr @isp_link_entity._entry.130, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @isp_link_entity._entry_ptr.132, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.134, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1678, i32 3}
!298 = !{ptr @isp_link_entity._entry.133, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @isp_link_entity._entry_ptr.135, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @omap3isp_of_table, !301, !"omap3isp_of_table", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2465, i32 34}
!302 = !{ptr @omap3isp_pm_ops, !303, !"omap3isp_pm_ops", i1 false, i1 false}
!303 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2452, i32 32}
!304 = !{ptr @.str.136, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 1005, i32 4}
!306 = !{ptr @.str.137, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @isp_suspend_modules._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @isp_suspend_modules._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @omap3isp_id_table, !310, !"omap3isp_id_table", i1 false, i1 false}
!310 = !{!"../drivers/media/platform/omap3isp/isp.c", i32 2459, i32 40}
!311 = !{i32 1, !"wchar_size", i32 2}
!312 = !{i32 1, !"min_enum_size", i32 4}
!313 = !{i32 8, !"branch-target-enforcement", i32 0}
!314 = !{i32 8, !"sign-return-address", i32 0}
!315 = !{i32 8, !"sign-return-address-all", i32 0}
!316 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!317 = !{i32 7, !"uwtable", i32 1}
!318 = !{i32 7, !"frame-pointer", i32 2}
!319 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!320 = !{i64 6362154}
!321 = !{i64 6362572}
!322 = !{i64 2148785149, i64 2148785154, i64 2148785167, i64 2148785211, i64 2148785245, i64 2148785266}
!323 = !{!"branch_weights", i32 2000, i32 1}
!324 = !{i64 2156754048}
!325 = !{i64 2156754562}
!326 = !{i64 2156756669}
!327 = !{i64 2148405157}
!328 = !{i64 787070, i64 787094, i64 787115, i64 787132, i64 787149}
!329 = !{i64 2148405383}
!330 = !{!"branch_weights", i32 1, i32 2000}
!331 = !{i64 2156769570, i64 2156770073, i64 2156769607, i64 2156769663, i64 2156769697, i64 2156769721, i64 2156769762, i64 2156769783, i64 2156769811, i64 2156769845}
!332 = !{i8 0, i8 2}
