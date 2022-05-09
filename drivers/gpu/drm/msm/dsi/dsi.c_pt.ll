; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.component_ops = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_dsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32 }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.100, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.100 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@dsi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @dsi_bind, ptr @dsi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dsi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dsi_dev_probe, ptr @dsi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/msm/dsi/dsi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to modeset init host: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to create dsi bridge: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to create dsi connector: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm_dsi\00", [24 x i8] zeroinitializer }, align 32
@dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdss-dsi-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dsi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_dsi_runtime_suspend, ptr @msm_dsi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi probed=%p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* cannot find phy device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* %s: phy driver is not ready\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dsi_get_phy = private unnamed_addr constant [12 x i8] c"dsi_get_phy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"dsi_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 135, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 200, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"dsi_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 188, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 219, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 227, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 245, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 267, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 192, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"dt_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 177, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"dsi_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 182, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 88, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 29, i32 49 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 31, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/gpu/drm/msm/dsi/dsi.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 44, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @msm_dsi_unregister, ptr @dsi_ops, ptr @.str, ptr @dsi_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dt_match, ptr @dsi_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @msm_dsi_get_encoder(ptr noundef readonly %msm_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msm_dsi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %panel.i = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 6
  %0 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %msm_dsi_device_connected.exit, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

msm_dsi_device_connected.exit:                    ; preds = %lor.lhs.false
  %external_bridge.i = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 7
  %2 = ptrtoint ptr %external_bridge.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %external_bridge.i, align 4
  %tobool1.i.not = icmp eq ptr %3, null
  br i1 %tobool1.i.not, label %msm_dsi_device_connected.exit.return_crit_edge, label %msm_dsi_device_connected.exit.if.end_crit_edge

msm_dsi_device_connected.exit.if.end_crit_edge:   ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

msm_dsi_device_connected.exit.return_crit_edge:   ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %msm_dsi_device_connected.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %encoder = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 10
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  br label %return

return:                                           ; preds = %if.end, %msm_dsi_device_connected.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ null, %msm_dsi_device_connected.exit.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_dsi_is_cmd_mode(ptr nocapture noundef readonly %msm_dsi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 4
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call i32 @msm_dsi_host_get_mode_flags(ptr noundef %1) #6
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_get_mode_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_dev_attach(ptr noundef %pdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @dsi_ops) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsi_dev_detach(ptr noundef %pdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @dsi_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_register() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  tail call void @msm_dsi_phy_driver_register() #6
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dsi_driver, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_driver_register() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_unregister() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  tail call void @msm_dsi_phy_driver_unregister() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_driver_unregister() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_modeset_init(ptr noundef %msm_dsi, ptr noundef %dev, ptr noundef %encoder) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %encoder, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %tobool23.not = icmp eq ptr %msm_dsi, null
  br i1 %tobool23.not, label %do.end41, label %lor.lhs.false56.critedge, !prof !39

do.end41:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

lor.lhs.false56.critedge:                         ; preds = %lor.lhs.false.critedge
  %tobool58.not = icmp eq ptr %dev, null
  br i1 %tobool58.not, label %do.end76, label %if.end92, !prof !39

do.end76:                                         ; preds = %lor.lhs.false56.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false56.critedge
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %msm_dsi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %msm_dsi, align 4
  %host = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 4
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %call = tail call i32 @msm_dsi_host_modeset_init(ptr noundef %4, ptr noundef nonnull %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool94.not = icmp eq i32 %call, 0
  br i1 %tobool94.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %dev96 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev96, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call) #6
  br label %fail

if.end97:                                         ; preds = %if.end92
  %call98 = tail call zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef nonnull %msm_dsi) #6
  br i1 %call98, label %land.lhs.true, label %if.end97.if.end101_crit_edge

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

land.lhs.true:                                    ; preds = %if.end97
  %call99 = tail call zeroext i1 @msm_dsi_is_master_dsi(ptr noundef nonnull %msm_dsi) #6
  br i1 %call99, label %land.lhs.true.if.end101_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true.if.end101_crit_edge, %if.end97.if.end101_crit_edge
  %encoder102 = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 10
  %7 = ptrtoint ptr %encoder102 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %encoder, ptr %encoder102, align 4
  %id = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 11
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %conv = trunc i32 %9 to i8
  %call103 = tail call ptr @msm_dsi_manager_bridge_init(i8 noundef zeroext %conv) #6
  %bridge = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 3
  %10 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call103, ptr %bridge, align 4
  %cmp.i = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then106, label %if.end111

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call103 to i32
  %dev109 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev109, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %11) #6
  %14 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bridge, align 4
  br label %fail

if.end111:                                        ; preds = %if.end101
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %call113 = tail call ptr @msm_dsi_host_get_bridge(ptr noundef %16) #6
  %tobool114.not = icmp eq ptr %call113, null
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %conv120 = trunc i32 %18 to i8
  br i1 %tobool114.not, label %if.else, label %if.then115

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %call118 = tail call ptr @msm_dsi_manager_ext_bridge_init(i8 noundef zeroext %conv120) #6
  br label %if.end123

if.else:                                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %call121 = tail call ptr @msm_dsi_manager_connector_init(i8 noundef zeroext %conv120) #6
  br label %if.end123

if.end123:                                        ; preds = %if.else, %if.then115
  %call118.sink = phi ptr [ %call121, %if.else ], [ %call118, %if.then115 ]
  %19 = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call118.sink, ptr %19, align 4
  %cmp.i201 = icmp ugt ptr %call118.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then126, label %if.end131

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call118.sink to i32
  %dev129 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev129, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef %21) #6
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %19, align 4
  br label %fail

if.end131:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bridge, align 4
  %num_bridges = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 30
  %27 = ptrtoint ptr %num_bridges to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_bridges, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %num_bridges, align 8
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 31, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %19, align 4
  %num_connectors = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 32
  %32 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_connectors, align 4
  %inc134 = add i32 %33, 1
  store i32 %inc134, ptr %num_connectors, align 4
  %arrayidx135 = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 33, i32 %33
  %34 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %arrayidx135, align 4
  br label %cleanup

fail:                                             ; preds = %if.then126, %if.then106, %if.then95
  %ret.0 = phi i32 [ %call, %if.then95 ], [ %11, %if.then106 ], [ %21, %if.then126 ]
  %bridge136 = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 3
  %35 = ptrtoint ptr %bridge136 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bridge136, align 4
  %tobool137.not = icmp eq ptr %36, null
  br i1 %tobool137.not, label %fail.if.end141_crit_edge, label %if.then138

fail.if.end141_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then138:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msm_dsi_manager_bridge_destroy(ptr noundef nonnull %36) #6
  %37 = ptrtoint ptr %bridge136 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %bridge136, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %fail.if.end141_crit_edge
  %connector142 = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 2
  %38 = ptrtoint ptr %connector142 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %connector142, align 4
  %tobool143.not = icmp eq ptr %39, null
  br i1 %tobool143.not, label %if.end141.if.end149_crit_edge, label %land.lhs.true144

if.end141.if.end149_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

land.lhs.true144:                                 ; preds = %if.end141
  %external_bridge = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 7
  %40 = ptrtoint ptr %external_bridge to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %external_bridge, align 4
  %tobool145.not = icmp eq ptr %41, null
  br i1 %tobool145.not, label %if.then146, label %land.lhs.true144.if.end149_crit_edge

land.lhs.true144.if.end149_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then146:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.drm_connector, ptr %39, i32 0, i32 21
  %42 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %destroy, align 4
  tail call void %45(ptr noundef nonnull %39) #6
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %land.lhs.true144.if.end149_crit_edge, %if.end141.if.end149_crit_edge
  %46 = ptrtoint ptr %connector142 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %connector142, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %if.end131, %land.lhs.true.cleanup_crit_edge, %do.end76, %do.end41, %do.end
  %retval.0 = phi i32 [ %ret.0, %if.end149 ], [ 0, %if.end131 ], [ -22, %do.end76 ], [ -22, %do.end41 ], [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_modeset_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_master_dsi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_manager_bridge_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_host_get_bridge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_manager_ext_bridge_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_manager_connector_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_manager_bridge_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_snapshot(ptr noundef %disp_state, ptr nocapture noundef readonly %msm_dsi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 4
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void @msm_dsi_host_snapshot(ptr noundef %disp_state, ptr noundef %1) #6
  %phy = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 5
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  tail call void @msm_dsi_phy_snapshot(ptr noundef %disp_state, ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsi_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i3 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i3, align 4
  %id = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dsi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i2 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i2, align 4
  %id = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_dev_probe(ptr noundef %pdev) #1 align 64 {
entry:
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 48, i32 noundef 3520) #6
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i.i) #6
  %id.i = getelementptr inbounds %struct.msm_dsi, ptr %call.i.i, i32 0, i32 11
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id.i, align 4
  %pdev6.i = getelementptr inbounds %struct.msm_dsi, ptr %call.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev6.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %call7.i = tail call i32 @msm_dsi_host_init(ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.if.end.i38.i_crit_edge

if.end5.i.if.end.i38.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i38.i

if.end10.i:                                       ; preds = %if.end5.i
  %3 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev6.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %7 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %of_parse_phandle.exit.i.i, label %of_parse_phandle.exit.thread.i.i

of_parse_phandle.exit.thread.i.i:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  br label %if.then.i.i

of_parse_phandle.exit.i.i:                        ; preds = %if.end10.i
  %8 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i.i.if.then.i.i_crit_edge, label %if.end.i.i

of_parse_phandle.exit.i.i.if.then.i.i_crit_edge:  ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %of_parse_phandle.exit.i.i.if.then.i.i_crit_edge, %of_parse_phandle.exit.thread.i.i
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #6
  br label %if.end.i38.i

if.end.i.i:                                       ; preds = %of_parse_phandle.exit.i.i
  %call3.i.i = call ptr @of_find_device_by_node(ptr noundef nonnull %9) #6
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.then10.critedge.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call3.i.i, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %phy.i.i = getelementptr inbounds %struct.msm_dsi, ptr %call.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %phy.i.i, align 4
  %dev7.i.i = getelementptr inbounds %struct.platform_device, ptr %call3.i.i, i32 0, i32 3
  %phy_dev.i.i = getelementptr inbounds %struct.msm_dsi, ptr %call.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %phy_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev7.i.i, ptr %phy_dev.i.i, align 4
  call void @of_node_put(ptr noundef nonnull %9) #6
  %14 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %15, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end14.i

if.then10.critedge.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %9) #6
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dsi_get_phy) #6
  br label %if.end.i38.i

if.then15.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_device(ptr noundef %dev7.i.i) #6
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dsi_get_phy) #6
  br label %if.end.i38.i

if.end14.i:                                       ; preds = %if.then5.i.i
  %call15.i = call i32 @msm_dsi_manager_register(ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.dsi_init.exit_crit_edge, label %if.end14.i.if.end.i38.i_crit_edge

if.end14.i.if.end.i38.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i38.i

if.end14.i.dsi_init.exit_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_init.exit

if.end.i38.i:                                     ; preds = %if.end14.i.if.end.i38.i_crit_edge, %if.then15.i.i, %if.then10.critedge.i.i, %if.then.i.i, %if.end5.i.if.end.i38.i_crit_edge
  %ret.0.i = phi i32 [ %call7.i, %if.end5.i.if.end.i38.i_crit_edge ], [ %call15.i, %if.end14.i.if.end.i38.i_crit_edge ], [ -6, %if.then.i.i ], [ -517, %if.then10.critedge.i.i ], [ -517, %if.then15.i.i ]
  call void @msm_dsi_manager_unregister(ptr noundef nonnull %call.i.i) #6
  %phy_dev.i37.i = getelementptr inbounds %struct.msm_dsi, ptr %call.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %phy_dev.i37.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_dev.i37.i, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %if.end.i38.i.if.end5.i.i_crit_edge, label %if.then2.i.i

if.end.i38.i.if.end5.i.i_crit_edge:               ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

if.then2.i.i:                                     ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_device(ptr noundef nonnull %17) #6
  %phy.i39.i = getelementptr inbounds %struct.msm_dsi, ptr %call.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %phy.i39.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %phy.i39.i, align 4
  %19 = ptrtoint ptr %phy_dev.i37.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %phy_dev.i37.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then2.i.i, %if.end.i38.i.if.end5.i.i_crit_edge
  %host.i.i = getelementptr inbounds %struct.msm_dsi, ptr %call.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i.i, label %if.end5.i.i.dsi_destroy.exit.i_crit_edge, label %if.then7.i.i

if.end5.i.i.dsi_destroy.exit.i_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_destroy.exit.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msm_dsi_host_destroy(ptr noundef nonnull %21) #6
  %22 = ptrtoint ptr %host.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %host.i.i, align 4
  br label %dsi_destroy.exit.i

dsi_destroy.exit.i:                               ; preds = %if.then7.i.i, %if.end5.i.i.dsi_destroy.exit.i_crit_edge
  %23 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev6.i, align 4
  %driver_data.i.i.i40.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %driver_data.i.i.i40.i, align 4
  %26 = inttoptr i32 %ret.0.i to ptr
  br label %dsi_init.exit

dsi_init.exit:                                    ; preds = %dsi_destroy.exit.i, %if.end14.i.dsi_init.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %dsi_destroy.exit.i ], [ %call.i.i, %if.end14.i.dsi_init.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dsi_init.exit.if.then_crit_edge, label %dsi_init.exit.cleanup_crit_edge

dsi_init.exit.cleanup_crit_edge:                  ; preds = %dsi_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dsi_init.exit.if.then_crit_edge:                  ; preds = %dsi_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %dsi_init.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i9 = phi ptr [ %retval.0.i, %dsi_init.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -6 to ptr), %entry.if.then_crit_edge ]
  %27 = ptrtoint ptr %retval.0.i9 to i32
  %cmp = icmp eq ptr %retval.0.i9, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 0, i32 %27
  br label %cleanup

cleanup:                                          ; preds = %if.then, %dsi_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dsi_init.exit.cleanup_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_dev_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dsi_destroy.exit_crit_edge, label %if.end.i

entry.dsi_destroy.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_destroy.exit

if.end.i:                                         ; preds = %entry
  tail call void @msm_dsi_manager_unregister(ptr noundef nonnull %1) #6
  %phy_dev.i = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %3) #6
  %phy.i = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %phy.i, align 4
  %5 = ptrtoint ptr %phy_dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %phy_dev.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %host.i = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then7.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msm_dsi_host_destroy(ptr noundef nonnull %7) #6
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %host.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end10.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %driver_data.i.i.i, align 4
  br label %dsi_destroy.exit

dsi_destroy.exit:                                 ; preds = %if.end10.i, %entry.dsi_destroy.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_manager_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_manager_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_runtime_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_runtime_resume(ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 200, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 219, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 227, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 245, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 267, i32 3}
!11 = !{ptr @dsi_ops, !12, !"dsi_ops", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 135, i32 35}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 192, i32 11}
!15 = !{ptr @dsi_driver, !16, !"dsi_driver", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 188, i32 31}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 88, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 29, i32 49}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 31, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 44, i32 3}
!25 = !{ptr @__func__.dsi_get_phy, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dt_match, !27, !"dt_match", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 177, i32 34}
!28 = !{ptr @dsi_pm_ops, !29, !"dsi_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dsi/dsi.c", i32 182, i32 32}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
