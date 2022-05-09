; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/dsi_manager.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi_manager.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_manager = type { [2 x ptr], i8, i8, i32 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msm_dsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32 }
%struct.dsi_connector = type { %struct.drm_connector, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.100, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.100 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsi_bridge = type { %struct.drm_bridge, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.msm_dsi_phy_clk_request = type { i32, i32 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }

@msm_dsim_glb = internal global { %struct.msm_dsi_manager, [16 x i8] } zeroinitializer, align 32
@dsi_mgr_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @dsi_mgr_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @dsi_mgr_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dsi_mgr_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @dsi_mgr_connector_get_modes, ptr null, ptr @dsi_mgr_connector_mode_valid, ptr null, ptr @dsi_mgr_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* init panel failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @dsi_mgr_bridge_disable, ptr @dsi_mgr_bridge_post_disable, ptr @dsi_mgr_bridge_mode_set, ptr @dsi_mgr_bridge_pre_enable, ptr @dsi_mgr_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to create bridge connector\0A\00", [61 x i8] zeroinitializer }, align 32
@msm_dsi_manager_cmd_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: failed to prepare non-trigger host, %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msm_dsi_manager_cmd_xfer\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/dsi/dsi_manager.c\00", [58 x i8] zeroinitializer }, align 32
@msm_dsi_manager_cmd_xfer._entry_ptr = internal global ptr @msm_dsi_manager_cmd_xfer._entry, section ".printk_index", align 4
@msm_dsi_manager_cmd_xfer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: failed to prepare host, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@msm_dsi_manager_cmd_xfer._entry_ptr.8 = internal global ptr @msm_dsi_manager_cmd_xfer._entry.6, section ".printk_index", align 4
@msm_dsi_manager_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: invalid id %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msm_dsi_manager_register\00", [39 x i8] zeroinitializer }, align 32
@msm_dsi_manager_register._entry_ptr = internal global ptr @msm_dsi_manager_register._entry, section ".printk_index", align 4
@msm_dsi_manager_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: dsi%d already registered\0A\00", [32 x i8] zeroinitializer }, align 32
@msm_dsi_manager_register._entry_ptr.13 = internal global ptr @msm_dsi_manager_register._entry.11, section ".printk_index", align 4
@msm_dsi_manager_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.5, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to parse OF DSI info\0A\00", [61 x i8] zeroinitializer }, align 32
@msm_dsi_manager_register._entry_ptr.16 = internal global ptr @msm_dsi_manager_register._entry.14, section ".printk_index", align 4
@msm_dsi_manager_register._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.5, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: failed to register mipi dsi host for DSI %d: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@msm_dsi_manager_register._entry_ptr.19 = internal global ptr @msm_dsi_manager_register._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"requested=%ld, actual=%ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not find panel for %u (%ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"id=%d\0A\00", [25 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Panel %d OFF failed, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsi_mgr_bridge_disable\00", [41 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_disable._entry_ptr = internal global ptr @dsi_mgr_bridge_disable._entry, section ".printk_index", align 4
@dsi_mgr_bridge_post_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: host %d disable failed, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dsi_mgr_bridge_post_disable\00", [36 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_post_disable._entry_ptr = internal global ptr @dsi_mgr_bridge_post_disable._entry, section ".printk_index", align 4
@dsi_mgr_bridge_post_disable._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: host1 disable failed, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_post_disable._entry_ptr.30 = internal global ptr @dsi_mgr_bridge_post_disable._entry.28, section ".printk_index", align 4
@dsi_mgr_bridge_post_disable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.5, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Panel %d unprepare failed,%d\0A\00", [60 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_post_disable._entry_ptr.33 = internal global ptr @dsi_mgr_bridge_post_disable._entry.31, section ".printk_index", align 4
@dsi_mgr_bridge_post_disable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.5, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: host %d power off failed,%d\0A\00", [61 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_post_disable._entry_ptr.36 = internal global ptr @dsi_mgr_bridge_post_disable._entry.34, section ".printk_index", align 4
@dsi_mgr_bridge_post_disable._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.5, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: host1 power off failed, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_post_disable._entry_ptr.39 = internal global ptr @dsi_mgr_bridge_post_disable._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_pre_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: power on host %d failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsi_mgr_bridge_pre_enable\00", [38 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_pre_enable._entry_ptr = internal global ptr @dsi_mgr_bridge_pre_enable._entry, section ".printk_index", align 4
@dsi_mgr_bridge_pre_enable._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: power on host1 failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_pre_enable._entry_ptr.45 = internal global ptr @dsi_mgr_bridge_pre_enable._entry.43, section ".printk_index", align 4
@dsi_mgr_bridge_pre_enable._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.5, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: prepare panel %d failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_pre_enable._entry_ptr.48 = internal global ptr @dsi_mgr_bridge_pre_enable._entry.46, section ".printk_index", align 4
@dsi_mgr_bridge_pre_enable._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.5, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: enable host %d failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_pre_enable._entry_ptr.51 = internal global ptr @dsi_mgr_bridge_pre_enable._entry.49, section ".printk_index", align 4
@dsi_mgr_bridge_pre_enable._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.5, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: enable host1 failed, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_pre_enable._entry_ptr.54 = internal global ptr @dsi_mgr_bridge_pre_enable._entry.52, section ".printk_index", align 4
@dsi_mgr_bridge_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: enable panel %d failed, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsi_mgr_bridge_enable\00", [42 x i8] zeroinitializer }, align 32
@dsi_mgr_bridge_enable._entry_ptr = internal global ptr @dsi_mgr_bridge_enable._entry, section ".printk_index", align 4
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,dual-dsi-mode\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,master-dsi\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,sync-dual-dsi\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"msm_dsim_glb\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 31, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"dsi_mgr_connector_funcs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 578, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"dsi_mgr_conn_helper_funcs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 587, i32 48 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 637, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"dsi_mgr_bridge_funcs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 593, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 730, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 766, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 773, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 813, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 818, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 826, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 832, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 280, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 322, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 240, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 480, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 491, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 521, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 526, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 532, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 545, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 550, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 568, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 364, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 372, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 392, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 400, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 407, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 466, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 55, i32 55 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 58, i32 33 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [41 x i8] c"../drivers/gpu/drm/msm/dsi/dsi_manager.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 62, i32 10 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @dsi_mgr_bridge_disable._entry, ptr @dsi_mgr_bridge_disable._entry_ptr, ptr @dsi_mgr_bridge_enable._entry, ptr @dsi_mgr_bridge_enable._entry_ptr, ptr @dsi_mgr_bridge_post_disable._entry, ptr @dsi_mgr_bridge_post_disable._entry.28, ptr @dsi_mgr_bridge_post_disable._entry.31, ptr @dsi_mgr_bridge_post_disable._entry.34, ptr @dsi_mgr_bridge_post_disable._entry.37, ptr @dsi_mgr_bridge_post_disable._entry_ptr, ptr @dsi_mgr_bridge_post_disable._entry_ptr.30, ptr @dsi_mgr_bridge_post_disable._entry_ptr.33, ptr @dsi_mgr_bridge_post_disable._entry_ptr.36, ptr @dsi_mgr_bridge_post_disable._entry_ptr.39, ptr @dsi_mgr_bridge_pre_enable._entry, ptr @dsi_mgr_bridge_pre_enable._entry.43, ptr @dsi_mgr_bridge_pre_enable._entry.46, ptr @dsi_mgr_bridge_pre_enable._entry.49, ptr @dsi_mgr_bridge_pre_enable._entry.52, ptr @dsi_mgr_bridge_pre_enable._entry_ptr, ptr @dsi_mgr_bridge_pre_enable._entry_ptr.45, ptr @dsi_mgr_bridge_pre_enable._entry_ptr.48, ptr @dsi_mgr_bridge_pre_enable._entry_ptr.51, ptr @dsi_mgr_bridge_pre_enable._entry_ptr.54, ptr @msm_dsi_manager_cmd_xfer._entry, ptr @msm_dsi_manager_cmd_xfer._entry.6, ptr @msm_dsi_manager_cmd_xfer._entry_ptr, ptr @msm_dsi_manager_cmd_xfer._entry_ptr.8, ptr @msm_dsi_manager_register._entry, ptr @msm_dsi_manager_register._entry.11, ptr @msm_dsi_manager_register._entry.14, ptr @msm_dsi_manager_register._entry.17, ptr @msm_dsi_manager_register._entry_ptr, ptr @msm_dsi_manager_register._entry_ptr.13, ptr @msm_dsi_manager_register._entry_ptr.16, ptr @msm_dsi_manager_register._entry_ptr.19, ptr @msm_dsim_glb, ptr @dsi_mgr_connector_funcs, ptr @dsi_mgr_conn_helper_funcs, ptr @.str, ptr @.str.1, ptr @dsi_mgr_bridge_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsim_glb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_manager_cmd_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_manager_cmd_xfer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_manager_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_manager_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_manager_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_manager_register._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_post_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_post_disable._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_post_disable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_post_disable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_post_disable._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_pre_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_pre_enable._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_pre_enable._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_pre_enable._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_pre_enable._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_mgr_bridge_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_manager_tpg_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msm_dsim_glb, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 4
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void @msm_dsi_host_test_pattern_en(ptr noundef %3) #7
  %4 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %host5 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %host5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host5, align 4
  tail call void @msm_dsi_host_test_pattern_en(ptr noundef %6) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_test_pattern_en(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_manager_connector_init(i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %id to i32
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1048) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id4 = getelementptr inbounds %struct.dsi_connector, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %id4, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @drm_connector_init(ptr noundef %5, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dsi_mgr_connector_funcs, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %7 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dsi_mgr_conn_helper_funcs, ptr %helper_private.i, align 4
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %8 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %polled, align 4
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %interlace_allowed, align 8
  %doublescan_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %doublescan_allowed, align 1
  %encoder = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoder, align 4
  %call10 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call7.i.i, ptr noundef %12) #7
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i, align 4
  %kms1.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %kms1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kms1.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = and i8 %id, 1
  %22 = xor i8 %21, 1
  %rem.i58.zext.i = zext i8 %22 to i32
  %arrayidx.i57.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %rem.i58.zext.i
  %23 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i57.i, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end9.if.else.i_crit_edge, label %land.lhs.true.i

if.end9.if.else.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end9
  %26 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv)
  %cmp.i = icmp eq i32 %26, %conv
  br i1 %cmp.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end9.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %master_dsi.0.i = phi ptr [ %20, %if.else.i ], [ %24, %land.lhs.true.i.if.end.i_crit_edge ]
  %slave_dsi.0.i = phi ptr [ %24, %if.else.i ], [ %20, %land.lhs.true.i.if.end.i_crit_edge ]
  %host.i = getelementptr inbounds %struct.msm_dsi, ptr %master_dsi.0.i, i32 0, i32 4
  %27 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host.i, align 4
  %call7.i = tail call ptr @msm_dsi_host_get_panel(ptr noundef %28) #7
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %msm_dsi_manager_panel_init.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i
  %tobool14.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool14.not.i, label %if.end13.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, label %lor.lhs.false.i

if.end13.i.msm_dsi_manager_panel_init.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_dsi_manager_panel_init.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %29 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool15.not.i = icmp eq i8 %29, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, label %if.end17.i

lor.lhs.false.i.msm_dsi_manager_panel_init.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_dsi_manager_panel_init.exit.thread

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %base.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %tile_property.i = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 30, i32 38
  %32 = ptrtoint ptr %tile_property.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tile_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base.i, ptr noundef %33, i64 noundef 0) #7
  %tobool19.not.i = icmp eq ptr %24, null
  br i1 %tobool19.not.i, label %if.end17.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, label %land.lhs.true20.i

if.end17.i.msm_dsi_manager_panel_init.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_dsi_manager_panel_init.exit.thread

land.lhs.true20.i:                                ; preds = %if.end17.i
  %panel21.i = getelementptr inbounds %struct.msm_dsi, ptr %24, i32 0, i32 6
  %34 = ptrtoint ptr %panel21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %panel21.i, align 4
  %tobool22.not.i = icmp eq ptr %35, null
  br i1 %tobool22.not.i, label %land.lhs.true20.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, label %land.lhs.true23.i

land.lhs.true20.i.msm_dsi_manager_panel_init.exit.thread_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_dsi_manager_panel_init.exit.thread

land.lhs.true23.i:                                ; preds = %land.lhs.true20.i
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %18, align 8
  %set_split_display.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %set_split_display.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_split_display.i, align 4
  %tobool24.not.i = icmp eq ptr %39, null
  br i1 %tobool24.not.i, label %land.lhs.true23.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, label %if.then25.i

land.lhs.true23.i.msm_dsi_manager_panel_init.exit.thread_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_dsi_manager_panel_init.exit.thread

if.then25.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.i = getelementptr inbounds %struct.msm_dsi, ptr %master_dsi.0.i, i32 0, i32 10
  %40 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %encoder.i, align 4
  %encoder28.i = getelementptr inbounds %struct.msm_dsi, ptr %slave_dsi.0.i, i32 0, i32 10
  %42 = ptrtoint ptr %encoder28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %encoder28.i, align 4
  %call29.i = tail call zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef %20) #7
  %call30.i = tail call i32 %39(ptr noundef %18, ptr noundef %41, ptr noundef %43, i1 noundef zeroext %call29.i) #7
  br label %msm_dsi_manager_panel_init.exit.thread

msm_dsi_manager_panel_init.exit.thread:           ; preds = %if.then25.i, %land.lhs.true23.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, %land.lhs.true20.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, %if.end17.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, %lor.lhs.false.i.msm_dsi_manager_panel_init.exit.thread_crit_edge, %if.end13.i.msm_dsi_manager_panel_init.exit.thread_crit_edge
  %panel32.i = getelementptr inbounds %struct.msm_dsi, ptr %20, i32 0, i32 6
  %44 = ptrtoint ptr %panel32.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i, ptr %panel32.i, align 4
  br label %cleanup

msm_dsi_manager_panel_init.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %id10.i = getelementptr inbounds %struct.msm_dsi, ptr %20, i32 0, i32 11
  %45 = ptrtoint ptr %id10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id10.i, align 4
  %47 = ptrtoint ptr %call7.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %46, i32 noundef %47) #7
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %51, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %47) #7
  %funcs = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 21
  %52 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %destroy, align 4
  %connector17 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %connector17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %connector17, align 4
  tail call void %55(ptr noundef %57) #7
  br label %cleanup

cleanup:                                          ; preds = %msm_dsi_manager_panel_init.exit, %msm_dsi_manager_panel_init.exit.thread, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then7 ], [ %call7.i, %msm_dsi_manager_panel_init.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %msm_dsi_manager_panel_init.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_manager_bridge_init(i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %id to i32
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 284, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end:                                           ; preds = %entry
  %id4 = getelementptr inbounds %struct.dsi_bridge, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %id4, align 4
  %encoder5 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %encoder5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder5, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dsi_mgr_bridge_funcs, ptr %funcs, align 4
  %call6 = tail call i32 @drm_bridge_attach(ptr noundef %8, ptr noundef nonnull %call.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.030 = phi i32 [ %call6, %if.end.if.end12_crit_edge ], [ -12, %entry.if.end12_crit_edge ]
  %10 = inttoptr i32 %ret.030 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.end12 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msm_dsi_manager_bridge_destroy(ptr nocapture %bridge) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_manager_ext_bridge_init(i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %id to i32
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bridge = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 4
  %host = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %call2 = tail call ptr @msm_dsi_host_get_bridge(ptr noundef %7) #7
  %external_bridge = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %external_bridge to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %external_bridge, align 4
  %encoder3 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %encoder3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder3, align 4
  %call4 = tail call i32 @drm_bridge_attach(ptr noundef %10, ptr noundef %call2, ptr noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call4)
  %cmp = icmp eq i32 %call4, -22
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @drm_bridge_attach(ptr noundef %10, ptr noundef %call2, ptr noundef %5, i32 noundef 0) #7
  %connector_list8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %.pn.in = phi ptr [ %connector_list8, %if.then ], [ %.pn, %for.body.for.cond_crit_edge ]
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp9.not = icmp eq ptr %.pn, %connector_list8
  br i1 %cmp9.not, label %for.cond.cleanup27_crit_edge, label %for.body

for.cond.cleanup27_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

for.body:                                         ; preds = %for.cond
  %connector6.0 = getelementptr i8, ptr %.pn, i32 -16
  %call11 = tail call zeroext i1 @drm_connector_has_possible_encoder(ptr noundef %connector6.0, ptr noundef %10) #7
  br i1 %call11, label %for.body.cleanup27_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end20:                                         ; preds = %entry
  %call21 = tail call ptr @drm_bridge_connector_init(ptr noundef %3, ptr noundef %10) #7
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup27

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call21, ptr noundef %10) #7
  br label %cleanup27

cleanup27:                                        ; preds = %if.end25, %if.then23, %for.body.cleanup27_crit_edge, %for.cond.cleanup27_crit_edge
  %retval.1 = phi ptr [ %call21, %if.then23 ], [ %call21, %if.end25 ], [ inttoptr (i32 -19 to ptr), %for.cond.cleanup27_crit_edge ], [ %connector6.0, %for.body.cleanup27_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_host_get_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_has_possible_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_manager_cmd_xfer(i32 noundef %id, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = load ptr, ptr @msm_dsim_glb, align 4
  %host2 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host2, align 4
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %7 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3 = icmp ne i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool3, %land.rhs ]
  %10 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp ne i8 %10, 0
  %lnot = xor i1 %9, true
  %spec.select = select i1 %tobool4.not, i1 %lnot, i1 false
  %tx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buf, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %land.end.cleanup_crit_edge, label %lor.lhs.false

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.end
  %tx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  %or.cond = and i1 %cmp, %spec.select
  br i1 %or.cond, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  br i1 %9, label %cond.true, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %rx_len14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %15 = ptrtoint ptr %rx_len14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_len14, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %spec.select.not = xor i1 %spec.select, true
  %tobool19.not = icmp eq ptr %2, null
  %or.cond82 = select i1 %spec.select.not, i1 true, i1 %tobool19.not
  br i1 %or.cond82, label %if.end16.if.end27_crit_edge, label %if.then20

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then20:                                        ; preds = %if.end16
  %host21 = getelementptr inbounds %struct.msm_dsi, ptr %2, i32 0, i32 4
  %17 = ptrtoint ptr %host21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host21, align 4
  %call22 = tail call i32 @msm_dsi_host_xfer_prepare(ptr noundef %18, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end27_crit_edge, label %do.end

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call22) #11
  br label %cleanup

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %call28 = tail call i32 @msm_dsi_host_xfer_prepare(ptr noundef %4, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %call28) #11
  br label %restore_host0

if.end36:                                         ; preds = %if.end27
  br i1 %9, label %cond.true38, label %cond.false40

cond.true38:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 @msm_dsi_host_cmd_rx(ptr noundef %4, ptr noundef %msg) #7
  br label %cond.end42

cond.false40:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 @msm_dsi_host_cmd_tx(ptr noundef %4, ptr noundef %msg) #7
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true38
  %cond43 = phi i32 [ %call39, %cond.true38 ], [ %call41, %cond.false40 ]
  tail call void @msm_dsi_host_xfer_restore(ptr noundef %4, ptr noundef %msg) #7
  br label %restore_host0

restore_host0:                                    ; preds = %cond.end42, %do.end33
  %ret.0 = phi i32 [ %call28, %do.end33 ], [ %cond43, %cond.end42 ]
  br i1 %or.cond82, label %restore_host0.cleanup_crit_edge, label %if.then47

restore_host0.cleanup_crit_edge:                  ; preds = %restore_host0
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %restore_host0
  call void @__sanitizer_cov_trace_pc() #9
  %host48 = getelementptr inbounds %struct.msm_dsi, ptr %2, i32 0, i32 4
  %19 = ptrtoint ptr %host48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host48, align 4
  tail call void @msm_dsi_host_xfer_restore(ptr noundef %20, ptr noundef %msg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %restore_host0.cleanup_crit_edge, %do.end, %cond.true, %if.then12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.end.cleanup_crit_edge ], [ %16, %cond.true ], [ %14, %if.then12.cleanup_crit_edge ], [ %ret.0, %if.then47 ], [ %ret.0, %restore_host0.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_xfer_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_cmd_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_cmd_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_xfer_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_dsi_manager_cmd_xfer_trigger(i32 noundef %id, i32 noundef %dma_base, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = load ptr, ptr @msm_dsim_glb, align 4
  %host2 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host2, align 4
  %5 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  %tobool5.not = icmp eq ptr %2, null
  %or.cond15 = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond15, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %host7 = getelementptr inbounds %struct.msm_dsi, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %host7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host7, align 4
  tail call void @msm_dsi_host_cmd_xfer_commit(ptr noundef %7, i32 noundef %dma_base, i32 noundef %len) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @msm_dsi_host_cmd_xfer_commit(ptr noundef %4, i32 noundef %dma_base, i32 noundef %len) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %.demorgan = and i1 %cmp, %tobool.not
  %8 = xor i1 %.demorgan, true
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_cmd_xfer_commit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_manager_register(ptr noundef %msm_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 11
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %1) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msm_dsi, ptr %arrayidx, align 4
  %pdev = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %9 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.if.then4.i_crit_edge

if.end8.if.then4.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i:                                         ; preds = %if.end8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.57, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  store i8 %frombool.i, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4
  br i1 %tobool.i.i, label %if.end.i.if.then4.i_crit_edge, label %if.end.i.dsi_mgr_parse_of.exit_crit_edge

if.end.i.dsi_mgr_parse_of.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_mgr_parse_of.exit

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i.if.then4.i_crit_edge, %if.end8.if.then4.i_crit_edge
  %call.i1.i = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.58, ptr noundef null) #7
  %tobool.i2.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.i2.not.i, label %if.then4.i.if.end7.i_crit_edge, label %if.then6.i

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %1, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then4.i.if.end7.i_crit_edge
  %10 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not.i = icmp eq i8 %10, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i.dsi_mgr_parse_of.exit_crit_edge

if.end7.i.dsi_mgr_parse_of.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_mgr_parse_of.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i3.i = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.59, ptr noundef null) #7
  %tobool.i4.i = icmp ne ptr %call.i3.i, null
  %frombool12.i = zext i1 %tobool.i4.i to i8
  store i8 %frombool12.i, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1
  br label %dsi_mgr_parse_of.exit

dsi_mgr_parse_of.exit:                            ; preds = %if.then9.i, %if.end7.i.dsi_mgr_parse_of.exit_crit_edge, %if.end.i.dsi_mgr_parse_of.exit_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %add.i.i = add nsw i32 %1, 1
  %rem.i.i = srem i32 %add.i.i, 2
  %arrayidx.i60.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %rem.i.i
  %13 = ptrtoint ptr %arrayidx.i60.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i60.i, align 4
  %15 = load ptr, ptr @msm_dsim_glb, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %17 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i48 = icmp eq i8 %17, 0
  br i1 %tobool.not.i48, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %dsi_mgr_parse_of.exit
  %host.i = getelementptr inbounds %struct.msm_dsi, ptr %12, i32 0, i32 4
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  %call4.i = tail call i32 @msm_dsi_host_register(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i49, label %if.then.i.do.end25_crit_edge

if.then.i.do.end25_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end.i49:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i = getelementptr inbounds %struct.msm_dsi, ptr %12, i32 0, i32 5
  %20 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy.i, align 4
  tail call void @msm_dsi_phy_set_usecase(ptr noundef %21, i32 noundef 0) #7
  br label %cleanup35.sink.split.i

if.else.i:                                        ; preds = %dsi_mgr_parse_of.exit
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %if.else.i.cleanup_crit_edge, label %if.then10.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i:                                      ; preds = %if.else.i
  %22 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %1)
  %cmp.i = icmp eq i32 %22, %1
  %cond15.i = select i1 %cmp.i, ptr %14, ptr %12
  %host16.i = getelementptr inbounds %struct.msm_dsi, ptr %cond15.i, i32 0, i32 4
  %23 = ptrtoint ptr %host16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host16.i, align 4
  %call17.i = tail call i32 @msm_dsi_host_register(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then10.i.do.end25_crit_edge

if.then10.i.do.end25_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end20.i:                                       ; preds = %if.then10.i
  %call.call1.i = select i1 %cmp.i, ptr %12, ptr %14
  %host21.i = getelementptr inbounds %struct.msm_dsi, ptr %call.call1.i, i32 0, i32 4
  %25 = ptrtoint ptr %host21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host21.i, align 4
  %call22.i = tail call i32 @msm_dsi_host_register(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cleanup.i, label %if.end20.i.do.end25_crit_edge

if.end20.i.do.end25_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

cleanup.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %phy26.i = getelementptr inbounds %struct.msm_dsi, ptr %15, i32 0, i32 5
  %27 = ptrtoint ptr %phy26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy26.i, align 4
  tail call void @msm_dsi_phy_set_usecase(ptr noundef %28, i32 noundef 1) #7
  %phy27.i = getelementptr inbounds %struct.msm_dsi, ptr %16, i32 0, i32 5
  %29 = ptrtoint ptr %phy27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy27.i, align 4
  tail call void @msm_dsi_phy_set_usecase(ptr noundef %30, i32 noundef 2) #7
  %host28.i = getelementptr inbounds %struct.msm_dsi, ptr %12, i32 0, i32 4
  %31 = ptrtoint ptr %host28.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host28.i, align 4
  %phy29.i = getelementptr inbounds %struct.msm_dsi, ptr %12, i32 0, i32 5
  %33 = ptrtoint ptr %phy29.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy29.i, align 4
  tail call void @msm_dsi_host_set_phy_mode(ptr noundef %32, ptr noundef %34) #7
  %host30.i = getelementptr inbounds %struct.msm_dsi, ptr %14, i32 0, i32 4
  %phy31.i = getelementptr inbounds %struct.msm_dsi, ptr %14, i32 0, i32 5
  br label %cleanup35.sink.split.i

cleanup35.sink.split.i:                           ; preds = %cleanup.i, %if.end.i49
  %phy.sink.i = phi ptr [ %phy.i, %if.end.i49 ], [ %phy31.i, %cleanup.i ]
  %.sink.in.i = phi ptr [ %host.i, %if.end.i49 ], [ %host30.i, %cleanup.i ]
  %35 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %36 = ptrtoint ptr %phy.sink.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy.sink.i, align 4
  tail call void @msm_dsi_host_set_phy_mode(ptr noundef %.sink.i, ptr noundef %37) #7
  br label %cleanup

do.end25:                                         ; preds = %if.end20.i.do.end25_crit_edge, %if.then10.i.do.end25_crit_edge, %if.then.i.do.end25_crit_edge
  %retval.1.i.ph = phi i32 [ %call17.i, %if.then10.i.do.end25_crit_edge ], [ %call22.i, %if.end20.i.do.end25_crit_edge ], [ %call4.i, %if.then.i.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %retval.1.i.ph) #11
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %cleanup35.sink.split.i, %if.else.i.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end5 ], [ %retval.1.i.ph, %do.end25 ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %cleanup35.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_manager_unregister(ptr nocapture noundef readonly %msm_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 4
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msm_dsi_host_unregister(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %id = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 11
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @msm_dsi_is_bonded_dsi(ptr nocapture noundef readnone %msm_dsi) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @msm_dsi_is_master_dsi(ptr nocapture noundef readonly %msm_dsi) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %id = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp = icmp eq i32 %0, %2
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsi_mgr_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %panel = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %5, null
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_mgr_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #7
  tail call void @drm_connector_cleanup(ptr noundef %connector) #7
  tail call void @kfree(ptr noundef %connector) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_mgr_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %panel2 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %5, ptr noundef %connector) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_mgr_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call2 = tail call ptr @msm_dsi_get_encoder(ptr noundef %3) #7
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %kms3 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kms3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kms3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mul = mul i32 %11, 1000
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %round_pixclk = getelementptr inbounds %struct.msm_kms_funcs, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %round_pixclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %round_pixclk, align 4
  %call4 = tail call i32 %15(ptr noundef %9, i32 noundef %mul, ptr noundef %call2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef %mul, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %mul)
  %cmp.not = icmp eq i32 %call4, %mul
  %. = select i1 %cmp.not, i32 0, i32 17
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dsi_mgr_connector_best_encoder(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #7
  %call2 = tail call ptr @msm_dsi_get_encoder(ptr noundef %3) #7
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_get_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_host_get_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %panel2 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel2, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %1) #7
  %7 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel2, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %msm_dsi_device_connected.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit:                    ; preds = %entry
  %external_bridge.i = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %external_bridge.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %external_bridge.i, align 4
  %tobool1.i.not = icmp eq ptr %10, null
  br i1 %tobool1.i.not, label %msm_dsi_device_connected.exit.cleanup_crit_edge, label %msm_dsi_device_connected.exit.if.end_crit_edge

msm_dsi_device_connected.exit.if.end_crit_edge:   ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit.cleanup_crit_edge:  ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %msm_dsi_device_connected.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp = icmp ne i32 %11, %1
  %tobool7.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not.old = icmp eq ptr %5, null
  br i1 %tobool7.not.old, label %if.end6.cleanup_crit_edge, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %call9 = tail call i32 @drm_panel_disable(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %do.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %1, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %msm_dsi_device_connected.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_post_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %host3 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host3, align 4
  %panel4 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %panel4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel4, align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %1) #7
  %10 = ptrtoint ptr %panel4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel4, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %msm_dsi_device_connected.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit:                    ; preds = %entry
  %external_bridge.i = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %external_bridge.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %external_bridge.i, align 4
  %tobool1.i.not = icmp eq ptr %13, null
  br i1 %tobool1.i.not, label %msm_dsi_device_connected.exit.cleanup_crit_edge, label %msm_dsi_device_connected.exit.if.end_crit_edge

msm_dsi_device_connected.exit.if.end_crit_edge:   ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit.cleanup_crit_edge:  ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %msm_dsi_device_connected.exit.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp = icmp eq i32 %14, %1
  br i1 %cmp, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.disable_phy_crit_edge

land.lhs.true.disable_phy_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_phy

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @msm_dsi_host_disable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %do.end

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %1, i32 noundef %call9) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end8.if.end13_crit_edge
  %tobool16.not = icmp eq ptr %4, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end13.if.end28_crit_edge, label %if.then17

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then17:                                        ; preds = %if.end13
  %host18 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %15 = ptrtoint ptr %host18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host18, align 4
  %call19 = tail call i32 @msm_dsi_host_disable(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.if.end28_crit_edge, label %do.end24

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %call19) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end24, %if.then17.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %if.end28.if.end40_crit_edge, label %if.then30

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end40_crit_edge, label %do.end36

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef %1, i32 noundef %call31) #11
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %if.then30.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  tail call void @msm_dsi_host_disable_irq(ptr noundef %6) #7
  br i1 %or.cond, label %if.end40.if.end46_crit_edge, label %if.then44

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %host45 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %17 = ptrtoint ptr %host45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host45, align 4
  tail call void @msm_dsi_host_disable_irq(ptr noundef %18) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end40.if.end46_crit_edge
  %phy = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  tail call void @msm_dsi_phy_pll_save_state(ptr noundef %20) #7
  %call47 = tail call i32 @msm_dsi_host_power_off(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.if.end55_crit_edge, label %do.end52

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef %1, i32 noundef %call47) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.end46.if.end55_crit_edge
  br i1 %or.cond, label %if.end55.disable_phy_crit_edge, label %if.then59

if.end55.disable_phy_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_phy

if.then59:                                        ; preds = %if.end55
  %host60 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %21 = ptrtoint ptr %host60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host60, align 4
  %call61 = tail call i32 @msm_dsi_host_power_off(ptr noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then59.disable_phy_crit_edge, label %do.end66

if.then59.disable_phy_crit_edge:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_phy

do.end66:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27, i32 noundef %call61) #11
  br label %disable_phy

disable_phy:                                      ; preds = %do.end66, %if.then59.disable_phy_crit_edge, %if.end55.disable_phy_crit_edge, %land.lhs.true.disable_phy_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %25 = load ptr, ptr @msm_dsim_glb, align 4
  %26 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %phy_enabled.i = getelementptr inbounds %struct.msm_dsi, ptr %24, i32 0, i32 9
  %27 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %phy_enabled.i, align 4
  %28 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i108 = icmp eq i8 %28, 0
  %tobool3.not.i = icmp eq ptr %25, null
  %or.cond.i = select i1 %tobool.not.i108, i1 true, i1 %tobool3.not.i
  %tobool5.not.i = icmp eq ptr %26, null
  %or.cond20.i = select i1 %or.cond.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond20.i, label %disable_phy.if.end14.sink.split.i_crit_edge, label %if.then.i

disable_phy.if.end14.sink.split.i_crit_edge:      ; preds = %disable_phy
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.sink.split.i

if.then.i:                                        ; preds = %disable_phy
  %phy_enabled6.i = getelementptr inbounds %struct.msm_dsi, ptr %25, i32 0, i32 9
  %29 = ptrtoint ptr %phy_enabled6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phy_enabled6.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool7.not.i = icmp eq i8 %30, 0
  br i1 %tobool7.not.i, label %land.lhs.true8.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true8.i:                                 ; preds = %if.then.i
  %phy_enabled9.i = getelementptr inbounds %struct.msm_dsi, ptr %26, i32 0, i32 9
  %31 = ptrtoint ptr %phy_enabled9.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %phy_enabled9.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool10.not.i = icmp eq i8 %32, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %land.lhs.true8.i.cleanup_crit_edge

land.lhs.true8.i.cleanup_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i = getelementptr inbounds %struct.msm_dsi, ptr %26, i32 0, i32 5
  %33 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy.i, align 4
  tail call void @msm_dsi_phy_disable(ptr noundef %34) #7
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.then11.i, %disable_phy.if.end14.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %25, %if.then11.i ], [ %24, %disable_phy.if.end14.sink.split.i_crit_edge ]
  %phy12.i = getelementptr inbounds %struct.msm_dsi, ptr %.sink.i, i32 0, i32 5
  %35 = ptrtoint ptr %phy12.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy12.i, align 4
  tail call void @msm_dsi_phy_disable(ptr noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14.sink.split.i, %land.lhs.true8.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %msm_dsi_device_connected.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_mode_set(ptr nocapture noundef readonly %bridge, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, 1
  %rem.i = srem i32 %add.i, 2
  %arrayidx.i47 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %rem.i
  %4 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i47, align 4
  %host3 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host3, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 31
  %call4 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %12 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %13 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hsync_start, align 2
  %conv5 = zext i16 %14 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %15 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hsync_end, align 4
  %conv6 = zext i16 %16 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %17 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %htotal, align 2
  %conv7 = zext i16 %18 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %19 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vdisplay, align 2
  %conv8 = zext i16 %20 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %21 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vsync_start, align 4
  %conv9 = zext i16 %22 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %23 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vsync_end, align 2
  %conv10 = zext i16 %24 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %25 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vtotal, align 4
  %conv11 = zext i16 %26 to i32
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 28
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type, align 2
  %conv12 = zext i8 %28 to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %call4, i32 noundef %10, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %30) #7
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %land.lhs.true

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %entry
  %31 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %1)
  %cmp = icmp eq i32 %31, %1
  br i1 %cmp, label %land.lhs.true19.critedge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true19.critedge:                         ; preds = %land.lhs.true
  %call16.c = tail call i32 @msm_dsi_host_set_display_mode(ptr noundef %7, ptr noundef %adjusted_mode) #7
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %land.lhs.true19.critedge.cleanup_crit_edge, label %if.then21

land.lhs.true19.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %host22 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 4
  %32 = ptrtoint ptr %host22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host22, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then21, %entry.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %33, %if.then21 ], [ %7, %entry.cleanup.sink.split_crit_edge ]
  %call23 = tail call i32 @msm_dsi_host_set_display_mode(ptr noundef %.sink, ptr noundef %adjusted_mode) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true19.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_pre_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  %clk_req.i55.i = alloca %struct.msm_dsi_phy_clk_request, align 4
  %clk_req.i50.i = alloca %struct.msm_dsi_phy_clk_request, align 4
  %clk_req.i.i = alloca %struct.msm_dsi_phy_clk_request, align 4
  %phy_shared_timings = alloca [2 x %struct.msm_dsi_phy_shared_timings], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %host3 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host3, align 4
  %panel4 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %panel4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phy_shared_timings) #7
  %9 = call ptr @memset(ptr %phy_shared_timings, i32 255, i32 24)
  %10 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool = icmp ne i8 %10, 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %1) #7
  %11 = ptrtoint ptr %panel4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %panel4, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %msm_dsi_device_connected.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit:                    ; preds = %entry
  %external_bridge.i = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %external_bridge.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %external_bridge.i, align 4
  %tobool1.i.not = icmp eq ptr %14, null
  br i1 %tobool1.i.not, label %msm_dsi_device_connected.exit.cleanup_crit_edge, label %msm_dsi_device_connected.exit.if.end_crit_edge

msm_dsi_device_connected.exit.if.end_crit_edge:   ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit.cleanup_crit_edge:  ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %msm_dsi_device_connected.exit.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %tobool, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %15 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp = icmp eq i32 %15, %1
  br i1 %cmp, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = load ptr, ptr @msm_dsim_glb, align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i159 = icmp eq i8 %20, 0
  %tobool3.not.i = icmp eq ptr %18, null
  %or.cond.i = select i1 %tobool.not.i159, i1 true, i1 %tobool3.not.i
  %tobool5.not.i = icmp eq ptr %19, null
  %or.cond49.i = select i1 %or.cond.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond49.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  %phy_enabled.i = getelementptr inbounds %struct.msm_dsi, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %phy_enabled.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not.i = icmp eq i8 %22, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %if.then.i.if.end12_crit_edge

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true7.i:                                 ; preds = %if.then.i
  %phy_enabled8.i = getelementptr inbounds %struct.msm_dsi, ptr %19, i32 0, i32 9
  %23 = ptrtoint ptr %phy_enabled8.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %phy_enabled8.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not.i = icmp eq i8 %24, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %land.lhs.true7.i.if.end12_crit_edge

land.lhs.true7.i.if.end12_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10.i:                                      ; preds = %land.lhs.true7.i
  %host.i = getelementptr inbounds %struct.msm_dsi, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host.i, align 4
  tail call void @msm_dsi_host_reset_phy(ptr noundef %26) #7
  %host11.i = getelementptr inbounds %struct.msm_dsi, ptr %19, i32 0, i32 4
  %27 = ptrtoint ptr %host11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host11.i, align 4
  tail call void @msm_dsi_host_reset_phy(ptr noundef %28) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_req.i.i) #7
  %29 = ptrtoint ptr %clk_req.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %clk_req.i.i, align 4, !annotation !118
  %30 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %30, align 4, !annotation !118
  %32 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.i.i = icmp ne i8 %32, 0
  %33 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host.i, align 4
  call void @msm_dsi_host_get_phy_clk_req(ptr noundef %34, ptr noundef nonnull %clk_req.i.i, i1 noundef zeroext %tobool.i.i) #7
  %phy.i.i = getelementptr inbounds %struct.msm_dsi, ptr %18, i32 0, i32 5
  %35 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy.i.i, align 4
  %call.i.i = call i32 @msm_dsi_phy_enable(ptr noundef %36, ptr noundef nonnull %clk_req.i.i, ptr noundef nonnull %phy_shared_timings) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_req.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %if.end.i, label %if.then10.i.cleanup_crit_edge

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then10.i
  %arrayidx15.i = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, ptr %phy_shared_timings, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_req.i50.i) #7
  %37 = ptrtoint ptr %clk_req.i50.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %clk_req.i50.i, align 4, !annotation !118
  %38 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req.i50.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %38, align 4, !annotation !118
  %40 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.i51.i = icmp ne i8 %40, 0
  %41 = ptrtoint ptr %host11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host11.i, align 4
  call void @msm_dsi_host_get_phy_clk_req(ptr noundef %42, ptr noundef nonnull %clk_req.i50.i, i1 noundef zeroext %tobool.i51.i) #7
  %phy.i53.i = getelementptr inbounds %struct.msm_dsi, ptr %19, i32 0, i32 5
  %43 = ptrtoint ptr %phy.i53.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy.i53.i, align 4
  %call.i54.i = call i32 @msm_dsi_phy_enable(ptr noundef %44, ptr noundef nonnull %clk_req.i50.i, ptr noundef %arrayidx15.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_req.i50.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool17.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool17.not.i, label %if.end.i.if.end12_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else.i:                                        ; preds = %if.end8
  %host21.i = getelementptr inbounds %struct.msm_dsi, ptr %17, i32 0, i32 4
  %45 = ptrtoint ptr %host21.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host21.i, align 4
  tail call void @msm_dsi_host_reset_phy(ptr noundef %46) #7
  %arrayidx22.i = getelementptr %struct.msm_dsi_phy_shared_timings, ptr %phy_shared_timings, i32 %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_req.i55.i) #7
  %47 = ptrtoint ptr %clk_req.i55.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %clk_req.i55.i, align 4, !annotation !118
  %48 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req.i55.i, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %48, align 4, !annotation !118
  %50 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.i56.i = icmp ne i8 %50, 0
  %51 = ptrtoint ptr %host21.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host21.i, align 4
  call void @msm_dsi_host_get_phy_clk_req(ptr noundef %52, ptr noundef nonnull %clk_req.i55.i, i1 noundef zeroext %tobool.i56.i) #7
  %phy.i58.i = getelementptr inbounds %struct.msm_dsi, ptr %17, i32 0, i32 5
  %53 = ptrtoint ptr %phy.i58.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy.i58.i, align 4
  %call.i59.i = call i32 @msm_dsi_phy_enable(ptr noundef %54, ptr noundef nonnull %clk_req.i55.i, ptr noundef %arrayidx22.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_req.i55.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool24.not.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool24.not.i, label %if.else.i.if.end12_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.else.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %land.lhs.true7.i.if.end12_crit_edge, %if.then.i.if.end12_crit_edge
  %phy_enabled28.i = getelementptr inbounds %struct.msm_dsi, ptr %17, i32 0, i32 9
  %55 = ptrtoint ptr %phy_enabled28.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %phy_enabled28.i, align 4
  %arrayidx = getelementptr [2 x %struct.msm_dsi_phy_shared_timings], ptr %phy_shared_timings, i32 0, i32 %1
  %phy = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy, align 4
  %call14 = call i32 @msm_dsi_host_power_on(ptr noundef %6, ptr noundef %arrayidx, i1 noundef zeroext %tobool, ptr noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %call14) #11
  br label %host_on_fail

if.end18:                                         ; preds = %if.end12
  %tobool.not = xor i1 %tobool, true
  %tobool21.not = icmp eq ptr %4, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %if.end18.if.end42_crit_edge, label %if.then22

if.end18.if.end42_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then22:                                        ; preds = %if.end18
  %host23 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %58 = ptrtoint ptr %host23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host23, align 4
  %arrayidx24 = getelementptr inbounds [2 x %struct.msm_dsi_phy_shared_timings], ptr %phy_shared_timings, i32 0, i32 1
  %phy26 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 5
  %60 = ptrtoint ptr %phy26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy26, align 4
  %call27 = call i32 @msm_dsi_host_power_on(ptr noundef %59, ptr noundef %arrayidx24, i1 noundef zeroext true, ptr noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then40, label %do.end32

do.end32:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %call27) #11
  br label %host1_on_fail

if.then40:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call void @msm_dsi_host_enable_irq(ptr noundef %6) #7
  %62 = ptrtoint ptr %host23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host23, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end18.if.end42_crit_edge
  %.sink = phi ptr [ %63, %if.then40 ], [ %6, %if.end18.if.end42_crit_edge ]
  call void @msm_dsi_host_enable_irq(ptr noundef %.sink) #7
  %tobool43.not = icmp eq ptr %8, null
  br i1 %tobool43.not, label %if.end42.if.end54_crit_edge, label %if.then44

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then44:                                        ; preds = %if.end42
  %call45 = call i32 @drm_panel_prepare(ptr noundef nonnull %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.if.end54_crit_edge, label %do.end50

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %call45) #11
  br label %panel_prep_fail

if.end54:                                         ; preds = %if.then44.if.end54_crit_edge, %if.end42.if.end54_crit_edge
  %call55 = call i32 @msm_dsi_host_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %call55) #11
  br label %host_en_fail

if.end63:                                         ; preds = %if.end54
  br i1 %or.cond, label %if.end63.cleanup_crit_edge, label %if.then67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67:                                        ; preds = %if.end63
  %host68 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %64 = ptrtoint ptr %host68 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host68, align 4
  %call69 = call i32 @msm_dsi_host_enable(ptr noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then67.cleanup_crit_edge, label %do.end74

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end74:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.42, i32 noundef %call69) #11
  %call79 = call i32 @msm_dsi_host_disable(ptr noundef %6) #7
  br label %host_en_fail

host_en_fail:                                     ; preds = %do.end74, %do.end60
  br i1 %tobool43.not, label %host_en_fail.panel_prep_fail_crit_edge, label %if.then81

host_en_fail.panel_prep_fail_crit_edge:           ; preds = %host_en_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_prep_fail

if.then81:                                        ; preds = %host_en_fail
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = call i32 @drm_panel_unprepare(ptr noundef nonnull %8) #7
  br label %panel_prep_fail

panel_prep_fail:                                  ; preds = %if.then81, %host_en_fail.panel_prep_fail_crit_edge, %do.end50
  call void @msm_dsi_host_disable_irq(ptr noundef %6) #7
  br i1 %or.cond, label %panel_prep_fail.host1_on_fail_crit_edge, label %if.then93

panel_prep_fail.host1_on_fail_crit_edge:          ; preds = %panel_prep_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %host1_on_fail

if.then93:                                        ; preds = %panel_prep_fail
  call void @__sanitizer_cov_trace_pc() #9
  %host88 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %66 = ptrtoint ptr %host88 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host88, align 4
  call void @msm_dsi_host_disable_irq(ptr noundef %67) #7
  %68 = ptrtoint ptr %host88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host88, align 4
  %call95 = call i32 @msm_dsi_host_power_off(ptr noundef %69) #7
  br label %host1_on_fail

host1_on_fail:                                    ; preds = %if.then93, %panel_prep_fail.host1_on_fail_crit_edge, %do.end32
  %call97 = call i32 @msm_dsi_host_power_off(ptr noundef %6) #7
  br label %host_on_fail

host_on_fail:                                     ; preds = %host1_on_fail, %do.end
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i, align 4
  %72 = load ptr, ptr @msm_dsim_glb, align 4
  %73 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %phy_enabled.i161 = getelementptr inbounds %struct.msm_dsi, ptr %71, i32 0, i32 9
  %74 = ptrtoint ptr %phy_enabled.i161 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %phy_enabled.i161, align 4
  %75 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i162 = icmp eq i8 %75, 0
  %tobool3.not.i163 = icmp eq ptr %72, null
  %or.cond.i164 = select i1 %tobool.not.i162, i1 true, i1 %tobool3.not.i163
  %tobool5.not.i165 = icmp eq ptr %73, null
  %or.cond20.i = select i1 %or.cond.i164, i1 true, i1 %tobool5.not.i165
  br i1 %or.cond20.i, label %host_on_fail.if.end14.sink.split.i_crit_edge, label %if.then.i166

host_on_fail.if.end14.sink.split.i_crit_edge:     ; preds = %host_on_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.sink.split.i

if.then.i166:                                     ; preds = %host_on_fail
  %phy_enabled6.i = getelementptr inbounds %struct.msm_dsi, ptr %72, i32 0, i32 9
  %76 = ptrtoint ptr %phy_enabled6.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %phy_enabled6.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool7.not.i = icmp eq i8 %77, 0
  br i1 %tobool7.not.i, label %land.lhs.true8.i, label %if.then.i166.cleanup_crit_edge

if.then.i166.cleanup_crit_edge:                   ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true8.i:                                 ; preds = %if.then.i166
  %phy_enabled9.i = getelementptr inbounds %struct.msm_dsi, ptr %73, i32 0, i32 9
  %78 = ptrtoint ptr %phy_enabled9.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %phy_enabled9.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool10.not.i = icmp eq i8 %79, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %land.lhs.true8.i.cleanup_crit_edge

land.lhs.true8.i.cleanup_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i = getelementptr inbounds %struct.msm_dsi, ptr %73, i32 0, i32 5
  %80 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy.i, align 4
  call void @msm_dsi_phy_disable(ptr noundef %81) #7
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.then11.i, %host_on_fail.if.end14.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %72, %if.then11.i ], [ %71, %host_on_fail.if.end14.sink.split.i_crit_edge ]
  %phy12.i = getelementptr inbounds %struct.msm_dsi, ptr %.sink.i, i32 0, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14.sink.split.i, %if.end.i.cleanup.sink.split_crit_edge
  %phy.i.i.sink = phi ptr [ %phy12.i, %if.end14.sink.split.i ], [ %phy.i.i, %if.end.i.cleanup.sink.split_crit_edge ]
  %82 = ptrtoint ptr %phy.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy.i.i.sink, align 4
  call void @msm_dsi_phy_disable(ptr noundef %83) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true8.i.cleanup_crit_edge, %if.then.i166.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %msm_dsi_device_connected.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phy_shared_timings) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.dsi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %panel2 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel2, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !117
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %1) #7
  %7 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel2, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %msm_dsi_device_connected.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit:                    ; preds = %entry
  %external_bridge.i = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %external_bridge.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %external_bridge.i, align 4
  %tobool1.i.not = icmp eq ptr %10, null
  br i1 %tobool1.i.not, label %msm_dsi_device_connected.exit.cleanup_crit_edge, label %msm_dsi_device_connected.exit.if.end_crit_edge

msm_dsi_device_connected.exit.if.end_crit_edge:   ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

msm_dsi_device_connected.exit.cleanup_crit_edge:  ; preds = %msm_dsi_device_connected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %msm_dsi_device_connected.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp = icmp ne i32 %11, %1
  %tobool7.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not.old = icmp eq ptr %5, null
  br i1 %tobool7.not.old, label %if.end6.cleanup_crit_edge, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %call9 = tail call i32 @drm_panel_enable(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %do.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %1, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %msm_dsi_device_connected.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_disable_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_pll_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_set_display_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_power_on(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_enable_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_reset_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_get_phy_clk_req(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_phy_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_set_usecase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_set_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 637, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 730, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 766, i32 4}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @msm_dsi_manager_cmd_xfer._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @msm_dsi_manager_cmd_xfer._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 773, i32 3}
!13 = !{ptr @msm_dsi_manager_cmd_xfer._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @msm_dsi_manager_cmd_xfer._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 813, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @msm_dsi_manager_register._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @msm_dsi_manager_register._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 818, i32 3}
!22 = !{ptr @msm_dsi_manager_register._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @msm_dsi_manager_register._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 826, i32 3}
!26 = !{ptr @msm_dsi_manager_register._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @msm_dsi_manager_register._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 832, i32 3}
!30 = !{ptr @msm_dsi_manager_register._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @msm_dsi_manager_register._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @msm_dsim_glb, !33, !"msm_dsim_glb", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 31, i32 31}
!34 = !{ptr @dsi_mgr_connector_funcs, !35, !"dsi_mgr_connector_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 578, i32 41}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 280, i32 2}
!38 = !{ptr @dsi_mgr_conn_helper_funcs, !39, !"dsi_mgr_conn_helper_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 587, i32 48}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 322, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 240, i32 3}
!44 = !{ptr @dsi_mgr_bridge_funcs, !45, !"dsi_mgr_bridge_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 593, i32 38}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 480, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 491, i32 4}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dsi_mgr_bridge_disable._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dsi_mgr_bridge_disable._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 521, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dsi_mgr_bridge_post_disable._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @dsi_mgr_bridge_post_disable._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 526, i32 4}
!60 = !{ptr @dsi_mgr_bridge_post_disable._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dsi_mgr_bridge_post_disable._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 532, i32 4}
!64 = !{ptr @dsi_mgr_bridge_post_disable._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dsi_mgr_bridge_post_disable._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 545, i32 3}
!68 = !{ptr @dsi_mgr_bridge_post_disable._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dsi_mgr_bridge_post_disable._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 550, i32 4}
!72 = !{ptr @dsi_mgr_bridge_post_disable._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dsi_mgr_bridge_post_disable._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 568, i32 2}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 364, i32 3}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dsi_mgr_bridge_pre_enable._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @dsi_mgr_bridge_pre_enable._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 372, i32 4}
!83 = !{ptr @dsi_mgr_bridge_pre_enable._entry.43, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dsi_mgr_bridge_pre_enable._entry_ptr.45, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 392, i32 4}
!87 = !{ptr @dsi_mgr_bridge_pre_enable._entry.46, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @dsi_mgr_bridge_pre_enable._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 400, i32 3}
!91 = !{ptr @dsi_mgr_bridge_pre_enable._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @dsi_mgr_bridge_pre_enable._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 407, i32 4}
!95 = !{ptr @dsi_mgr_bridge_pre_enable._entry.52, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dsi_mgr_bridge_pre_enable._entry_ptr.54, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 466, i32 4}
!99 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dsi_mgr_bridge_enable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dsi_mgr_bridge_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 55, i32 55}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 58, i32 33}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/dsi/dsi_manager.c", i32 62, i32 10}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i8 0, i8 2}
!118 = !{!"auto-init"}
