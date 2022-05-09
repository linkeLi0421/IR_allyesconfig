; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/imx/parallel-display.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/parallel-display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_parallel_display = type { ptr, ptr, i32, i32, %struct.drm_display_mode, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.imx_parallel_display_encoder = type { %struct.drm_connector, %struct.drm_encoder, %struct.drm_bridge, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }

@__initcall__kmod_parallel_display__307_374_imx_pd_driver_init6 = internal global ptr @imx_pd_driver_init, section ".initcall6.init", align 4
@imx_pd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_pd_probe, ptr @imx_pd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_pd_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_pd_driver_exit = internal global ptr @imx_pd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description308 = internal constant [58 x i8] c"parallel_display.description=i.MX parallel display driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [50 x i8] c"parallel_display.author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [59 x i8] c"parallel_display.file=drivers/gpu/drm/imx/parallel-display\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [29 x i8] c"parallel_display.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias312 = internal constant [53 x i8] c"parallel_display.alias=platform:imx-parallel-display\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx-parallel-display\00", [43 x i8] zeroinitializer }, align 32
@imx_pd_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-parallel-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"interface-pix-fmt\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgb24\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rgb565\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bgr666\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvds666\00", [24 x i8] zeroinitializer }, align 32
@imx_pd_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @imx_pd_bind, ptr null }, [24 x i8] zeroinitializer }, align 32
@imx_pd_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @imx_pd_bridge_disable, ptr null, ptr null, ptr null, ptr @imx_pd_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr @imx_pd_bridge_atomic_get_output_bus_fmts, ptr @imx_pd_bridge_atomic_get_input_bus_fmts, ptr @imx_pd_bridge_atomic_check, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx_pd_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @imx_pd_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@imx_pd_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @imx_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_pd_bus_fmts = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 4106, i32 4115, i32 4116, i32 4105, i32 4117, i32 4119], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.7 = internal global [8 x i64] [i64 6, i64 32, i64 4105, i64 4106, i64 4115, i64 4116, i64 4117, i64 4119]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 32, i64 4105, i64 4106, i64 4115, i64 4116, i64 4117, i64 4119]
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"imx_pd_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 365, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 370, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"imx_pd_dt_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 359, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 328, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 332, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 334, i32 20 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 336, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 338, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 340, i32 25 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"imx_pd_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 303, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"imx_pd_bridge_funcs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 242, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [30 x i8] c"imx_pd_connector_helper_funcs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 238, i32 48 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"imx_pd_connector_funcs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 230, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"imx_pd_bus_fmts\00", align 1
@___asan_gen_.49 = private constant [42 x i8] c"../drivers/gpu/drm/imx/parallel-display.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 106, i32 18 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias312, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_imx_pd_driver_exit, ptr @__initcall__kmod_parallel_display__307_374_imx_pd_driver_init6, ptr @imx_pd_driver_exit, ptr @imx_pd_driver, ptr @.str, ptr @imx_pd_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @imx_pd_ops, ptr @imx_pd_bridge_funcs, ptr @imx_pd_connector_helper_funcs, ptr @imx_pd_connector_funcs, ptr @imx_pd_bus_fmts], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pd_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pd_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pd_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pd_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pd_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pd_bus_fmts to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pd_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_pd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_pd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %edid_len = alloca i32, align 4
  %fmt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edid_len) #6
  %2 = ptrtoint ptr %edid_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %edid_len, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmt) #6
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fmt, align 4, !annotation !49
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel = getelementptr inbounds %struct.imx_parallel_display, ptr %call.i, i32 0, i32 5
  %next_bridge = getelementptr inbounds %struct.imx_parallel_display, ptr %call.i, i32 0, i32 6
  %call2 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef %panel, ptr noundef %next_bridge) #6
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end5_crit_edge
    i32 -19, label %if.end.if.end5_crit_edge60
  ]

if.end.if.end5_crit_edge60:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.if.end5_crit_edge60
  %call6 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %edid_len) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %edid_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %edid_len, align 4
  %call9 = call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull %call6, i32 noundef %6, i32 noundef 3264) #6
  %edid = getelementptr inbounds %struct.imx_parallel_display, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %edid, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %call11 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %fmt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end32_crit_edge

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then13:                                        ; preds = %if.end10
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %call14 = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end32_crit_edge, label %if.else

if.then13.if.end32_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else:                                          ; preds = %if.then13
  %call17 = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else.if.end32_crit_edge, label %if.else20

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else20:                                        ; preds = %if.else
  %call21 = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else20.if.end32_crit_edge, label %if.else24

if.else20.if.end32_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(8) @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %spec.select = select i1 %tobool26.not, i32 4117, i32 0
  br label %if.end32

if.end32:                                         ; preds = %if.else24, %if.else20.if.end32_crit_edge, %if.else.if.end32_crit_edge, %if.then13.if.end32_crit_edge, %if.end10.if.end32_crit_edge
  %bus_format.0 = phi i32 [ 0, %if.end10.if.end32_crit_edge ], [ 4106, %if.then13.if.end32_crit_edge ], [ 4119, %if.else.if.end32_crit_edge ], [ 4105, %if.else20.if.end32_crit_edge ], [ %spec.select, %if.else24 ]
  %bus_format33 = getelementptr inbounds %struct.imx_parallel_display, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %bus_format33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bus_format.0, ptr %bus_format33, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call35 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @imx_pd_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edid_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pd_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @imx_pd_ops) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pd_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @__drmm_simple_encoder_alloc(ptr noundef %data, i32 noundef 1400, i32 noundef 1040, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %pd = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %pd, align 8
  %encoder5 = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %call1, i32 0, i32 1
  %bridge6 = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call8 = tail call i32 @imx_drm_encoder_parse_of(ptr noundef %data, ptr noundef %encoder5, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %dpms = getelementptr inbounds %struct.drm_connector, ptr %call1, i32 0, i32 34
  %8 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %dpms, align 8
  %funcs = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %call1, i32 0, i32 2, i32 7
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @imx_pd_bridge_funcs, ptr %funcs, align 4
  %call11 = tail call i32 @drm_bridge_attach(ptr noundef %encoder5, ptr noundef %bridge6, ptr noundef null, i32 noundef 0) #6
  %next_bridge = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next_bridge, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call15 = tail call i32 @drm_bridge_attach(ptr noundef %encoder5, ptr noundef nonnull %11, ptr noundef %bridge6, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call1, i32 0, i32 35
  %12 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @imx_pd_connector_helper_funcs, ptr %helper_private.i, align 4
  %call18 = tail call i32 @drm_connector_init(ptr noundef %data, ptr noundef %call1, ptr noundef nonnull @imx_pd_connector_funcs, i32 noundef 17) #6
  %call19 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call1, ptr noundef %encoder5) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end20 ], [ %call8, %if.end.cleanup_crit_edge ], [ %call15, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_pd_bridge_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd.i = getelementptr i8, ptr %bridge, i32 280
  %0 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd.i, align 8
  %panel = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call1 = tail call i32 @drm_panel_disable(ptr noundef %3) #6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_panel_unprepare(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_pd_bridge_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd.i = getelementptr i8, ptr %bridge, i32 280
  %0 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd.i, align 8
  %panel = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call1 = tail call i32 @drm_panel_prepare(ptr noundef %3) #6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_panel_enable(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imx_pd_bridge_atomic_get_output_bus_fmts(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readonly %conn_state, ptr nocapture noundef writeonly %num_output_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  %pd.i = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd.i, align 8
  %bus_format = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 7
  %6 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %num_output_fmts to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %num_output_fmts, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef nonnull @imx_pd_bus_fmts, i32 noundef 24, i32 noundef 3264) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %num_output_fmts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %num_output_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 4) #10
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true9:                                   ; preds = %if.end6
  %num_bus_formats10 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 7
  %13 = ptrtoint ptr %num_bus_formats10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bus_formats10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end16_crit_edge, label %if.then12

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 6
  %15 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_formats, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true9.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %storemerge.in = phi ptr [ %16, %if.then12 ], [ %bus_format, %land.lhs.true9.if.end16_crit_edge ], [ %bus_format, %if.end6.if.end16_crit_edge ]
  %17 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %call7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call7.i, %if.end16 ], [ %call2, %if.then ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @imx_pd_bridge_atomic_get_input_bus_fmts(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, i32 noundef %output_fmt, ptr nocapture noundef writeonly %num_input_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd.i = getelementptr i8, ptr %bridge, i32 280
  %0 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %output_fmt)
  %cmp = icmp eq i32 %output_fmt, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bus_format = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 4106, i32 %3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %output_fmt.addr.0 = phi i32 [ %., %if.then ], [ %output_fmt, %entry.if.end_crit_edge ]
  %bus_format1 = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bus_format1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_format1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %output_fmt.addr.0)
  %cmp4.not = icmp eq i32 %5, %output_fmt.addr.0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %6 = zext i32 %output_fmt.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %output_fmt.addr.0, label %lor.lhs.false.if.then6_crit_edge [
    i32 4106, label %lor.lhs.false.if.end7_crit_edge
    i32 4115, label %lor.lhs.false.if.end7_crit_edge22
    i32 4116, label %lor.lhs.false.if.end7_crit_edge23
    i32 4105, label %lor.lhs.false.if.end7_crit_edge24
    i32 4117, label %lor.lhs.false.if.end7_crit_edge25
    i32 4119, label %lor.lhs.false.if.end7_crit_edge26
  ]

lor.lhs.false.if.end7_crit_edge26:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.end7_crit_edge25:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.end7_crit_edge24:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.end7_crit_edge23:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.end7_crit_edge22:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %7 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_input_fmts, align 4
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge22, %lor.lhs.false.if.end7_crit_edge23, %lor.lhs.false.if.end7_crit_edge24, %lor.lhs.false.if.end7_crit_edge25, %lor.lhs.false.if.end7_crit_edge26
  %8 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_input_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #10
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %output_fmt.addr.0, ptr %call7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.then6
  %retval.0 = phi ptr [ null, %if.then6 ], [ %call7.i, %if.end11 ], [ null, %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pd_bridge_atomic_check(ptr nocapture noundef readonly %bridge, ptr nocapture noundef %bridge_state, ptr nocapture noundef %crtc_state, ptr nocapture noundef readonly %conn_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  %pd.i = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd.i, align 8
  %chain_node.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 3
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder.i, align 4
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %chain_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chain_node.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %bridge_chain.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -132
  %tobool.not45 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.i.not.i, %tobool.not45
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %if.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 20
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %call3 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %9, ptr noundef nonnull %add.ptr.i) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.else_crit_edge, label %if.then5

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.drm_bridge_state, ptr %call3, i32 0, i32 2, i32 1
  br label %if.end12

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 7
  %10 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %bus_flags8 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 8
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %bus_flags10 = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 3
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then7, %if.then5
  %bus_flags.0.in = phi ptr [ %flags, %if.then5 ], [ %bus_flags8, %if.then7 ], [ %bus_flags10, %if.else9 ]
  %input_bus_cfg13 = getelementptr inbounds %struct.drm_bridge_state, ptr %bridge_state, i32 0, i32 2
  %12 = ptrtoint ptr %input_bus_cfg13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_bus_cfg13, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %13, label %if.end12.cleanup_crit_edge [
    i32 4106, label %if.end12.if.end16_crit_edge
    i32 4115, label %if.end12.if.end16_crit_edge46
    i32 4116, label %if.end12.if.end16_crit_edge47
    i32 4105, label %if.end12.if.end16_crit_edge48
    i32 4117, label %if.end12.if.end16_crit_edge49
    i32 4119, label %if.end12.if.end16_crit_edge50
  ]

if.end12.if.end16_crit_edge50:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end12.if.end16_crit_edge49:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end12.if.end16_crit_edge48:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end12.if.end16_crit_edge47:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end12.if.end16_crit_edge46:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %if.end12.if.end16_crit_edge46, %if.end12.if.end16_crit_edge47, %if.end12.if.end16_crit_edge48, %if.end12.if.end16_crit_edge49, %if.end12.if.end16_crit_edge50
  %15 = ptrtoint ptr %bus_flags.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %bus_flags.0 = load i32, ptr %bus_flags.0.in, align 4
  %flags17 = getelementptr inbounds %struct.drm_bridge_state, ptr %bridge_state, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bus_flags.0, ptr %flags17, align 4
  %flags19 = getelementptr inbounds %struct.drm_bridge_state, ptr %bridge_state, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bus_flags.0, ptr %flags19, align 4
  %bus_flags20 = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 2
  %18 = ptrtoint ptr %bus_flags20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bus_flags.0, ptr %bus_flags20, align 4
  %19 = ptrtoint ptr %input_bus_cfg13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input_bus_cfg13, align 4
  %bus_format = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 1
  %21 = ptrtoint ptr %bus_format to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bus_format, align 4
  %di_hsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 3
  %22 = ptrtoint ptr %di_hsync_pin to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %di_hsync_pin, align 4
  %di_vsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 4
  %23 = ptrtoint ptr %di_vsync_pin to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %di_vsync_pin, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_bridge_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pd_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd.i = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %panel = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %call1 = tail call i32 @drm_panel_get_modes(ptr noundef %7, ptr noundef %connector) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end:                                           ; preds = %entry
  %edid = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edid, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %9) #6
  %10 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edid, align 4
  %call6 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %11) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %num_modes.0 = phi i32 [ %call6, %if.then2 ], [ %call1, %if.end.if.end7_crit_edge ]
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end7.cleanup24_crit_edge, label %if.then9

if.end7.cleanup24_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.then9:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connector, align 8
  %call11 = tail call ptr @drm_mode_create(ptr noundef %13) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then9.cleanup24_crit_edge, label %if.end14

if.then9.cleanup24_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end14:                                         ; preds = %if.then9
  %mode15 = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 4
  %bus_flags = getelementptr inbounds %struct.imx_parallel_display, ptr %1, i32 0, i32 3
  %call16 = tail call i32 @of_get_drm_display_mode(ptr noundef nonnull %5, ptr noundef %mode15, ptr noundef %bus_flags, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end14.cleanup24_crit_edge

if.end14.cleanup24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

cleanup:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_copy(ptr noundef nonnull %call11, ptr noundef %mode15) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call11, i32 0, i32 28
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 2
  %16 = or i8 %15, 72
  store i8 %16, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call11) #6
  %inc = add i32 %num_modes.0, 1
  br label %cleanup24

cleanup24:                                        ; preds = %cleanup, %if.end14.cleanup24_crit_edge, %if.then9.cleanup24_crit_edge, %if.end7.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.1 = phi i32 [ %call1, %entry.cleanup24_crit_edge ], [ %inc, %cleanup ], [ %num_modes.0, %if.end7.cleanup24_crit_edge ], [ %call16, %if.end14.cleanup24_crit_edge ], [ -22, %if.then9.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_drm_display_mode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_drm_connector_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_parallel_display__307_374_imx_pd_driver_init6, !1, !"__initcall__kmod_parallel_display__307_374_imx_pd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 374, i32 1}
!2 = !{ptr @__exitcall_imx_pd_driver_exit, !1, !"__exitcall_imx_pd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description308, !4, !"__UNIQUE_ID_description308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 376, i32 1}
!5 = !{ptr @__UNIQUE_ID_author309, !6, !"__UNIQUE_ID_author309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias312, !11, !"__UNIQUE_ID_alias312", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 379, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 370, i32 11}
!14 = !{ptr @imx_pd_driver, !15, !"imx_pd_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 365, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 328, i32 30}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 332, i32 36}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 334, i32 20}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 336, i32 25}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 338, i32 25}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 340, i32 25}
!28 = !{ptr @imx_pd_ops, !29, !"imx_pd_ops", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 303, i32 35}
!30 = !{ptr @imx_pd_bridge_funcs, !31, !"imx_pd_bridge_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 242, i32 38}
!32 = !{ptr @imx_pd_bus_fmts, !33, !"imx_pd_bus_fmts", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 106, i32 18}
!34 = !{ptr @imx_pd_connector_helper_funcs, !35, !"imx_pd_connector_helper_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 238, i32 48}
!36 = !{ptr @imx_pd_connector_funcs, !37, !"imx_pd_connector_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 230, i32 41}
!38 = !{ptr @imx_pd_dt_ids, !39, !"imx_pd_dt_ids", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/imx/parallel-display.c", i32 359, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
