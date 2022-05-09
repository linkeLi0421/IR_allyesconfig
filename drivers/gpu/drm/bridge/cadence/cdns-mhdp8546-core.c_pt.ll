; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.mhdp_platform_ops = type { ptr, ptr, ptr, ptr }
%struct.cdns_mhdp_platform_info = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.cdns_mhdp_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.drm_connector, %struct.drm_bridge, %struct.cdns_mhdp_link, %struct.drm_dp_aux, %struct.cdns_mhdp_host, %struct.cdns_mhdp_sink, %struct.cdns_mhdp_display_fmt, i8, i8, i8, %struct.spinlock, i8, i8, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.cdns_mhdp_hdcp, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.cdns_mhdp_link = type { i8, i32, i32, i32 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.cdns_mhdp_host = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdns_mhdp_sink = type { i32, i8, i8, i8, i8, i8 }
%struct.cdns_mhdp_display_fmt = type { i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdns_mhdp_hdcp = type { %struct.delayed_work, %struct.work_struct, %struct.mutex, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.cdns_mhdp_bridge_state = type { %struct.drm_bridge_state, ptr }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.phy_configure_opts_dp = type { i32, i32, [4 x i32], [4 x i32], i8 }
%struct.firmware = type { i32, ptr, ptr }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c\00", [44 x i8] zeroinitializer }, align 32
@cdns_mhdp_wait_for_sw_event.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 2, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns_mhdp8546\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cdns_mhdp_wait_for_sw_event\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SW event 0x%x timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@__initcall__kmod_cdns_mhdp8546__344_2635_mhdp_driver_init6 = internal global ptr @mhdp_driver_init, section ".initcall6.init", align 4
@mhdp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_mhdp_probe, ptr @cdns_mhdp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mhdp_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mhdp_driver_exit = internal global ptr @mhdp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_firmware345 = internal constant [44 x i8] c"cdns_mhdp8546.firmware=cadence/mhdp8546.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_author346 = internal constant [72 x i8] c"cdns_mhdp8546.author=Quentin Schulz <quentin.schulz@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [60 x i8] c"cdns_mhdp8546.author=Swapnil Jakhade <sjakhade@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [57 x i8] c"cdns_mhdp8546.author=Yuti Amonkar <yamonkar@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author349 = internal constant [60 x i8] c"cdns_mhdp8546.author=Tomi Valkeinen <tomi.valkeinen@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [48 x i8] c"cdns_mhdp8546.author=Jyri Sarha <jsarha@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [60 x i8] c"cdns_mhdp8546.description=Cadence MHDP8546 DP bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [64 x i8] c"cdns_mhdp8546.file=drivers/gpu/drm/bridge/cadence/cdns-mhdp8546\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [26 x i8] c"cdns_mhdp8546.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias354 = internal constant [43 x i8] c"cdns_mhdp8546.alias=platform:cdns-mhdp8546\00", section ".modinfo", align 1
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns-mhdp8546\00", [18 x i8] zeroinitializer }, align 32
@mhdp_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,mhdp8546\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-mhdp8546\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 2439, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't get clk: %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_mhdp_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr = internal global ptr @cdns_mhdp_probe._entry, section ".printk_index", align 4
@cdns_mhdp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mhdp->mbox_mutex\00", [46 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mhdp->link_mutex\00", [46 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mhdp->start_lock\00", [46 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str, i32 2455, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr.16 = internal global ptr @cdns_mhdp_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mhdptx-sapb\00", [20 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str, i32 2463, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to get SAPB memory resource, HDCP not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr.21 = internal global ptr @cdns_mhdp_probe._entry.18, section ".printk_index", align 4
@cdns_mhdp_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str, i32 2470, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no PHY configured\0A\00", [45 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr.24 = internal global ptr @cdns_mhdp_probe._entry.22, section ".printk_index", align 4
@cdns_mhdp_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str, i32 2483, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pm_runtime_resume_and_get failed\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr.27 = internal global ptr @cdns_mhdp_probe._entry.25, section ".printk_index", align 4
@cdns_mhdp_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.6, ptr @.str, i32 2492, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MHDP platform initialization failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr.30 = internal global ptr @cdns_mhdp_probe._entry.28, section ".printk_index", align 4
@cdns_mhdp_probe.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str, ptr @.str.31, i8 2, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"func clk rate %lu Hz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mhdp8546\00", [23 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.6, ptr @.str, i32 2510, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot install IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr.35 = internal global ptr @cdns_mhdp_probe._entry.33, section ".printk_index", align 4
@cdns_mhdp_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @cdns_mhdp_attach, ptr @cdns_mhdp_detach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_mhdp_atomic_enable, ptr @cdns_mhdp_atomic_disable, ptr null, ptr @cdns_mhdp_bridge_atomic_duplicate_state, ptr @cdns_mhdp_bridge_atomic_destroy_state, ptr null, ptr null, ptr @cdns_mhdp_atomic_check, ptr @cdns_mhdp_bridge_atomic_reset, ptr @cdns_mhdp_bridge_detect, ptr null, ptr @cdns_mhdp_bridge_get_edid, ptr null, ptr @cdns_mhdp_bridge_hpd_enable, ptr @cdns_mhdp_bridge_hpd_disable }, [60 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.6, ptr @.str, i32 2536, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to initialize PHY: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe._entry_ptr.38 = internal global ptr @cdns_mhdp_probe._entry.36, section ".printk_index", align 4
@cdns_mhdp_probe.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&mhdp->modeset_retry_work)\00", [51 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&mhdp->hpd_work)\00", [61 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mhdp->fw_load_wq\00", [46 x i8] zeroinitializer }, align 32
@cdns_mhdp_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mhdp->sw_events_wq\00", [44 x i8] zeroinitializer }, align 32
@cdns_mhdp_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 839, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write DPCD addr %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_mhdp_transfer\00", [45 x i8] zeroinitializer }, align 32
@cdns_mhdp_transfer._entry_ptr = internal global ptr @cdns_mhdp_transfer._entry, section ".printk_index", align 4
@cdns_mhdp_transfer._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str, i32 849, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read DPCD addr %u\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_mhdp_transfer._entry_ptr.51 = internal global ptr @cdns_mhdp_transfer._entry.49, section ".printk_index", align 4
@cdns_mhdp_dpcd_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 318, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpcd write failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_mhdp_dpcd_write\00", [43 x i8] zeroinitializer }, align 32
@cdns_mhdp_dpcd_write._entry_ptr = internal global ptr @cdns_mhdp_dpcd_write._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cdns_mhdp_attach.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str, ptr @.str.55, i8 1, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns_mhdp_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@cdns_mhdp_connector_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 1681, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_mhdp_connector_init\00", [39 x i8] zeroinitializer }, align 32
@cdns_mhdp_connector_init._entry_ptr = internal global ptr @cdns_mhdp_connector_init._entry, section ".printk_index", align 4
@cdns_mhdp_conn_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdns_mhdp_connector_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str, i32 1690, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@cdns_mhdp_connector_init._entry_ptr.60 = internal global ptr @cdns_mhdp_connector_init._entry.58, section ".printk_index", align 4
@cdns_mhdp_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @cdns_mhdp_get_modes, ptr @cdns_mhdp_connector_detect, ptr @cdns_mhdp_mode_valid, ptr null, ptr null, ptr null, ptr @cdns_mhdp_connector_atomic_check, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cdns_mhdp_connector_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str, i32 1703, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to attach connector to encoder\0A\00", [57 x i8] zeroinitializer }, align 32
@cdns_mhdp_connector_init._entry_ptr.63 = internal global ptr @cdns_mhdp_connector_init._entry.61, section ".printk_index", align 4
@cdns_mhdp_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str, i32 1510, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to read EDID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns_mhdp_get_modes\00", [44 x i8] zeroinitializer }, align 32
@cdns_mhdp_get_modes._entry_ptr = internal global ptr @cdns_mhdp_get_modes._entry, section ".printk_index", align 4
@cdns_mhdp_get_modes._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str, i32 1527, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: No supported color_format found (0x%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@cdns_mhdp_get_modes._entry_ptr.68 = internal global ptr @cdns_mhdp_get_modes._entry.66, section ".printk_index", align 4
@cdns_mhdp_get_modes._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str, i32 1533, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Display bpc only %d < %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_mhdp_get_modes._entry_ptr.71 = internal global ptr @cdns_mhdp_get_modes._entry.69, section ".printk_index", align 4
@cdns_mhdp_get_edid_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str, i32 434, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"get block[%d] edid failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_mhdp_get_edid_block\00", [39 x i8] zeroinitializer }, align 32
@cdns_mhdp_get_edid_block._entry_ptr = internal global ptr @cdns_mhdp_get_edid_block._entry, section ".printk_index", align 4
@cdns_mhdp_detect.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str, ptr @.str.75, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns_mhdp_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@cdns_mhdp_bandwidth_ok.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str, ptr @.str.77, i8 1, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_mhdp_bandwidth_ok\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unsupported Mode: %s, Req BW: %u, Available Max BW:%u\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_mhdp_detach.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str, ptr @.str.55, i8 2, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns_mhdp_detach\00", [47 x i8] zeroinitializer }, align 32
@cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str, ptr @.str.80, i8 1, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_mhdp_atomic_enable\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bridge enable\0A\00", [17 x i8] zeroinitializer }, align 32
@cdns_mhdp_atomic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str, i32 1997, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read CDNS_DPTX_CAR %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns_mhdp_atomic_enable._entry_ptr = internal global ptr @cdns_mhdp_atomic_enable._entry, section ".printk_index", align 4
@cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str, ptr @.str.82, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Enabling mode %s\0A\00", [42 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str, i32 1426, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read receiver capabilities\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cdns_mhdp_link_up\00", [46 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_up._entry_ptr = internal global ptr @cdns_mhdp_link_up._entry, section ".printk_index", align 4
@cdns_mhdp_link_up.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str, ptr @.str.85, i8 1, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Set sink device power state via DPCD\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_up._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str, i32 1450, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to read CDNS_DP_FRAMER_GLOBAL_CONFIG %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_up._entry_ptr.88 = internal global ptr @cdns_mhdp_link_up._entry.86, section ".printk_index", align 4
@cdns_mhdp_link_up._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.84, ptr @.str, i32 1463, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fastlink not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_up._entry_ptr.91 = internal global ptr @cdns_mhdp_link_up._entry.89, section ".printk_index", align 4
@cdns_mhdp_link_up._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.84, ptr @.str, i32 1471, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Link training failed. Exiting.\0A\00", [32 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_up._entry_ptr.94 = internal global ptr @cdns_mhdp_link_up._entry.92, section ".printk_index", align 4
@cdns_mhdp_get_training_interval_us._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str, i32 1348, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"wrong training interval returned by DPCD: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cdns_mhdp_get_training_interval_us\00", [61 x i8] zeroinitializer }, align 32
@cdns_mhdp_get_training_interval_us._entry_ptr = internal global ptr @cdns_mhdp_get_training_interval_us._entry, section ".printk_index", align 4
@cdns_mhdp_link_training.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str, ptr @.str.98, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_mhdp_link_training\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Reducing link rate during CR phase\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str, ptr @.str.99, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Reducing lanes number during CR phase\0A\00", [57 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str, i32 1272, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Link training failed during CR phase\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training._entry_ptr = internal global ptr @cdns_mhdp_link_training._entry, section ".printk_index", align 4
@cdns_mhdp_link_training.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str, ptr @.str.101, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Reducing lanes number during EQ phase\0A\00", [57 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str, ptr @.str.102, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Reducing link rate during EQ phase\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.97, ptr @.str, i32 1296, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Link training failed during EQ phase\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training._entry_ptr.105 = internal global ptr @cdns_mhdp_link_training._entry.103, section ".printk_index", align 4
@cdns_mhdp_link_training.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str, ptr @.str.106, i8 1, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Link training ok. Lanes: %u, Rate %u Mbps\0A\00", [53 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.97, ptr @.str, i32 1311, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training._entry_ptr.108 = internal global ptr @cdns_mhdp_link_training._entry.107, section ".printk_index", align 4
@cdns_mhdp_link_training_cr.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str, ptr @.str.110, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_mhdp_link_training_cr\00", [37 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Starting CR phase\0A\00", [45 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_cr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str, i32 1183, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: phy_configure() failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_cr._entry_ptr = internal global ptr @cdns_mhdp_link_training_cr._entry, section ".printk_index", align 4
@cdns_mhdp_link_training_cr._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.109, ptr @.str, i32 1197, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CR: max swing reached\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_cr._entry_ptr.114 = internal global ptr @cdns_mhdp_link_training_cr._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CR phase ok\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CR phase failed\00", [16 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.117, ptr @.str, i32 894, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cdns_mhdp_link_training_init\00", [35 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_init._entry_ptr = internal global ptr @cdns_mhdp_link_training_init._entry, section ".printk_index", align 4
@cdns_mhdp_adjust_lt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str, i32 484, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid number of lanes: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns_mhdp_adjust_lt\00", [44 x i8] zeroinitializer }, align 32
@cdns_mhdp_adjust_lt._entry_ptr = internal global ptr @cdns_mhdp_adjust_lt._entry, section ".printk_index", align 4
@cdns_mhdp_adjust_lt._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str, i32 523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to adjust Link Training.\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns_mhdp_adjust_lt._entry_ptr.122 = internal global ptr @cdns_mhdp_adjust_lt._entry.120, section ".printk_index", align 4
@cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.123, ptr @.str, ptr @.str.124, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_mhdp_print_lt_status\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s, %u lanes, %u Mbps, vs %s, pe %s\0A\00", [59 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_channel_eq.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.125, ptr @.str, ptr @.str.126, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cdns_mhdp_link_training_channel_eq\00", [61 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Starting EQ phase\0A\00", [45 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_channel_eq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.125, ptr @.str, i32 1062, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@cdns_mhdp_link_training_channel_eq._entry_ptr = internal global ptr @cdns_mhdp_link_training_channel_eq._entry, section ".printk_index", align 4
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EQ phase ok\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EQ phase failed\00", [16 x i8] zeroinitializer }, align 32
@cdns_mhdp_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str, i32 202, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_mhdp_reg_read\00", [45 x i8] zeroinitializer }, align 32
@cdns_mhdp_reg_read._entry_ptr = internal global ptr @cdns_mhdp_reg_read._entry, section ".printk_index", align 4
@cdns_mhdp_configure_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.131, ptr @.str, i32 1914, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_mhdp_configure_video\00", [38 x i8] zeroinitializer }, align 32
@cdns_mhdp_configure_video._entry_ptr = internal global ptr @cdns_mhdp_configure_video._entry, section ".printk_index", align 4
@cdns_mhdp_atomic_disable.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.132, ptr @.str, ptr @.str.55, i8 2, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_mhdp_atomic_disable\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cdns_mhdp_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str, i32 2162, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Not enough BW for %s (%u lanes at %u Mbps)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_mhdp_atomic_check\00", [41 x i8] zeroinitializer }, align 32
@cdns_mhdp_atomic_check._entry_ptr = internal global ptr @cdns_mhdp_atomic_check._entry, section ".printk_index", align 4
@cdns_mhdp_update_link_status.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.135, ptr @.str, ptr @.str.82, i8 2, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cdns_mhdp_update_link_status\00", [35 x i8] zeroinitializer }, align 32
@cdns_mhdp_detect_hpd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str, i32 2229, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: read event failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_mhdp_detect_hpd\00", [43 x i8] zeroinitializer }, align 32
@cdns_mhdp_detect_hpd._entry_ptr = internal global ptr @cdns_mhdp_detect_hpd._entry, section ".printk_index", align 4
@cdns_mhdp_detect_hpd._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str, i32 2236, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: get hpd status failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_mhdp_detect_hpd._entry_ptr.140 = internal global ptr @cdns_mhdp_detect_hpd._entry.138, section ".printk_index", align 4
@cdns_mhdp_read_hpd_event.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.141, ptr @.str, ptr @.str.142, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_mhdp_read_hpd_event\00", [39 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s%s%s%s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TO_HIGH \00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TO_LOW \00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PULSE \00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPD_STATE \00", [21 x i8] zeroinitializer }, align 32
@cdns_mhdp_get_hpd_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str, ptr @.str.149, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_mhdp_get_hpd_status\00", [39 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: HPD %splugged\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cadence/mhdp8546.bin\00", [43 x i8] zeroinitializer }, align 32
@cdns_mhdp_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str, i32 810, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to load firmware (%s), ret: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_mhdp_load_firmware\00", [40 x i8] zeroinitializer }, align 32
@cdns_mhdp_load_firmware._entry_ptr = internal global ptr @cdns_mhdp_load_firmware._entry, section ".printk_index", align 4
@cdns_mhdp_fw_cb.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.154, ptr @.str, ptr @.str.155, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_mhdp_fw_cb\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"firmware callback\0A\00", [45 x i8] zeroinitializer }, align 32
@cdns_mhdp_fw_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str, i32 772, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: No firmware.\0A\00", [46 x i8] zeroinitializer }, align 32
@cdns_mhdp_fw_cb._entry_ptr = internal global ptr @cdns_mhdp_fw_cb._entry, section ".printk_index", align 4
@cdns_mhdp_fw_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str, i32 719, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device didn't give any life sign: reg %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns_mhdp_fw_activate\00", [42 x i8] zeroinitializer }, align 32
@cdns_mhdp_fw_activate._entry_ptr = internal global ptr @cdns_mhdp_fw_activate._entry, section ".printk_index", align 4
@cdns_mhdp_fw_activate.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.158, ptr @.str, ptr @.str.159, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DP FW activated\0A\00", [47 x i8] zeroinitializer }, align 32
@cdns_mhdp_check_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str, i32 681, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unsupported FW version: fw_ver = %u, lib_ver = %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_mhdp_check_fw_version\00", [37 x i8] zeroinitializer }, align 32
@cdns_mhdp_check_fw_version._entry_ptr = internal global ptr @cdns_mhdp_check_fw_version._entry, section ".printk_index", align 4
@cdns_mhdp_check_fw_version.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.161, ptr @.str, ptr @.str.162, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW version: v%u.%u.%u\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_mhdp_set_firmware_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str, i32 353, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set firmware active failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cdns_mhdp_set_firmware_active\00", [34 x i8] zeroinitializer }, align 32
@cdns_mhdp_set_firmware_active._entry_ptr = internal global ptr @cdns_mhdp_set_firmware_active._entry, section ".printk_index", align 4
@cdns_mhdp_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str, i32 2586, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Timeout waiting for fw loading\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns_mhdp_remove\00", [47 x i8] zeroinitializer }, align 32
@cdns_mhdp_remove._entry_ptr = internal global ptr @cdns_mhdp_remove._entry, section ".printk_index", align 4
@mhdp_ti_j721e_bridge_timings = external dso_local constant %struct.drm_bridge_timings, align 4
@mhdp_ti_j721e_ops = external dso_local constant %struct.mhdp_platform_ops, align 4
@.compoundliteral = internal constant { %struct.cdns_mhdp_platform_info, [24 x i8] } { %struct.cdns_mhdp_platform_info { ptr @mhdp_ti_j721e_bridge_timings, ptr @mhdp_ti_j721e_ops }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.167 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.170 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.171 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 8, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 20, i64 30]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 20, i64 30]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2391, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2395, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"mhdp_driver\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2627, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2629, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [9 x i8] c"mhdp_ids\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2613, i32 34 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2439, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2445, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2446, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2447, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2455, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2459, i32 64 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2462, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2470, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2483, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2491, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2501, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2508, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2510, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [23 x i8] c"cdns_mhdp_bridge_funcs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2203, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2536, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2541, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2542, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2544, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2545, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 837, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 847, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 318, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1720, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1681, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [21 x i8] c"cdns_mhdp_conn_funcs\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1665, i32 41 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1690, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [28 x i8] c"cdns_mhdp_conn_helper_funcs\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1658, i32 48 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1703, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1510, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1525, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1531, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 433, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 648, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1590, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2091, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1981, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1997, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2045, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1426, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1437, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1448, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1463, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1471, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1347, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1257, i32 5 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1263, i32 5 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1271, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1281, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1288, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1296, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1300, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1309, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1160, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1182, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1197, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1202, i32 30 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1226, i32 28 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 893, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 484, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 523, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1019, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1036, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1061, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1074, i32 30 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1085, i32 28 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 202, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1912, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2061, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2160, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2320, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2228, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2235, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 464, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 382, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 806, i32 51 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 809, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 769, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 772, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 718, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 758, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 680, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 691, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 353, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.704 = private constant [55 x i8] c"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2585, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@llvm.compiler.used = appending global [235 x ptr] [ptr @__UNIQUE_ID_alias354, ptr @__UNIQUE_ID_author346, ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_license353, ptr @__exitcall_mhdp_driver_exit, ptr @__initcall__kmod_cdns_mhdp8546__344_2635_mhdp_driver_init6, ptr @cdns_mhdp_adjust_lt._entry, ptr @cdns_mhdp_adjust_lt._entry.120, ptr @cdns_mhdp_adjust_lt._entry_ptr, ptr @cdns_mhdp_adjust_lt._entry_ptr.122, ptr @cdns_mhdp_atomic_check._entry, ptr @cdns_mhdp_atomic_check._entry_ptr, ptr @cdns_mhdp_atomic_enable._entry, ptr @cdns_mhdp_atomic_enable._entry_ptr, ptr @cdns_mhdp_check_fw_version._entry, ptr @cdns_mhdp_check_fw_version._entry_ptr, ptr @cdns_mhdp_configure_video._entry, ptr @cdns_mhdp_configure_video._entry_ptr, ptr @cdns_mhdp_connector_init._entry, ptr @cdns_mhdp_connector_init._entry.58, ptr @cdns_mhdp_connector_init._entry.61, ptr @cdns_mhdp_connector_init._entry_ptr, ptr @cdns_mhdp_connector_init._entry_ptr.60, ptr @cdns_mhdp_connector_init._entry_ptr.63, ptr @cdns_mhdp_detect_hpd._entry, ptr @cdns_mhdp_detect_hpd._entry.138, ptr @cdns_mhdp_detect_hpd._entry_ptr, ptr @cdns_mhdp_detect_hpd._entry_ptr.140, ptr @cdns_mhdp_dpcd_write._entry, ptr @cdns_mhdp_dpcd_write._entry_ptr, ptr @cdns_mhdp_fw_activate._entry, ptr @cdns_mhdp_fw_activate._entry_ptr, ptr @cdns_mhdp_fw_cb._entry, ptr @cdns_mhdp_fw_cb._entry_ptr, ptr @cdns_mhdp_get_edid_block._entry, ptr @cdns_mhdp_get_edid_block._entry_ptr, ptr @cdns_mhdp_get_modes._entry, ptr @cdns_mhdp_get_modes._entry.66, ptr @cdns_mhdp_get_modes._entry.69, ptr @cdns_mhdp_get_modes._entry_ptr, ptr @cdns_mhdp_get_modes._entry_ptr.68, ptr @cdns_mhdp_get_modes._entry_ptr.71, ptr @cdns_mhdp_get_training_interval_us._entry, ptr @cdns_mhdp_get_training_interval_us._entry_ptr, ptr @cdns_mhdp_link_training._entry, ptr @cdns_mhdp_link_training._entry.103, ptr @cdns_mhdp_link_training._entry.107, ptr @cdns_mhdp_link_training._entry_ptr, ptr @cdns_mhdp_link_training._entry_ptr.105, ptr @cdns_mhdp_link_training._entry_ptr.108, ptr @cdns_mhdp_link_training_channel_eq._entry, ptr @cdns_mhdp_link_training_channel_eq._entry_ptr, ptr @cdns_mhdp_link_training_cr._entry, ptr @cdns_mhdp_link_training_cr._entry.112, ptr @cdns_mhdp_link_training_cr._entry_ptr, ptr @cdns_mhdp_link_training_cr._entry_ptr.114, ptr @cdns_mhdp_link_training_init._entry, ptr @cdns_mhdp_link_training_init._entry_ptr, ptr @cdns_mhdp_link_up._entry, ptr @cdns_mhdp_link_up._entry.86, ptr @cdns_mhdp_link_up._entry.89, ptr @cdns_mhdp_link_up._entry.92, ptr @cdns_mhdp_link_up._entry_ptr, ptr @cdns_mhdp_link_up._entry_ptr.88, ptr @cdns_mhdp_link_up._entry_ptr.91, ptr @cdns_mhdp_link_up._entry_ptr.94, ptr @cdns_mhdp_load_firmware._entry, ptr @cdns_mhdp_load_firmware._entry_ptr, ptr @cdns_mhdp_probe._entry, ptr @cdns_mhdp_probe._entry.14, ptr @cdns_mhdp_probe._entry.18, ptr @cdns_mhdp_probe._entry.22, ptr @cdns_mhdp_probe._entry.25, ptr @cdns_mhdp_probe._entry.28, ptr @cdns_mhdp_probe._entry.33, ptr @cdns_mhdp_probe._entry.36, ptr @cdns_mhdp_probe._entry_ptr, ptr @cdns_mhdp_probe._entry_ptr.16, ptr @cdns_mhdp_probe._entry_ptr.21, ptr @cdns_mhdp_probe._entry_ptr.24, ptr @cdns_mhdp_probe._entry_ptr.27, ptr @cdns_mhdp_probe._entry_ptr.30, ptr @cdns_mhdp_probe._entry_ptr.35, ptr @cdns_mhdp_probe._entry_ptr.38, ptr @cdns_mhdp_reg_read._entry, ptr @cdns_mhdp_reg_read._entry_ptr, ptr @cdns_mhdp_remove._entry, ptr @cdns_mhdp_remove._entry_ptr, ptr @cdns_mhdp_set_firmware_active._entry, ptr @cdns_mhdp_set_firmware_active._entry_ptr, ptr @cdns_mhdp_transfer._entry, ptr @cdns_mhdp_transfer._entry.49, ptr @cdns_mhdp_transfer._entry_ptr, ptr @cdns_mhdp_transfer._entry_ptr.51, ptr @mhdp_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mhdp_driver, ptr @.str.4, ptr @mhdp_ids, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cdns_mhdp_probe.__key, ptr @.str.9, ptr @cdns_mhdp_probe.__key.10, ptr @.str.11, ptr @cdns_mhdp_probe.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @cdns_mhdp_bridge_funcs, ptr @.str.37, ptr @cdns_mhdp_probe.__key.39, ptr @.str.40, ptr @cdns_mhdp_probe.__key.41, ptr @.str.42, ptr @cdns_mhdp_probe.__key.43, ptr @.str.44, ptr @cdns_mhdp_probe.__key.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @cdns_mhdp_conn_funcs, ptr @.str.59, ptr @cdns_mhdp_conn_helper_funcs, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.compoundliteral], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhdp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhdp_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_transfer._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_dpcd_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_connector_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_conn_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_connector_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_connector_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_get_modes._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_get_modes._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_get_edid_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_atomic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_up._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_up._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_up._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_get_training_interval_us._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_training._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_training._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_training._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_training_cr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_training_cr._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_training_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_adjust_lt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_adjust_lt._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_link_training_channel_eq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_configure_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_detect_hpd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_detect_hpd._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_fw_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_fw_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_check_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_set_firmware_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_mhdp_wait_for_sw_event(ptr noundef %mhdp, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2393) #10
  %sw_events = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 27
  %0 = ptrtoint ptr %sw_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_events, align 8
  %and = and i32 %1, %event
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.not = icmp eq i32 %and, 0
  br i1 %tobool.not.not, label %if.then9, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %sw_events_wq = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 26
  %call1282 = call i32 @prepare_to_wait_event(ptr noundef %sw_events_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %3 = ptrtoint ptr %sw_events to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sw_events, align 8
  %and1583 = and i32 %4, %event
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1583)
  %tobool16.not84.not = icmp eq i32 %and1583, 0
  br i1 %tobool16.not84.not, label %if.then9.cleanup_crit_edge, label %if.end36.thread

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

if.end36.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %sw_events_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end52

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.186 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then9.cleanup_crit_edge ]
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret10.186) #10
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %sw_events_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %5 = ptrtoint ptr %sw_events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_events, align 8
  %and15 = and i32 %6, %event
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool20.not = icmp eq i32 %call33, 0
  %spec.store.select57 = select i1 %tobool20.not, i32 1, i32 %call33
  %__ret10.1 = select i1 %tobool16.not, i32 %call33, i32 %spec.store.select57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool26.not = icmp eq i32 %__ret10.1, 0
  %not.tobool16.not = xor i1 %tobool16.not, true
  %7 = select i1 %not.tobool16.not, i1 true, i1 %tobool26.not
  br i1 %7, label %if.end36, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %phi.cmp = icmp eq i32 %__ret10.1, 0
  call void @finish_wait(ptr noundef %sw_events_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %do.body40, label %if.end36.if.end52_crit_edge

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_wait_for_sw_event.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_wait_for_sw_event, %if.then48)) #10
          to label %sw_event_out [label %if.then48], !srcloc !365

if.then48:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_wait_for_sw_event.__UNIQUE_ID_ddebug342, ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %event) #10
  br label %sw_event_out

if.end52:                                         ; preds = %if.end36.if.end52_crit_edge, %if.end36.thread, %entry.if.end52_crit_edge
  %10 = ptrtoint ptr %sw_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sw_events, align 8
  %neg = xor i32 %event, -1
  %and55 = and i32 %11, %neg
  store i32 %and55, ptr %sw_events, align 8
  br label %sw_event_out

sw_event_out:                                     ; preds = %if.end52, %if.then48, %do.body40
  %ret.0 = phi i32 [ %11, %if.end52 ], [ 0, %if.then48 ], [ 0, %do.body40 ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mhdp_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mhdp_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mhdp_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mhdp_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3832, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %0) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %clk8 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %clk8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %clk8, align 8
  %dev9 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev9, align 4
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mbox_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @cdns_mhdp_probe.__key) #10
  %link_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %link_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @cdns_mhdp_probe.__key.10) #10
  %start_lock = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %start_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @cdns_mhdp_probe.__key.12, i16 noundef signext 3) #10
  %aux = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 12
  tail call void @drm_dp_aux_init(ptr noundef %aux) #10
  %dev21 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 12, i32 2
  %3 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev21, align 8
  %transfer = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 12, i32 8
  %4 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cdns_mhdp_transfer, ptr %transfer, align 8
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call23, ptr %call.i, align 8
  %cmp.i317 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #13
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 8
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end7
  %call33 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #10
  %sapb_regs = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call33, ptr %sapb_regs, align 4
  %cmp.i318 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %hdcp_supported = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 29
  br i1 %cmp.i318, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %hdcp_supported to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %hdcp_supported, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.19) #13
  br label %if.end41

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %hdcp_supported to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hdcp_supported, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then36
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call43 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev1, ptr noundef %13, i32 noundef 0) #10
  %phy = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call43, ptr %phy, align 4
  %cmp.i319 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i319, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #13
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end41
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call53 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %info = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call53, ptr %info, align 8
  %call.i320 = tail call i32 @clk_prepare(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %tobool.not.i = icmp eq i32 %call.i320, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end52.clk_prepare_enable.exit_crit_edge

if.end52.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end52
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call2) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end52.clk_prepare_enable.exit_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call.i321 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %cmp.i322 = icmp slt i32 %call.i321, 0
  br i1 %cmp.i322, label %if.then.i, label %if.end60

if.then.i:                                        ; preds = %clk_prepare_enable.exit
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !366
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !367
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end59_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end59_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !368
  br label %do.end59

do.end59:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end59_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #13
  br label %clk_disable

if.end60:                                         ; preds = %clk_prepare_enable.exit
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 8
  %tobool62.not = icmp eq ptr %22, null
  br i1 %tobool62.not, label %if.end60.if.end80_crit_edge, label %land.lhs.true

if.end60.if.end80_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end60
  %ops = getelementptr inbounds %struct.cdns_mhdp_platform_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %tobool64.not = icmp eq ptr %24, null
  br i1 %tobool64.not, label %land.lhs.true.if.end80_crit_edge, label %land.lhs.true65

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true65:                                  ; preds = %land.lhs.true
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool68.not = icmp eq ptr %26, null
  br i1 %tobool68.not, label %land.lhs.true65.if.end80_crit_edge, label %if.then69

land.lhs.true65.if.end80_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then69:                                        ; preds = %land.lhs.true65
  %call73 = tail call i32 %26(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.then69.if.end80_crit_edge, label %do.end78

if.then69.if.end80_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

do.end78:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call73) #13
  br label %runtime_put

if.end80:                                         ; preds = %if.then69.if.end80_crit_edge, %land.lhs.true65.if.end80_crit_edge, %land.lhs.true.if.end80_crit_edge, %if.end60.if.end80_crit_edge
  %call81 = tail call i32 @clk_get_rate(ptr noundef %call2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  %call81.frozen = freeze i32 %call81
  %div = udiv i32 %call81.frozen, 1000000
  %27 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %call81.frozen, %27
  %28 = tail call i32 @llvm.bswap.i32(i32 %rem.decomposed)
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  %add.ptr = getelementptr i8, ptr %30, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #10, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %div)
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 8
  %add.ptr90 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %31) #10, !srcloc !370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_probe.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_probe, %if.then96)) #10
          to label %do.body100 [label %if.then96], !srcloc !365

if.then96:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_probe.__UNIQUE_ID_ddebug343, ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call81) #10
  br label %do.body100

do.body100:                                       ; preds = %if.then96, %if.end80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  %add.ptr104 = getelementptr i8, ptr %35, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 -1) #10, !srcloc !370
  %call105 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %36 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev9, align 4
  %call107 = tail call i32 @devm_request_threaded_irq(ptr noundef %37, i32 noundef %call105, ptr noundef null, ptr noundef nonnull @cdns_mhdp_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.32, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end113, label %do.end112

do.end112:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call105) #13
  br label %plat_fini

if.end113:                                        ; preds = %do.body100
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 4
  %attrs.i = getelementptr inbounds %struct.phy, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %attrs.i, align 4
  %conv.i = trunc i32 %41 to i8
  %lanes_cnt.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i324 = icmp eq i8 %conv.i, 0
  %spec.select.i = select i1 %tobool.not.i324, i8 4, i8 %conv.i
  %42 = ptrtoint ptr %lanes_cnt.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %spec.select.i, ptr %lanes_cnt.i, align 4
  %max_link_rate.i = getelementptr inbounds %struct.phy, ptr %39, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %max_link_rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_link_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool7.not.i = icmp eq i32 %44, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %call.i325 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext 30) #10
  br label %cdns_mhdp_fill_host_caps.exit

if.else.i:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul i32 %44, 100
  br label %cdns_mhdp_fill_host_caps.exit

cdns_mhdp_fill_host_caps.exit:                    ; preds = %if.else.i, %if.then8.i
  %link_rate.0.i = phi i32 [ %mul.i, %if.else.i ], [ %call.i325, %if.then8.i ]
  %host.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13
  %45 = ptrtoint ptr %host.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %link_rate.0.i, ptr %host.i, align 8
  %volt_swing.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 2
  %46 = ptrtoint ptr %volt_swing.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %volt_swing.i, align 1
  %pre_emphasis.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 3
  %47 = ptrtoint ptr %pre_emphasis.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %pre_emphasis.i, align 2
  %pattern_supp.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 4
  %48 = ptrtoint ptr %pattern_supp.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 15, ptr %pattern_supp.i, align 1
  %lane_mapping.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 5
  %49 = ptrtoint ptr %lane_mapping.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -28, ptr %lane_mapping.i, align 8
  %fast_link.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 6
  %50 = ptrtoint ptr %fast_link.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %fast_link.i, align 1
  %enhanced.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 7
  %51 = ptrtoint ptr %enhanced.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %enhanced.i, align 2
  %scrambler.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 8
  %52 = ptrtoint ptr %scrambler.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %scrambler.i, align 1
  %ssc.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 13, i32 9
  %53 = ptrtoint ptr %ssc.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %ssc.i, align 4
  %rate114 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 11, i32 1
  %54 = ptrtoint ptr %rate114 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %link_rate.0.i, ptr %rate114, align 4
  %55 = ptrtoint ptr %lanes_cnt.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lanes_cnt.i, align 4
  %conv = zext i8 %56 to i32
  %num_lanes = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 11, i32 2
  %57 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv, ptr %num_lanes, align 8
  %display_fmt = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 15
  %y_only = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 15, i32 2
  %58 = ptrtoint ptr %y_only to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %y_only, align 4
  %59 = ptrtoint ptr %display_fmt to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %display_fmt, align 4
  %bpc = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 15, i32 1
  %60 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %bpc, align 4
  %61 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %of_node, align 8
  %bridge = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 10
  %of_node121 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 10, i32 4
  %63 = ptrtoint ptr %of_node121 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %of_node121, align 4
  %funcs = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 10, i32 7
  %64 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @cdns_mhdp_bridge_funcs, ptr %funcs, align 4
  %ops124 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 10, i32 9
  %65 = ptrtoint ptr %ops124 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 7, ptr %ops124, align 4
  %type = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 10, i32 10
  %66 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10, ptr %type, align 8
  %67 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info, align 8
  %tobool127.not = icmp eq ptr %68, null
  br i1 %tobool127.not, label %cdns_mhdp_fill_host_caps.exit.if.end132_crit_edge, label %if.then128

cdns_mhdp_fill_host_caps.exit.if.end132_crit_edge: ; preds = %cdns_mhdp_fill_host_caps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then128:                                       ; preds = %cdns_mhdp_fill_host_caps.exit
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %timings131 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 10, i32 6
  %71 = ptrtoint ptr %timings131 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %timings131, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %cdns_mhdp_fill_host_caps.exit.if.end132_crit_edge
  %72 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %phy, align 4
  %call134 = tail call i32 @phy_init(ptr noundef %73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %do.body142, label %do.end139

do.end139:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.37, i32 noundef %call134) #13
  br label %plat_fini

do.body142:                                       ; preds = %if.end132
  %modeset_retry_work = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 24
  tail call void @__init_work(ptr noundef %modeset_retry_work, i32 noundef 0) #10
  %76 = ptrtoint ptr %modeset_retry_work to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -64, ptr %modeset_retry_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 24, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @cdns_mhdp_probe.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry146 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 24, i32 1
  %77 = ptrtoint ptr %entry146 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %entry146, ptr %entry146, align 4
  %prev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 24, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry146, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 24, i32 2
  %79 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @cdns_mhdp_modeset_retry_fn, ptr %func, align 4
  %hpd_work = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %hpd_work, i32 noundef 0) #10
  %80 = ptrtoint ptr %hpd_work to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %hpd_work, align 8
  %lockdep_map156 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map156, ptr noundef nonnull @.str.42, ptr noundef nonnull @cdns_mhdp_probe.__key.41, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry158 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 25, i32 1
  %81 = ptrtoint ptr %entry158 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry158, ptr %entry158, align 4
  %prev.i326 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 25, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i326 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry158, ptr %prev.i326, align 4
  %func160 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 25, i32 2
  %83 = ptrtoint ptr %func160 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @cdns_mhdp_hpd_work, ptr %func160, align 4
  %fw_load_wq = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 23
  tail call void @__init_waitqueue_head(ptr noundef %fw_load_wq, ptr noundef nonnull @.str.44, ptr noundef nonnull @cdns_mhdp_probe.__key.43) #10
  %sw_events_wq = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %sw_events_wq, ptr noundef nonnull @.str.46, ptr noundef nonnull @cdns_mhdp_probe.__key.45) #10
  %84 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev9, align 4
  %call.i327 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.151, ptr noundef %85, i32 noundef 3264, ptr noundef nonnull %call.i, ptr noundef nonnull @cdns_mhdp_fw_cb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool.not.i328 = icmp eq i32 %call.i327, 0
  br i1 %tobool.not.i328, label %if.end172, label %phy_exit

if.end172:                                        ; preds = %do.body142
  %hdcp_supported173 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %call.i, i32 0, i32 29
  %86 = ptrtoint ptr %hdcp_supported173 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %hdcp_supported173, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool174.not = icmp eq i8 %87, 0
  br i1 %tobool174.not, label %if.end172.if.end176_crit_edge, label %if.then175

if.end172.if.end176_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cdns_mhdp_hdcp_init(ptr noundef nonnull %call.i) #10
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %if.end172.if.end176_crit_edge
  tail call void @drm_bridge_add(ptr noundef %bridge) #10
  br label %cleanup

phy_exit:                                         ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i32 noundef %call.i327) #13
  %90 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy, align 4
  %call179 = tail call i32 @phy_exit(ptr noundef %91) #10
  br label %plat_fini

plat_fini:                                        ; preds = %phy_exit, %do.end139, %do.end112
  %ret.0 = phi i32 [ -5, %do.end112 ], [ %call134, %do.end139 ], [ %call.i327, %phy_exit ]
  %92 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %info, align 8
  %tobool181.not = icmp eq ptr %93, null
  br i1 %tobool181.not, label %plat_fini.runtime_put_crit_edge, label %land.lhs.true182

plat_fini.runtime_put_crit_edge:                  ; preds = %plat_fini
  call void @__sanitizer_cov_trace_pc() #12
  br label %runtime_put

land.lhs.true182:                                 ; preds = %plat_fini
  %ops184 = getelementptr inbounds %struct.cdns_mhdp_platform_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %ops184 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops184, align 4
  %tobool185.not = icmp eq ptr %95, null
  br i1 %tobool185.not, label %land.lhs.true182.runtime_put_crit_edge, label %land.lhs.true186

land.lhs.true182.runtime_put_crit_edge:           ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %runtime_put

land.lhs.true186:                                 ; preds = %land.lhs.true182
  %exit = getelementptr inbounds %struct.mhdp_platform_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %exit, align 4
  %tobool189.not = icmp eq ptr %97, null
  br i1 %tobool189.not, label %land.lhs.true186.runtime_put_crit_edge, label %if.then190

land.lhs.true186.runtime_put_crit_edge:           ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #12
  br label %runtime_put

if.then190:                                       ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %97(ptr noundef nonnull %call.i) #10
  br label %runtime_put

runtime_put:                                      ; preds = %if.then190, %land.lhs.true186.runtime_put_crit_edge, %land.lhs.true182.runtime_put_crit_edge, %plat_fini.runtime_put_crit_edge, %do.end78
  %ret.1 = phi i32 [ %call73, %do.end78 ], [ %ret.0, %if.then190 ], [ %ret.0, %land.lhs.true186.runtime_put_crit_edge ], [ %ret.0, %land.lhs.true182.runtime_put_crit_edge ], [ %ret.0, %plat_fini.runtime_put_crit_edge ]
  %call.i329 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #10
  br label %clk_disable

clk_disable:                                      ; preds = %runtime_put, %do.end59
  %ret.2 = phi i32 [ %call.i321, %do.end59 ], [ %ret.1, %runtime_put ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  %98 = ptrtoint ptr %clk8 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk8, align 8
  tail call void @clk_disable(ptr noundef %99) #10
  tail call void @clk_unprepare(ptr noundef %99) #10
  br label %cleanup

cleanup:                                          ; preds = %clk_disable, %if.end176, %do.end49, %do.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %8, %do.end29 ], [ %17, %do.end49 ], [ %ret.2, %clk_disable ], [ 0, %if.end176 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_remove(ptr noundef %pdev) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 10
  tail call void @drm_bridge_remove(ptr noundef %bridge) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2583) #10
  %hw_state = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.if.then45.critedge_crit_edge, label %if.then9

entry.if.then45.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.critedge

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %fw_load_wq = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 23
  %call11108 = call i32 @prepare_to_wait_event(ptr noundef %fw_load_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %5 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14109 = icmp eq i32 %6, 1
  br i1 %cmp14109, label %if.end34.thread, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

if.end34.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %fw_load_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.then45.critedge

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.1110 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then9.cleanup_crit_edge ]
  %call31 = call i32 @schedule_timeout(i32 noundef %__ret10.1110) #10
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %fw_load_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %7 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp14 = icmp eq i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool18.not = icmp eq i32 %call31, 0
  %9 = select i1 %cmp14, i1 %tobool18.not, i1 false
  %__ret10.1 = select i1 %9, i32 1, i32 %call31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool24.not = icmp eq i32 %__ret10.1, 0
  %10 = select i1 %cmp14, i1 true, i1 %tobool24.not
  br i1 %10, label %if.end34, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %phi.cmp = icmp eq i32 %__ret10.1, 0
  call void @finish_wait(ptr noundef %fw_load_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %do.end40, label %if.end34.if.then45.critedge_crit_edge

if.end34.if.then45.critedge_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.critedge

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166) #13
  %start_lock.c101 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %start_lock.c101) #10
  %13 = ptrtoint ptr %hw_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %hw_state, align 4
  call void @_raw_spin_unlock(ptr noundef %start_lock.c101) #10
  br label %if.end47

if.then45.critedge:                               ; preds = %if.end34.if.then45.critedge_crit_edge, %if.end34.thread, %entry.if.then45.critedge_crit_edge
  %start_lock.c = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %start_lock.c) #10
  %14 = ptrtoint ptr %hw_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %hw_state, align 4
  call void @_raw_spin_unlock(ptr noundef %start_lock.c) #10
  %call46 = call fastcc i32 @cdns_mhdp_set_firmware_active(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end47

if.end47:                                         ; preds = %if.then45.critedge, %do.end40
  %ret.0 = phi i32 [ %call46, %if.then45.critedge ], [ 0, %do.end40 ]
  %phy = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  %call48 = call i32 @phy_exit(ptr noundef %16) #10
  %info = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 8
  %tobool49.not = icmp eq ptr %18, null
  br i1 %tobool49.not, label %if.end47.if.end61_crit_edge, label %land.lhs.true50

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true50:                                  ; preds = %if.end47
  %ops = getelementptr inbounds %struct.cdns_mhdp_platform_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %tobool52.not = icmp eq ptr %20, null
  br i1 %tobool52.not, label %land.lhs.true50.if.end61_crit_edge, label %land.lhs.true53

land.lhs.true50.if.end61_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %exit = getelementptr inbounds %struct.mhdp_platform_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %exit, align 4
  %tobool56.not = icmp eq ptr %22, null
  br i1 %tobool56.not, label %land.lhs.true53.if.end61_crit_edge, label %if.then57

land.lhs.true53.if.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then57:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  call void %22(ptr noundef %1) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true53.if.end61_crit_edge, %land.lhs.true50.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  %dev62 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %dev62, i32 noundef 4) #10
  call void @__pm_runtime_disable(ptr noundef %dev62, i1 noundef zeroext true) #10
  %modeset_retry_work = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 24
  %call65 = call zeroext i1 @cancel_work_sync(ptr noundef %modeset_retry_work) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  call void @flush_workqueue(ptr noundef %23) #10
  %clk = getelementptr inbounds %struct.cdns_mhdp_device, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %25) #10
  call void @clk_unprepare(ptr noundef %25) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_transfer(ptr nocapture noundef readonly %aux, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %request, align 4
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %switch = icmp eq i8 %6, 8
  br i1 %switch, label %if.end, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp8 = icmp eq i8 %5, 8
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11112.not = icmp eq i32 %10, 0
  br i1 %cmp11112.not, label %if.then10.if.end33_crit_edge, label %for.body.lr.ph

if.then10.if.end33_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

for.body.lr.ph:                                   ; preds = %if.then10
  %mbox_mutex.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %3, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg, align 4
  %add = add i32 %12, %i.0113
  %arrayidx = getelementptr i8, ptr %8, i32 %i.0113
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %shr.i.i.i = lshr i32 %add, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %shr1.i.i.i = lshr i32 %add, 8
  %conv2.i.i.i = trunc i32 %shr1.i.i.i to i8
  %conv4.i.i.i = trunc i32 %add to i8
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i, i32 noundef 0) #10
  %call.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond.i.i:                                     ; preds = %for.body
  %call.1.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.cleanup.thread_crit_edge

for.cond.i.i.cleanup.thread_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call.2.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.cleanup.thread_crit_edge

for.cond.1.i.i.cleanup.thread_crit_edge:          ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.3.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.body6.i.preheader.i, label %for.cond.2.i.i.cleanup.thread_crit_edge

for.cond.2.i.i.cleanup.thread_crit_edge:          ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.body6.i.preheader.i:                          ; preds = %for.cond.2.i.i
  %call8.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %for.cond3.i.i, label %for.body6.i.preheader.i.cleanup.thread_crit_edge

for.body6.i.preheader.i.cleanup.thread_crit_edge: ; preds = %for.body6.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond3.i.i:                                    ; preds = %for.body6.i.preheader.i
  %call8.i.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1.i)
  %tobool9.not.i.1.i = icmp eq i32 %call8.i.1.i, 0
  br i1 %tobool9.not.i.1.i, label %for.cond3.i.1.i, label %for.cond3.i.i.cleanup.thread_crit_edge

for.cond3.i.i.cleanup.thread_crit_edge:           ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond3.i.1.i:                                  ; preds = %for.cond3.i.i
  %call8.i.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %conv.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2.i)
  %tobool9.not.i.2.i = icmp eq i32 %call8.i.2.i, 0
  br i1 %tobool9.not.i.2.i, label %for.cond3.i.2.i, label %for.cond3.i.1.i.cleanup.thread_crit_edge

for.cond3.i.1.i.cleanup.thread_crit_edge:         ; preds = %for.cond3.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond3.i.2.i:                                  ; preds = %for.cond3.i.1.i
  %call8.i.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %conv2.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.3.i)
  %tobool9.not.i.3.i = icmp eq i32 %call8.i.3.i, 0
  br i1 %tobool9.not.i.3.i, label %for.cond3.i.3.i, label %for.cond3.i.2.i.cleanup.thread_crit_edge

for.cond3.i.2.i.cleanup.thread_crit_edge:         ; preds = %for.cond3.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond3.i.3.i:                                  ; preds = %for.cond3.i.2.i
  %call8.i.4.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %conv4.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.4.i)
  %tobool9.not.i.4.i = icmp eq i32 %call8.i.4.i, 0
  br i1 %tobool9.not.i.4.i, label %for.cond3.i.4.i, label %for.cond3.i.3.i.cleanup.thread_crit_edge

for.cond3.i.3.i.cleanup.thread_crit_edge:         ; preds = %for.cond3.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond3.i.4.i:                                  ; preds = %for.cond3.i.3.i
  %call8.i.5.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.5.i)
  %tobool9.not.i.5.i = icmp eq i32 %call8.i.5.i, 0
  br i1 %tobool9.not.i.5.i, label %for.cond3.i.5.i, label %for.cond3.i.4.i.cleanup.thread_crit_edge

for.cond3.i.4.i.cleanup.thread_crit_edge:         ; preds = %for.cond3.i.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond3.i.5.i:                                  ; preds = %for.cond3.i.4.i
  %call3.i = tail call fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 4, i16 noundef zeroext 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.body.i.preheader.i, label %for.cond3.i.5.i.cleanup.thread_crit_edge

for.cond3.i.5.i.cleanup.thread_crit_edge:         ; preds = %for.cond3.i.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.body.i.preheader.i:                           ; preds = %for.cond3.i.5.i
  %call.i32.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp2.i.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp2.i.i, label %for.body.i.preheader.i.cleanup.thread_crit_edge, label %if.end.i.i

for.body.i.preheader.i.cleanup.thread_crit_edge:  ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %for.body.i.preheader.i
  %call.i32.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.1.i)
  %cmp2.i.1.i = icmp slt i32 %call.i32.1.i, 0
  br i1 %cmp2.i.1.i, label %if.end.i.i.cleanup.thread_crit_edge, label %if.end.i.1.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i.1.i:                                     ; preds = %if.end.i.i
  %call.i32.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.2.i)
  %cmp2.i.2.i = icmp slt i32 %call.i32.2.i, 0
  br i1 %cmp2.i.2.i, label %if.end.i.1.i.cleanup.thread_crit_edge, label %if.end.i.2.i

if.end.i.1.i.cleanup.thread_crit_edge:            ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i.2.i:                                     ; preds = %if.end.i.1.i
  %call.i32.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.3.i)
  %cmp2.i.3.i = icmp slt i32 %call.i32.3.i, 0
  br i1 %cmp2.i.3.i, label %if.end.i.2.i.cleanup.thread_crit_edge, label %if.end.i.3.i

if.end.i.2.i.cleanup.thread_crit_edge:            ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i.3.i:                                     ; preds = %if.end.i.2.i
  %call.i32.4.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.4.i)
  %cmp2.i.4.i = icmp slt i32 %call.i32.4.i, 0
  br i1 %cmp2.i.4.i, label %if.end.i.3.i.cleanup.thread_crit_edge, label %if.end.i.4.i

if.end.i.3.i.cleanup.thread_crit_edge:            ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i.4.i:                                     ; preds = %if.end.i.3.i
  %conv.i.i35.i = shl i32 %call.i32.2.i, 16
  %shl.i.i.i = and i32 %conv.i.i35.i, 16711680
  %conv2.i.i36.i = shl i32 %call.i32.3.i, 8
  %shl3.i.i.i = and i32 %conv2.i.i36.i, 65280
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %conv5.i.i.i = and i32 %call.i32.4.i, 255
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i.i.i, i32 %add)
  %cmp.not.i = icmp eq i32 %or6.i.i.i, %add
  br i1 %cmp.not.i, label %for.inc, label %if.end.i.4.i.cleanup.thread_crit_edge

if.end.i.4.i.cleanup.thread_crit_edge:            ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i.4.i.cleanup.thread_crit_edge, %if.end.i.3.i.cleanup.thread_crit_edge, %if.end.i.2.i.cleanup.thread_crit_edge, %if.end.i.1.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %for.body.i.preheader.i.cleanup.thread_crit_edge, %for.cond3.i.5.i.cleanup.thread_crit_edge, %for.cond3.i.4.i.cleanup.thread_crit_edge, %for.cond3.i.3.i.cleanup.thread_crit_edge, %for.cond3.i.2.i.cleanup.thread_crit_edge, %for.cond3.i.1.i.cleanup.thread_crit_edge, %for.cond3.i.i.cleanup.thread_crit_edge, %for.body6.i.preheader.i.cleanup.thread_crit_edge, %for.cond.2.i.i.cleanup.thread_crit_edge, %for.cond.1.i.i.cleanup.thread_crit_edge, %for.cond.i.i.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %ret.0.ph.i = phi i32 [ -22, %if.end.i.4.i.cleanup.thread_crit_edge ], [ %call3.i, %for.cond3.i.5.i.cleanup.thread_crit_edge ], [ %call.3.i.i, %for.cond.2.i.i.cleanup.thread_crit_edge ], [ %call.2.i.i, %for.cond.1.i.i.cleanup.thread_crit_edge ], [ %call.1.i.i, %for.cond.i.i.cleanup.thread_crit_edge ], [ %call.i.i, %for.body.cleanup.thread_crit_edge ], [ %call.i32.i, %for.body.i.preheader.i.cleanup.thread_crit_edge ], [ %call.i32.1.i, %if.end.i.i.cleanup.thread_crit_edge ], [ %call.i32.2.i, %if.end.i.1.i.cleanup.thread_crit_edge ], [ %call.i32.3.i, %if.end.i.2.i.cleanup.thread_crit_edge ], [ %call.i32.4.i, %if.end.i.3.i.cleanup.thread_crit_edge ], [ %call8.i.i, %for.body6.i.preheader.i.cleanup.thread_crit_edge ], [ %call8.i.1.i, %for.cond3.i.i.cleanup.thread_crit_edge ], [ %call8.i.2.i, %for.cond3.i.1.i.cleanup.thread_crit_edge ], [ %call8.i.3.i, %for.cond3.i.2.i.cleanup.thread_crit_edge ], [ %call8.i.4.i, %for.cond3.i.3.i.cleanup.thread_crit_edge ], [ %call8.i.5.i, %for.cond3.i.4.i.cleanup.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #10
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.52, i32 noundef %ret.0.ph.i) #13
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg, align 4
  %add18 = add i32 %20, %i.0113
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.47, i32 noundef %add18) #13
  br label %cleanup35

for.inc:                                          ; preds = %if.end.i.4.i
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #10
  %inc = add nuw i32 %i.0113, 1
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %cmp11 = icmp ult i32 %inc, %22
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.if.end33_crit_edge

for.inc.if.end33_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else:                                          ; preds = %if.end
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg, align 4
  %buffer21 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %25 = ptrtoint ptr %buffer21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer21, align 4
  %size22 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %27 = ptrtoint ptr %size22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size22, align 4
  %conv23 = trunc i32 %28 to i16
  %msg.sroa.0.sroa.0.0.extract.shift.i109 = lshr i32 %28, 8
  %msg.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %msg.sroa.0.sroa.0.0.extract.shift.i109 to i8
  %msg.sroa.0.sroa.5.0.extract.trunc.i = trunc i32 %28 to i8
  %shr.i.i.i58 = lshr i32 %24, 16
  %conv.i.i.i59 = trunc i32 %shr.i.i.i58 to i8
  %shr1.i.i.i60 = lshr i32 %24, 8
  %conv2.i.i.i61 = trunc i32 %shr1.i.i.i60 to i8
  %conv4.i.i.i62 = trunc i32 %24 to i8
  %mbox_mutex.i63 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i63, i32 noundef 0) #10
  %call.i.i64 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %call.i.i64, 0
  br i1 %tobool.not.i.i65, label %for.cond.i.i68, label %if.else.do.end29_crit_edge

if.else.do.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond.i.i68:                                   ; preds = %if.else
  %call.1.i.i66 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i66)
  %tobool.not.1.i.i67 = icmp eq i32 %call.1.i.i66, 0
  br i1 %tobool.not.1.i.i67, label %for.cond.1.i.i71, label %for.cond.i.i68.do.end29_crit_edge

for.cond.i.i68.do.end29_crit_edge:                ; preds = %for.cond.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond.1.i.i71:                                 ; preds = %for.cond.i.i68
  %call.2.i.i69 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i69)
  %tobool.not.2.i.i70 = icmp eq i32 %call.2.i.i69, 0
  br i1 %tobool.not.2.i.i70, label %for.cond.2.i.i74, label %for.cond.1.i.i71.do.end29_crit_edge

for.cond.1.i.i71.do.end29_crit_edge:              ; preds = %for.cond.1.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond.2.i.i74:                                 ; preds = %for.cond.1.i.i71
  %call.3.i.i72 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i72)
  %tobool.not.3.i.i73 = icmp eq i32 %call.3.i.i72, 0
  br i1 %tobool.not.3.i.i73, label %for.body6.i.preheader.i77, label %for.cond.2.i.i74.do.end29_crit_edge

for.cond.2.i.i74.do.end29_crit_edge:              ; preds = %for.cond.2.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.body6.i.preheader.i77:                        ; preds = %for.cond.2.i.i74
  %call8.i.i75 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %msg.sroa.0.sroa.0.0.extract.trunc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i75)
  %tobool9.not.i.i76 = icmp eq i32 %call8.i.i75, 0
  br i1 %tobool9.not.i.i76, label %for.cond3.i.i80, label %for.body6.i.preheader.i77.do.end29_crit_edge

for.body6.i.preheader.i77.do.end29_crit_edge:     ; preds = %for.body6.i.preheader.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond3.i.i80:                                  ; preds = %for.body6.i.preheader.i77
  %call8.i.1.i78 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %msg.sroa.0.sroa.5.0.extract.trunc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1.i78)
  %tobool9.not.i.1.i79 = icmp eq i32 %call8.i.1.i78, 0
  br i1 %tobool9.not.i.1.i79, label %for.cond3.i.1.i83, label %for.cond3.i.i80.do.end29_crit_edge

for.cond3.i.i80.do.end29_crit_edge:               ; preds = %for.cond3.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond3.i.1.i83:                                ; preds = %for.cond3.i.i80
  %call8.i.2.i81 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %conv.i.i.i59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2.i81)
  %tobool9.not.i.2.i82 = icmp eq i32 %call8.i.2.i81, 0
  br i1 %tobool9.not.i.2.i82, label %for.cond3.i.2.i86, label %for.cond3.i.1.i83.do.end29_crit_edge

for.cond3.i.1.i83.do.end29_crit_edge:             ; preds = %for.cond3.i.1.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond3.i.2.i86:                                ; preds = %for.cond3.i.1.i83
  %call8.i.3.i84 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %conv2.i.i.i61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.3.i84)
  %tobool9.not.i.3.i85 = icmp eq i32 %call8.i.3.i84, 0
  br i1 %tobool9.not.i.3.i85, label %for.cond3.i.3.i89, label %for.cond3.i.2.i86.do.end29_crit_edge

for.cond3.i.2.i86.do.end29_crit_edge:             ; preds = %for.cond3.i.2.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond3.i.3.i89:                                ; preds = %for.cond3.i.2.i86
  %call8.i.4.i87 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %3, i8 noundef zeroext %conv4.i.i.i62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.4.i87)
  %tobool9.not.i.4.i88 = icmp eq i32 %call8.i.4.i87, 0
  br i1 %tobool9.not.i.4.i88, label %for.cond3.i.4.i90, label %for.cond3.i.3.i89.do.end29_crit_edge

for.cond3.i.3.i89.do.end29_crit_edge:             ; preds = %for.cond3.i.3.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.cond3.i.4.i90:                                ; preds = %for.cond3.i.3.i89
  %add.i = add i16 %conv23, 5
  %call4.i = tail call fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.body.i.preheader.i92, label %for.cond3.i.4.i90.do.end29_crit_edge

for.cond3.i.4.i90.do.end29_crit_edge:             ; preds = %for.cond3.i.4.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

for.body.i.preheader.i92:                         ; preds = %for.cond3.i.4.i90
  %call.i25.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp2.i.i91 = icmp slt i32 %call.i25.i, 0
  br i1 %cmp2.i.i91, label %for.body.i.preheader.i92.do.end29_crit_edge, label %if.end.i.i94

for.body.i.preheader.i92.do.end29_crit_edge:      ; preds = %for.body.i.preheader.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end.i.i94:                                     ; preds = %for.body.i.preheader.i92
  %call.i25.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.1.i)
  %cmp2.i.1.i93 = icmp slt i32 %call.i25.1.i, 0
  br i1 %cmp2.i.1.i93, label %if.end.i.i94.do.end29_crit_edge, label %if.end.i.1.i96

if.end.i.i94.do.end29_crit_edge:                  ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end.i.1.i96:                                   ; preds = %if.end.i.i94
  %call.i25.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.2.i)
  %cmp2.i.2.i95 = icmp slt i32 %call.i25.2.i, 0
  br i1 %cmp2.i.2.i95, label %if.end.i.1.i96.do.end29_crit_edge, label %if.end.i.2.i98

if.end.i.1.i96.do.end29_crit_edge:                ; preds = %if.end.i.1.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end.i.2.i98:                                   ; preds = %if.end.i.1.i96
  %call.i25.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.3.i)
  %cmp2.i.3.i97 = icmp slt i32 %call.i25.3.i, 0
  br i1 %cmp2.i.3.i97, label %if.end.i.2.i98.do.end29_crit_edge, label %if.end.i.3.i100

if.end.i.2.i98.do.end29_crit_edge:                ; preds = %if.end.i.2.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end.i.3.i100:                                  ; preds = %if.end.i.2.i98
  %call.i25.4.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.4.i)
  %cmp2.i.4.i99 = icmp slt i32 %call.i25.4.i, 0
  br i1 %cmp2.i.4.i99, label %if.end.i.3.i100.do.end29_crit_edge, label %if.end.i.4.i101

if.end.i.3.i100.do.end29_crit_edge:               ; preds = %if.end.i.3.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end.i.4.i101:                                  ; preds = %if.end.i.3.i100
  %conv.i.i = and i32 %28, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv23)
  %cmp10.not.i.i = icmp eq i16 %conv23, 0
  br i1 %cmp10.not.i.i, label %if.end.i.4.i101.cdns_mhdp_dpcd_read.exit_crit_edge, label %if.end.i.4.i101.for.body.i31.i_crit_edge

if.end.i.4.i101.for.body.i31.i_crit_edge:         ; preds = %if.end.i.4.i101
  br label %for.body.i31.i

if.end.i.4.i101.cdns_mhdp_dpcd_read.exit_crit_edge: ; preds = %if.end.i.4.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_dpcd_read.exit

for.body.i31.i:                                   ; preds = %if.end.i36.i.for.body.i31.i_crit_edge, %if.end.i.4.i101.for.body.i31.i_crit_edge
  %i.011.i28.i = phi i32 [ %inc.i34.i, %if.end.i36.i.for.body.i31.i_crit_edge ], [ 0, %if.end.i.4.i101.for.body.i31.i_crit_edge ]
  %call.i29.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %cmp2.i30.i = icmp slt i32 %call.i29.i, 0
  br i1 %cmp2.i30.i, label %for.body.i31.i.do.end29_crit_edge, label %if.end.i36.i

for.body.i31.i.do.end29_crit_edge:                ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end.i36.i:                                     ; preds = %for.body.i31.i
  %conv4.i32.i = trunc i32 %call.i29.i to i8
  %arrayidx.i33.i = getelementptr i8, ptr %26, i32 %i.011.i28.i
  %29 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv4.i32.i, ptr %arrayidx.i33.i, align 1
  %inc.i34.i = add nuw nsw i32 %i.011.i28.i, 1
  %exitcond.not.i35.i = icmp eq i32 %inc.i34.i, %conv.i.i
  br i1 %exitcond.not.i35.i, label %if.end.i36.i.cdns_mhdp_dpcd_read.exit_crit_edge, label %if.end.i36.i.for.body.i31.i_crit_edge

if.end.i36.i.for.body.i31.i_crit_edge:            ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i31.i

if.end.i36.i.cdns_mhdp_dpcd_read.exit_crit_edge:  ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_dpcd_read.exit

cdns_mhdp_dpcd_read.exit:                         ; preds = %if.end.i36.i.cdns_mhdp_dpcd_read.exit_crit_edge, %if.end.i.4.i101.cdns_mhdp_dpcd_read.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i63) #10
  br label %if.end33

do.end29:                                         ; preds = %for.body.i31.i.do.end29_crit_edge, %if.end.i.3.i100.do.end29_crit_edge, %if.end.i.2.i98.do.end29_crit_edge, %if.end.i.1.i96.do.end29_crit_edge, %if.end.i.i94.do.end29_crit_edge, %for.body.i.preheader.i92.do.end29_crit_edge, %for.cond3.i.4.i90.do.end29_crit_edge, %for.cond3.i.3.i89.do.end29_crit_edge, %for.cond3.i.2.i86.do.end29_crit_edge, %for.cond3.i.1.i83.do.end29_crit_edge, %for.cond3.i.i80.do.end29_crit_edge, %for.body6.i.preheader.i77.do.end29_crit_edge, %for.cond.2.i.i74.do.end29_crit_edge, %for.cond.1.i.i71.do.end29_crit_edge, %for.cond.i.i68.do.end29_crit_edge, %if.else.do.end29_crit_edge
  %ret.0.i.ph = phi i32 [ %call8.i.4.i87, %for.cond3.i.3.i89.do.end29_crit_edge ], [ %call8.i.3.i84, %for.cond3.i.2.i86.do.end29_crit_edge ], [ %call8.i.2.i81, %for.cond3.i.1.i83.do.end29_crit_edge ], [ %call8.i.1.i78, %for.cond3.i.i80.do.end29_crit_edge ], [ %call8.i.i75, %for.body6.i.preheader.i77.do.end29_crit_edge ], [ %call.i25.4.i, %if.end.i.3.i100.do.end29_crit_edge ], [ %call.i25.3.i, %if.end.i.2.i98.do.end29_crit_edge ], [ %call.i25.2.i, %if.end.i.1.i96.do.end29_crit_edge ], [ %call.i25.1.i, %if.end.i.i94.do.end29_crit_edge ], [ %call.i25.i, %for.body.i.preheader.i92.do.end29_crit_edge ], [ %call.i.i64, %if.else.do.end29_crit_edge ], [ %call.1.i.i66, %for.cond.i.i68.do.end29_crit_edge ], [ %call.2.i.i69, %for.cond.1.i.i71.do.end29_crit_edge ], [ %call.3.i.i72, %for.cond.2.i.i74.do.end29_crit_edge ], [ %call4.i, %for.cond3.i.4.i90.do.end29_crit_edge ], [ %call.i29.i, %for.body.i31.i.do.end29_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i63) #10
  %dev30 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev30, align 4
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.50, i32 noundef %33) #13
  br label %cleanup35

if.end33:                                         ; preds = %cdns_mhdp_dpcd_read.exit, %for.inc.if.end33_crit_edge, %if.then10.if.end33_crit_edge
  %size34 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %34 = ptrtoint ptr %size34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size34, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %if.end33, %do.end29, %cleanup.thread, %entry.cleanup35_crit_edge
  %retval.1 = phi i32 [ %35, %if.end33 ], [ %ret.0.i.ph, %do.end29 ], [ -95, %entry.cleanup35_crit_edge ], [ %ret.0.ph.i, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !374
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  %start_lock = getelementptr inbounds %struct.cdns_mhdp_device, ptr %data, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %start_lock) #10
  %bridge_attached9 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %data, i32 0, i32 20
  %8 = ptrtoint ptr %bridge_attached9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bridge_attached9, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  tail call void @_raw_spin_unlock(ptr noundef %start_lock) #10
  %and13 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hpd_work = getelementptr inbounds %struct.cdns_mhdp_device, ptr %data, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %hpd_work) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %and18 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %sw_events = getelementptr inbounds %struct.cdns_mhdp_device, ptr %data, i32 0, i32 27
  %11 = ptrtoint ptr %sw_events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sw_events, align 8
  %or = or i32 %12, %and18
  store i32 %or, ptr %sw_events, align 8
  %sw_events_wq = getelementptr inbounds %struct.cdns_mhdp_device, ptr %data, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %sw_events_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then20 ], [ 1, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_modeset_retry_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr i8, ptr %work, i32 -3220
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #10
  tail call void @drm_connector_set_link_status_property(ptr noundef %connector, i64 noundef 1) #10
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %mode_config2 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %mode_config2) #10
  %dev4 = getelementptr i8, ptr %work, i32 -2056
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_hpd_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3480
  %call = tail call fastcc i32 @cdns_mhdp_update_link_status(ptr noundef %add.ptr)
  %connector = getelementptr i8, ptr %work, i32 -3264
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %modeset_retry_work = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %modeset_retry_work) #10
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr i8, ptr %work, i32 -2100
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %4) #10
  br label %if.end7

if.else4:                                         ; preds = %entry
  %bridge5 = getelementptr i8, ptr %work, i32 -2224
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hpd_work, %if.then.i)) #10
          to label %cdns_mhdp_detect.exit [label %if.then.i], !srcloc !365

if.then.i:                                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %work, i32 -3468
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %plugged.i = getelementptr i8, ptr %work, i32 -150
  %7 = ptrtoint ptr %plugged.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %plugged.i, align 2, !range !373
  %9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, ptr noundef %6, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %9) #10
  br label %cdns_mhdp_detect.exit

cdns_mhdp_detect.exit:                            ; preds = %if.then.i, %if.else4
  %plugged4.i = getelementptr i8, ptr %work, i32 -150
  %10 = ptrtoint ptr %plugged4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %plugged4.i, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not.i = icmp eq i8 %11, 0
  %..i = select i1 %tobool5.not.i, i32 2, i32 1
  tail call void @drm_bridge_hpd_notify(ptr noundef %bridge5, i32 noundef %..i) #10
  br label %if.end7

if.end7:                                          ; preds = %cdns_mhdp_detect.exit, %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_mhdp_hdcp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext %module_id, i8 noundef zeroext %opcode, i16 noundef zeroext %req_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i8
  %call.1 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %conv.1 = trunc i32 %call.1 to i8
  %call.2 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %call.3 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %0 = trunc i32 %call.2 to i16
  %header.sroa.8.2.insert.shift = shl i16 %0, 8
  %1 = trunc i32 %call.3 to i16
  %header.sroa.8.3.insert.ext = and i16 %1, 255
  %header.sroa.8.3.insert.insert54 = or i16 %header.sroa.8.2.insert.shift, %header.sroa.8.3.insert.ext
  %conv3 = zext i16 %header.sroa.8.3.insert.insert54 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %conv, i8 %opcode)
  %cmp7.not = icmp eq i8 %conv, %opcode
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end.3.if.then18_crit_edge

if.end.3.if.then18_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.1, i8 %module_id)
  %cmp12.not = icmp eq i8 %conv.1, %module_id
  call void @__sanitizer_cov_trace_cmp2(i16 %header.sroa.8.3.insert.insert54, i16 %req_size)
  %cmp16.not = icmp eq i16 %header.sroa.8.3.insert.insert54, %req_size
  %or.cond = select i1 %cmp12.not, i1 %cmp16.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end.3.if.then18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %header.sroa.8.3.insert.insert54)
  %cmp2045.not = icmp eq i16 %header.sroa.8.3.insert.insert54, 0
  br i1 %cmp2045.not, label %if.then18.cleanup_crit_edge, label %if.then18.for.body22_crit_edge

if.then18.for.body22_crit_edge:                   ; preds = %if.then18
  br label %for.body22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %if.then18.for.body22_crit_edge
  %i.146 = phi i32 [ %inc29, %for.body22.for.body22_crit_edge ], [ 0, %if.then18.for.body22_crit_edge ]
  %call23 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  %inc29 = add nuw nsw i32 %i.146, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc29, i32 %conv3)
  %exitcond.not = icmp eq i32 %inc29, %conv3
  %or.cond55 = select i1 %cmp24, i1 true, i1 %exitcond.not
  br i1 %or.cond55, label %for.body22.cleanup_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22

for.body22.cleanup_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body22.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end.cleanup_crit_edge ], [ %call.2, %if.end.1.cleanup_crit_edge ], [ %call.3, %if.end.2.cleanup_crit_edge ], [ -22, %for.body22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mbox_mutex) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !377

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call20, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 79) #10
  %0 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhdp, align 8
  %add.ptr78 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool36.not79 = icmp eq i32 %2, 0
  br i1 %tobool36.not79, label %if.end.do.body62_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.do.body62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body62

land.lhs.true:                                    ; preds = %if.then53.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call40 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call40, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call40, %add.i
  br i1 %cmp3.i, label %if.then43, label %if.then53

if.then43:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mhdp, align 8
  %add.ptr47 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %if.then43.do.body62_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43.do.body62_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body62

if.then53:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %6 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mhdp, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %if.then53.do.body62_crit_edge, label %if.then53.land.lhs.true_crit_edge

if.then53.land.lhs.true_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then53.do.body62_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body62

do.body62:                                        ; preds = %if.then53.do.body62_crit_edge, %if.then43.do.body62_crit_edge, %if.end.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  tail call void @arm_heavy_mb() #10
  %conv = zext i8 %val to i32
  %9 = shl nuw i32 %conv, 24
  %10 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mhdp, align 8
  %add.ptr66 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %9) #10, !srcloc !370
  br label %cleanup

cleanup:                                          ; preds = %do.body62, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body62 ], [ -110, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mbox_mutex) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !377

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call20, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 64) #10
  %0 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhdp, align 8
  %add.ptr80 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool36.not81 = icmp eq i32 %2, 0
  br i1 %tobool36.not81, label %if.end.if.end61_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true:                                    ; preds = %if.then53.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call40 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call40, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call40, %add.i
  br i1 %cmp3.i, label %if.then43, label %if.then53

if.then43:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mhdp, align 8
  %add.ptr47 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %if.then43.if.end61_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43.if.end61_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then53:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %6 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mhdp, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %if.then53.if.end61_crit_edge, label %if.then53.land.lhs.true_crit_edge

if.then53.land.lhs.true_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then53.if.end61_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end61:                                         ; preds = %if.then53.if.end61_crit_edge, %if.then43.if.end61_crit_edge, %if.end.if.end61_crit_edge
  %9 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mhdp, align 8
  %add.ptr65 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #10, !srcloc !374
  %12 = lshr i32 %11, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end61 ], [ -110, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  %bus_format.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_attach.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_attach, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %bridge, i32 -1244
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_attach.__UNIQUE_ID_ddebug336, ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  %aux = getelementptr i8, ptr %bridge, i32 296
  %drm_dev = getelementptr i8, ptr %bridge, i32 1668
  %4 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %drm_dev, align 4
  %call6 = tail call i32 @drm_dp_aux_register(ptr noundef %aux) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_format.i) #10
  %5 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4121, ptr %bus_format.i, align 4
  %connector.i = getelementptr i8, ptr %bridge, i32 -1040
  %encoder.i = getelementptr i8, ptr %bridge, i32 128
  %6 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %bridge, i32 -1244
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.56) #13
  br label %cdns_mhdp_connector_init.exit.thread

if.end.i:                                         ; preds = %if.then10
  %polled.i = getelementptr i8, ptr %bridge, i32 -340
  %10 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %polled.i, align 4
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @drm_connector_init(ptr noundef %12, ptr noundef %connector.i, ptr noundef nonnull @cdns_mhdp_conn_funcs, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev8.i = getelementptr i8, ptr %bridge, i32 -1244
  %13 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.59) #13
  br label %cdns_mhdp_connector_init.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %helper_private.i.i = getelementptr i8, ptr %bridge, i32 -332
  %15 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cdns_mhdp_conn_helper_funcs, ptr %helper_private.i.i, align 4
  %display_info.i = getelementptr i8, ptr %bridge, i32 -848
  %call10.i = call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info.i, ptr noundef nonnull %bus_format.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.cdns_mhdp_connector_init.exit.thread_crit_edge

if.end9.i.cdns_mhdp_connector_init.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_connector_init.exit.thread

if.end13.i:                                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encoder.i, align 4
  %call15.i = call i32 @drm_connector_attach_encoder(ptr noundef %connector.i, ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end22.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev21.i = getelementptr i8, ptr %bridge, i32 -1244
  %18 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev21.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.62) #13
  br label %cdns_mhdp_connector_init.exit.thread

if.end22.i:                                       ; preds = %if.end13.i
  %hdcp_supported.i = getelementptr i8, ptr %bridge, i32 2568
  %20 = ptrtoint ptr %hdcp_supported.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdcp_supported.i, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not.i = icmp eq i8 %21, 0
  br i1 %tobool23.not.i, label %cdns_mhdp_connector_init.exit.thread47, label %cdns_mhdp_connector_init.exit

cdns_mhdp_connector_init.exit.thread47:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_format.i) #10
  br label %if.end15

cdns_mhdp_connector_init.exit.thread:             ; preds = %do.end20.i, %if.end9.i.cdns_mhdp_connector_init.exit.thread_crit_edge, %do.end7.i, %do.end.i
  %retval.0.i42.ph = phi i32 [ %call10.i, %if.end9.i.cdns_mhdp_connector_init.exit.thread_crit_edge ], [ -19, %do.end.i ], [ %call15.i, %do.end20.i ], [ %call.i, %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_format.i) #10
  br label %aux_unregister

cdns_mhdp_connector_init.exit:                    ; preds = %if.end22.i
  %call25.i = call i32 @drm_connector_attach_content_protection_property(ptr noundef %connector.i, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_format.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool12.not = icmp eq i32 %call25.i, 0
  br i1 %tobool12.not, label %cdns_mhdp_connector_init.exit.if.end15_crit_edge, label %cdns_mhdp_connector_init.exit.aux_unregister_crit_edge

cdns_mhdp_connector_init.exit.aux_unregister_crit_edge: ; preds = %cdns_mhdp_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aux_unregister

cdns_mhdp_connector_init.exit.if.end15_crit_edge: ; preds = %cdns_mhdp_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %cdns_mhdp_connector_init.exit.if.end15_crit_edge, %cdns_mhdp_connector_init.exit.thread47, %if.end8.if.end15_crit_edge
  %start_lock = getelementptr i8, ptr %bridge, i32 2076
  call void @_raw_spin_lock(ptr noundef %start_lock) #10
  %bridge_attached = getelementptr i8, ptr %bridge, i32 2120
  %22 = ptrtoint ptr %bridge_attached to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bridge_attached, align 8
  %hw_state = getelementptr i8, ptr %bridge, i32 2124
  %23 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp16 = icmp eq i32 %24, 1
  call void @_raw_spin_unlock(ptr noundef %start_lock) #10
  br i1 %cmp16, label %do.body21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  %add.ptr24 = getelementptr i8, ptr %26, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -33554433) #10, !srcloc !370
  br label %cleanup

aux_unregister:                                   ; preds = %cdns_mhdp_connector_init.exit.aux_unregister_crit_edge, %cdns_mhdp_connector_init.exit.thread
  %retval.0.i4246 = phi i32 [ %retval.0.i42.ph, %cdns_mhdp_connector_init.exit.thread ], [ %call25.i, %cdns_mhdp_connector_init.exit.aux_unregister_crit_edge ]
  call void @drm_dp_aux_unregister(ptr noundef %aux) #10
  br label %cleanup

cleanup:                                          ; preds = %aux_unregister, %do.body21, %if.end15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i4246, %aux_unregister ], [ %call6, %do.end.cleanup_crit_edge ], [ 0, %do.body21 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_detach(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_detach.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_detach, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %bridge, i32 -1244
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_detach.__UNIQUE_ID_ddebug340, ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.78) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  %aux = getelementptr i8, ptr %bridge, i32 296
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #10
  %start_lock = getelementptr i8, ptr %bridge, i32 2076
  tail call void @_raw_spin_lock(ptr noundef %start_lock) #10
  %bridge_attached = getelementptr i8, ptr %bridge, i32 2120
  %2 = ptrtoint ptr %bridge_attached to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bridge_attached, align 8
  tail call void @_raw_spin_unlock(ptr noundef %start_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !385
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %add.ptr8 = getelementptr i8, ptr %4, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #10, !srcloc !370
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_atomic_enable(ptr noundef %bridge, ptr nocapture noundef readonly %bridge_state) #0 align 64 {
entry:
  %resp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  %0 = ptrtoint ptr %bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #10
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %resp, align 4, !annotation !386
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_atomic_enable, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %bridge, i32 -1244
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug337, ptr noundef %4, ptr noundef nonnull @.str.80) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %link_mutex = getelementptr i8, ptr %bridge, i32 -1136
  tail call void @mutex_lock_nested(ptr noundef %link_mutex, i32 noundef 0) #10
  %plugged = getelementptr i8, ptr %bridge, i32 2074
  %5 = ptrtoint ptr %plugged to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %plugged, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %land.lhs.true

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %link_up = getelementptr i8, ptr %bridge, i32 2073
  %7 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %link_up, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  %call8 = tail call fastcc i32 @cdns_mhdp_link_up(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then7.if.then222_crit_edge, label %if.then7.if.end11_crit_edge

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7.if.then222_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then222

if.end11:                                         ; preds = %if.then7.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %info = getelementptr i8, ptr %bridge, i32 -1232
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 8
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end11.if.end24_crit_edge, label %land.lhs.true13

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true13:                                  ; preds = %if.end11
  %ops = getelementptr inbounds %struct.cdns_mhdp_platform_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %land.lhs.true13.if.end24_crit_edge, label %land.lhs.true16

land.lhs.true13.if.end24_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %enable = getelementptr inbounds %struct.mhdp_platform_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %land.lhs.true16.if.end24_crit_edge, label %if.then20

land.lhs.true16.if.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %14(ptr noundef %add.ptr) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true16.if.end24_crit_edge, %land.lhs.true13.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  %call25 = call fastcc i32 @cdns_mhdp_reg_read(ptr noundef %add.ptr, i32 noundef 2308, ptr noundef nonnull %resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %dev31 = getelementptr i8, ptr %bridge, i32 -1244
  %15 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.81, i32 noundef %call25) #13
  br label %if.then222

if.end32:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resp, align 4
  %or33 = or i32 %18, 3
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %add.ptr, i16 noundef zeroext 2308, i32 noundef %or33)
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %19 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %encoder, align 4
  %call35 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %20) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end54, label %if.end70.critedge, !prof !387

do.end54:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2006, i32 noundef 9, ptr noundef null) #10
  br label %out.thread

if.end70.critedge:                                ; preds = %if.end32
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %call35, i32 0, i32 9
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not.i = icmp slt i32 %22, %24
  br i1 %cmp.not.i, label %drm_atomic_get_new_connector_state.exit, label %if.end70.critedge.do.end91_crit_edge

if.end70.critedge.do.end91_crit_edge:             ; preds = %if.end70.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end70.critedge
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %26, i32 %22, i32 3
  %27 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %new_state.i, align 4
  %tobool73.not = icmp eq ptr %28, null
  br i1 %tobool73.not, label %drm_atomic_get_new_connector_state.exit.do.end91_crit_edge, label %if.end107.critedge, !prof !387

drm_atomic_get_new_connector_state.exit.do.end91_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end91:                                         ; preds = %drm_atomic_get_new_connector_state.exit.do.end91_crit_edge, %if.end70.critedge.do.end91_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2010, i32 noundef 9, ptr noundef null) #10
  br label %out.thread

if.end107.critedge:                               ; preds = %drm_atomic_get_new_connector_state.exit
  %hdcp_supported = getelementptr i8, ptr %bridge, i32 2568
  %29 = ptrtoint ptr %hdcp_supported to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hdcp_supported, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool108.not = icmp eq i8 %30, 0
  br i1 %tobool108.not, label %if.end107.critedge.if.end117_crit_edge, label %land.lhs.true109

if.end107.critedge.if.end117_crit_edge:           ; preds = %if.end107.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

land.lhs.true109:                                 ; preds = %if.end107.critedge
  %hw_state = getelementptr i8, ptr %bridge, i32 2124
  %31 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp110 = icmp eq i32 %32, 1
  br i1 %cmp110, label %land.lhs.true111, label %land.lhs.true109.if.end117_crit_edge

land.lhs.true109.if.end117_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

land.lhs.true111:                                 ; preds = %land.lhs.true109
  %content_protection = getelementptr inbounds %struct.drm_connector_state, ptr %28, i32 0, i32 12
  %33 = ptrtoint ptr %content_protection to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %content_protection, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp112 = icmp eq i32 %34, 1
  br i1 %cmp112, label %if.then113, label %land.lhs.true111.if.end117_crit_edge

land.lhs.true111.if.end117_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then113:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %link_mutex) #10
  %hdcp_content_type = getelementptr inbounds %struct.drm_connector_state, ptr %28, i32 0, i32 10
  %35 = ptrtoint ptr %hdcp_content_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hdcp_content_type, align 4
  %conv = trunc i32 %36 to i8
  %call115 = tail call i32 @cdns_mhdp_hdcp_enable(ptr noundef %add.ptr, i8 noundef zeroext %conv) #10
  tail call void @mutex_lock_nested(ptr noundef %link_mutex, i32 noundef 0) #10
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %land.lhs.true111.if.end117_crit_edge, %land.lhs.true109.if.end117_crit_edge, %if.end107.critedge.if.end117_crit_edge
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %28, i32 0, i32 1
  %37 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %crtcs.i, align 4
  %index.i.i282 = getelementptr inbounds %struct.drm_crtc, ptr %38, i32 0, i32 8
  %41 = ptrtoint ptr %index.i.i282 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index.i.i282, align 4
  %new_state.i283 = getelementptr %struct.__drm_crtcs_state, ptr %40, i32 %42, i32 3
  %43 = ptrtoint ptr %new_state.i283 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %new_state.i283, align 4
  %tobool120.not = icmp eq ptr %44, null
  br i1 %tobool120.not, label %do.end138, label %if.end154.critedge, !prof !387

do.end138:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2023, i32 noundef 9, ptr noundef null) #10
  br label %out.thread

if.end154.critedge:                               ; preds = %if.end117
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %44, i32 0, i32 7
  %call155 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %1, ptr noundef %bridge) #10
  %tobool157.not = icmp eq ptr %call155, null
  br i1 %tobool157.not, label %do.end175, label %if.end191.critedge, !prof !387

do.end175:                                        ; preds = %if.end154.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2029, i32 noundef 9, ptr noundef null) #10
  br label %out.thread

if.end191.critedge:                               ; preds = %if.end154.critedge
  %num_lanes = getelementptr i8, ptr %bridge, i32 288
  %45 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_lanes, align 8
  %rate = getelementptr i8, ptr %bridge, i32 284
  %47 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rate, align 4
  %call193 = tail call fastcc zeroext i1 @cdns_mhdp_bandwidth_ok(ptr noundef %add.ptr, ptr noundef %adjusted_mode, i32 noundef %46, i32 noundef %48)
  br i1 %call193, label %if.end195, label %if.end191.critedge.if.then222_crit_edge

if.end191.critedge.if.then222_crit_edge:          ; preds = %if.end191.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then222

if.end195:                                        ; preds = %if.end191.critedge
  tail call fastcc void @cdns_mhdp_sst_enable(ptr noundef %add.ptr, ptr noundef %adjusted_mode)
  %dev199 = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %49 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev199, align 4
  %call200 = tail call ptr @drm_mode_duplicate(ptr noundef %50, ptr noundef %adjusted_mode) #10
  %current_mode = getelementptr inbounds %struct.cdns_mhdp_bridge_state, ptr %call155, i32 0, i32 1
  %51 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call200, ptr %current_mode, align 4
  tail call void @drm_mode_set_name(ptr noundef %call200) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_atomic_enable, %if.then214)) #10
          to label %do.end218 [label %if.then214], !srcloc !365

if.then214:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  %dev215 = getelementptr i8, ptr %bridge, i32 -1244
  %52 = ptrtoint ptr %dev215 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev215, align 4
  %name = getelementptr inbounds %struct.drm_crtc_state, ptr %44, i32 0, i32 7, i32 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug338, ptr noundef %53, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.79, ptr noundef %name) #10
  br label %do.end218

do.end218:                                        ; preds = %if.then214, %if.end195
  %bridge_enabled = getelementptr i8, ptr %bridge, i32 2121
  %54 = ptrtoint ptr %bridge_enabled to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %bridge_enabled, align 1
  br label %out.thread

out.thread:                                       ; preds = %do.end218, %do.end175, %do.end138, %do.end91, %do.end54
  tail call void @mutex_unlock(ptr noundef %link_mutex) #10
  br label %if.end224

if.then222:                                       ; preds = %if.end191.critedge.if.then222_crit_edge, %do.end30, %if.then7.if.then222_crit_edge
  tail call void @mutex_unlock(ptr noundef %link_mutex) #10
  %modeset_retry_work = getelementptr i8, ptr %bridge, i32 2180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %55 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %modeset_retry_work) #10
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %out.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_atomic_disable(ptr noundef %bridge, ptr nocapture noundef readnone %bridge_state) #0 align 64 {
entry:
  %resp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #10
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resp, align 4, !annotation !386
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_atomic_disable.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_atomic_disable, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %bridge, i32 -1244
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_atomic_disable.__UNIQUE_ID_ddebug339, ptr noundef %2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.132) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %link_mutex = getelementptr i8, ptr %bridge, i32 -1136
  tail call void @mutex_lock_nested(ptr noundef %link_mutex, i32 noundef 0) #10
  %hdcp_supported = getelementptr i8, ptr %bridge, i32 2568
  %3 = ptrtoint ptr %hdcp_supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hdcp_supported, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @cdns_mhdp_hdcp_disable(ptr noundef %add.ptr) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %bridge_enabled = getelementptr i8, ptr %bridge, i32 2121
  %5 = ptrtoint ptr %bridge_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bridge_enabled, align 1
  %call8 = call fastcc i32 @cdns_mhdp_reg_read(ptr noundef %add.ptr, i32 noundef 8704, ptr noundef nonnull %resp)
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resp, align 4
  %and = and i32 %7, -41
  %or = or i32 %and, 32
  store i32 %or, ptr %resp, align 4
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %add.ptr, i16 noundef zeroext 8704, i32 noundef %or)
  tail call fastcc void @cdns_mhdp_link_down(ptr noundef %add.ptr)
  %call10 = call fastcc i32 @cdns_mhdp_reg_read(ptr noundef %add.ptr, i32 noundef 2308, ptr noundef nonnull %resp)
  %8 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resp, align 4
  %and11 = and i32 %9, -4
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %add.ptr, i16 noundef zeroext 2308, i32 noundef %and11)
  %info = getelementptr i8, ptr %bridge, i32 -1232
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end7.if.end24_crit_edge, label %land.lhs.true

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end7
  %ops = getelementptr inbounds %struct.cdns_mhdp_platform_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true16

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true16:                                  ; preds = %land.lhs.true
  %disable = getelementptr inbounds %struct.mhdp_platform_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %land.lhs.true16.if.end24_crit_edge, label %if.then20

land.lhs.true16.if.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %15(ptr noundef %add.ptr) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true16.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %link_mutex) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cdns_mhdp_bridge_atomic_duplicate_state(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_bridge_duplicate_state(ptr noundef %bridge, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_bridge_atomic_destroy_state(ptr nocapture noundef readonly %bridge, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_mode = getelementptr inbounds %struct.cdns_mhdp_bridge_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_mode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @drm_mode_destroy(ptr noundef %3, ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %current_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %state) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_atomic_check(ptr noundef %bridge, ptr nocapture noundef readnone %bridge_state, ptr noundef %crtc_state, ptr nocapture noundef readnone %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %link_mutex = getelementptr i8, ptr %bridge, i32 -1136
  tail call void @mutex_lock_nested(ptr noundef %link_mutex, i32 noundef 0) #10
  %num_lanes = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lanes, align 8
  %rate = getelementptr i8, ptr %bridge, i32 284
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %call = tail call fastcc zeroext i1 @cdns_mhdp_bandwidth_ok(ptr noundef %add.ptr, ptr noundef %adjusted_mode, i32 noundef %1, i32 noundef %3)
  br i1 %call, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %bridge, i32 -1244
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 31
  %6 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_lanes, align 8
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %div = udiv i32 %9, 100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, ptr noundef %name, i32 noundef %7, i32 noundef %div) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %link_mutex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cdns_mhdp_bridge_atomic_reset(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_bridge_reset(ptr noundef %bridge, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_bridge_detect(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_bridge_detect, %if.then.i)) #10
          to label %cdns_mhdp_detect.exit [label %if.then.i], !srcloc !365

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %bridge, i32 -1244
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %plugged.i = getelementptr i8, ptr %bridge, i32 2074
  %2 = ptrtoint ptr %plugged.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %plugged.i, align 2, !range !373
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %4) #10
  br label %cdns_mhdp_detect.exit

cdns_mhdp_detect.exit:                            ; preds = %if.then.i, %entry
  %plugged4.i = getelementptr i8, ptr %bridge, i32 2074
  %5 = ptrtoint ptr %plugged4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %plugged4.i, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not.i = icmp eq i8 %6, 0
  %..i = select i1 %tobool5.not.i, i32 2, i32 1
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cdns_mhdp_bridge_get_edid(ptr noundef %bridge, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plugged.i = getelementptr i8, ptr %bridge, i32 2074
  %0 = ptrtoint ptr %plugged.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %plugged.i, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cdns_mhdp_get_edid.exit_crit_edge, label %if.end.i

entry.cdns_mhdp_get_edid.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_get_edid.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  %call.i = tail call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @cdns_mhdp_get_edid_block, ptr noundef %add.ptr) #10
  br label %cdns_mhdp_get_edid.exit

cdns_mhdp_get_edid.exit:                          ; preds = %if.end.i, %entry.cdns_mhdp_get_edid.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %entry.cdns_mhdp_get_edid.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_bridge_hpd_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_attached = getelementptr i8, ptr %bridge, i32 2120
  %0 = ptrtoint ptr %bridge_attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge_attached, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !388
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %add.ptr1 = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -33554433) #10, !srcloc !370
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_bridge_hpd_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -1256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 33554432) #10, !srcloc !370
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_content_protection_property(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plugged = getelementptr i8, ptr %connector, i32 3114
  %0 = ptrtoint ptr %plugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %plugged, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %plugged to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %plugged, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %cdns_mhdp_get_edid.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cdns_mhdp_get_edid.exit:                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %connector, i32 -216
  %call.i = tail call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @cdns_mhdp_get_edid_block, ptr noundef %add.ptr) #10
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %cdns_mhdp_get_edid.exit.do.end_crit_edge, label %if.end3

cdns_mhdp_get_edid.exit.do.end_crit_edge:         ; preds = %cdns_mhdp_get_edid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %cdns_mhdp_get_edid.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr i8, ptr %connector, i32 -204
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.64) #13
  br label %cleanup

if.end3:                                          ; preds = %cdns_mhdp_get_edid.exit
  %call4 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call.i) #10
  %call5 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call.i) #10
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  %color_formats = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 5
  %6 = ptrtoint ptr %color_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %color_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end3.if.end17_crit_edge, label %land.lhs.true

if.end3.if.end17_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end3
  %display_fmt = getelementptr i8, ptr %connector, i32 3100
  %8 = ptrtoint ptr %display_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %display_fmt, align 4
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.end13, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end13:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr i8, ptr %connector, i32 -204
  %10 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef %7) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %land.lhs.true.if.end17_crit_edge, %if.end3.if.end17_crit_edge
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %land.lhs.true20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true20:                                  ; preds = %if.end17
  %bpc24 = getelementptr i8, ptr %connector, i32 3104
  %14 = ptrtoint ptr %bpc24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bpc24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %do.end28, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end28:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr i8, ptr %connector, i32 -204
  %16 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.65, i32 noundef %13, i32 noundef %15) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %land.lhs.true20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %do.end28 ], [ %call5, %land.lhs.true20.cleanup_crit_edge ], [ %call5, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_connector_detect(ptr nocapture noundef readonly %conn, ptr nocapture noundef readnone %ctx, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_connector_detect, %if.then.i)) #10
          to label %cdns_mhdp_detect.exit [label %if.then.i], !srcloc !365

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %conn, i32 -204
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %plugged.i = getelementptr i8, ptr %conn, i32 3114
  %2 = ptrtoint ptr %plugged.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %plugged.i, align 2, !range !373
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %4) #10
  br label %cdns_mhdp_detect.exit

cdns_mhdp_detect.exit:                            ; preds = %if.then.i, %entry
  %plugged4.i = getelementptr i8, ptr %conn, i32 3114
  %5 = ptrtoint ptr %plugged4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %plugged4.i, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not.i = icmp eq i8 %6, 0
  %..i = select i1 %tobool5.not.i, i32 2, i32 1
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_mode_valid(ptr noundef %conn, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %conn, i32 -216
  %link_mutex = getelementptr i8, ptr %conn, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %link_mutex, i32 noundef 0) #10
  %num_lanes = getelementptr i8, ptr %conn, i32 1328
  %0 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lanes, align 8
  %rate = getelementptr i8, ptr %conn, i32 1324
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %call = tail call fastcc zeroext i1 @cdns_mhdp_bandwidth_ok(ptr noundef %add.ptr, ptr noundef %mode, i32 noundef %1, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %link_mutex) #10
  %. = select i1 %call, i32 0, i32 15
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns_mhdp_connector_atomic_check(ptr nocapture noundef readonly %conn, ptr nocapture noundef readonly %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdcp_supported = getelementptr i8, ptr %conn, i32 3608
  %0 = ptrtoint ptr %hdcp_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdcp_supported, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %conn, i32 0, i32 9
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %4 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp slt i32 %3, %5
  br i1 %cmp.not.i, label %if.end.i55, label %if.end.drm_atomic_get_new_connector_state.exit_crit_edge

if.end.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_atomic_get_new_connector_state.exit

if.end.i55:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %6 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connectors.i, align 4
  %old_state.i = getelementptr %struct.__drm_connnectors_state, ptr %7, i32 %3, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %7, i32 %3, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i55, %if.end.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i60 = phi ptr [ %9, %if.end.i55 ], [ null, %if.end.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %retval.0.i56 = phi ptr [ %11, %if.end.i55 ], [ null, %if.end.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %content_protection = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i60, i32 0, i32 12
  %12 = ptrtoint ptr %content_protection to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %content_protection, align 4
  %content_protection2 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i56, i32 0, i32 12
  %14 = ptrtoint ptr %content_protection2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %content_protection2, align 4
  %hdcp_content_type = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i60, i32 0, i32 10
  %16 = ptrtoint ptr %hdcp_content_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hdcp_content_type, align 4
  %hdcp_content_type4 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i56, i32 0, i32 10
  %18 = ptrtoint ptr %hdcp_content_type4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdcp_content_type4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not = icmp eq i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.not = icmp eq i32 %15, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end10, label %if.then8

if.then8:                                         ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %content_protection2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %content_protection2, align 4
  br label %mode_changed

if.end10:                                         ; preds = %drm_atomic_get_new_connector_state.exit
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i56, i32 0, i32 1
  %21 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc, align 4
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp13 = icmp eq i32 %13, 2
  br i1 %cmp13, label %if.then15, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %content_protection2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %content_protection2, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp19 = icmp eq i32 %13, %15
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %lor.lhs.false

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp eq i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp24 = icmp eq i32 %15, 2
  %or.cond50 = select i1 %cmp21, i1 %cmp24, i1 false
  br i1 %or.cond50, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.mode_changed_crit_edge

lor.lhs.false.mode_changed_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %mode_changed

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mode_changed:                                     ; preds = %lor.lhs.false.mode_changed_crit_edge, %if.then8
  %crtc28 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i56, i32 0, i32 1
  %24 = ptrtoint ptr %crtc28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc28, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %26 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crtcs.i, align 4
  %index.i.i57 = getelementptr inbounds %struct.drm_crtc, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %index.i.i57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i57, align 4
  %new_state.i58 = getelementptr %struct.__drm_crtcs_state, ptr %27, i32 %29, i32 3
  %30 = ptrtoint ptr %new_state.i58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %new_state.i58, align 4
  %mode_changed30 = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %mode_changed30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %mode_changed30, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed30, align 2
  br label %cleanup

cleanup:                                          ; preds = %mode_changed, %lor.lhs.false.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then15, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_mhdp_get_edid_block(ptr noundef %data, ptr nocapture noundef writeonly %edid, i32 noundef %block, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %data, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #10
  %div53 = lshr i32 %block, 1
  %conv2 = trunc i32 %div53 to i8
  %0 = trunc i32 %block to i8
  %conv3 = and i8 %0, 1
  %1 = trunc i32 %length to i16
  %conv5 = add i16 %1, 2
  %conv.i = and i32 %length, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not.i = icmp eq i16 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.083 = phi i8 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %data, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.i:                                       ; preds = %for.body
  %call.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %data, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.for.inc_crit_edge

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %data, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.for.inc_crit_edge

for.cond.1.i.for.inc_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %data, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body6.i.preheader, label %for.cond.2.i.for.inc_crit_edge

for.cond.2.i.for.inc_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body6.i.preheader:                            ; preds = %for.cond.2.i
  %call8.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %data, i8 noundef zeroext %conv2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond3.i, label %for.body6.i.preheader.for.inc_crit_edge

for.body6.i.preheader.for.inc_crit_edge:          ; preds = %for.body6.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond3.i:                                      ; preds = %for.body6.i.preheader
  %call8.i.1 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %data, i8 noundef zeroext %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %tobool9.not.i.1 = icmp eq i32 %call8.i.1, 0
  br i1 %tobool9.not.i.1, label %for.cond3.i.1, label %for.cond3.i.for.inc_crit_edge

for.cond3.i.for.inc_crit_edge:                    ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond3.i.1:                                    ; preds = %for.cond3.i
  %call6 = tail call fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 2, i16 noundef zeroext %conv5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body.i.preheader, label %for.cond3.i.1.for.inc_crit_edge

for.cond3.i.1.for.inc_crit_edge:                  ; preds = %for.cond3.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i.preheader:                             ; preds = %for.cond3.i.1
  %call.i54 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp2.i = icmp slt i32 %call.i54, 0
  br i1 %cmp2.i, label %for.body.i.preheader.for.inc_crit_edge, label %if.end.i

for.body.i.preheader.for.inc_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %for.body.i.preheader
  %call.i54.1 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.1)
  %cmp2.i.1 = icmp slt i32 %call.i54.1, 0
  br i1 %cmp2.i.1, label %if.end.i.for.inc_crit_edge, label %if.end.i.1

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.1:                                       ; preds = %if.end.i
  br i1 %cmp10.not.i, label %if.end.i.1.if.end19_crit_edge, label %if.end.i.1.for.body.i60_crit_edge

if.end.i.1.for.body.i60_crit_edge:                ; preds = %if.end.i.1
  br label %for.body.i60

if.end.i.1.if.end19_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i60:                                     ; preds = %if.end.i65.for.body.i60_crit_edge, %if.end.i.1.for.body.i60_crit_edge
  %i.011.i57 = phi i32 [ %inc.i63, %if.end.i65.for.body.i60_crit_edge ], [ 0, %if.end.i.1.for.body.i60_crit_edge ]
  %call.i58 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp2.i59 = icmp slt i32 %call.i58, 0
  br i1 %cmp2.i59, label %for.body.i60.for.inc_crit_edge, label %if.end.i65

for.body.i60.for.inc_crit_edge:                   ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i65:                                       ; preds = %for.body.i60
  %conv4.i61 = trunc i32 %call.i58 to i8
  %arrayidx.i62 = getelementptr i8, ptr %edid, i32 %i.011.i57
  %2 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.i61, ptr %arrayidx.i62, align 1
  %inc.i63 = add nuw nsw i32 %i.011.i57, 1
  %exitcond.not.i64 = icmp eq i32 %inc.i63, %conv.i
  br i1 %exitcond.not.i64, label %if.end.i65.if.end19_crit_edge, label %if.end.i65.for.body.i60_crit_edge

if.end.i65.for.body.i60_crit_edge:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i60

if.end.i65.if.end19_crit_edge:                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %if.end.i65.if.end19_crit_edge, %if.end.i.1.if.end19_crit_edge
  %conv21 = and i32 %call.i54, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %length)
  %cmp22 = icmp eq i32 %conv21, %length
  %conv25 = and i32 %call.i54.1, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %div53, i32 %conv25)
  %cmp27 = icmp eq i32 %div53, %conv25
  %or.cond = select i1 %cmp22, i1 %cmp27, i1 false
  br i1 %or.cond, label %for.end.thread, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.end.thread:                                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  br label %if.end34

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.i60.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.i.preheader.for.inc_crit_edge, %for.cond3.i.1.for.inc_crit_edge, %for.cond3.i.for.inc_crit_edge, %for.body6.i.preheader.for.inc_crit_edge, %for.cond.2.i.for.inc_crit_edge, %for.cond.1.i.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %call6, %for.cond3.i.1.for.inc_crit_edge ], [ 0, %if.end19.for.inc_crit_edge ], [ %call.3.i, %for.cond.2.i.for.inc_crit_edge ], [ %call.2.i, %for.cond.1.i.for.inc_crit_edge ], [ %call.1.i, %for.cond.i.for.inc_crit_edge ], [ %call.i, %for.body.for.inc_crit_edge ], [ %call.i54, %for.body.i.preheader.for.inc_crit_edge ], [ %call.i54.1, %if.end.i.for.inc_crit_edge ], [ %call8.i, %for.body6.i.preheader.for.inc_crit_edge ], [ %call8.i.1, %for.cond3.i.for.inc_crit_edge ], [ %call.i58, %for.body.i60.for.inc_crit_edge ]
  %inc = add nuw nsw i8 %i.083, 1
  %cmp = icmp ult i8 %i.083, 3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool32.not = icmp eq i32 %ret.1, 0
  br i1 %tobool32.not, label %for.end.if.end34_crit_edge, label %do.end

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.72, i32 noundef %block, i32 noundef %ret.1) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end, %for.end.if.end34_crit_edge, %for.end.thread
  %ret.276 = phi i32 [ 0, %for.end.thread ], [ %ret.1, %do.end ], [ 0, %for.end.if.end34_crit_edge ]
  ret i32 %ret.276
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cdns_mhdp_bandwidth_ok(ptr nocapture noundef readonly %mhdp, ptr noundef %mode, i32 noundef %lanes, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %y_only.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %y_only.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %y_only.i, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bpc.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpc.i, align 4
  br label %cdns_mhdp_get_bpp.exit

if.end.i:                                         ; preds = %entry
  %display_fmt = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15
  %4 = ptrtoint ptr %display_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %display_fmt, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default.i [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i_crit_edge16
    i32 4, label %sw.bb2.i
    i32 8, label %sw.bb5.i
  ]

if.end.i.sw.bb.i_crit_edge16:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge16
  %bpc1.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %bpc1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpc1.i, align 4
  %mul.i = mul i32 %8, 3
  br label %cdns_mhdp_get_bpp.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpc3.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %bpc3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bpc3.i, align 4
  %mul4.i = shl i32 %10, 1
  br label %cdns_mhdp_get_bpp.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpc6.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %bpc6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bpc6.i, align 4
  %mul7.i = mul i32 %12, 3
  %div34.i = lshr i32 %mul7.i, 1
  br label %cdns_mhdp_get_bpp.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpc8.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %bpc8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bpc8.i, align 4
  %mul9.i = mul i32 %14, 3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1567, i32 noundef 9, ptr noundef null) #10
  br label %cdns_mhdp_get_bpp.exit

cdns_mhdp_get_bpp.exit:                           ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %sw.bb.i, %if.then.i
  %retval.0.i14 = phi i32 [ %3, %if.then.i ], [ %mul9.i, %sw.default.i ], [ %div34.i, %sw.bb5.i ], [ %mul4.i, %sw.bb2.i ], [ %mul.i, %sw.bb.i ]
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %mul = mul i32 %16, %retval.0.i14
  %div13 = lshr i32 %mul, 3
  %mul1 = mul i32 %rate, %lanes
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %mul1)
  %cmp = icmp ugt i32 %div13, %mul1
  br i1 %cmp, label %do.body, label %cdns_mhdp_get_bpp.exit.cleanup_crit_edge

cdns_mhdp_get_bpp.exit.cleanup_crit_edge:         ; preds = %cdns_mhdp_get_bpp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %cdns_mhdp_get_bpp.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_bandwidth_ok.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_bandwidth_ok, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !365

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_bandwidth_ok.__UNIQUE_ID_ddebug335, ptr noundef %18, ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %div13, i32 noundef %mul1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %cdns_mhdp_get_bpp.exit.cleanup_crit_edge
  %19 = xor i1 %cmp, true
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_link_up(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  %dpcd = alloca [15 x i8], align 1
  %amp = alloca [2 x i8], align 1
  %resp = alloca i32, align 4
  %ext_cap_chk = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %dpcd) #10
  %0 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 1
  %1 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 2
  %2 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 3
  %3 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 14
  %4 = call ptr @memset(ptr %dpcd, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %amp) #10
  %5 = ptrtoint ptr %amp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %amp, align 1, !annotation !386
  %6 = getelementptr inbounds [2 x i8], ptr %amp, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !386
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #10
  %8 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %resp, align 4, !annotation !386
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ext_cap_chk) #10
  %9 = ptrtoint ptr %ext_cap_chk to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ext_cap_chk, align 1
  %link_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 8
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %link_mutex) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !377

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1414, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %aux = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 12
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 14, ptr noundef nonnull %ext_cap_chk, i32 noundef 1) #10
  %10 = ptrtoint ptr %ext_cap_chk to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ext_cap_chk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool21.not = icmp sgt i8 %11, -1
  %. = select i1 %tobool21.not, i32 0, i32 8704
  %call25 = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef %., ptr noundef nonnull %dpcd, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.83) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dpcd, align 1
  %link = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11
  %16 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %link, align 8
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %call33 = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %18) #10
  %rate = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call33, ptr %rate, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %22 = and i8 %21, 31
  %and37 = zext i8 %22 to i32
  %num_lanes = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %23 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and37, ptr %num_lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool42.not = icmp sgt i8 %21, -1
  br i1 %tobool42.not, label %if.end31.do.body46_crit_edge, label %if.then43

if.end31.do.body46_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body46

if.then43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %capabilities = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 3
  %24 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capabilities, align 4
  %or = or i32 %25, 1
  store i32 %or, ptr %capabilities, align 4
  br label %do.body46

do.body46:                                        ; preds = %if.then43, %if.end31.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_up.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_up, %if.then56)) #10
          to label %do.end60 [label %if.then56], !srcloc !365

if.then56:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  %dev57 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %26 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev57, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_up.__UNIQUE_ID_ddebug334, ptr noundef %27, ptr noundef nonnull @.str.85) #10
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #10
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %value.i, align 1, !annotation !386
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %30)
  %cmp.i = icmp ult i8 %30, 17
  br i1 %cmp.i, label %do.end60.cdns_mhdp_link_power_up.exit_crit_edge, label %if.end.i

do.end60.cdns_mhdp_link_power_up.exit_crit_edge:  ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_link_power_up.exit

if.end.i:                                         ; preds = %do.end60
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.cdns_mhdp_link_power_up.exit_crit_edge, label %if.end5.i

if.end.i.cdns_mhdp_link_power_up.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_link_power_up.exit

if.end5.i:                                        ; preds = %if.end.i
  %31 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %value.i, align 1
  %33 = and i8 %32, -4
  %34 = or i8 %33, 1
  store i8 %34, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  %35 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %value.addr.i.i, align 1
  %call.i1.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp11.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp11.i, label %if.end5.i.cdns_mhdp_link_power_up.exit_crit_edge, label %if.end14.i

if.end5.i.cdns_mhdp_link_power_up.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_link_power_up.exit

if.end14.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  br label %cdns_mhdp_link_power_up.exit

cdns_mhdp_link_power_up.exit:                     ; preds = %if.end14.i, %if.end5.i.cdns_mhdp_link_power_up.exit_crit_edge, %if.end.i.cdns_mhdp_link_power_up.exit_crit_edge, %do.end60.cdns_mhdp_link_power_up.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #10
  %36 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate, align 4
  %sink.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14
  %38 = ptrtoint ptr %sink.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sink.i, align 8
  %39 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_lanes, align 8
  %conv.i = trunc i32 %40 to i8
  %lanes_cnt.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %lanes_cnt.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i, ptr %lanes_cnt.i, align 4
  %capabilities.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 3
  %42 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %capabilities.i, align 4
  %enhanced.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 4
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = ptrtoint ptr %enhanced.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %enhanced.i, align 1
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %2, align 1
  %49 = and i8 %48, 1
  %ssc.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 5
  %50 = ptrtoint ptr %ssc.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %ssc.i, align 8
  %pattern_supp.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 2
  %51 = ptrtoint ptr %pattern_supp.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %pattern_supp.i, align 1
  %52 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dpcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %53)
  %cmp.i.i = icmp ugt i8 %53, 17
  br i1 %cmp.i.i, label %drm_dp_tps3_supported.exit.i, label %cdns_mhdp_link_power_up.exit.cdns_mhdp_fill_sink_caps.exit_crit_edge

cdns_mhdp_link_power_up.exit.cdns_mhdp_fill_sink_caps.exit_crit_edge: ; preds = %cdns_mhdp_link_power_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_fill_sink_caps.exit

drm_dp_tps3_supported.exit.i:                     ; preds = %cdns_mhdp_link_power_up.exit
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %1, align 1
  %56 = and i8 %55, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.i.not.i = icmp eq i8 %56, 0
  br i1 %tobool.i.not.i, label %drm_dp_tps3_supported.exit.i.if.end.i158_crit_edge, label %if.then.i

drm_dp_tps3_supported.exit.i.if.end.i158_crit_edge: ; preds = %drm_dp_tps3_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i158

if.then.i:                                        ; preds = %drm_dp_tps3_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %pattern_supp.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 7, ptr %pattern_supp.i, align 1
  br label %if.end.i158

if.end.i158:                                      ; preds = %if.then.i, %drm_dp_tps3_supported.exit.i.if.end.i158_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %53)
  %cmp.i47.i = icmp ugt i8 %53, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i49.i = icmp slt i8 %48, 0
  %or.cond = select i1 %cmp.i47.i, i1 %tobool.i49.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.end.i158.cdns_mhdp_fill_sink_caps.exit_crit_edge

if.end.i158.cdns_mhdp_fill_sink_caps.exit_crit_edge: ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_fill_sink_caps.exit

if.then19.i:                                      ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %pattern_supp.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pattern_supp.i, align 1
  %60 = or i8 %59, 8
  store i8 %60, ptr %pattern_supp.i, align 1
  br label %cdns_mhdp_fill_sink_caps.exit

cdns_mhdp_fill_sink_caps.exit:                    ; preds = %if.then19.i, %if.end.i158.cdns_mhdp_fill_sink_caps.exit_crit_edge, %cdns_mhdp_link_power_up.exit.cdns_mhdp_fill_sink_caps.exit_crit_edge
  %fast_link.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 3
  %61 = lshr i8 %48, 6
  %.lobit.i = and i8 %61, 1
  %62 = ptrtoint ptr %fast_link.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.lobit.i, ptr %fast_link.i, align 2
  %host.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13
  %63 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %host.i, align 8
  %65 = call i32 @llvm.umin.i32(i32 %64, i32 %37) #10
  %66 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %rate, align 4
  %lanes_cnt1.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %lanes_cnt1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lanes_cnt1.i, align 4
  %69 = call i8 @llvm.umin.i8(i8 %conv.i, i8 %68) #10
  %conv69 = zext i8 %69 to i32
  %70 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv69, ptr %num_lanes, align 8
  %call72 = call fastcc i32 @cdns_mhdp_reg_read(ptr noundef %mhdp, i32 noundef 8704, ptr noundef nonnull %resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end78, label %if.end80

do.end78:                                         ; preds = %cdns_mhdp_fill_sink_caps.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev79 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %71 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev79, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.87, i32 noundef %call72) #13
  br label %cleanup

if.end80:                                         ; preds = %cdns_mhdp_fill_sink_caps.exit
  %73 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %resp, align 4
  %and81 = and i32 %74, -9
  call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8704, i32 noundef %and81)
  %ssc.i161 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 9
  %75 = ptrtoint ptr %ssc.i161 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ssc.i161, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i, label %if.end80.cdns_mhdp_get_ssc_supported.exit.thread_crit_edge, label %cdns_mhdp_get_ssc_supported.exit

if.end80.cdns_mhdp_get_ssc_supported.exit.thread_crit_edge: ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_get_ssc_supported.exit.thread

cdns_mhdp_get_ssc_supported.exit:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %ssc.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ssc.i, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool2.i.not = icmp eq i8 %78, 0
  %spec.select = select i1 %tobool2.i.not, i8 0, i8 16
  br label %cdns_mhdp_get_ssc_supported.exit.thread

cdns_mhdp_get_ssc_supported.exit.thread:          ; preds = %cdns_mhdp_get_ssc_supported.exit, %if.end80.cdns_mhdp_get_ssc_supported.exit.thread_crit_edge
  %79 = phi i8 [ 0, %if.end80.cdns_mhdp_get_ssc_supported.exit.thread_crit_edge ], [ %spec.select, %cdns_mhdp_get_ssc_supported.exit ]
  %80 = ptrtoint ptr %amp to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %amp, align 1
  %81 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %6, align 1
  %call90 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 263, ptr noundef nonnull %amp, i32 noundef 2) #10
  %fast_link = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 6
  %82 = ptrtoint ptr %fast_link to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fast_link, align 1, !range !373
  %84 = ptrtoint ptr %fast_link.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %fast_link.i, align 2, !range !373
  %and96157 = and i8 %85, %83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and96157)
  %tobool97.not = icmp eq i8 %and96157, 0
  br i1 %tobool97.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %cdns_mhdp_get_ssc_supported.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %dev102 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %86 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev102, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.90) #13
  br label %cleanup

if.end103:                                        ; preds = %cdns_mhdp_get_ssc_supported.exit.thread
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %3, align 1
  %90 = and i8 %89, 127
  %and106 = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp.i162 = icmp eq i8 %90, 0
  br i1 %cmp.i162, label %if.end103.lor.lhs.false_crit_edge, label %if.end.i163

if.end103.lor.lhs.false_crit_edge:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end.i163:                                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %90)
  %cmp1.i = icmp ult i8 %90, 5
  br i1 %cmp1.i, label %if.then2.i, label %cdns_mhdp_get_training_interval_us.exit

if.then2.i:                                       ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw nsw i32 2000, %and106
  br label %lor.lhs.false

cdns_mhdp_get_training_interval_us.exit:          ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.95, i32 noundef %and106) #13
  br label %do.end114

lor.lhs.false:                                    ; preds = %if.then2.i, %if.end103.lor.lhs.false_crit_edge
  %retval.0.i164.ph = phi i32 [ 400, %if.end103.lor.lhs.false_crit_edge ], [ %shl.i, %if.then2.i ]
  %call109 = call fastcc i32 @cdns_mhdp_link_training(ptr noundef %mhdp, i32 noundef %retval.0.i164.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end116, label %lor.lhs.false.do.end114_crit_edge

lor.lhs.false.do.end114_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114

do.end114:                                        ; preds = %lor.lhs.false.do.end114_crit_edge, %cdns_mhdp_get_training_interval_us.exit
  %dev115 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %93 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.93) #13
  br label %cleanup

if.end116:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %link_up = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 17
  %95 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %link_up, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end114, %do.end101, %do.end78, %do.end30
  %retval.0 = phi i32 [ %call25, %do.end30 ], [ %call72, %do.end78 ], [ -95, %do.end101 ], [ -5, %do.end114 ], [ 0, %if.end116 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_cap_chk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %amp) #10
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %dpcd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_reg_read(ptr noundef %mhdp, i32 noundef %addr, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [4 x i8], align 4
  %resp = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #10
  %0 = getelementptr inbounds [4 x i8], ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %msg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #10
  %3 = getelementptr inbounds [8 x i8], ptr %resp, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i8], ptr %resp, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i8], ptr %resp, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i8], ptr %resp, i32 0, i32 4
  %7 = getelementptr inbounds [8 x i8], ptr %resp, i32 0, i32 5
  %8 = getelementptr inbounds [8 x i8], ptr %resp, i32 0, i32 6
  %9 = getelementptr inbounds [8 x i8], ptr %resp, i32 0, i32 7
  %10 = getelementptr inbounds i8, ptr %resp, i32 3
  %11 = call ptr @memset(ptr %10, i32 255, i32 5)
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %addr, ptr %msg, align 4
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end_crit_edge

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end_crit_edge

for.cond.1.i.do.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body6.i.preheader, label %for.cond.2.i.do.end_crit_edge

for.cond.2.i.do.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body6.i.preheader:                            ; preds = %for.cond.2.i
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msg, align 4
  %call8.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond3.i, label %for.body6.i.preheader.do.end_crit_edge

for.body6.i.preheader.do.end_crit_edge:           ; preds = %for.body6.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond3.i:                                      ; preds = %for.body6.i.preheader
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 1
  %call8.i.1 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %tobool9.not.i.1 = icmp eq i32 %call8.i.1, 0
  br i1 %tobool9.not.i.1, label %for.cond3.i.1, label %for.cond3.i.do.end_crit_edge

for.cond3.i.do.end_crit_edge:                     ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond3.i.1:                                    ; preds = %for.cond3.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 2
  %call8.i.2 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2)
  %tobool9.not.i.2 = icmp eq i32 %call8.i.2, 0
  br i1 %tobool9.not.i.2, label %for.cond3.i.2, label %for.cond3.i.1.do.end_crit_edge

for.cond3.i.1.do.end_crit_edge:                   ; preds = %for.cond3.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond3.i.2:                                    ; preds = %for.cond3.i.1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  %call8.i.3 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.3)
  %tobool9.not.i.3 = icmp eq i32 %call8.i.3, 0
  br i1 %tobool9.not.i.3, label %for.cond3.i.3, label %for.cond3.i.2.do.end_crit_edge

for.cond3.i.2.do.end_crit_edge:                   ; preds = %for.cond3.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond3.i.3:                                    ; preds = %for.cond3.i.2
  %call2 = tail call fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext 10, i8 noundef zeroext 7, i16 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.i.preheader, label %for.cond3.i.3.do.end_crit_edge

for.cond3.i.3.do.end_crit_edge:                   ; preds = %for.cond3.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i.preheader:                             ; preds = %for.cond3.i.3
  %call.i33 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp2.i = icmp slt i32 %call.i33, 0
  br i1 %cmp2.i, label %for.body.i.preheader.do.end_crit_edge, label %if.end.i

for.body.i.preheader.do.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %for.body.i.preheader
  %conv4.i = trunc i32 %call.i33 to i8
  %21 = ptrtoint ptr %resp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4.i, ptr %resp, align 1
  %call.i33.1 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.1)
  %cmp2.i.1 = icmp slt i32 %call.i33.1, 0
  br i1 %cmp2.i.1, label %if.end.i.do.end_crit_edge, label %if.end.i.1

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.1:                                       ; preds = %if.end.i
  %conv4.i.1 = trunc i32 %call.i33.1 to i8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.i.1, ptr %3, align 1
  %call.i33.2 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.2)
  %cmp2.i.2 = icmp slt i32 %call.i33.2, 0
  br i1 %cmp2.i.2, label %if.end.i.1.do.end_crit_edge, label %if.end.i.2

if.end.i.1.do.end_crit_edge:                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.2:                                       ; preds = %if.end.i.1
  %conv4.i.2 = trunc i32 %call.i33.2 to i8
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4.i.2, ptr %4, align 1
  %call.i33.3 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.3)
  %cmp2.i.3 = icmp slt i32 %call.i33.3, 0
  br i1 %cmp2.i.3, label %if.end.i.2.do.end_crit_edge, label %if.end.i.3

if.end.i.2.do.end_crit_edge:                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.3:                                       ; preds = %if.end.i.2
  %conv4.i.3 = trunc i32 %call.i33.3 to i8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4.i.3, ptr %5, align 1
  %call.i33.4 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.4)
  %cmp2.i.4 = icmp slt i32 %call.i33.4, 0
  br i1 %cmp2.i.4, label %if.end.i.3.do.end_crit_edge, label %if.end.i.4

if.end.i.3.do.end_crit_edge:                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.4:                                       ; preds = %if.end.i.3
  %conv4.i.4 = trunc i32 %call.i33.4 to i8
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv4.i.4, ptr %6, align 1
  %call.i33.5 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.5)
  %cmp2.i.5 = icmp slt i32 %call.i33.5, 0
  br i1 %cmp2.i.5, label %if.end.i.4.do.end_crit_edge, label %if.end.i.5

if.end.i.4.do.end_crit_edge:                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.5:                                       ; preds = %if.end.i.4
  %conv4.i.5 = trunc i32 %call.i33.5 to i8
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4.i.5, ptr %7, align 1
  %call.i33.6 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.6)
  %cmp2.i.6 = icmp slt i32 %call.i33.6, 0
  br i1 %cmp2.i.6, label %if.end.i.5.do.end_crit_edge, label %if.end.i.6

if.end.i.5.do.end_crit_edge:                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.6:                                       ; preds = %if.end.i.5
  %conv4.i.6 = trunc i32 %call.i33.6 to i8
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i.6, ptr %8, align 1
  %call.i33.7 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.7)
  %cmp2.i.7 = icmp slt i32 %call.i33.7, 0
  br i1 %cmp2.i.7, label %if.end.i.6.do.end_crit_edge, label %if.end.i.7

if.end.i.6.do.end_crit_edge:                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.7:                                       ; preds = %if.end.i.6
  %conv4.i.7 = trunc i32 %call.i33.7 to i8
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4.i.7, ptr %9, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %msg, ptr noundef nonnull dereferenceable(4) %resp, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool14.not = icmp eq i32 %bcmp, 0
  br i1 %tobool14.not, label %out, label %if.end.i.7.do.end_crit_edge

if.end.i.7.do.end_crit_edge:                      ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

out:                                              ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %6, align 1
  %31 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %value, align 4
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  br label %if.end22

do.end:                                           ; preds = %if.end.i.7.do.end_crit_edge, %if.end.i.6.do.end_crit_edge, %if.end.i.5.do.end_crit_edge, %if.end.i.4.do.end_crit_edge, %if.end.i.3.do.end_crit_edge, %if.end.i.2.do.end_crit_edge, %if.end.i.1.do.end_crit_edge, %if.end.i.do.end_crit_edge, %for.body.i.preheader.do.end_crit_edge, %for.cond3.i.3.do.end_crit_edge, %for.cond3.i.2.do.end_crit_edge, %for.cond3.i.1.do.end_crit_edge, %for.cond3.i.do.end_crit_edge, %for.body6.i.preheader.do.end_crit_edge, %for.cond.2.i.do.end_crit_edge, %for.cond.1.i.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end.i.7.do.end_crit_edge ], [ %call2, %for.cond3.i.3.do.end_crit_edge ], [ %call.3.i, %for.cond.2.i.do.end_crit_edge ], [ %call.2.i, %for.cond.1.i.do.end_crit_edge ], [ %call.1.i, %for.cond.i.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ], [ %call.i33, %for.body.i.preheader.do.end_crit_edge ], [ %call.i33.1, %if.end.i.do.end_crit_edge ], [ %call.i33.2, %if.end.i.1.do.end_crit_edge ], [ %call.i33.3, %if.end.i.2.do.end_crit_edge ], [ %call.i33.4, %if.end.i.3.do.end_crit_edge ], [ %call.i33.5, %if.end.i.4.do.end_crit_edge ], [ %call.i33.6, %if.end.i.5.do.end_crit_edge ], [ %call.i33.7, %if.end.i.6.do.end_crit_edge ], [ %call8.i, %for.body6.i.preheader.do.end_crit_edge ], [ %call8.i.1, %for.cond3.i.do.end_crit_edge ], [ %call8.i.2, %for.cond3.i.1.do.end_crit_edge ], [ %call8.i.3, %for.cond3.i.2.do.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.129) #13
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %value, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.end, %out
  %ret.043 = phi i32 [ %ret.0.ph, %do.end ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #10
  ret i32 %ret.043
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg) #10
  %0 = getelementptr inbounds [6 x i8], ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %addr, ptr %msg, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %0, align 2
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cdns_mhdp_mailbox_send.exit_crit_edge

entry.cdns_mhdp_mailbox_send.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cdns_mhdp_mailbox_send.exit_crit_edge

for.cond.i.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cdns_mhdp_mailbox_send.exit_crit_edge

for.cond.1.i.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body6.i, label %for.cond.2.i.cdns_mhdp_mailbox_send.exit_crit_edge

for.cond.2.i.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.body6.i:                                      ; preds = %for.cond.2.i
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg, align 2
  %call8.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i.not = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i.not, label %for.body6.i.1, label %for.body6.i.cdns_mhdp_mailbox_send.exit_crit_edge

for.body6.i.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.body6.i.1:                                    ; preds = %for.body6.i
  %arrayidx7.i.1 = getelementptr inbounds i8, ptr %msg, i32 1
  %5 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.i.1, align 1
  %call8.i.1 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %tobool9.not.i.1.not = icmp eq i32 %call8.i.1, 0
  br i1 %tobool9.not.i.1.not, label %for.body6.i.2, label %for.body6.i.1.cdns_mhdp_mailbox_send.exit_crit_edge

for.body6.i.1.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.body6.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.body6.i.2:                                    ; preds = %for.body6.i.1
  %arrayidx7.i.2 = getelementptr inbounds i8, ptr %msg, i32 2
  %7 = ptrtoint ptr %arrayidx7.i.2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7.i.2, align 2
  %call8.i.2 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2)
  %tobool9.not.i.2.not = icmp eq i32 %call8.i.2, 0
  br i1 %tobool9.not.i.2.not, label %for.body6.i.3, label %for.body6.i.2.cdns_mhdp_mailbox_send.exit_crit_edge

for.body6.i.2.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.body6.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.body6.i.3:                                    ; preds = %for.body6.i.2
  %arrayidx7.i.3 = getelementptr inbounds i8, ptr %msg, i32 3
  %9 = ptrtoint ptr %arrayidx7.i.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7.i.3, align 1
  %call8.i.3 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.3)
  %tobool9.not.i.3.not = icmp eq i32 %call8.i.3, 0
  br i1 %tobool9.not.i.3.not, label %for.body6.i.4, label %for.body6.i.3.cdns_mhdp_mailbox_send.exit_crit_edge

for.body6.i.3.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.body6.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.body6.i.4:                                    ; preds = %for.body6.i.3
  %arrayidx7.i.4 = getelementptr inbounds i8, ptr %msg, i32 4
  %11 = ptrtoint ptr %arrayidx7.i.4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7.i.4, align 2
  %call8.i.4 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.4)
  %tobool9.not.i.4.not = icmp eq i32 %call8.i.4, 0
  br i1 %tobool9.not.i.4.not, label %for.body6.i.5, label %for.body6.i.4.cdns_mhdp_mailbox_send.exit_crit_edge

for.body6.i.4.cdns_mhdp_mailbox_send.exit_crit_edge: ; preds = %for.body6.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_mailbox_send.exit

for.body6.i.5:                                    ; preds = %for.body6.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx7.i.5 = getelementptr inbounds i8, ptr %msg, i32 5
  %13 = ptrtoint ptr %arrayidx7.i.5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i.5, align 1
  %call8.i.5 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %14) #10
  br label %cdns_mhdp_mailbox_send.exit

cdns_mhdp_mailbox_send.exit:                      ; preds = %for.body6.i.5, %for.body6.i.4.cdns_mhdp_mailbox_send.exit_crit_edge, %for.body6.i.3.cdns_mhdp_mailbox_send.exit_crit_edge, %for.body6.i.2.cdns_mhdp_mailbox_send.exit_crit_edge, %for.body6.i.1.cdns_mhdp_mailbox_send.exit_crit_edge, %for.body6.i.cdns_mhdp_mailbox_send.exit_crit_edge, %for.cond.2.i.cdns_mhdp_mailbox_send.exit_crit_edge, %for.cond.1.i.cdns_mhdp_mailbox_send.exit_crit_edge, %for.cond.i.cdns_mhdp_mailbox_send.exit_crit_edge, %entry.cdns_mhdp_mailbox_send.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_mhdp_hdcp_enable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_bridge_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_mhdp_sst_enable(ptr noundef %mhdp, ptr nocapture noundef readonly %mode) unnamed_addr #0 align 64 {
entry:
  %field.i.i = alloca [8 x i8], align 2
  %framer.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %0 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_clock, align 4
  %rate1 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate1, align 4
  %div = udiv i32 %3, 1000
  %display_fmt = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15
  %y_only.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 2
  %4 = ptrtoint ptr %y_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %y_only.i, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bpc.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bpc.i, align 4
  br label %cdns_mhdp_get_bpp.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %display_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %display_fmt, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %9, label %sw.default.i [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i_crit_edge61
    i32 4, label %sw.bb2.i
    i32 8, label %sw.bb5.i
  ]

if.end.i.sw.bb.i_crit_edge61:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge61
  %bpc1.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %bpc1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bpc1.i, align 4
  %mul.i = mul i32 %12, 3
  br label %cdns_mhdp_get_bpp.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpc3.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %bpc3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bpc3.i, align 4
  %mul4.i = shl i32 %14, 1
  br label %cdns_mhdp_get_bpp.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpc6.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %bpc6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bpc6.i, align 4
  %mul7.i = mul i32 %16, 3
  %div34.i = lshr i32 %mul7.i, 1
  br label %cdns_mhdp_get_bpp.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpc8.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %bpc8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bpc8.i, align 4
  %mul9.i = mul i32 %18, 3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1567, i32 noundef 9, ptr noundef null) #10
  br label %cdns_mhdp_get_bpp.exit

cdns_mhdp_get_bpp.exit:                           ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %sw.bb.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %mul9.i, %sw.default.i ], [ %div34.i, %sw.bb5.i ], [ %mul4.i, %sw.bb2.i ], [ %mul.i, %sw.bb.i ]
  %num_lanes = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_lanes, align 8
  %mul4 = mul i32 %20, %div
  %mul = shl i32 %1, 3
  %21 = mul i32 %mul, %retval.0.i
  %mul5 = and i32 %21, -64
  %div6 = udiv i32 %mul5, %mul4
  %div7 = udiv i32 %div6, 1000
  %div6.off = add i32 %div6, -64000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %div6.off)
  %22 = icmp ult i32 %div6.off, 1000
  %spec.select = select i1 %22, i32 63, i32 %div7
  %add = add nuw nsw i32 %spec.select, 1
  %mul8 = shl nuw nsw i32 %add, 8
  %div9 = udiv i32 %mul8, %retval.0.i
  %shl10 = shl i32 %1, 5
  %div11 = sdiv i32 %shl10, 1000
  %div12 = udiv i32 %div11, %div
  %mul14 = mul i32 %add, %div12
  %sub15 = add i32 %mul14, -32
  %div18 = sdiv i32 %sub15, %20
  %sub19 = sub i32 %div9, %div18
  %23 = lshr i32 %sub19, 5
  %add20 = add nuw nsw i32 %23, 2
  %stream_id = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 16
  %24 = ptrtoint ptr %stream_id to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %stream_id, align 8
  %and = and i32 %spec.select, 63
  %or23 = or i32 %and, 49152
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8712, i32 noundef %or23)
  %and25 = and i32 %add20, 63
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 12388, i32 noundef %and25)
  %sub27 = sub nsw i32 64, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub27)
  %cmp28 = icmp ugt i32 %sub27, 3
  %phi.bo = shl nsw i32 %sub27, 8
  %cond = select i1 %cmp28, i32 0, i32 %phi.bo
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 12332, i32 noundef %cond)
  %25 = ptrtoint ptr %stream_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stream_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %framer.i) #10
  %27 = ptrtoint ptr %framer.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %framer.i, align 4, !annotation !386
  %28 = ptrtoint ptr %display_fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %display_fmt, align 4
  %bpc3.i57 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 15, i32 1
  %30 = ptrtoint ptr %bpc3.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bpc3.i57, align 4
  %32 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %29, label %cdns_mhdp_get_bpp.exit.if.end.i58_crit_edge [
    i32 2, label %cdns_mhdp_get_bpp.exit.land.lhs.true.i_crit_edge
    i32 4, label %cdns_mhdp_get_bpp.exit.land.lhs.true.i_crit_edge62
  ]

cdns_mhdp_get_bpp.exit.land.lhs.true.i_crit_edge62: ; preds = %cdns_mhdp_get_bpp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

cdns_mhdp_get_bpp.exit.land.lhs.true.i_crit_edge: ; preds = %cdns_mhdp_get_bpp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

cdns_mhdp_get_bpp.exit.if.end.i58_crit_edge:      ; preds = %cdns_mhdp_get_bpp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i58

land.lhs.true.i:                                  ; preds = %cdns_mhdp_get_bpp.exit.land.lhs.true.i_crit_edge, %cdns_mhdp_get_bpp.exit.land.lhs.true.i_crit_edge62
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %33 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %crtc_vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 719, i16 %34)
  %cmp5.i = icmp ugt i16 %34, 719
  %spec.select.i = select i1 %cmp5.i, i32 16, i32 0
  br label %if.end.i58

if.end.i58:                                       ; preds = %land.lhs.true.i, %cdns_mhdp_get_bpp.exit.if.end.i58_crit_edge
  %misc0.0.i = phi i32 [ 0, %cdns_mhdp_get_bpp.exit.if.end.i58_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %35 = ptrtoint ptr %y_only.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %y_only.i, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i58.cdns_mhdp_get_bpp.exit.i_crit_edge

if.end.i58.cdns_mhdp_get_bpp.exit.i_crit_edge:    ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_get_bpp.exit.i

if.end.i.i:                                       ; preds = %if.end.i58
  %37 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %29, label %sw.default.i.i [
    i32 1, label %if.end.i.i.sw.bb.i.i_crit_edge
    i32 2, label %if.end.i.i.sw.bb.i.i_crit_edge63
    i32 4, label %cdns_mhdp_get_bpp.exit.thread.i
    i32 8, label %cdns_mhdp_get_bpp.exit.thread383.i
  ]

if.end.i.i.sw.bb.i.i_crit_edge63:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge63
  %mul.i.i = mul i32 %31, 3
  br label %cdns_mhdp_get_bpp.exit.i

cdns_mhdp_get_bpp.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul4.i.i = shl i32 %31, 1
  br label %sw.bb10.i

cdns_mhdp_get_bpp.exit.thread383.i:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul7.i.i = mul i32 %31, 3
  %div34.i.i = lshr i32 %mul7.i.i, 1
  br label %sw.bb12.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul9.i.i = mul i32 %31, 3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1567, i32 noundef 9, ptr noundef null) #10
  br label %cdns_mhdp_get_bpp.exit.i

cdns_mhdp_get_bpp.exit.i:                         ; preds = %sw.default.i.i, %sw.bb.i.i, %if.end.i58.cdns_mhdp_get_bpp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul9.i.i, %sw.default.i.i ], [ %mul.i.i, %sw.bb.i.i ], [ %31, %if.end.i58.cdns_mhdp_get_bpp.exit.i_crit_edge ]
  %38 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %29, label %sw.default.i59 [
    i32 1, label %cdns_mhdp_get_bpp.exit.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb8.i
    i32 4, label %cdns_mhdp_get_bpp.exit.i.sw.bb10.i_crit_edge
    i32 8, label %cdns_mhdp_get_bpp.exit.i.sw.bb12.i_crit_edge
  ]

cdns_mhdp_get_bpp.exit.i.sw.bb12.i_crit_edge:     ; preds = %cdns_mhdp_get_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

cdns_mhdp_get_bpp.exit.i.sw.bb10.i_crit_edge:     ; preds = %cdns_mhdp_get_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10.i

cdns_mhdp_get_bpp.exit.i.sw.epilog.i_crit_edge:   ; preds = %cdns_mhdp_get_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %cdns_mhdp_get_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %or9.i = or i32 %misc0.0.i, 12
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %cdns_mhdp_get_bpp.exit.i.sw.bb10.i_crit_edge, %cdns_mhdp_get_bpp.exit.thread.i
  %retval.0.i381.i = phi i32 [ %mul4.i.i, %cdns_mhdp_get_bpp.exit.thread.i ], [ %retval.0.i.i, %cdns_mhdp_get_bpp.exit.i.sw.bb10.i_crit_edge ]
  %or11.i = or i32 %misc0.0.i, 10
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %cdns_mhdp_get_bpp.exit.i.sw.bb12.i_crit_edge, %cdns_mhdp_get_bpp.exit.thread383.i
  %retval.0.i385.i = phi i32 [ %div34.i.i, %cdns_mhdp_get_bpp.exit.thread383.i ], [ %retval.0.i.i, %cdns_mhdp_get_bpp.exit.i.sw.bb12.i_crit_edge ]
  br label %sw.epilog.i

sw.default.i59:                                   ; preds = %cdns_mhdp_get_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i59, %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %cdns_mhdp_get_bpp.exit.i.sw.epilog.i_crit_edge
  %retval.0.i382.i = phi i32 [ %retval.0.i.i, %sw.default.i59 ], [ %retval.0.i385.i, %sw.bb12.i ], [ %retval.0.i381.i, %sw.bb10.i ], [ %retval.0.i.i, %sw.bb8.i ], [ %retval.0.i.i, %cdns_mhdp_get_bpp.exit.i.sw.epilog.i_crit_edge ]
  %misc0.1.i = phi i32 [ %misc0.0.i, %sw.default.i59 ], [ %misc0.0.i, %sw.bb12.i ], [ %or11.i, %sw.bb10.i ], [ %or9.i, %sw.bb8.i ], [ %misc0.0.i, %cdns_mhdp_get_bpp.exit.i.sw.epilog.i_crit_edge ]
  %pxl_repr.0.i = phi i32 [ 4096, %sw.default.i59 ], [ 2048, %sw.bb12.i ], [ 1024, %sw.bb10.i ], [ 512, %sw.bb8.i ], [ 256, %cdns_mhdp_get_bpp.exit.i.sw.epilog.i_crit_edge ]
  %39 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %31, label %sw.epilog.i.sw.epilog28.i_crit_edge [
    i32 6, label %sw.bb13.i
    i32 8, label %sw.bb16.i
    i32 10, label %sw.bb19.i
    i32 12, label %sw.bb22.i
    i32 16, label %sw.bb25.i
  ]

sw.epilog.i.sw.epilog28.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28.i

sw.bb13.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %or15.i = or i32 %pxl_repr.0.i, 1
  br label %sw.epilog28.i

sw.bb16.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %or17.i = or i32 %misc0.1.i, 32
  %or18.i = or i32 %pxl_repr.0.i, 2
  br label %sw.epilog28.i

sw.bb19.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %or20.i = or i32 %misc0.1.i, 64
  %or21.i = or i32 %pxl_repr.0.i, 4
  br label %sw.epilog28.i

sw.bb22.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %or23.i = or i32 %misc0.1.i, 96
  %or24.i = or i32 %pxl_repr.0.i, 8
  br label %sw.epilog28.i

sw.bb25.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %or26.i = or i32 %misc0.1.i, 128
  %or27.i = or i32 %pxl_repr.0.i, 16
  br label %sw.epilog28.i

sw.epilog28.i:                                    ; preds = %sw.bb25.i, %sw.bb22.i, %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.epilog.i.sw.epilog28.i_crit_edge
  %misc0.2.i = phi i32 [ %misc0.1.i, %sw.epilog.i.sw.epilog28.i_crit_edge ], [ %or26.i, %sw.bb25.i ], [ %or23.i, %sw.bb22.i ], [ %or20.i, %sw.bb19.i ], [ %or17.i, %sw.bb16.i ], [ %misc0.1.i, %sw.bb13.i ]
  %pxl_repr.1.i = phi i32 [ %pxl_repr.0.i, %sw.epilog.i.sw.epilog28.i_crit_edge ], [ %or27.i, %sw.bb25.i ], [ %or24.i, %sw.bb22.i ], [ %or21.i, %sw.bb19.i ], [ %or18.i, %sw.bb16.i ], [ %or15.i, %sw.bb13.i ]
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i60 = icmp eq i32 %and.i, 0
  %spec.select377.i = select i1 %tobool.not.i60, i32 8192, i32 12288
  %conv32.i = zext i8 %26 to i16
  %42 = shl nuw nsw i16 %conv32.i, 5
  %conv34.i = add nuw nsw i16 %42, 2816
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv34.i, i32 noundef %spec.select377.i) #10
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %and37.i = and i32 %44, 2
  %and43.i = lshr i32 %44, 1
  %45 = and i32 %and43.i, 4
  %46 = or i32 %45, %and37.i
  %conv52.i = add nuw nsw i16 %42, 2832
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv52.i, i32 noundef %46) #10
  %mul55.i = shl nuw nsw i16 %conv32.i, 7
  %conv58.i = add nuw i16 %mul55.i, 12364
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv58.i, i32 noundef %pxl_repr.1.i) #10
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %and61.i = lshr i32 %48, 2
  %49 = and i32 %and61.i, 4
  %and67.i = and i32 %48, 2
  %50 = or i32 %49, %and67.i
  %and73.i = lshr i32 %48, 3
  %51 = and i32 %and73.i, 1
  %52 = or i32 %50, %51
  %conv82.i = add nuw i16 %mul55.i, 12368
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv82.i, i32 noundef %52) #10
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %53 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv84.i = zext i16 %54 to i32
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %55 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv85.i = zext i16 %56 to i32
  %sub.i = sub nsw i32 %conv84.i, %conv85.i
  %crtc_htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %57 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %crtc_htotal.i, align 2
  %conv86.i = zext i16 %58 to i32
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %59 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv87.i = zext i16 %60 to i32
  %sub88.i = sub nsw i32 %conv86.i, %conv87.i
  %conv93.i = add nuw i16 %mul55.i, 12408
  %shl.i = shl i32 %sub.i, 16
  %or94.i = or i32 %sub88.i, %shl.i
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv93.i, i32 noundef %or94.i) #10
  %conv100.i = add nuw i16 %mul55.i, 12412
  %61 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv102.i = zext i16 %62 to i32
  %mul103.i = mul i32 %retval.0.i382.i, %conv102.i
  %div376.i = lshr i32 %mul103.i, 3
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv100.i, i32 noundef %div376.i) #10
  %63 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %crtc_htotal.i, align 2
  %conv106.i = zext i16 %64 to i32
  %65 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv108.i = zext i16 %66 to i32
  %sub109.i = sub nsw i32 %conv106.i, %conv108.i
  %conv114.i = add nuw i16 %mul55.i, 12288
  %shl117.i = shl i32 %sub109.i, 16
  %or118.i = or i32 %shl117.i, %conv106.i
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv114.i, i32 noundef %or118.i) #10
  %67 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv121.i = zext i16 %68 to i32
  %69 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv123.i = zext i16 %70 to i32
  %sub124.i = sub nsw i32 %conv121.i, %conv123.i
  %71 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv126.i = zext i16 %72 to i32
  %shl127.i = shl nuw i32 %conv126.i, 16
  %or128.i = or i32 %shl127.i, %sub124.i
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 4
  %and130.i = shl i32 %74, 14
  %75 = and i32 %and130.i, 32768
  %76 = or i32 %or128.i, %75
  %conv139.i = add nuw i16 %mul55.i, 12292
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv139.i, i32 noundef %76) #10
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %77 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %crtc_vtotal.i, align 4
  %conv141.i = zext i16 %78 to i32
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %79 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv142.i = zext i16 %80 to i32
  %sub143.i = sub nsw i32 %conv141.i, %conv142.i
  %conv148.i = add nuw i16 %mul55.i, 12296
  %shl151.i = shl i32 %sub143.i, 16
  %or152.i = or i32 %shl151.i, %conv141.i
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv148.i, i32 noundef %or152.i) #10
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %81 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv154.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv156.i = zext i16 %84 to i32
  %sub157.i = sub nsw i32 %conv154.i, %conv156.i
  %crtc_vdisplay158.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %85 = ptrtoint ptr %crtc_vdisplay158.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %crtc_vdisplay158.i, align 2
  %conv159.i = zext i16 %86 to i32
  %shl160.i = shl nuw i32 %conv159.i, 16
  %or161.i = or i32 %shl160.i, %sub157.i
  %87 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i, align 4
  %and163.i = shl i32 %88, 12
  %89 = and i32 %and163.i, 32768
  %90 = or i32 %or161.i, %89
  %conv172.i = add nuw i16 %mul55.i, 12300
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv172.i, i32 noundef %90) #10
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 4
  %and175.i = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %sw.epilog28.i.if.end183.i_crit_edge, label %land.lhs.true177.i

sw.epilog28.i.if.end183.i_crit_edge:              ; preds = %sw.epilog28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183.i

land.lhs.true177.i:                               ; preds = %sw.epilog28.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %crtc_vtotal.i, align 4
  %95 = shl i16 %94, 9
  %96 = and i16 %95, 512
  %97 = xor i16 %96, 512
  %phi.bo.i = zext i16 %97 to i32
  br label %if.end183.i

if.end183.i:                                      ; preds = %land.lhs.true177.i, %sw.epilog28.i.if.end183.i_crit_edge
  %misc1.0.i = phi i32 [ 0, %sw.epilog28.i.if.end183.i_crit_edge ], [ %phi.bo.i, %land.lhs.true177.i ]
  %98 = ptrtoint ptr %y_only.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %y_only.i, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool185.not.i = icmp eq i8 %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp189.i = icmp eq i32 %29, 8
  %conv197.i = add nuw i16 %mul55.i, 12304
  %100 = or i32 %misc1.0.i, 32768
  %spec.select379.op.i = select i1 %tobool185.not.i, i32 %misc1.0.i, i32 %100
  %shl198.i = select i1 %cmp189.i, i32 16384, i32 %spec.select379.op.i
  %or199.i = or i32 %shl198.i, %misc0.2.i
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv197.i, i32 noundef %or199.i) #10
  %conv205.i = add nuw i16 %mul55.i, 12336
  %101 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv207.i = zext i16 %102 to i32
  %shl208.i = shl nuw i32 %conv207.i, 16
  %or209.i = or i32 %shl208.i, %sub124.i
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv205.i, i32 noundef %or209.i) #10
  %conv215.i = add nuw i16 %mul55.i, 12340
  %103 = ptrtoint ptr %crtc_vdisplay158.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %crtc_vdisplay158.i, align 2
  %conv217.i = zext i16 %104 to i32
  %or219.i = or i32 %shl151.i, %conv217.i
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv215.i, i32 noundef %or219.i) #10
  %105 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %crtc_vtotal.i, align 4
  %conv222.i = zext i16 %106 to i32
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i, align 4
  %and224.i = and i32 %108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224.i)
  %tobool225.not.i = icmp ne i32 %and224.i, 0
  %rem229.i = and i32 %conv222.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem229.i)
  %cmp230.i = icmp eq i32 %rem229.i, 0
  %or.cond.i = select i1 %tobool225.not.i, i1 %cmp230.i, i1 false
  %or233.i = or i32 %conv222.i, 65536
  %dp_vertical_1.0.i = select i1 %or.cond.i, i32 %or233.i, i32 %conv222.i
  %conv239.i = add nuw i16 %mul55.i, 12344
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext %conv239.i, i32 noundef %dp_vertical_1.0.i) #10
  %conv245.i = add nuw i16 %mul55.i, 12392
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i, align 4
  %and247.i = lshr i32 %110, 2
  %111 = and i32 %and247.i, 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %field.i.i) #10
  %112 = getelementptr inbounds [8 x i8], ptr %field.i.i, i32 0, i32 2
  %113 = getelementptr inbounds [8 x i8], ptr %field.i.i, i32 0, i32 3
  %114 = getelementptr inbounds [8 x i8], ptr %field.i.i, i32 0, i32 4
  %115 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv245.i, ptr %field.i.i, align 2
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 2, ptr %112, align 2
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %113, align 1
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %111, ptr %114, align 2
  %mbox_mutex.i.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i.i, i32 noundef 0) #10
  %call.i.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %if.end183.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge

if.end183.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.cond.i.i.i:                                   ; preds = %if.end183.i
  %call.1.i.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i32 %call.1.i.i.i, 0
  br i1 %tobool.not.1.i.i.i, label %for.cond.1.i.i.i, label %for.cond.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.cond.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call.2.i.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i.i)
  %tobool.not.2.i.i.i = icmp eq i32 %call.2.i.i.i, 0
  br i1 %tobool.not.2.i.i.i, label %for.cond.2.i.i.i, label %for.cond.1.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.cond.1.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  %call.3.i.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i.i)
  %tobool.not.3.i.i.i = icmp eq i32 %call.3.i.i.i, 0
  br i1 %tobool.not.3.i.i.i, label %for.body6.i.i.i, label %for.cond.2.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.cond.2.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.cond.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i:                                  ; preds = %for.cond.2.i.i.i
  %119 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %field.i.i, align 2
  %call8.i.i.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %120) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool9.not.i.i.i.not = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool9.not.i.i.i.not, label %for.body6.i.i.i.1, label %for.body6.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.body6.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i.1:                                ; preds = %for.body6.i.i.i
  %arrayidx7.i.i.i.1 = getelementptr inbounds i8, ptr %field.i.i, i32 1
  %121 = ptrtoint ptr %arrayidx7.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx7.i.i.i.1, align 1
  %call8.i.i.i.1 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.1)
  %tobool9.not.i.i.i.1.not = icmp eq i32 %call8.i.i.i.1, 0
  br i1 %tobool9.not.i.i.i.1.not, label %for.body6.i.i.i.2, label %for.body6.i.i.i.1.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.body6.i.i.i.1.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.body6.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i.2:                                ; preds = %for.body6.i.i.i.1
  %arrayidx7.i.i.i.2 = getelementptr inbounds i8, ptr %field.i.i, i32 2
  %123 = ptrtoint ptr %arrayidx7.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx7.i.i.i.2, align 2
  %call8.i.i.i.2 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %124) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.2)
  %tobool9.not.i.i.i.2.not = icmp eq i32 %call8.i.i.i.2, 0
  br i1 %tobool9.not.i.i.i.2.not, label %for.body6.i.i.i.3, label %for.body6.i.i.i.2.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.body6.i.i.i.2.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.body6.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i.3:                                ; preds = %for.body6.i.i.i.2
  %arrayidx7.i.i.i.3 = getelementptr inbounds i8, ptr %field.i.i, i32 3
  %125 = ptrtoint ptr %arrayidx7.i.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx7.i.i.i.3, align 1
  %call8.i.i.i.3 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %126) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.3)
  %tobool9.not.i.i.i.3.not = icmp eq i32 %call8.i.i.i.3, 0
  br i1 %tobool9.not.i.i.i.3.not, label %for.body6.i.i.i.4, label %for.body6.i.i.i.3.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.body6.i.i.i.3.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.body6.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i.4:                                ; preds = %for.body6.i.i.i.3
  %arrayidx7.i.i.i.4 = getelementptr inbounds i8, ptr %field.i.i, i32 4
  %127 = ptrtoint ptr %arrayidx7.i.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx7.i.i.i.4, align 2
  %call8.i.i.i.4 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.4)
  %tobool9.not.i.i.i.4.not = icmp eq i32 %call8.i.i.i.4, 0
  br i1 %tobool9.not.i.i.i.4.not, label %for.body6.i.i.i.5, label %for.body6.i.i.i.4.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.body6.i.i.i.4.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.body6.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i.5:                                ; preds = %for.body6.i.i.i.4
  %arrayidx7.i.i.i.5 = getelementptr inbounds i8, ptr %field.i.i, i32 5
  %129 = ptrtoint ptr %arrayidx7.i.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx7.i.i.i.5, align 1
  %call8.i.i.i.5 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %130) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.5)
  %tobool9.not.i.i.i.5.not = icmp eq i32 %call8.i.i.i.5, 0
  br i1 %tobool9.not.i.i.i.5.not, label %for.body6.i.i.i.6, label %for.body6.i.i.i.5.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.body6.i.i.i.5.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.body6.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i.6:                                ; preds = %for.body6.i.i.i.5
  %arrayidx7.i.i.i.6 = getelementptr inbounds i8, ptr %field.i.i, i32 6
  %131 = ptrtoint ptr %arrayidx7.i.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx7.i.i.i.6, align 2
  %call8.i.i.i.6 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %132) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.6)
  %tobool9.not.i.i.i.6.not = icmp eq i32 %call8.i.i.i.6, 0
  br i1 %tobool9.not.i.i.i.6.not, label %for.body6.i.i.i.7, label %for.body6.i.i.i.6.cdns_mhdp_reg_write_bit.exit.i_crit_edge

for.body6.i.i.i.6.cdns_mhdp_reg_write_bit.exit.i_crit_edge: ; preds = %for.body6.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_reg_write_bit.exit.i

for.body6.i.i.i.7:                                ; preds = %for.body6.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx7.i.i.i.7 = getelementptr inbounds i8, ptr %field.i.i, i32 7
  %133 = ptrtoint ptr %arrayidx7.i.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx7.i.i.i.7, align 1
  %call8.i.i.i.7 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %134) #10
  br label %cdns_mhdp_reg_write_bit.exit.i

cdns_mhdp_reg_write_bit.exit.i:                   ; preds = %for.body6.i.i.i.7, %for.body6.i.i.i.6.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.body6.i.i.i.5.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.body6.i.i.i.4.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.body6.i.i.i.3.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.body6.i.i.i.2.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.body6.i.i.i.1.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.body6.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.cond.2.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.cond.1.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %for.cond.i.i.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge, %if.end183.i.cdns_mhdp_reg_write_bit.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %field.i.i) #10
  %call250.i = call fastcc i32 @cdns_mhdp_reg_read(ptr noundef %mhdp, i32 noundef 8704, ptr noundef nonnull %framer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250.i)
  %cmp251.i = icmp slt i32 %call250.i, 0
  br i1 %cmp251.i, label %do.end.i, label %if.end254.i

do.end.i:                                         ; preds = %cdns_mhdp_reg_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %135 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.87, i32 noundef %call250.i) #13
  br label %cdns_mhdp_configure_video.exit

if.end254.i:                                      ; preds = %cdns_mhdp_reg_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %framer.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %framer.i, align 4
  %or255.i = and i32 %138, -41
  %and256.i = or i32 %or255.i, 8
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8704, i32 noundef %and256.i) #10
  br label %cdns_mhdp_configure_video.exit

cdns_mhdp_configure_video.exit:                   ; preds = %if.end254.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %framer.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_link_training(ptr noundef %mhdp, i32 noundef %training_interval) unnamed_addr #0 align 64 {
entry:
  %value.addr.i222 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  %reg32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32) #10
  %0 = ptrtoint ptr %reg32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg32, align 4, !annotation !386
  %pattern_supp.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 4
  %1 = ptrtoint ptr %pattern_supp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pattern_supp.i, align 1
  %pattern_supp1.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %pattern_supp1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pattern_supp1.i, align 1
  %and5.i = and i8 %4, %2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and5.i)
  %tobool.not.i.i = icmp eq i8 %and5.i, 0
  %5 = tail call i8 @llvm.ctlz.i8(i8 %and5.i, i1 true) #10, !range !390
  %6 = sub nuw nsw i8 8, %5
  %conv3.i = select i1 %tobool.not.i.i, i8 0, i8 %6
  %rate = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %num_lanes = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %host.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13
  %sink.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14
  %lanes_cnt.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 1
  %lanes_cnt1.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call1 = tail call fastcc zeroext i1 @cdns_mhdp_link_training_cr(ptr noundef %mhdp)
  br i1 %call1, label %if.end42, label %if.then

if.then:                                          ; preds = %while.cond
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 4
  %call2 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %call2)
  %cmp.not = icmp eq i8 %call2, 6
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !365

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_training.__UNIQUE_ID_ddebug329, ptr noundef %10, ptr noundef nonnull @.str.98) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate, align 4
  %call.i = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %12) #10
  %13 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %call.i, label %do.end.while.cond.backedge_crit_edge [
    i8 10, label %do.end.sw.epilog.sink.split.i_crit_edge
    i8 20, label %sw.bb3.i
    i8 30, label %sw.bb6.i
  ]

do.end.sw.epilog.sink.split.i_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

do.end.while.cond.backedge_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb6.i, %sw.bb3.i, %do.end.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 20, %sw.bb6.i ], [ 10, %sw.bb3.i ], [ 6, %do.end.sw.epilog.sink.split.i_crit_edge ]
  %call7.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %.sink.i) #10
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call7.i, ptr %rate, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cdns_mhdp_lower_link_rate.exit220, %do.end67, %do.end30, %sw.epilog.sink.split.i, %do.end.while.cond.backedge_crit_edge
  br label %while.cond

if.else:                                          ; preds = %if.then
  %15 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp11 = icmp ugt i32 %16, 1
  br i1 %cmp11, label %do.body14, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body14:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training, %if.then26)) #10
          to label %do.end30 [label %if.then26], !srcloc !365

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_training.__UNIQUE_ID_ddebug330, ptr noundef %18, ptr noundef nonnull @.str.99) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %19 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_lanes, align 8
  %shr = lshr i32 %20, 1
  store i32 %shr, ptr %num_lanes, align 8
  %21 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host.i, align 8
  %23 = ptrtoint ptr %sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sink.i, align 8
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24) #10
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rate, align 4
  br label %while.cond.backedge

if.end42:                                         ; preds = %while.cond
  %call43 = tail call fastcc zeroext i1 @cdns_mhdp_link_training_channel_eq(ptr noundef %mhdp, i8 noundef zeroext %conv3.i, i32 noundef %training_interval)
  br i1 %call43, label %do.body107, label %if.end45

if.end45:                                         ; preds = %if.end42
  %27 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp48 = icmp ugt i32 %28, 1
  br i1 %cmp48, label %do.body51, label %if.else71

do.body51:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training, %if.then63)) #10
          to label %do.end67 [label %if.then63], !srcloc !365

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_training.__UNIQUE_ID_ddebug331, ptr noundef %30, ptr noundef nonnull @.str.101) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %31 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_lanes, align 8
  %shr70 = lshr i32 %32, 1
  store i32 %shr70, ptr %num_lanes, align 8
  br label %while.cond.backedge

if.else71:                                        ; preds = %if.end45
  %33 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate, align 4
  %call74 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %34) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %call74)
  %cmp76.not = icmp eq i8 %call74, 6
  br i1 %cmp76.not, label %if.else71.err_crit_edge, label %do.body79

if.else71.err_crit_edge:                          ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body79:                                        ; preds = %if.else71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training, %if.then91)) #10
          to label %do.end95 [label %if.then91], !srcloc !365

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_training.__UNIQUE_ID_ddebug332, ptr noundef %36, ptr noundef nonnull @.str.102) #10
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.body79
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate, align 4
  %call.i214 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %38) #10
  %39 = zext i8 %call.i214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %call.i214, label %do.end95.cdns_mhdp_lower_link_rate.exit220_crit_edge [
    i8 10, label %do.end95.sw.epilog.sink.split.i219_crit_edge
    i8 20, label %sw.bb3.i215
    i8 30, label %sw.bb6.i216
  ]

do.end95.sw.epilog.sink.split.i219_crit_edge:     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i219

do.end95.cdns_mhdp_lower_link_rate.exit220_crit_edge: ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_lower_link_rate.exit220

sw.bb3.i215:                                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i219

sw.bb6.i216:                                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i219

sw.epilog.sink.split.i219:                        ; preds = %sw.bb6.i216, %sw.bb3.i215, %do.end95.sw.epilog.sink.split.i219_crit_edge
  %.sink.i217 = phi i8 [ 20, %sw.bb6.i216 ], [ 10, %sw.bb3.i215 ], [ 6, %do.end95.sw.epilog.sink.split.i219_crit_edge ]
  %call7.i218 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %.sink.i217) #10
  %40 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call7.i218, ptr %rate, align 4
  br label %cdns_mhdp_lower_link_rate.exit220

cdns_mhdp_lower_link_rate.exit220:                ; preds = %sw.epilog.sink.split.i219, %do.end95.cdns_mhdp_lower_link_rate.exit220_crit_edge
  %41 = ptrtoint ptr %lanes_cnt.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lanes_cnt.i, align 4
  %43 = ptrtoint ptr %lanes_cnt1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lanes_cnt1.i, align 4
  %45 = tail call i8 @llvm.umin.i8(i8 %42, i8 %44) #10
  %conv98 = zext i8 %45 to i32
  %46 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv98, ptr %num_lanes, align 8
  br label %while.cond.backedge

do.body107:                                       ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training, %if.then119)) #10
          to label %do.end127 [label %if.then119], !srcloc !365

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_lanes, align 8
  %51 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rate, align 4
  %div = udiv i32 %52, 100
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_training.__UNIQUE_ID_ddebug333, ptr noundef %48, ptr noundef nonnull @.str.106, i32 noundef %50, i32 noundef %div) #10
  br label %do.end127

do.end127:                                        ; preds = %if.then119, %do.body107
  %aux = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 12
  %scrambler = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 8
  %53 = ptrtoint ptr %scrambler to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %scrambler, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool128.not = icmp eq i8 %54, 0
  %conv130 = select i1 %tobool128.not, i8 32, i8 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %55 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv130, ptr %value.addr.i, align 1
  %call.i221 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 258, ptr noundef nonnull %value.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  %call132 = call fastcc i32 @cdns_mhdp_reg_read(ptr noundef %mhdp, i32 noundef 8704, ptr noundef nonnull %reg32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %do.end138, label %if.end140

do.end138:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.87, i32 noundef %call132) #13
  br label %cleanup

if.end140:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %reg32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg32, align 4
  %and = and i32 %59, -140
  %60 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_lanes, align 8
  %sub = add i32 %61, -1
  %or = or i32 %and, %sub
  %or144 = or i32 %or, 136
  call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8704, i32 noundef %or144)
  %62 = ptrtoint ptr %scrambler to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %scrambler, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool148.not = icmp eq i8 %63, 0
  %spec.store.select = select i1 %tobool148.not, i32 856098, i32 856066
  call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8192, i32 noundef %spec.store.select)
  br label %cleanup

err:                                              ; preds = %if.else71.err_crit_edge, %if.else.err_crit_edge
  %.str.104.sink = phi ptr [ @.str.100, %if.else.err_crit_edge ], [ @.str.104, %if.else71.err_crit_edge ]
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull %.str.104.sink) #13
  %scrambler154 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 8
  %66 = ptrtoint ptr %scrambler154 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %scrambler154, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool155.not = icmp eq i8 %67, 0
  %spec.store.select200 = select i1 %tobool155.not, i32 856098, i32 856066
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8192, i32 noundef %spec.store.select200)
  %aux160 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i222)
  %68 = ptrtoint ptr %value.addr.i222 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %value.addr.i222, align 1
  %call.i223 = call i32 @drm_dp_dpcd_write(ptr noundef %aux160, i32 noundef 258, ptr noundef nonnull %value.addr.i222, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i222)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end140, %do.end138
  %retval.0 = phi i32 [ %call132, %do.end138 ], [ 0, %if.end140 ], [ -5, %err ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cdns_mhdp_link_training_cr(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  %vs.i120 = alloca [8 x i8], align 8
  %pe.i121 = alloca [8 x i8], align 8
  %vs.i = alloca [8 x i8], align 8
  %pe.i = alloca [8 x i8], align 8
  %value.addr.i60.i = alloca i8, align 1
  %values.i.i = alloca [2 x i8], align 1
  %value.addr.i.i = alloca i8, align 1
  %phy_cfg.i = alloca %union.phy_configure_opts, align 4
  %lanes_data = alloca [4 x i8], align 4
  %link_status = alloca [6 x i8], align 1
  %phy_cfg = alloca %union.phy_configure_opts, align 4
  %requested_adjust_volt_swing = alloca [4 x i8], align 4
  %requested_adjust_pre_emphasis = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lanes_data) #10
  %0 = ptrtoint ptr %lanes_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lanes_data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status) #10
  %1 = call ptr @memset(ptr %link_status, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %phy_cfg) #10
  %2 = call ptr @memset(ptr %phy_cfg, i32 255, i32 100)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_training_cr.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training_cr, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_training_cr.__UNIQUE_ID_ddebug328, ptr noundef %4, ptr noundef nonnull @.str.110) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %phy_cfg.i) #10
  %5 = getelementptr inbounds i8, ptr %phy_cfg.i, i32 40
  %6 = call ptr @memset(ptr %5, i32 255, i32 60)
  %aux.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  %7 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %value.addr.i.i, align 1
  %call.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 258, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  %scrambler.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 8
  %8 = ptrtoint ptr %scrambler.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scrambler.i, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %spec.select.i = select i1 %tobool.not.i, i32 856098, i32 856066
  call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8192, i32 noundef %spec.select.i) #10
  %enhanced.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %enhanced.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enhanced.i, align 1, !range !373
  %enhanced4.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 7
  %12 = ptrtoint ptr %enhanced4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enhanced4.i, align 2, !range !373
  %and57.i = and i8 %13, %11
  %and.i = zext i8 %and57.i to i32
  call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8964, i32 noundef %and.i) #10
  %num_lanes.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_lanes.i, align 8
  %sub8.i = sub i32 32, %15
  %shr.i = lshr i32 -1, %sub8.i
  call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8960, i32 noundef %shr.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %values.i.i) #10
  %16 = getelementptr inbounds [2 x i8], ptr %values.i.i, i32 0, i32 1
  %rate.i.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate.i.i, align 4
  %call.i58.i = call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %18) #10
  %19 = ptrtoint ptr %values.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call.i58.i, ptr %values.i.i, align 1
  %20 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_lanes.i, align 4
  %conv.i.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i.i, ptr %16, align 1
  %capabilities.i.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 3
  %23 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capabilities.i.i, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.cdns_mhdp_link_configure.exit.i_crit_edge, label %if.then.i.i

do.end.cdns_mhdp_link_configure.exit.i_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_link_configure.exit.i

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i.i = or i8 %conv.i.i, -128
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv4.i.i, ptr %16, align 1
  br label %cdns_mhdp_link_configure.exit.i

cdns_mhdp_link_configure.exit.i:                  ; preds = %if.then.i.i, %do.end.cdns_mhdp_link_configure.exit.i_crit_edge
  %call5.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 256, ptr noundef nonnull %values.i.i, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %values.i.i) #10
  %26 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rate.i.i, align 4
  %div.i = udiv i32 %27, 100
  %28 = ptrtoint ptr %phy_cfg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %phy_cfg.i, align 4
  %29 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_lanes.i, align 8
  %lanes.i = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %phy_cfg.i, i32 0, i32 1
  %31 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %lanes.i, align 4
  %voltage.i = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %phy_cfg.i, i32 0, i32 2
  %ssc.i.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 9
  %32 = call ptr @memset(ptr %voltage.i, i32 0, i32 32)
  %33 = ptrtoint ptr %ssc.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ssc.i.i, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i59.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i59.i, label %cdns_mhdp_get_ssc_supported.exit.thread.i, label %cdns_mhdp_get_ssc_supported.exit.i

cdns_mhdp_get_ssc_supported.exit.thread.i:        ; preds = %cdns_mhdp_link_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load63.i = load i8, ptr %5, align 4
  br label %39

cdns_mhdp_get_ssc_supported.exit.i:               ; preds = %cdns_mhdp_link_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ssc1.i.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 5
  %36 = ptrtoint ptr %ssc1.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ssc1.i.i, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.i.not.i = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %5, align 4
  %spec.select66.i = select i1 %tobool2.i.not.i, i8 0, i8 -128
  br label %39

39:                                               ; preds = %cdns_mhdp_get_ssc_supported.exit.i, %cdns_mhdp_get_ssc_supported.exit.thread.i
  %bf.load65.i = phi i8 [ %bf.load63.i, %cdns_mhdp_get_ssc_supported.exit.thread.i ], [ %bf.load.i, %cdns_mhdp_get_ssc_supported.exit.i ]
  %40 = phi i8 [ 0, %cdns_mhdp_get_ssc_supported.exit.thread.i ], [ %spec.select66.i, %cdns_mhdp_get_ssc_supported.exit.i ]
  %bf.clear.i = and i8 %bf.load65.i, 15
  %bf.set.i = or i8 %bf.clear.i, %40
  %bf.set28.i = or i8 %bf.set.i, 112
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.set28.i, ptr %5, align 4
  %phy.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 5
  %42 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy.i, align 4
  %call29.i = call i32 @phy_configure(ptr noundef %43, ptr noundef nonnull %phy_cfg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end6, label %cdns_mhdp_link_training_init.exit

cdns_mhdp_link_training_init.exit:                ; preds = %39
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.117, i32 noundef %call29.i) #13
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %phy_cfg.i) #10
  br label %err

if.end6:                                          ; preds = %39
  call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8192, i32 noundef 856099) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i60.i) #10
  %46 = ptrtoint ptr %value.addr.i60.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 33, ptr %value.addr.i60.i, align 1
  %call.i61.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 258, ptr noundef nonnull %value.addr.i60.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i60.i) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %phy_cfg.i) #10
  %call7 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux.i, ptr noundef nonnull %link_status) #10
  %pre_emphasis.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 3
  %volt_swing.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 2
  %lanes = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 1
  %ssc1.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 5
  %ssc = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 4
  br label %do.body8

do.body8:                                         ; preds = %do.cond58.do.body8_crit_edge, %if.end6
  %fail_counter_cr_long.0 = phi i8 [ 0, %if.end6 ], [ %fail_counter_cr_long.1.ph, %do.cond58.do.body8_crit_edge ]
  %fail_counter_short.0 = phi i8 [ 0, %if.end6 ], [ %fail_counter_short.1.ph, %do.cond58.do.body8_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %requested_adjust_volt_swing) #10
  %47 = ptrtoint ptr %requested_adjust_volt_swing to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %requested_adjust_volt_swing, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %requested_adjust_pre_emphasis) #10
  %48 = ptrtoint ptr %requested_adjust_pre_emphasis to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %requested_adjust_pre_emphasis, align 4
  %49 = ptrtoint ptr %pre_emphasis.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pre_emphasis.i, align 2
  %51 = shl i8 %50, 3
  %52 = and i8 %51, 24
  %53 = ptrtoint ptr %volt_swing.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %volt_swing.i, align 1
  %55 = and i8 %54, 3
  %56 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp94.not.i = icmp eq i32 %57, 0
  br i1 %cmp94.not.i, label %do.body8.cdns_mhdp_get_adjust_train.exit_crit_edge, label %for.body.lr.ph.i

do.body8.cdns_mhdp_get_adjust_train.exit_crit_edge: ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_get_adjust_train.exit

for.body.lr.ph.i:                                 ; preds = %do.body8
  %58 = lshr exact i8 %52, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %link_status, i32 noundef %i.095.i) #10
  %59 = call i8 @llvm.umin.i8(i8 %call.i, i8 %55) #10
  %call14.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %link_status, i32 noundef %i.095.i) #10
  %60 = call i8 @llvm.umin.i8(i8 %call14.i, i8 %52) #10
  %61 = lshr i8 %60, 3
  %conv28.i = zext i8 %61 to i32
  %narrow.i = add nuw nsw i8 %61, %59
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %narrow.i)
  %cmp29.i = icmp ugt i8 %narrow.i, 3
  %sub.i = xor i8 %61, 3
  %set_volt.0.i = select i1 %cmp29.i, i8 %sub.i, i8 %59
  %conv33.i = zext i8 %set_volt.0.i to i32
  %arrayidx.i = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 2, i32 %i.095.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv33.i, ptr %arrayidx.i, align 4
  %arrayidx34.i = getelementptr i8, ptr %lanes_data, i32 %i.095.i
  call void @__sanitizer_cov_trace_cmp1(i8 %set_volt.0.i, i8 %55)
  %cmp37.i = icmp eq i8 %set_volt.0.i, %55
  %or.i = or i8 %set_volt.0.i, 4
  %storemerge93.i = select i1 %cmp37.i, i8 %or.i, i8 %set_volt.0.i
  %arrayidx45.i = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 3, i32 %i.095.i
  %63 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv28.i, ptr %arrayidx45.i, align 4
  %shl47.i = and i8 %60, 24
  %or50.i = or i8 %storemerge93.i, %shl47.i
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %58)
  %cmp55.i = icmp eq i8 %61, %58
  %64 = or i8 %or50.i, 32
  %storemerge.i = select i1 %cmp55.i, i8 %64, i8 %or50.i
  %65 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %storemerge.i, ptr %arrayidx34.i, align 1
  %inc.i = add nuw i32 %i.095.i, 1
  %66 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_lanes.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %67
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cdns_mhdp_get_adjust_train.exit_crit_edge

for.body.i.cdns_mhdp_get_adjust_train.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_get_adjust_train.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cdns_mhdp_get_adjust_train.exit:                  ; preds = %for.body.i.cdns_mhdp_get_adjust_train.exit_crit_edge, %do.body8.cdns_mhdp_get_adjust_train.exit_crit_edge
  %68 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_lanes.i, align 8
  %70 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %lanes, align 4
  %71 = ptrtoint ptr %ssc.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ssc.i.i, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i92 = icmp eq i8 %72, 0
  br i1 %tobool.not.i92, label %cdns_mhdp_get_ssc_supported.exit.thread, label %cdns_mhdp_get_ssc_supported.exit

cdns_mhdp_get_ssc_supported.exit.thread:          ; preds = %cdns_mhdp_get_adjust_train.exit
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %ssc to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load151 = load i8, ptr %ssc, align 4
  br label %77

cdns_mhdp_get_ssc_supported.exit:                 ; preds = %cdns_mhdp_get_adjust_train.exit
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %ssc1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ssc1.i, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool2.i.not = icmp eq i8 %75, 0
  %76 = ptrtoint ptr %ssc to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load = load i8, ptr %ssc, align 4
  %spec.select = select i1 %tobool2.i.not, i8 0, i8 -128
  br label %77

77:                                               ; preds = %cdns_mhdp_get_ssc_supported.exit, %cdns_mhdp_get_ssc_supported.exit.thread
  %bf.load153 = phi i8 [ %bf.load151, %cdns_mhdp_get_ssc_supported.exit.thread ], [ %bf.load, %cdns_mhdp_get_ssc_supported.exit ]
  %78 = phi i8 [ 0, %cdns_mhdp_get_ssc_supported.exit.thread ], [ %spec.select, %cdns_mhdp_get_ssc_supported.exit ]
  %bf.clear = and i8 %bf.load153, 15
  %bf.set = or i8 %bf.clear, %78
  %bf.set20 = or i8 %bf.set, 16
  %79 = ptrtoint ptr %ssc to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.set20, ptr %ssc, align 4
  %80 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy.i, align 4
  %call21 = call i32 @phy_configure(ptr noundef %81, ptr noundef nonnull %phy_cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %77
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %82 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109, i32 noundef %call21) #13
  br label %cleanup.thread171

if.end28:                                         ; preds = %77
  %84 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_lanes.i, align 8
  call fastcc void @cdns_mhdp_adjust_lt(ptr noundef %mhdp, i32 noundef %85, i32 noundef 100, ptr noundef nonnull %lanes_data, ptr noundef nonnull %link_status)
  %86 = ptrtoint ptr %volt_swing.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %volt_swing.i, align 1
  %88 = and i8 %87, 3
  %89 = ptrtoint ptr %pre_emphasis.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pre_emphasis.i, align 2
  %91 = and i8 %90, 3
  %92 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_lanes.i, align 8
  %call.i96 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %link_status, i32 noundef %93) #10
  %94 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp96.not.i = icmp eq i32 %95, 0
  br i1 %cmp96.not.i, label %if.end44.thread, label %if.end28.for.body.i98_crit_edge

if.end28.for.body.i98_crit_edge:                  ; preds = %if.end28
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.body.i98.backedge, %if.end28.for.body.i98_crit_edge
  %same_before_adjust.0 = phi i8 [ %same_before_adjust.1, %for.body.i98.backedge ], [ 0, %if.end28.for.body.i98_crit_edge ]
  %i.097.i = phi i32 [ %i.097.i.be, %for.body.i98.backedge ], [ 0, %if.end28.for.body.i98_crit_edge ]
  %call9.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %link_status, i32 noundef %i.097.i) #10
  %96 = call i8 @llvm.umin.i8(i8 %call9.i, i8 %88) #10
  %arrayidx.i97 = getelementptr i8, ptr %requested_adjust_volt_swing, i32 %i.097.i
  %97 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx.i97, align 1
  %call17.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %link_status, i32 noundef %i.097.i) #10
  %98 = lshr i8 %call17.i, 3
  %99 = call i8 @llvm.umin.i8(i8 %98, i8 %91) #10
  %arrayidx32.i = getelementptr i8, ptr %requested_adjust_pre_emphasis, i32 %i.097.i
  %100 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx32.i, align 1
  %arrayidx33.i = getelementptr i8, ptr %lanes_data, i32 %i.097.i
  %101 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %102 to i32
  %and35.i = and i32 %conv34.i, 24
  %103 = shl nuw nsw i8 %99, 3
  %shl.i = zext i8 %103 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and35.i, i32 %shl.i)
  %cmp38.i = icmp eq i32 %and35.i, %shl.i
  %and43.i = and i32 %conv34.i, 3
  %conv45.i = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and43.i, i32 %conv45.i)
  %cmp46.i = icmp eq i32 %and43.i, %conv45.i
  %104 = select i1 %cmp38.i, i1 %cmp46.i, i1 false
  %same_before_adjust.1 = select i1 %104, i8 1, i8 %same_before_adjust.0
  br i1 %call.i96, label %for.inc.i, label %land.lhs.true53.i

land.lhs.true53.i:                                ; preds = %for.body.i98
  %narrow = add nuw nsw i8 %99, %96
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow)
  %cmp58.i = icmp ugt i8 %narrow, 2
  br i1 %cmp58.i, label %do.end42, label %for.inc.i.thread

for.inc.i:                                        ; preds = %for.body.i98
  %inc.i99 = add nuw i32 %i.097.i, 1
  %105 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i99, i32 %106)
  %cmp.i100 = icmp ult i32 %inc.i99, %106
  br i1 %cmp.i100, label %for.inc.i.for.body.i98.backedge_crit_edge, label %if.then46

for.inc.i.for.body.i98.backedge_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i98.backedge

for.body.i98.backedge:                            ; preds = %for.inc.i.thread.for.body.i98.backedge_crit_edge, %for.inc.i.for.body.i98.backedge_crit_edge
  %i.097.i.be = phi i32 [ %inc.i99, %for.inc.i.for.body.i98.backedge_crit_edge ], [ %inc.i99175, %for.inc.i.thread.for.body.i98.backedge_crit_edge ]
  br label %for.body.i98

for.inc.i.thread:                                 ; preds = %land.lhs.true53.i
  %inc.i99175 = add nuw i32 %i.097.i, 1
  %107 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i99175, i32 %108)
  %cmp.i100176 = icmp ult i32 %inc.i99175, %108
  br i1 %cmp.i100176, label %for.inc.i.thread.for.body.i98.backedge_crit_edge, label %if.end47

for.inc.i.thread.for.body.i98.backedge_crit_edge: ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i98.backedge

do.end42:                                         ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev43 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %109 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.113) #13
  br label %cleanup.thread171

if.end44.thread:                                  ; preds = %if.end28
  br i1 %call.i96, label %if.then46.thread, label %if.end47.thread

if.then46.thread:                                 ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vs.i) #10
  %111 = ptrtoint ptr %vs.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 3472046816955936768, ptr %vs.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pe.i) #10
  %112 = ptrtoint ptr %pe.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 3472046816955936768, ptr %pe.i, align 8
  br label %for.end.i

if.end47.thread:                                  ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #12
  %inc162 = add i8 %fail_counter_cr_long.0, 1
  %113 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr = load i32, ptr %num_lanes.i, align 8
  br label %if.end51

if.then46:                                        ; preds = %for.inc.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vs.i) #10
  %114 = ptrtoint ptr %vs.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 3472046816955936768, ptr %vs.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pe.i) #10
  %115 = ptrtoint ptr %pe.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 3472046816955936768, ptr %pe.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp30.not.i = icmp eq i32 %106, 0
  br i1 %cmp30.not.i, label %if.then46.for.end.i_crit_edge, label %if.then46.for.body.i104_crit_edge

if.then46.for.body.i104_crit_edge:                ; preds = %if.then46
  br label %for.body.i104

if.then46.for.end.i_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %if.then46.for.body.i104_crit_edge
  %i.031.i = phi i32 [ %inc.i103, %for.body.i104.for.body.i104_crit_edge ], [ 0, %if.then46.for.body.i104_crit_edge ]
  %arrayidx.i102 = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 2, i32 %i.031.i
  %116 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i102, align 4
  %118 = trunc i32 %117 to i8
  %conv.i = add i8 %118, 48
  %mul.i = shl i32 %i.031.i, 1
  %arrayidx1.i = getelementptr [8 x i8], ptr %vs.i, i32 0, i32 %mul.i
  %119 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 3, i32 %i.031.i
  %120 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx2.i, align 4
  %122 = trunc i32 %121 to i8
  %conv4.i = add i8 %122, 48
  %arrayidx6.i = getelementptr [8 x i8], ptr %pe.i, i32 0, i32 %mul.i
  %123 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv4.i, ptr %arrayidx6.i, align 2
  %inc.i103 = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i103, %106
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i104.for.body.i104_crit_edge

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i104

for.end.loopexit.i:                               ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i = shl i32 %106, 1
  %phi.bo32.i = add i32 %phi.bo.i, -1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.then46.for.end.i_crit_edge, %if.then46.thread
  %i.0.lcssa.i = phi i32 [ -1, %if.then46.for.end.i_crit_edge ], [ %phi.bo32.i, %for.end.loopexit.i ], [ -1, %if.then46.thread ]
  %arrayidx8.i = getelementptr [8 x i8], ptr %vs.i, i32 0, i32 %i.0.lcssa.i
  %124 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx11.i = getelementptr [8 x i8], ptr %pe.i, i32 0, i32 %i.0.lcssa.i
  %125 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %arrayidx11.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training_cr, %if.then.i107)) #10
          to label %cleanup [label %if.then.i107], !srcloc !365

if.then.i107:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i105 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %126 = ptrtoint ptr %dev.i105 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i105, align 4
  %128 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_lanes.i, align 8
  %130 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rate.i.i, align 4
  %div.i106 = udiv i32 %131, 100
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, ptr noundef %127, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.115, i32 noundef %129, i32 noundef %div.i106, ptr noundef nonnull %vs.i, ptr noundef nonnull %pe.i) #10
  br label %cleanup

if.end47:                                         ; preds = %for.inc.i.thread
  %inc = add i8 %fail_counter_cr_long.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %same_before_adjust.1)
  %tobool48.not = icmp eq i8 %same_before_adjust.1, 0
  br i1 %tobool48.not, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %inc50 = add i8 %fail_counter_short.0, 1
  br label %do.cond58

if.end51:                                         ; preds = %if.end47.if.end51_crit_edge, %if.end47.thread
  %132 = phi i32 [ %.pr, %if.end47.thread ], [ %108, %if.end47.if.end51_crit_edge ]
  %inc164 = phi i8 [ %inc162, %if.end47.thread ], [ %inc, %if.end47.if.end51_crit_edge ]
  %133 = ptrtoint ptr %volt_swing.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %volt_swing.i, align 1
  %135 = and i8 %134, 3
  %136 = ptrtoint ptr %pre_emphasis.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %pre_emphasis.i, align 2
  %138 = and i8 %137, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp47.not.i = icmp eq i32 %132, 0
  br i1 %cmp47.not.i, label %if.end51.do.cond58_crit_edge, label %for.body.i113.preheader

if.end51.do.cond58_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond58

for.body.i113.preheader:                          ; preds = %if.end51
  %139 = and i8 %134, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i112 = icmp eq i8 %139, 0
  %140 = and i8 %137, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool18.not.i = icmp eq i8 %140, 0
  br label %for.body.i113

for.body.i113:                                    ; preds = %cond.end24.i.for.body.i113_crit_edge, %for.body.i113.preheader
  %i.048.i = phi i32 [ %inc.i117, %cond.end24.i.for.body.i113_crit_edge ], [ 0, %for.body.i113.preheader ]
  br i1 %tobool.not.i112, label %cond.false.i, label %for.body.i113.cond.end.i_crit_edge

for.body.i113.cond.end.i_crit_edge:               ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i114 = getelementptr i8, ptr %requested_adjust_volt_swing, i32 %i.048.i
  %141 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i114, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body.i113.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %142, %cond.false.i ], [ %135, %for.body.i113.cond.end.i_crit_edge ]
  %and.i.i115 = shl i32 %i.048.i, 2
  %143 = and i32 %and.i.i115, 4
  %shr.i.i = lshr i32 %i.048.i, 1
  %add.i.i = add nuw i32 %shr.i.i, 4
  %shl.i.i = shl nuw nsw i32 3, %143
  %arrayidx.i.i = getelementptr i8, ptr %link_status, i32 %add.i.i
  %144 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i.i, align 1
  %146 = trunc i32 %shl.i.i to i8
  %147 = xor i8 %146, -1
  %conv2.i.i = and i8 %145, %147
  %conv3.i.i = zext i8 %cond.in.i to i32
  %shl4.i.i = shl nuw nsw i32 %conv3.i.i, %143
  %148 = trunc i32 %shl4.i.i to i8
  %conv7.i.i = or i8 %conv2.i.i, %148
  br i1 %tobool18.not.i, label %cond.false21.i, label %cond.end.i.cond.end24.i_crit_edge

cond.end.i.cond.end24.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end24.i

cond.false21.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22.i = getelementptr i8, ptr %requested_adjust_pre_emphasis, i32 %i.048.i
  %149 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx22.i, align 1
  br label %cond.end24.i

cond.end24.i:                                     ; preds = %cond.false21.i, %cond.end.i.cond.end24.i_crit_edge
  %cond25.in.i = phi i8 [ %150, %cond.false21.i ], [ %138, %cond.end.i.cond.end24.i_crit_edge ]
  %and.i38.i = and i32 %i.048.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %tobool.not.i.i116 = icmp eq i32 %and.i38.i, 0
  %cond.i.i = select i1 %tobool.not.i.i116, i32 2, i32 6
  %shl.i41.i = shl nuw nsw i32 12, %cond.i.i
  %151 = trunc i32 %shl.i41.i to i8
  %152 = xor i8 %151, -1
  %conv2.i43.i = and i8 %conv7.i.i, %152
  %conv3.i44.i = zext i8 %cond25.in.i to i32
  %shl4.i45.i = shl nuw nsw i32 %conv3.i44.i, %cond.i.i
  %153 = trunc i32 %shl4.i45.i to i8
  %conv7.i46.i = or i8 %conv2.i43.i, %153
  %154 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv7.i46.i, ptr %arrayidx.i.i, align 1
  %inc.i117 = add nuw i32 %i.048.i, 1
  %exitcond.not = icmp eq i32 %inc.i117, %132
  br i1 %exitcond.not, label %cond.end24.i.do.cond58_crit_edge, label %cond.end24.i.for.body.i113_crit_edge

cond.end24.i.for.body.i113_crit_edge:             ; preds = %cond.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i113

cond.end24.i.do.cond58_crit_edge:                 ; preds = %cond.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond58

cleanup.thread171:                                ; preds = %do.end42, %do.end26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_adjust_pre_emphasis) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_adjust_volt_swing) #10
  br label %err

cleanup:                                          ; preds = %if.then.i107, %for.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pe.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vs.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_adjust_pre_emphasis) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_adjust_volt_swing) #10
  br label %cleanup65

do.cond58:                                        ; preds = %cond.end24.i.do.cond58_crit_edge, %if.end51.do.cond58_crit_edge, %if.then49
  %fail_counter_cr_long.1.ph = phi i8 [ %inc164, %if.end51.do.cond58_crit_edge ], [ %inc, %if.then49 ], [ %inc164, %cond.end24.i.do.cond58_crit_edge ]
  %fail_counter_short.1.ph = phi i8 [ 0, %if.end51.do.cond58_crit_edge ], [ %inc50, %if.then49 ], [ 0, %cond.end24.i.do.cond58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_adjust_pre_emphasis) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_adjust_volt_swing) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %fail_counter_short.1.ph)
  %cmp = icmp ult i8 %fail_counter_short.1.ph, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %fail_counter_cr_long.1.ph)
  %cmp62 = icmp ult i8 %fail_counter_cr_long.1.ph, 10
  %or.cond = select i1 %cmp, i1 %cmp62, i1 false
  br i1 %or.cond, label %do.cond58.do.body8_crit_edge, label %do.cond58.err_crit_edge

do.cond58.err_crit_edge:                          ; preds = %do.cond58
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.cond58.do.body8_crit_edge:                     ; preds = %do.cond58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

err:                                              ; preds = %do.cond58.err_crit_edge, %cleanup.thread171, %cdns_mhdp_link_training_init.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vs.i120) #10
  %155 = ptrtoint ptr %vs.i120 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 3472046816955936768, ptr %vs.i120, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pe.i121) #10
  %156 = ptrtoint ptr %pe.i121 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 3472046816955936768, ptr %pe.i121, align 8
  %157 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp30.not.i123 = icmp eq i32 %158, 0
  br i1 %cmp30.not.i123, label %err.for.end.i141_crit_edge, label %err.for.body.i134_crit_edge

err.for.body.i134_crit_edge:                      ; preds = %err
  br label %for.body.i134

err.for.end.i141_crit_edge:                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i141

for.body.i134:                                    ; preds = %for.body.i134.for.body.i134_crit_edge, %err.for.body.i134_crit_edge
  %i.031.i124 = phi i32 [ %inc.i132, %for.body.i134.for.body.i134_crit_edge ], [ 0, %err.for.body.i134_crit_edge ]
  %arrayidx.i125 = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 2, i32 %i.031.i124
  %159 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i125, align 4
  %161 = trunc i32 %160 to i8
  %conv.i126 = add i8 %161, 48
  %mul.i127 = shl i32 %i.031.i124, 1
  %arrayidx1.i128 = getelementptr [8 x i8], ptr %vs.i120, i32 0, i32 %mul.i127
  %162 = ptrtoint ptr %arrayidx1.i128 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv.i126, ptr %arrayidx1.i128, align 2
  %arrayidx2.i129 = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 3, i32 %i.031.i124
  %163 = ptrtoint ptr %arrayidx2.i129 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx2.i129, align 4
  %165 = trunc i32 %164 to i8
  %conv4.i130 = add i8 %165, 48
  %arrayidx6.i131 = getelementptr [8 x i8], ptr %pe.i121, i32 0, i32 %mul.i127
  %166 = ptrtoint ptr %arrayidx6.i131 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv4.i130, ptr %arrayidx6.i131, align 2
  %inc.i132 = add nuw i32 %i.031.i124, 1
  %exitcond.not.i133 = icmp eq i32 %inc.i132, %158
  br i1 %exitcond.not.i133, label %for.end.loopexit.i137, label %for.body.i134.for.body.i134_crit_edge

for.body.i134.for.body.i134_crit_edge:            ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i134

for.end.loopexit.i137:                            ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i135 = shl i32 %158, 1
  %phi.bo32.i136 = add i32 %phi.bo.i135, -1
  br label %for.end.i141

for.end.i141:                                     ; preds = %for.end.loopexit.i137, %err.for.end.i141_crit_edge
  %i.0.lcssa.i138 = phi i32 [ -1, %err.for.end.i141_crit_edge ], [ %phi.bo32.i136, %for.end.loopexit.i137 ]
  %arrayidx8.i139 = getelementptr [8 x i8], ptr %vs.i120, i32 0, i32 %i.0.lcssa.i138
  %167 = ptrtoint ptr %arrayidx8.i139 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %arrayidx8.i139, align 1
  %arrayidx11.i140 = getelementptr [8 x i8], ptr %pe.i121, i32 0, i32 %i.0.lcssa.i138
  %168 = ptrtoint ptr %arrayidx11.i140 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %arrayidx11.i140, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training_cr, %if.then.i145)) #10
          to label %cdns_mhdp_print_lt_status.exit147 [label %if.then.i145], !srcloc !365

if.then.i145:                                     ; preds = %for.end.i141
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i142 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %169 = ptrtoint ptr %dev.i142 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i142, align 4
  %171 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %num_lanes.i, align 8
  %173 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rate.i.i, align 4
  %div.i144 = udiv i32 %174, 100
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, ptr noundef %170, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.116, i32 noundef %172, i32 noundef %div.i144, ptr noundef nonnull %vs.i120, ptr noundef nonnull %pe.i121) #10
  br label %cdns_mhdp_print_lt_status.exit147

cdns_mhdp_print_lt_status.exit147:                ; preds = %if.then.i145, %for.end.i141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pe.i121) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vs.i120) #10
  br label %cleanup65

cleanup65:                                        ; preds = %cdns_mhdp_print_lt_status.exit147, %cleanup
  %retval.2 = phi i1 [ false, %cdns_mhdp_print_lt_status.exit147 ], [ true, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %phy_cfg) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes_data) #10
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cdns_mhdp_link_training_channel_eq(ptr noundef %mhdp, i8 noundef zeroext %eq_tps, i32 noundef %training_interval) unnamed_addr #0 align 64 {
entry:
  %vs.i109 = alloca [8 x i8], align 8
  %pe.i110 = alloca [8 x i8], align 8
  %vs.i = alloca [8 x i8], align 8
  %pe.i = alloca [8 x i8], align 8
  %value.addr.i = alloca i8, align 1
  %lanes_data = alloca [4 x i8], align 4
  %link_status = alloca [6 x i8], align 1
  %phy_cfg = alloca %union.phy_configure_opts, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lanes_data) #10
  %0 = ptrtoint ptr %lanes_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lanes_data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status) #10
  %1 = call ptr @memset(ptr %link_status, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %phy_cfg) #10
  %2 = call ptr @memset(ptr %phy_cfg, i32 255, i32 100)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_link_training_channel_eq.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training_channel_eq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_link_training_channel_eq.__UNIQUE_ID_ddebug323, ptr noundef %4, ptr noundef nonnull @.str.126) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = zext i8 %eq_tps to i32
  %and = shl nuw nsw i32 %conv, 1
  %shl = and i32 %and, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %eq_tps)
  %cmp.not = icmp eq i8 %eq_tps, 4
  %spec.select.v = select i1 %cmp.not, i32 856065, i32 856097
  %spec.select = or i32 %shl, %spec.select.v
  tail call fastcc void @cdns_mhdp_reg_write(ptr noundef %mhdp, i16 noundef zeroext 8192, i32 noundef %spec.select)
  %aux = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 12
  %or13 = or i8 %eq_tps, 32
  %cond = select i1 %cmp.not, i8 7, i8 %or13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %5 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %cond, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 258, ptr noundef nonnull %value.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  %call17 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux, ptr noundef nonnull %link_status) #10
  %pre_emphasis.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 3
  %volt_swing.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 2
  %num_lanes.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %lanes = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 1
  %ssc.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 9
  %ssc1.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 14, i32 5
  %ssc = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 4
  %phy = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 5
  br label %do.body18

do.body18:                                        ; preds = %cdns_mhdp_adjust_requested_eq.exit.do.body18_crit_edge, %do.end
  %fail_counter_short.0 = phi i8 [ 0, %do.end ], [ %inc, %cdns_mhdp_adjust_requested_eq.exit.do.body18_crit_edge ]
  %6 = ptrtoint ptr %pre_emphasis.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pre_emphasis.i, align 2
  %8 = shl i8 %7, 3
  %9 = and i8 %8, 24
  %10 = ptrtoint ptr %volt_swing.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %volt_swing.i, align 1
  %12 = and i8 %11, 3
  %13 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp94.not.i = icmp eq i32 %14, 0
  br i1 %cmp94.not.i, label %do.body18.cdns_mhdp_get_adjust_train.exit_crit_edge, label %for.body.lr.ph.i

do.body18.cdns_mhdp_get_adjust_train.exit_crit_edge: ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_get_adjust_train.exit

for.body.lr.ph.i:                                 ; preds = %do.body18
  %15 = lshr exact i8 %9, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i92 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %link_status, i32 noundef %i.095.i) #10
  %16 = call i8 @llvm.umin.i8(i8 %call.i92, i8 %12) #10
  %call14.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %link_status, i32 noundef %i.095.i) #10
  %17 = call i8 @llvm.umin.i8(i8 %call14.i, i8 %9) #10
  %18 = lshr i8 %17, 3
  %conv28.i = zext i8 %18 to i32
  %narrow.i = add nuw nsw i8 %18, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %narrow.i)
  %cmp29.i = icmp ugt i8 %narrow.i, 3
  %sub.i = xor i8 %18, 3
  %set_volt.0.i = select i1 %cmp29.i, i8 %sub.i, i8 %16
  %conv33.i = zext i8 %set_volt.0.i to i32
  %arrayidx.i = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 2, i32 %i.095.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv33.i, ptr %arrayidx.i, align 4
  %arrayidx34.i = getelementptr i8, ptr %lanes_data, i32 %i.095.i
  call void @__sanitizer_cov_trace_cmp1(i8 %set_volt.0.i, i8 %12)
  %cmp37.i = icmp eq i8 %set_volt.0.i, %12
  %or.i = or i8 %set_volt.0.i, 4
  %storemerge93.i = select i1 %cmp37.i, i8 %or.i, i8 %set_volt.0.i
  %arrayidx45.i = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 3, i32 %i.095.i
  %20 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv28.i, ptr %arrayidx45.i, align 4
  %shl47.i = and i8 %17, 24
  %or50.i = or i8 %storemerge93.i, %shl47.i
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %15)
  %cmp55.i = icmp eq i8 %18, %15
  %21 = or i8 %or50.i, 32
  %storemerge.i = select i1 %cmp55.i, i8 %21, i8 %or50.i
  %22 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge.i, ptr %arrayidx34.i, align 1
  %inc.i = add nuw i32 %i.095.i, 1
  %23 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_lanes.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cdns_mhdp_get_adjust_train.exit_crit_edge

for.body.i.cdns_mhdp_get_adjust_train.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_get_adjust_train.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cdns_mhdp_get_adjust_train.exit:                  ; preds = %for.body.i.cdns_mhdp_get_adjust_train.exit_crit_edge, %do.body18.cdns_mhdp_get_adjust_train.exit_crit_edge
  %25 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_lanes.i, align 8
  %27 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %lanes, align 4
  %28 = ptrtoint ptr %ssc.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ssc.i, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %cdns_mhdp_get_ssc_supported.exit.thread, label %cdns_mhdp_get_ssc_supported.exit

cdns_mhdp_get_ssc_supported.exit.thread:          ; preds = %cdns_mhdp_get_adjust_train.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %ssc to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load138 = load i8, ptr %ssc, align 4
  br label %34

cdns_mhdp_get_ssc_supported.exit:                 ; preds = %cdns_mhdp_get_adjust_train.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ssc1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ssc1.i, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool2.i.not = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %ssc to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %ssc, align 4
  %spec.select141 = select i1 %tobool2.i.not, i8 0, i8 -128
  br label %34

34:                                               ; preds = %cdns_mhdp_get_ssc_supported.exit, %cdns_mhdp_get_ssc_supported.exit.thread
  %bf.load140 = phi i8 [ %bf.load138, %cdns_mhdp_get_ssc_supported.exit.thread ], [ %bf.load, %cdns_mhdp_get_ssc_supported.exit ]
  %35 = phi i8 [ 0, %cdns_mhdp_get_ssc_supported.exit.thread ], [ %spec.select141, %cdns_mhdp_get_ssc_supported.exit ]
  %bf.clear = and i8 %bf.load140, 15
  %bf.set = or i8 %bf.clear, %35
  %bf.set31 = or i8 %bf.set, 16
  %36 = ptrtoint ptr %ssc to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set31, ptr %ssc, align 4
  %37 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy, align 4
  %call32 = call i32 @phy_configure(ptr noundef %38, ptr noundef nonnull %phy_cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %34
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %39 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev38, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.125, i32 noundef %call32) #13
  br label %err

if.end39:                                         ; preds = %34
  %41 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_lanes.i, align 8
  call fastcc void @cdns_mhdp_adjust_lt(ptr noundef %mhdp, i32 noundef %42, i32 noundef %training_interval, ptr noundef nonnull %lanes_data, ptr noundef nonnull %link_status)
  %43 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_lanes.i, align 8
  %call48 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %link_status, i32 noundef %44) #10
  br i1 %call48, label %if.end52, label %if.end39.err_crit_edge

if.end39.err_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end52:                                         ; preds = %if.end39
  %45 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_lanes.i, align 8
  %call56 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %link_status, i32 noundef %46) #10
  br i1 %call56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vs.i) #10
  %47 = ptrtoint ptr %vs.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 3472046816955936768, ptr %vs.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pe.i) #10
  %48 = ptrtoint ptr %pe.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 3472046816955936768, ptr %pe.i, align 8
  %49 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp30.not.i = icmp eq i32 %50, 0
  br i1 %cmp30.not.i, label %if.then57.for.end.i_crit_edge, label %if.then57.for.body.i96_crit_edge

if.then57.for.body.i96_crit_edge:                 ; preds = %if.then57
  br label %for.body.i96

if.then57.for.end.i_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i96:                                     ; preds = %for.body.i96.for.body.i96_crit_edge, %if.then57.for.body.i96_crit_edge
  %i.031.i = phi i32 [ %inc.i95, %for.body.i96.for.body.i96_crit_edge ], [ 0, %if.then57.for.body.i96_crit_edge ]
  %arrayidx.i94 = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 2, i32 %i.031.i
  %51 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i94, align 4
  %53 = trunc i32 %52 to i8
  %conv.i = add i8 %53, 48
  %mul.i = shl i32 %i.031.i, 1
  %arrayidx1.i = getelementptr [8 x i8], ptr %vs.i, i32 0, i32 %mul.i
  %54 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 3, i32 %i.031.i
  %55 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx2.i, align 4
  %57 = trunc i32 %56 to i8
  %conv4.i = add i8 %57, 48
  %arrayidx6.i = getelementptr [8 x i8], ptr %pe.i, i32 0, i32 %mul.i
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv4.i, ptr %arrayidx6.i, align 2
  %inc.i95 = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i95, %50
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i96.for.body.i96_crit_edge

for.body.i96.for.body.i96_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i96

for.end.loopexit.i:                               ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i = shl i32 %50, 1
  %phi.bo32.i = add i32 %phi.bo.i, -1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.then57.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ -1, %if.then57.for.end.i_crit_edge ], [ %phi.bo32.i, %for.end.loopexit.i ]
  %arrayidx8.i = getelementptr [8 x i8], ptr %vs.i, i32 0, i32 %i.0.lcssa.i
  %59 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx11.i = getelementptr [8 x i8], ptr %pe.i, i32 0, i32 %i.0.lcssa.i
  %60 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx11.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training_channel_eq, %if.then.i)) #10
          to label %cdns_mhdp_print_lt_status.exit [label %if.then.i], !srcloc !365

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %63 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_lanes.i, align 8
  %rate.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %65 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rate.i, align 4
  %div.i = udiv i32 %66, 100
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, ptr noundef %62, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.127, i32 noundef %64, i32 noundef %div.i, ptr noundef nonnull %vs.i, ptr noundef nonnull %pe.i) #10
  br label %cdns_mhdp_print_lt_status.exit

cdns_mhdp_print_lt_status.exit:                   ; preds = %if.then.i, %for.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pe.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vs.i) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %inc = add nuw nsw i8 %fail_counter_short.0, 1
  %67 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp60.not.i = icmp eq i32 %68, 0
  br i1 %cmp60.not.i, label %if.end58.cdns_mhdp_adjust_requested_eq.exit_crit_edge, label %for.body.lr.ph.i100

if.end58.cdns_mhdp_adjust_requested_eq.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_adjust_requested_eq.exit

for.body.lr.ph.i100:                              ; preds = %if.end58
  %69 = ptrtoint ptr %volt_swing.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %volt_swing.i, align 1
  %71 = and i8 %70, 3
  %72 = ptrtoint ptr %pre_emphasis.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pre_emphasis.i, align 2
  %74 = and i8 %73, 3
  %conv3.i48.i = zext i8 %71 to i32
  %conv3.i57.i = zext i8 %74 to i32
  br label %for.body.i102

for.body.i102:                                    ; preds = %for.inc.i.for.body.i102_crit_edge, %for.body.lr.ph.i100
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i100 ], [ %inc.i106, %for.inc.i.for.body.i102_crit_edge ]
  %call.i101 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %link_status, i32 noundef %i.061.i) #10
  %call7.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %link_status, i32 noundef %i.061.i) #10
  %conv8.i = zext i8 %call.i101 to i32
  %conv9.i = zext i8 %call7.i to i32
  %add.i = add nuw nsw i32 %conv9.i, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i)
  %cmp10.i = icmp ugt i32 %add.i, 3
  br i1 %cmp10.i, label %if.then.i104, label %for.body.i102.if.end.i_crit_edge

for.body.i102.if.end.i_crit_edge:                 ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i104:                                     ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i103 = sub i8 3, %call7.i
  %and.i.i = shl i32 %i.061.i, 2
  %75 = and i32 %and.i.i, 4
  %shr.i.i = lshr i32 %i.061.i, 1
  %add.i.i = add nuw i32 %shr.i.i, 4
  %shl.i.i = shl nuw nsw i32 3, %75
  %arrayidx.i.i = getelementptr i8, ptr %link_status, i32 %add.i.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i, align 1
  %78 = trunc i32 %shl.i.i to i8
  %79 = xor i8 %78, -1
  %conv2.i.i = and i8 %77, %79
  %conv3.i.i = zext i8 %sub.i103 to i32
  %shl4.i.i = shl nuw nsw i32 %conv3.i.i, %75
  %80 = trunc i32 %shl4.i.i to i8
  %conv7.i.i = or i8 %conv2.i.i, %80
  store i8 %conv7.i.i, ptr %arrayidx.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i104, %for.body.i102.if.end.i_crit_edge
  %81 = ptrtoint ptr %volt_swing.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %volt_swing.i, align 1
  %83 = and i8 %82, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i105 = icmp eq i8 %83, 0
  br i1 %tobool.not.i105, label %if.end.i.if.end19.i_crit_edge, label %if.then18.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i42.i = shl i32 %i.061.i, 2
  %84 = and i32 %and.i42.i, 4
  %shr.i43.i = lshr i32 %i.061.i, 1
  %add.i44.i = add nuw i32 %shr.i43.i, 4
  %shl.i45.i = shl nuw nsw i32 3, %84
  %arrayidx.i46.i = getelementptr i8, ptr %link_status, i32 %add.i44.i
  %85 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i46.i, align 1
  %87 = trunc i32 %shl.i45.i to i8
  %88 = xor i8 %87, -1
  %conv2.i47.i = and i8 %86, %88
  %shl4.i49.i = shl nuw nsw i32 %conv3.i48.i, %84
  %89 = trunc i32 %shl4.i49.i to i8
  %conv7.i50.i = or i8 %conv2.i47.i, %89
  store i8 %conv7.i50.i, ptr %arrayidx.i46.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end.i.if.end19.i_crit_edge
  %90 = ptrtoint ptr %pre_emphasis.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pre_emphasis.i, align 2
  %92 = and i8 %91, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool24.not.i = icmp eq i8 %92, 0
  br i1 %tobool24.not.i, label %if.end19.i.for.inc.i_crit_edge, label %if.then25.i

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i51.i = and i32 %i.061.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51.i)
  %tobool.not.i.i = icmp eq i32 %and.i51.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 6
  %shr.i52.i = lshr i32 %i.061.i, 1
  %add.i53.i = add nuw i32 %shr.i52.i, 4
  %shl.i54.i = shl nuw nsw i32 12, %cond.i.i
  %arrayidx.i55.i = getelementptr i8, ptr %link_status, i32 %add.i53.i
  %93 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i55.i, align 1
  %95 = trunc i32 %shl.i54.i to i8
  %96 = xor i8 %95, -1
  %conv2.i56.i = and i8 %94, %96
  %shl4.i58.i = shl nuw nsw i32 %conv3.i57.i, %cond.i.i
  %97 = trunc i32 %shl4.i58.i to i8
  %conv7.i59.i = or i8 %conv2.i56.i, %97
  store i8 %conv7.i59.i, ptr %arrayidx.i55.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then25.i, %if.end19.i.for.inc.i_crit_edge
  %inc.i106 = add nuw i32 %i.061.i, 1
  %98 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_lanes.i, align 8
  %cmp.i107 = icmp ult i32 %inc.i106, %99
  br i1 %cmp.i107, label %for.inc.i.for.body.i102_crit_edge, label %for.inc.i.cdns_mhdp_adjust_requested_eq.exit_crit_edge

for.inc.i.cdns_mhdp_adjust_requested_eq.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_adjust_requested_eq.exit

for.inc.i.for.body.i102_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i102

cdns_mhdp_adjust_requested_eq.exit:               ; preds = %for.inc.i.cdns_mhdp_adjust_requested_eq.exit_crit_edge, %if.end58.cdns_mhdp_adjust_requested_eq.exit_crit_edge
  %cmp62 = icmp ult i8 %fail_counter_short.0, 4
  br i1 %cmp62, label %cdns_mhdp_adjust_requested_eq.exit.do.body18_crit_edge, label %cdns_mhdp_adjust_requested_eq.exit.err_crit_edge

cdns_mhdp_adjust_requested_eq.exit.err_crit_edge: ; preds = %cdns_mhdp_adjust_requested_eq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

cdns_mhdp_adjust_requested_eq.exit.do.body18_crit_edge: ; preds = %cdns_mhdp_adjust_requested_eq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

err:                                              ; preds = %cdns_mhdp_adjust_requested_eq.exit.err_crit_edge, %if.end39.err_crit_edge, %do.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vs.i109) #10
  %100 = ptrtoint ptr %vs.i109 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 3472046816955936768, ptr %vs.i109, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pe.i110) #10
  %101 = ptrtoint ptr %pe.i110 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 3472046816955936768, ptr %pe.i110, align 8
  %102 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_lanes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp30.not.i112 = icmp eq i32 %103, 0
  br i1 %cmp30.not.i112, label %err.for.end.i130_crit_edge, label %err.for.body.i123_crit_edge

err.for.body.i123_crit_edge:                      ; preds = %err
  br label %for.body.i123

err.for.end.i130_crit_edge:                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i130

for.body.i123:                                    ; preds = %for.body.i123.for.body.i123_crit_edge, %err.for.body.i123_crit_edge
  %i.031.i113 = phi i32 [ %inc.i121, %for.body.i123.for.body.i123_crit_edge ], [ 0, %err.for.body.i123_crit_edge ]
  %arrayidx.i114 = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 2, i32 %i.031.i113
  %104 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i114, align 4
  %106 = trunc i32 %105 to i8
  %conv.i115 = add i8 %106, 48
  %mul.i116 = shl i32 %i.031.i113, 1
  %arrayidx1.i117 = getelementptr [8 x i8], ptr %vs.i109, i32 0, i32 %mul.i116
  %107 = ptrtoint ptr %arrayidx1.i117 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv.i115, ptr %arrayidx1.i117, align 2
  %arrayidx2.i118 = getelementptr %struct.phy_configure_opts_dp, ptr %phy_cfg, i32 0, i32 3, i32 %i.031.i113
  %108 = ptrtoint ptr %arrayidx2.i118 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx2.i118, align 4
  %110 = trunc i32 %109 to i8
  %conv4.i119 = add i8 %110, 48
  %arrayidx6.i120 = getelementptr [8 x i8], ptr %pe.i110, i32 0, i32 %mul.i116
  %111 = ptrtoint ptr %arrayidx6.i120 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv4.i119, ptr %arrayidx6.i120, align 2
  %inc.i121 = add nuw i32 %i.031.i113, 1
  %exitcond.not.i122 = icmp eq i32 %inc.i121, %103
  br i1 %exitcond.not.i122, label %for.end.loopexit.i126, label %for.body.i123.for.body.i123_crit_edge

for.body.i123.for.body.i123_crit_edge:            ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i123

for.end.loopexit.i126:                            ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i124 = shl i32 %103, 1
  %phi.bo32.i125 = add i32 %phi.bo.i124, -1
  br label %for.end.i130

for.end.i130:                                     ; preds = %for.end.loopexit.i126, %err.for.end.i130_crit_edge
  %i.0.lcssa.i127 = phi i32 [ -1, %err.for.end.i130_crit_edge ], [ %phi.bo32.i125, %for.end.loopexit.i126 ]
  %arrayidx8.i128 = getelementptr [8 x i8], ptr %vs.i109, i32 0, i32 %i.0.lcssa.i127
  %112 = ptrtoint ptr %arrayidx8.i128 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx8.i128, align 1
  %arrayidx11.i129 = getelementptr [8 x i8], ptr %pe.i110, i32 0, i32 %i.0.lcssa.i127
  %113 = ptrtoint ptr %arrayidx11.i129 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx11.i129, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_link_training_channel_eq, %if.then.i134)) #10
          to label %cdns_mhdp_print_lt_status.exit135 [label %if.then.i134], !srcloc !365

if.then.i134:                                     ; preds = %for.end.i130
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i131 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %114 = ptrtoint ptr %dev.i131 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i131, align 4
  %116 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_lanes.i, align 8
  %rate.i132 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %118 = ptrtoint ptr %rate.i132 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rate.i132, align 4
  %div.i133 = udiv i32 %119, 100
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, ptr noundef %115, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.128, i32 noundef %117, i32 noundef %div.i133, ptr noundef nonnull %vs.i109, ptr noundef nonnull %pe.i110) #10
  br label %cdns_mhdp_print_lt_status.exit135

cdns_mhdp_print_lt_status.exit135:                ; preds = %if.then.i134, %for.end.i130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pe.i110) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vs.i109) #10
  br label %cleanup

cleanup:                                          ; preds = %cdns_mhdp_print_lt_status.exit135, %cdns_mhdp_print_lt_status.exit
  %retval.0 = phi i1 [ false, %cdns_mhdp_print_lt_status.exit135 ], [ true, %cdns_mhdp_print_lt_status.exit ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %phy_cfg) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes_data) #10
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_mhdp_adjust_lt(ptr noundef %mhdp, i32 noundef %nlanes, i32 noundef %udelay, ptr nocapture noundef readonly %lanes_data, ptr nocapture noundef writeonly %link_status) unnamed_addr #0 align 64 {
entry:
  %payload.sroa.10 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload.sroa.10)
  %payload.sroa.10.1..sroa_idx = getelementptr inbounds i8, ptr %payload.sroa.10, i32 1
  %payload.sroa.10.2..sroa_idx = getelementptr inbounds i8, ptr %payload.sroa.10, i32 2
  %payload.sroa.10.3..sroa_idx = getelementptr inbounds i8, ptr %payload.sroa.10, i32 3
  %0 = ptrtoint ptr %payload.sroa.10 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %payload.sroa.10, align 4
  %1 = zext i32 %nlanes to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %nlanes, label %do.end [
    i32 4, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge27
    i32 1, label %entry.if.end_crit_edge28
  ]

entry.if.end_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.118, i32 noundef %nlanes) #13
  br label %do.end32

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge27, %entry.if.end_crit_edge28
  %conv = trunc i32 %nlanes to i8
  %payload.sroa.5.sroa.0.0.extract.shift26 = lshr i32 %udelay, 8
  %payload.sroa.5.sroa.0.0.extract.trunc = trunc i32 %payload.sroa.5.sroa.0.0.extract.shift26 to i8
  %payload.sroa.5.sroa.5.0.extract.trunc = trunc i32 %udelay to i8
  %4 = call ptr @memcpy(ptr %payload.sroa.10, ptr %lanes_data, i32 %nlanes)
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.do.end32_crit_edge

if.end.do.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond.i:                                       ; preds = %if.end
  %call.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end32_crit_edge

for.cond.i.do.end32_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end32_crit_edge

for.cond.1.i.do.end32_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body6.i.preheader, label %for.cond.2.i.do.end32_crit_edge

for.cond.2.i.do.end32_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.body6.i.preheader:                            ; preds = %for.cond.2.i
  %call8.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond3.i, label %for.body6.i.preheader.do.end32_crit_edge

for.body6.i.preheader.do.end32_crit_edge:         ; preds = %for.body6.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond3.i:                                      ; preds = %for.body6.i.preheader
  %call8.i.1 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %payload.sroa.5.sroa.0.0.extract.trunc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %tobool9.not.i.1 = icmp eq i32 %call8.i.1, 0
  br i1 %tobool9.not.i.1, label %for.cond3.i.1, label %for.cond3.i.do.end32_crit_edge

for.cond3.i.do.end32_crit_edge:                   ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond3.i.1:                                    ; preds = %for.cond3.i
  %call8.i.2 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %payload.sroa.5.sroa.5.0.extract.trunc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2)
  %tobool9.not.i.2 = icmp eq i32 %call8.i.2, 0
  br i1 %tobool9.not.i.2, label %for.cond3.i.2, label %for.cond3.i.1.do.end32_crit_edge

for.cond3.i.1.do.end32_crit_edge:                 ; preds = %for.cond3.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond3.i.2:                                    ; preds = %for.cond3.i.1
  %5 = ptrtoint ptr %payload.sroa.10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %payload.sroa.10.0.payload.sroa.10.3. = load i8, ptr %payload.sroa.10, align 4
  %call8.i.3 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %payload.sroa.10.0.payload.sroa.10.3.) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.3)
  %tobool9.not.i.3 = icmp eq i32 %call8.i.3, 0
  br i1 %tobool9.not.i.3, label %for.cond3.i.3, label %for.cond3.i.2.do.end32_crit_edge

for.cond3.i.2.do.end32_crit_edge:                 ; preds = %for.cond3.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond3.i.3:                                    ; preds = %for.cond3.i.2
  %6 = ptrtoint ptr %payload.sroa.10.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %payload.sroa.10.1.payload.sroa.10.4. = load i8, ptr %payload.sroa.10.1..sroa_idx, align 1
  %call8.i.4 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %payload.sroa.10.1.payload.sroa.10.4.) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.4)
  %tobool9.not.i.4 = icmp eq i32 %call8.i.4, 0
  br i1 %tobool9.not.i.4, label %for.cond3.i.4, label %for.cond3.i.3.do.end32_crit_edge

for.cond3.i.3.do.end32_crit_edge:                 ; preds = %for.cond3.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond3.i.4:                                    ; preds = %for.cond3.i.3
  %7 = ptrtoint ptr %payload.sroa.10.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %payload.sroa.10.2.payload.sroa.10.5. = load i8, ptr %payload.sroa.10.2..sroa_idx, align 2
  %call8.i.5 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %payload.sroa.10.2.payload.sroa.10.5.) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.5)
  %tobool9.not.i.5 = icmp eq i32 %call8.i.5, 0
  br i1 %tobool9.not.i.5, label %for.cond3.i.5, label %for.cond3.i.4.do.end32_crit_edge

for.cond3.i.4.do.end32_crit_edge:                 ; preds = %for.cond3.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond3.i.5:                                    ; preds = %for.cond3.i.4
  %8 = ptrtoint ptr %payload.sroa.10.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %payload.sroa.10.3.payload.sroa.10.6. = load i8, ptr %payload.sroa.10.3..sroa_idx, align 1
  %call8.i.6 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %payload.sroa.10.3.payload.sroa.10.6.) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.6)
  %tobool9.not.i.6 = icmp eq i32 %call8.i.6, 0
  br i1 %tobool9.not.i.6, label %for.cond3.i.6, label %for.cond3.i.5.do.end32_crit_edge

for.cond3.i.5.do.end32_crit_edge:                 ; preds = %for.cond3.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.cond3.i.6:                                    ; preds = %for.cond3.i.5
  %call10 = tail call fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body.i.preheader, label %for.cond3.i.6.do.end32_crit_edge

for.cond3.i.6.do.end32_crit_edge:                 ; preds = %for.cond3.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

for.body.i.preheader:                             ; preds = %for.cond3.i.6
  %call.i1 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp2.i = icmp slt i32 %call.i1, 0
  br i1 %cmp2.i, label %for.body.i.preheader.do.end32_crit_edge, label %if.end.i

for.body.i.preheader.do.end32_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i:                                         ; preds = %for.body.i.preheader
  %call.i1.1 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.1)
  %cmp2.i.1 = icmp slt i32 %call.i1.1, 0
  br i1 %cmp2.i.1, label %if.end.i.do.end32_crit_edge, label %if.end.i.1

if.end.i.do.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i.1:                                       ; preds = %if.end.i
  %call.i1.2 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.2)
  %cmp2.i.2 = icmp slt i32 %call.i1.2, 0
  br i1 %cmp2.i.2, label %if.end.i.1.do.end32_crit_edge, label %if.end.i.2

if.end.i.1.do.end32_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i.2:                                       ; preds = %if.end.i.1
  %call.i1.3 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.3)
  %cmp2.i.3 = icmp slt i32 %call.i1.3, 0
  br i1 %cmp2.i.3, label %if.end.i.2.do.end32_crit_edge, label %if.end.i.3

if.end.i.2.do.end32_crit_edge:                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i.3:                                       ; preds = %if.end.i.2
  %call.i1.4 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.4)
  %cmp2.i.4 = icmp slt i32 %call.i1.4, 0
  br i1 %cmp2.i.4, label %if.end.i.3.do.end32_crit_edge, label %if.end.i.4

if.end.i.3.do.end32_crit_edge:                    ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i.4:                                       ; preds = %if.end.i.3
  %conv.i.i = shl i32 %call.i1.2, 16
  %shl.i.i = and i32 %conv.i.i, 16711680
  %conv2.i.i = shl i32 %call.i1.3, 8
  %shl3.i.i = and i32 %conv2.i.i, 65280
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %conv5.i.i = and i32 %call.i1.4, 255
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %or6.i.i)
  %cmp22.not = icmp eq i32 %or6.i.i, 514
  br i1 %cmp22.not, label %for.body.i7.preheader, label %if.end.i.4.out_crit_edge

if.end.i.4.out_crit_edge:                         ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.i7.preheader:                            ; preds = %if.end.i.4
  %call.i5 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp2.i6 = icmp slt i32 %call.i5, 0
  br i1 %cmp2.i6, label %for.body.i7.preheader.do.end32_crit_edge, label %if.end.i12

for.body.i7.preheader.do.end32_crit_edge:         ; preds = %for.body.i7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i12:                                       ; preds = %for.body.i7.preheader
  %conv4.i8 = trunc i32 %call.i5 to i8
  %9 = ptrtoint ptr %link_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i8, ptr %link_status, align 1
  %call.i5.1 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.1)
  %cmp2.i6.1 = icmp slt i32 %call.i5.1, 0
  br i1 %cmp2.i6.1, label %if.end.i12.do.end32_crit_edge, label %if.end.i12.1

if.end.i12.do.end32_crit_edge:                    ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i12.1:                                     ; preds = %if.end.i12
  %conv4.i8.1 = trunc i32 %call.i5.1 to i8
  %arrayidx.i9.1 = getelementptr i8, ptr %link_status, i32 1
  %10 = ptrtoint ptr %arrayidx.i9.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i8.1, ptr %arrayidx.i9.1, align 1
  %call.i5.2 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.2)
  %cmp2.i6.2 = icmp slt i32 %call.i5.2, 0
  br i1 %cmp2.i6.2, label %if.end.i12.1.do.end32_crit_edge, label %if.end.i12.2

if.end.i12.1.do.end32_crit_edge:                  ; preds = %if.end.i12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i12.2:                                     ; preds = %if.end.i12.1
  %conv4.i8.2 = trunc i32 %call.i5.2 to i8
  %arrayidx.i9.2 = getelementptr i8, ptr %link_status, i32 2
  %11 = ptrtoint ptr %arrayidx.i9.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i8.2, ptr %arrayidx.i9.2, align 1
  %call.i5.3 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.3)
  %cmp2.i6.3 = icmp slt i32 %call.i5.3, 0
  br i1 %cmp2.i6.3, label %if.end.i12.2.do.end32_crit_edge, label %if.end.i12.3

if.end.i12.2.do.end32_crit_edge:                  ; preds = %if.end.i12.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i12.3:                                     ; preds = %if.end.i12.2
  %conv4.i8.3 = trunc i32 %call.i5.3 to i8
  %arrayidx.i9.3 = getelementptr i8, ptr %link_status, i32 3
  %12 = ptrtoint ptr %arrayidx.i9.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.i8.3, ptr %arrayidx.i9.3, align 1
  %call.i5.4 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.4)
  %cmp2.i6.4 = icmp slt i32 %call.i5.4, 0
  br i1 %cmp2.i6.4, label %if.end.i12.3.do.end32_crit_edge, label %if.end.i12.4

if.end.i12.3.do.end32_crit_edge:                  ; preds = %if.end.i12.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i12.4:                                     ; preds = %if.end.i12.3
  %conv4.i8.4 = trunc i32 %call.i5.4 to i8
  %arrayidx.i9.4 = getelementptr i8, ptr %link_status, i32 4
  %13 = ptrtoint ptr %arrayidx.i9.4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.i8.4, ptr %arrayidx.i9.4, align 1
  %call.i5.5 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.5)
  %cmp2.i6.5 = icmp slt i32 %call.i5.5, 0
  br i1 %cmp2.i6.5, label %if.end.i12.4.do.end32_crit_edge, label %if.end.i12.5

if.end.i12.4.do.end32_crit_edge:                  ; preds = %if.end.i12.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i12.5:                                     ; preds = %if.end.i12.4
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i8.5 = trunc i32 %call.i5.5 to i8
  %arrayidx.i9.5 = getelementptr i8, ptr %link_status, i32 5
  %14 = ptrtoint ptr %arrayidx.i9.5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i8.5, ptr %arrayidx.i9.5, align 1
  br label %out

out:                                              ; preds = %if.end.i12.5, %if.end.i.4.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  br label %if.end34

do.end32:                                         ; preds = %if.end.i12.4.do.end32_crit_edge, %if.end.i12.3.do.end32_crit_edge, %if.end.i12.2.do.end32_crit_edge, %if.end.i12.1.do.end32_crit_edge, %if.end.i12.do.end32_crit_edge, %for.body.i7.preheader.do.end32_crit_edge, %if.end.i.3.do.end32_crit_edge, %if.end.i.2.do.end32_crit_edge, %if.end.i.1.do.end32_crit_edge, %if.end.i.do.end32_crit_edge, %for.body.i.preheader.do.end32_crit_edge, %for.cond3.i.6.do.end32_crit_edge, %for.cond3.i.5.do.end32_crit_edge, %for.cond3.i.4.do.end32_crit_edge, %for.cond3.i.3.do.end32_crit_edge, %for.cond3.i.2.do.end32_crit_edge, %for.cond3.i.1.do.end32_crit_edge, %for.cond3.i.do.end32_crit_edge, %for.body6.i.preheader.do.end32_crit_edge, %for.cond.2.i.do.end32_crit_edge, %for.cond.1.i.do.end32_crit_edge, %for.cond.i.do.end32_crit_edge, %if.end.do.end32_crit_edge, %do.end
  %mbox_mutex2720 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %mbox_mutex2720) #10
  %dev33 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %15 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.121) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %out
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload.sroa.10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_mhdp_hdcp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_mhdp_link_down(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 8
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %link_mutex) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !377

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1482, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %plugged = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 18
  %0 = ptrtoint ptr %plugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %plugged, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool20.not = icmp eq i8 %1, 0
  br i1 %tobool20.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end
  %aux = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 12
  %link = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #10
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value.i, align 1, !annotation !386
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %4)
  %cmp.i = icmp ult i8 %4, 17
  br i1 %cmp.i, label %if.then21.cdns_mhdp_link_power_down.exit_crit_edge, label %if.end.i

if.then21.cdns_mhdp_link_power_down.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_link_power_down.exit

if.end.i:                                         ; preds = %if.then21
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.cdns_mhdp_link_power_down.exit_crit_edge, label %if.end5.i

if.end.i.cdns_mhdp_link_power_down.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_mhdp_link_power_down.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i, align 1
  %7 = and i8 %6, -4
  %8 = or i8 %7, 2
  store i8 %8, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  %9 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %value.addr.i.i, align 1
  %call.i1.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  br label %cdns_mhdp_link_power_down.exit

cdns_mhdp_link_power_down.exit:                   ; preds = %if.end5.i, %if.end.i.cdns_mhdp_link_power_down.exit_crit_edge, %if.then21.cdns_mhdp_link_power_down.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #10
  br label %if.end23

if.end23:                                         ; preds = %cdns_mhdp_link_power_down.exit, %if.end.if.end23_crit_edge
  %link_up = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 17
  %10 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %link_up, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_bridge_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_bridge_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_set_link_status_property(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_update_link_status(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  %status = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plugged = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 18
  %0 = ptrtoint ptr %plugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %plugged, align 2, !range !373
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %status) #10
  %link_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 8
  %2 = call ptr @memset(ptr %status, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %link_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @cdns_mhdp_read_hpd_event(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef %call.i) #13
  br label %cdns_mhdp_detect_hpd.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = tail call fastcc i32 @cdns_mhdp_get_hpd_status(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev7.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %5 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef %call1.i) #13
  br label %cdns_mhdp_detect_hpd.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.i = icmp ne i32 %call1.i, 0
  %frombool2 = zext i1 %tobool11.i to i8
  %7 = ptrtoint ptr %plugged to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool2, ptr %plugged, align 2
  br i1 %tobool11.i, label %if.end, label %if.end8.i.if.then_crit_edge

if.end8.i.if.then_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

cdns_mhdp_detect_hpd.exit.thread:                 ; preds = %do.end6.i, %do.end.i
  %8 = ptrtoint ptr %plugged to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %plugged, align 2
  br label %if.then

if.then:                                          ; preds = %cdns_mhdp_detect_hpd.exit.thread, %if.end8.i.if.then_crit_edge
  tail call fastcc void @cdns_mhdp_link_down(ptr noundef %mhdp)
  %host = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host, align 8
  %rate = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rate, align 4
  %lanes_cnt = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %lanes_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lanes_cnt, align 4
  %conv = zext i8 %13 to i32
  %num_lanes = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %num_lanes, align 8
  br label %out

if.end:                                           ; preds = %if.end8.i
  %15 = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %or.cond = select i1 %tobool7.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then15, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then15:                                        ; preds = %if.end
  %aux = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 12
  %call16 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.then15.if.end32_crit_edge

if.then15.if.end32_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true19:                                  ; preds = %if.then15
  %num_lanes22 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %num_lanes22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_lanes22, align 8
  %call23 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %status, i32 noundef %17) #10
  br i1 %call23, label %land.lhs.true25, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %18 = ptrtoint ptr %num_lanes22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_lanes22, align 8
  %call29 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %status, i32 noundef %19) #10
  br i1 %call29, label %land.lhs.true25.out_crit_edge, label %land.lhs.true25.if.end32_crit_edge

land.lhs.true25.if.end32_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true25.out_crit_edge:                    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end32:                                         ; preds = %land.lhs.true25.if.end32_crit_edge, %land.lhs.true19.if.end32_crit_edge, %if.then15.if.end32_crit_edge
  %link_up = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 17
  %20 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %link_up, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end.if.end33_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end32 ], [ 0, %if.end.if.end33_crit_edge ]
  %link_up34 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 17
  %21 = ptrtoint ptr %link_up34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_up34, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %if.then36, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %if.end33
  %call37 = call fastcc i32 @cdns_mhdp_link_up(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then36.out_crit_edge, label %if.then36.if.end42_crit_edge

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36.out_crit_edge:                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end42:                                         ; preds = %if.then36.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end33.if.end42_crit_edge ], [ 0, %if.then36.if.end42_crit_edge ]
  %bridge_enabled = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 21
  %23 = ptrtoint ptr %bridge_enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bridge_enabled, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool43.not, label %if.end42.out_crit_edge, label %if.then44

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then44:                                        ; preds = %if.end42
  %state45 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 10, i32 0, i32 2
  %25 = ptrtoint ptr %state45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state45, align 4
  %tobool47.not = icmp eq ptr %26, null
  br i1 %tobool47.not, label %if.then44.out_crit_edge, label %if.end52

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end52:                                         ; preds = %if.then44
  %current_mode53 = getelementptr inbounds %struct.cdns_mhdp_bridge_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %current_mode53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %current_mode53, align 4
  %tobool54.not = icmp eq ptr %28, null
  br i1 %tobool54.not, label %if.end52.out_crit_edge, label %if.end56

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end56:                                         ; preds = %if.end52
  %num_lanes58 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %num_lanes58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_lanes58, align 8
  %rate60 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %rate60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate60, align 4
  %call61 = call fastcc zeroext i1 @cdns_mhdp_bandwidth_ok(ptr noundef %mhdp, ptr noundef nonnull %28, i32 noundef %30, i32 noundef %32)
  br i1 %call61, label %do.body, label %if.end56.out_crit_edge

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_update_link_status.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_update_link_status, %if.then70)) #10
          to label %do.end [label %if.then70], !srcloc !365

if.then70:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %28, i32 0, i32 31
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_update_link_status.__UNIQUE_ID_ddebug341, ptr noundef %34, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.135, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then70, %do.body
  call fastcc void @cdns_mhdp_sst_enable(ptr noundef %mhdp, ptr noundef nonnull %28)
  br label %out

out:                                              ; preds = %do.end, %if.end56.out_crit_edge, %if.end52.out_crit_edge, %if.then44.out_crit_edge, %if.end42.out_crit_edge, %if.then36.out_crit_edge, %land.lhs.true25.out_crit_edge, %if.then
  %ret.2 = phi i32 [ %call16, %land.lhs.true25.out_crit_edge ], [ %ret.1, %do.end ], [ %ret.1, %if.end42.out_crit_edge ], [ %call37, %if.then36.out_crit_edge ], [ 0, %if.then ], [ -22, %if.then44.out_crit_edge ], [ -22, %if.end52.out_crit_edge ], [ -22, %if.end56.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %link_mutex) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status) #10
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_read_hpd_event(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.out_crit_edge

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.out_crit_edge

for.cond.1.i.out_crit_edge:                       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end, label %for.cond.2.i.out_crit_edge

for.cond.2.i.out_crit_edge:                       ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %for.cond.2.i
  %call1 = tail call fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext 1, i8 noundef zeroext 10, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %for.body.i.preheader

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

for.body.i.preheader:                             ; preds = %if.end
  %call.i3951 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3951)
  %cmp2.i52 = icmp slt i32 %call.i3951, 0
  br i1 %cmp2.i52, label %for.body.i.preheader.out.thread_crit_edge, label %out.thread45

for.body.i.preheader.out.thread_crit_edge:        ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

out.thread45:                                     ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  %phi.cast = and i32 %call.i3951, 255
  br label %do.body

out.thread:                                       ; preds = %for.body.i.preheader.out.thread_crit_edge, %if.end.out.thread_crit_edge
  %ret.0.ph = phi i32 [ %call1, %if.end.out.thread_crit_edge ], [ %call.i3951, %for.body.i.preheader.out.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  br label %cleanup

out:                                              ; preds = %for.cond.2.i.out_crit_edge, %for.cond.1.i.out_crit_edge, %for.cond.i.out_crit_edge, %entry.out_crit_edge
  %retval.0.i38.ph = phi i32 [ %call.3.i, %for.cond.2.i.out_crit_edge ], [ %call.2.i, %for.cond.1.i.out_crit_edge ], [ %call.1.i, %for.cond.i.out_crit_edge ], [ %call.i, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i38.ph)
  %cmp6 = icmp slt i32 %retval.0.i38.ph, 0
  br i1 %cmp6, label %out.cleanup_crit_edge, label %out.do.body_crit_edge

out.do.body_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %out.do.body_crit_edge, %out.thread45
  %event.0 = phi i32 [ %phi.cast, %out.thread45 ], [ 0, %out.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_read_hpd_event.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_read_hpd_event, %if.then13)) #10
          to label %cleanup [label %if.then13], !srcloc !365

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %and = and i32 %event.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool14.not, ptr @.str.144, ptr @.str.143
  %and16 = and i32 %event.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.144, ptr @.str.145
  %and20 = and i32 %event.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.144, ptr @.str.146
  %and24 = and i32 %event.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.144, ptr @.str.147
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_read_hpd_event.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, ptr noundef nonnull %cond, ptr noundef nonnull %cond18, ptr noundef nonnull %cond22, ptr noundef nonnull %cond26) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body, %out.cleanup_crit_edge, %out.thread
  %retval.0 = phi i32 [ %retval.0.i38.ph, %out.cleanup_crit_edge ], [ %ret.0.ph, %out.thread ], [ %event.0, %do.body ], [ %event.0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_get_hpd_status(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.err_get_hpd_crit_edge

entry.err_get_hpd_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_hpd

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.err_get_hpd_crit_edge

for.cond.i.err_get_hpd_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_hpd

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.err_get_hpd_crit_edge

for.cond.1.i.err_get_hpd_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_hpd

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end, label %for.cond.2.i.err_get_hpd_crit_edge

for.cond.2.i.err_get_hpd_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_hpd

if.end:                                           ; preds = %for.cond.2.i
  %call1 = tail call fastcc i32 @cdns_mhdp_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext 1, i8 noundef zeroext 17, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.i.preheader, label %if.end.err_get_hpd_crit_edge

if.end.err_get_hpd_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_hpd

for.body.i.preheader:                             ; preds = %if.end
  %call.i3039 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3039)
  %cmp2.i40 = icmp slt i32 %call.i3039, 0
  br i1 %cmp2.i40, label %for.body.i.preheader.err_get_hpd_crit_edge, label %if.end8

for.body.i.preheader.err_get_hpd_crit_edge:       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_hpd

if.end8:                                          ; preds = %for.body.i.preheader
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_get_hpd_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_get_hpd_status, %if.then14)) #10
          to label %do.end [label %if.then14], !srcloc !365

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i.le = trunc i32 %call.i3039 to i8
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4.i.le)
  %tobool15.not = icmp eq i8 %conv4.i.le, 0
  %cond = select i1 %tobool15.not, ptr @.str.150, ptr @.str.144
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_get_hpd_status.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148, ptr noundef nonnull %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end8
  %conv17 = and i32 %call.i3039, 255
  br label %cleanup

err_get_hpd:                                      ; preds = %for.body.i.preheader.err_get_hpd_crit_edge, %if.end.err_get_hpd_crit_edge, %for.cond.2.i.err_get_hpd_crit_edge, %for.cond.1.i.err_get_hpd_crit_edge, %for.cond.i.err_get_hpd_crit_edge, %entry.err_get_hpd_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_get_hpd_crit_edge ], [ %call.3.i, %for.cond.2.i.err_get_hpd_crit_edge ], [ %call.2.i, %for.cond.1.i.err_get_hpd_crit_edge ], [ %call.1.i, %for.cond.i.err_get_hpd_crit_edge ], [ %call.i, %entry.err_get_hpd_crit_edge ], [ %call.i3039, %for.body.i.preheader.err_get_hpd_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %err_get_hpd, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_get_hpd ], [ %conv17, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_fw_cb(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_fw_cb.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_fw_cb, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_fw_cb.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.155) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %fw, null
  br i1 %tobool3.not, label %do.end.do.end8_crit_edge, label %lor.lhs.false

do.end.do.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

lor.lhs.false:                                    ; preds = %do.end
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end8_crit_edge, label %if.end10

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end8:                                          ; preds = %lor.lhs.false.do.end8_crit_edge, %do.end.do.end8_crit_edge
  %dev9 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 3
  %4 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.154) #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = tail call fastcc i32 @cdns_mhdp_fw_activate(ptr noundef nonnull %fw, ptr noundef %context)
  tail call void @release_firmware(ptr noundef nonnull %fw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %start_lock = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %start_lock) #10
  %bridge_attached15 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 20
  %6 = ptrtoint ptr %bridge_attached15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bridge_attached15, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  tail call void @_raw_spin_unlock(ptr noundef %start_lock) #10
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.end14
  %connector = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 9
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 8
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev24, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %11) #10
  br label %cleanup

if.else:                                          ; preds = %if.then20
  %bridge25 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_fw_cb, %if.then.i)) #10
          to label %cdns_mhdp_detect.exit [label %if.then.i], !srcloc !365

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %plugged.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 18
  %14 = ptrtoint ptr %plugged.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %plugged.i, align 2, !range !373
  %16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, ptr noundef %13, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %16) #10
  br label %cdns_mhdp_detect.exit

cdns_mhdp_detect.exit:                            ; preds = %if.then.i, %if.else
  %plugged4.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %context, i32 0, i32 18
  %17 = ptrtoint ptr %plugged4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %plugged4.i, align 2, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool5.not.i = icmp eq i8 %18, 0
  %..i = select i1 %tobool5.not.i, i32 2, i32 1
  tail call void @drm_bridge_hpd_notify(ptr noundef %bridge25, i32 noundef %..i) #10
  br label %cleanup

cleanup:                                          ; preds = %cdns_mhdp_detect.exit, %if.then23, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_fw_activate(ptr nocapture noundef readonly %fw, ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhdp, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 134217728) #10, !srcloc !370
  %2 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhdp, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 65536
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr2, ptr noundef %5, i32 noundef %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !392
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mhdp, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #10, !srcloc !370
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 716) #10
  %10 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mhdp, align 8
  %add.ptr19139 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19139) #10, !srcloc !374
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  %and140 = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool.not141 = icmp eq i32 %and140, 0
  br i1 %tobool.not141, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then38.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then28, label %if.then38

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mhdp, align 8
  %add.ptr32 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #10, !srcloc !374
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  br label %for.end

if.then38:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #10
  %18 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mhdp, align 8
  %add.ptr19 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !374
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  %and = and i32 %21, 255
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then38.land.lhs.true_crit_edge, label %if.then38.for.end_crit_edge

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then38.land.lhs.true_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.end:                                          ; preds = %if.then38.for.end_crit_edge, %if.then28, %entry.for.end_crit_edge
  %reg.0 = phi i32 [ %17, %if.then28 ], [ %13, %entry.for.end_crit_edge ], [ %21, %if.then38.for.end_crit_edge ]
  %and41 = and i32 %reg.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.end47, label %if.end48

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.157, i32 noundef %reg.0) #13
  br label %cleanup

if.end48:                                         ; preds = %for.end
  %call49 = tail call fastcc i32 @cdns_mhdp_check_fw_version(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %24 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mhdp, align 8
  %add.ptr56 = getelementptr i8, ptr %25, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  %27 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mhdp, align 8
  %add.ptr63 = getelementptr i8, ptr %28, i32 72
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  %30 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mhdp, align 8
  %add.ptr70 = getelementptr i8, ptr %31, i32 76
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  %33 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mhdp, align 8
  %add.ptr77 = getelementptr i8, ptr %34, i32 80
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #10, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  %call81 = tail call fastcc i32 @cdns_mhdp_set_firmware_active(ptr noundef %mhdp, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end84:                                         ; preds = %if.end52
  %start_lock = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %start_lock) #10
  %hw_state = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 22
  %36 = ptrtoint ptr %hw_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %hw_state, align 4
  %bridge_attached = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 20
  %37 = ptrtoint ptr %bridge_attached to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bridge_attached, align 8, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool85.not = icmp eq i8 %38, 0
  br i1 %tobool85.not, label %if.end84.if.end92_crit_edge, label %do.body87

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

do.body87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mhdp, align 8
  %add.ptr91 = getelementptr i8, ptr %40, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 -33554433) #10, !srcloc !370
  br label %if.end92

if.end92:                                         ; preds = %do.body87, %if.end84.if.end92_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %start_lock) #10
  %fw_load_wq = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %fw_load_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_fw_activate.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_fw_activate, %if.then100)) #10
          to label %cleanup [label %if.then100], !srcloc !365

if.then100:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %dev101 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %41 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_fw_activate.__UNIQUE_ID_ddebug316, ptr noundef %42, ptr noundef nonnull @.str.159) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.end92, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %do.end47
  %retval.0 = phi i32 [ -110, %do.end47 ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call81, %if.end52.cleanup_crit_edge ], [ 0, %if.then100 ], [ 0, %if.end92 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_check_fw_version(ptr nocapture noundef readonly %mhdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhdp, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !374
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %shl = shl i32 %3, 8
  %4 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhdp, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !374
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  %or = or i32 %7, %shl
  %8 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mhdp, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !374
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %shl16 = shl i32 %11, 8
  %12 = ptrtoint ptr %mhdp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mhdp, align 8
  %add.ptr20 = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !374
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  %or24 = or i32 %15, %shl16
  call void @__sanitizer_cov_trace_const_cmp4(i32 33984, i32 %or24)
  %cmp = icmp ult i32 %or24, 33984
  br i1 %cmp, label %if.then, label %if.else32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 26098, i32 %or)
  %cmp25 = icmp eq i32 %or, 26098
  br i1 %cmp25, label %if.then.do.body37_crit_edge, label %if.else

if.then.do.body37_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or24)
  %cmp27 = icmp eq i32 %or24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp28 = icmp eq i32 %or, 0
  %or.cond = select i1 %cmp27, i1 %cmp28, i1 false
  br i1 %or.cond, label %if.else.do.body37_crit_edge, label %do.end

if.else.do.body37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.160, i32 noundef %or, i32 noundef %or24) #13
  br label %cleanup

if.else32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or.frozen = freeze i32 %or
  %div = udiv i32 %or.frozen, 10000
  %div33 = udiv i32 %or, 100
  %rem = urem i32 %div33, 100
  %18 = mul i32 %div, 10000
  %rem34.decomposed = sub i32 %or.frozen, %18
  %rem35.lhs.trunc = trunc i32 %rem34.decomposed to i16
  %rem3564 = urem i16 %rem35.lhs.trunc, 100
  %rem35.zext = zext i16 %rem3564 to i32
  br label %do.body37

do.body37:                                        ; preds = %if.else32, %if.else.do.body37_crit_edge, %if.then.do.body37_crit_edge
  %revision.0 = phi i32 [ %rem35.zext, %if.else32 ], [ 15, %if.then.do.body37_crit_edge ], [ 17, %if.else.do.body37_crit_edge ]
  %minor_num.0 = phi i32 [ %rem, %if.else32 ], [ 2, %if.then.do.body37_crit_edge ], [ 2, %if.else.do.body37_crit_edge ]
  %major_num.0 = phi i32 [ %div, %if.else32 ], [ 1, %if.then.do.body37_crit_edge ], [ 1, %if.else.do.body37_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_check_fw_version.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_check_fw_version, %if.then42)) #10
          to label %cleanup [label %if.then42], !srcloc !365

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %dev43 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %19 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_check_fw_version.__UNIQUE_ID_ddebug315, ptr noundef %20, ptr noundef nonnull @.str.162, i32 noundef %major_num.0, i32 noundef %minor_num.0, i32 noundef %revision.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body37, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then42 ], [ 0, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_set_firmware_active(ptr noundef %mhdp, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i8
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %for.cond, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool7.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool7.not.1, label %for.cond.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool7.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool7.not.2, label %for.cond.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool7.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool7.not.3, label %for.cond.3, label %for.cond.2.out_crit_edge

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call fastcc i32 @cdns_mhdp_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool7.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool7.not.4, label %for.cond.4, label %for.cond.3.out_crit_edge

for.cond.3.out_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.4:                                       ; preds = %for.cond.3
  %call.i = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.cond.4.out.thread_crit_edge, label %if.end.i

for.cond.4.out.thread_crit_edge:                  ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

out.thread:                                       ; preds = %if.end.i.3.out.thread_crit_edge, %if.end.i.2.out.thread_crit_edge, %if.end.i.1.out.thread_crit_edge, %if.end.i.out.thread_crit_edge, %for.cond.4.out.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %for.cond.4.out.thread_crit_edge ], [ %call.i.1, %if.end.i.out.thread_crit_edge ], [ %call.i.2, %if.end.i.1.out.thread_crit_edge ], [ %call.i.3, %if.end.i.2.out.thread_crit_edge ], [ %call.i.4, %if.end.i.3.out.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  br label %do.end

if.end.i:                                         ; preds = %for.cond.4
  %call.i.1 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp2.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp2.i.1, label %if.end.i.out.thread_crit_edge, label %if.end.i.1

if.end.i.out.thread_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end.i.1:                                       ; preds = %if.end.i
  %call.i.2 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp2.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp2.i.2, label %if.end.i.1.out.thread_crit_edge, label %if.end.i.2

if.end.i.1.out.thread_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end.i.2:                                       ; preds = %if.end.i.1
  %call.i.3 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp2.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp2.i.3, label %if.end.i.2.out.thread_crit_edge, label %if.end.i.3

if.end.i.2.out.thread_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end.i.3:                                       ; preds = %if.end.i.2
  %call.i.4 = tail call fastcc i32 @cdns_mhdp_mailbox_read(ptr noundef %mhdp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp2.i.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp2.i.4, label %if.end.i.3.out.thread_crit_edge, label %if.end.i.4

if.end.i.3.out.thread_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  br label %if.end16

out:                                              ; preds = %for.cond.3.out_crit_edge, %for.cond.2.out_crit_edge, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %entry.out_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.out_crit_edge ], [ %call.1, %for.cond.out_crit_edge ], [ %call.2, %for.cond.1.out_crit_edge ], [ %call.3, %for.cond.2.out_crit_edge ], [ %call.4, %for.cond.3.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa)
  %cmp13 = icmp slt i32 %call.lcssa, 0
  br i1 %cmp13, label %out.do.end_crit_edge, label %out.if.end16_crit_edge

out.if.end16_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %out.do.end_crit_edge, %out.thread
  %ret.029 = phi i32 [ %call.i.lcssa, %out.thread ], [ %call.lcssa, %out.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.163) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end, %out.if.end16_crit_edge, %if.end.i.4
  %ret.028 = phi i32 [ %ret.029, %do.end ], [ %call.lcssa, %out.if.end16_crit_edge ], [ 0, %if.end.i.4 ]
  ret i32 %ret.028
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218, !219, !220, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !284, !285, !286, !287, !289, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !304, !305, !306, !307, !308, !310, !311, !312, !313, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !333, !335, !336, !338, !339, !340, !341, !343, !344, !346, !347, !348, !349, !351, !352, !353, !354}
!llvm.module.flags = !{!356, !357, !358, !359, !360, !361, !362, !363}
!llvm.ident = !{!364}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2391, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2395, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cdns_mhdp_wait_for_sw_event.__UNIQUE_ID_ddebug342, !3, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_cdns_mhdp8546__344_2635_mhdp_driver_init6, !8, !"__initcall__kmod_cdns_mhdp8546__344_2635_mhdp_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2635, i32 1}
!9 = !{ptr @__exitcall_mhdp_driver_exit, !8, !"__exitcall_mhdp_driver_exit", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware345, !11, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2637, i32 1}
!12 = !{ptr @__UNIQUE_ID_author346, !13, !"__UNIQUE_ID_author346", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2639, i32 1}
!14 = !{ptr @__UNIQUE_ID_author347, !15, !"__UNIQUE_ID_author347", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2640, i32 1}
!16 = !{ptr @__UNIQUE_ID_author348, !17, !"__UNIQUE_ID_author348", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2641, i32 1}
!18 = !{ptr @__UNIQUE_ID_author349, !19, !"__UNIQUE_ID_author349", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2642, i32 1}
!20 = !{ptr @__UNIQUE_ID_author350, !21, !"__UNIQUE_ID_author350", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2643, i32 1}
!22 = !{ptr @__UNIQUE_ID_description351, !23, !"__UNIQUE_ID_description351", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2644, i32 1}
!24 = !{ptr @__UNIQUE_ID_file352, !25, !"__UNIQUE_ID_file352", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2645, i32 1}
!26 = !{ptr @__UNIQUE_ID_license353, !25, !"__UNIQUE_ID_license353", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_alias354, !28, !"__UNIQUE_ID_alias354", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2646, i32 1}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2629, i32 12}
!31 = !{ptr @mhdp_driver, !32, !"mhdp_driver", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2627, i32 31}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2439, i32 3}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cdns_mhdp_probe._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @cdns_mhdp_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @cdns_mhdp_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2445, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cdns_mhdp_probe.__key.10, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2446, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cdns_mhdp_probe.__key.12, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2447, i32 2}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2455, i32 3}
!51 = !{ptr @cdns_mhdp_probe._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cdns_mhdp_probe._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2459, i32 64}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2462, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cdns_mhdp_probe._entry.18, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @cdns_mhdp_probe._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2470, i32 3}
!62 = !{ptr @cdns_mhdp_probe._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cdns_mhdp_probe._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2483, i32 3}
!66 = !{ptr @cdns_mhdp_probe._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cdns_mhdp_probe._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2491, i32 4}
!70 = !{ptr @cdns_mhdp_probe._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cdns_mhdp_probe._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2501, i32 2}
!74 = !{ptr @cdns_mhdp_probe.__UNIQUE_ID_ddebug343, !73, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2508, i32 6}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2510, i32 3}
!79 = !{ptr @cdns_mhdp_probe._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cdns_mhdp_probe._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2536, i32 3}
!83 = !{ptr @cdns_mhdp_probe._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cdns_mhdp_probe._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @cdns_mhdp_probe.__key.39, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2541, i32 2}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cdns_mhdp_probe.__key.41, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2542, i32 2}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cdns_mhdp_probe.__key.43, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2544, i32 2}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cdns_mhdp_probe.__key.45, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2545, i32 2}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 837, i32 4}
!99 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cdns_mhdp_transfer._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @cdns_mhdp_transfer._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 847, i32 4}
!104 = !{ptr @cdns_mhdp_transfer._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cdns_mhdp_transfer._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 318, i32 3}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cdns_mhdp_dpcd_write._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @cdns_mhdp_dpcd_write._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @cdns_mhdp_bridge_funcs, !112, !"cdns_mhdp_bridge_funcs", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2203, i32 38}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1720, i32 2}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cdns_mhdp_attach.__UNIQUE_ID_ddebug336, !114, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1681, i32 3}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cdns_mhdp_connector_init._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @cdns_mhdp_connector_init._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1690, i32 3}
!124 = !{ptr @cdns_mhdp_connector_init._entry.58, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @cdns_mhdp_connector_init._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1703, i32 3}
!128 = !{ptr @cdns_mhdp_connector_init._entry.61, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cdns_mhdp_connector_init._entry_ptr.63, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @cdns_mhdp_conn_funcs, !131, !"cdns_mhdp_conn_funcs", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1665, i32 41}
!132 = !{ptr @cdns_mhdp_conn_helper_funcs, !133, !"cdns_mhdp_conn_helper_funcs", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1658, i32 48}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1510, i32 3}
!136 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cdns_mhdp_get_modes._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @cdns_mhdp_get_modes._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1525, i32 3}
!141 = !{ptr @cdns_mhdp_get_modes._entry.66, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cdns_mhdp_get_modes._entry_ptr.68, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1531, i32 3}
!145 = !{ptr @cdns_mhdp_get_modes._entry.69, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @cdns_mhdp_get_modes._entry_ptr.71, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 433, i32 3}
!149 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @cdns_mhdp_get_edid_block._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @cdns_mhdp_get_edid_block._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 648, i32 2}
!154 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @cdns_mhdp_detect.__UNIQUE_ID_ddebug314, !153, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1590, i32 3}
!158 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @cdns_mhdp_bandwidth_ok.__UNIQUE_ID_ddebug335, !157, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2091, i32 2}
!162 = !{ptr @cdns_mhdp_detach.__UNIQUE_ID_ddebug340, !161, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1981, i32 2}
!165 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug337, !164, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1997, i32 3}
!169 = !{ptr @cdns_mhdp_atomic_enable._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @cdns_mhdp_atomic_enable._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2045, i32 2}
!173 = !{ptr @cdns_mhdp_atomic_enable.__UNIQUE_ID_ddebug338, !172, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1426, i32 3}
!176 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @cdns_mhdp_link_up._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @cdns_mhdp_link_up._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1437, i32 2}
!181 = !{ptr @cdns_mhdp_link_up.__UNIQUE_ID_ddebug334, !180, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1448, i32 3}
!184 = !{ptr @cdns_mhdp_link_up._entry.86, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @cdns_mhdp_link_up._entry_ptr.88, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1463, i32 3}
!188 = !{ptr @cdns_mhdp_link_up._entry.89, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @cdns_mhdp_link_up._entry_ptr.91, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1471, i32 3}
!192 = !{ptr @cdns_mhdp_link_up._entry.92, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @cdns_mhdp_link_up._entry_ptr.94, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1347, i32 2}
!196 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @cdns_mhdp_get_training_interval_us._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @cdns_mhdp_get_training_interval_us._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1257, i32 5}
!201 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug329, !200, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!203 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1263, i32 5}
!205 = !{ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug330, !204, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1271, i32 4}
!208 = !{ptr @cdns_mhdp_link_training._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @cdns_mhdp_link_training._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1281, i32 4}
!212 = !{ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug331, !211, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1288, i32 4}
!215 = !{ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug332, !214, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1296, i32 3}
!218 = !{ptr @cdns_mhdp_link_training._entry.103, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @cdns_mhdp_link_training._entry_ptr.105, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1300, i32 2}
!222 = !{ptr @cdns_mhdp_link_training.__UNIQUE_ID_ddebug333, !221, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!223 = !{ptr @cdns_mhdp_link_training._entry.107, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1309, i32 3}
!225 = !{ptr @cdns_mhdp_link_training._entry_ptr.108, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1160, i32 2}
!228 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @cdns_mhdp_link_training_cr.__UNIQUE_ID_ddebug328, !227, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1182, i32 4}
!232 = !{ptr @cdns_mhdp_link_training_cr._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @cdns_mhdp_link_training_cr._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1197, i32 4}
!236 = !{ptr @cdns_mhdp_link_training_cr._entry.112, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @cdns_mhdp_link_training_cr._entry_ptr.114, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1202, i32 30}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1226, i32 28}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 893, i32 3}
!244 = !{ptr @cdns_mhdp_link_training_init._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @cdns_mhdp_link_training_init._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 484, i32 3}
!248 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @cdns_mhdp_adjust_lt._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @cdns_mhdp_adjust_lt._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 523, i32 3}
!253 = !{ptr @cdns_mhdp_adjust_lt._entry.120, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @cdns_mhdp_adjust_lt._entry_ptr.122, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1019, i32 2}
!257 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @cdns_mhdp_print_lt_status.__UNIQUE_ID_ddebug322, !256, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!259 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1036, i32 2}
!261 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @cdns_mhdp_link_training_channel_eq.__UNIQUE_ID_ddebug323, !260, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!263 = !{ptr @cdns_mhdp_link_training_channel_eq._entry, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1061, i32 4}
!265 = !{ptr @cdns_mhdp_link_training_channel_eq._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1074, i32 30}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1085, i32 28}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 202, i32 3}
!272 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @cdns_mhdp_reg_read._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @cdns_mhdp_reg_read._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 1912, i32 3}
!277 = !{ptr @cdns_mhdp_configure_video._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @cdns_mhdp_configure_video._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2061, i32 2}
!281 = !{ptr @cdns_mhdp_atomic_disable.__UNIQUE_ID_ddebug339, !280, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!282 = !{ptr @.str.133, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2160, i32 3}
!284 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @cdns_mhdp_atomic_check._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @cdns_mhdp_atomic_check._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2320, i32 3}
!289 = !{ptr @cdns_mhdp_update_link_status.__UNIQUE_ID_ddebug341, !288, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!290 = !{ptr @.str.136, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2228, i32 3}
!292 = !{ptr @.str.137, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @cdns_mhdp_detect_hpd._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @cdns_mhdp_detect_hpd._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2235, i32 3}
!297 = !{ptr @cdns_mhdp_detect_hpd._entry.138, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @cdns_mhdp_detect_hpd._entry_ptr.140, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.141, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 464, i32 2}
!301 = !{ptr @.str.142, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @cdns_mhdp_read_hpd_event.__UNIQUE_ID_ddebug309, !300, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!303 = !{ptr @.str.143, !300, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.144, !300, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.145, !300, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.147, !300, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.148, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 382, i32 2}
!310 = !{ptr @.str.149, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @cdns_mhdp_get_hpd_status.__UNIQUE_ID_ddebug308, !309, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!312 = !{ptr @.str.150, !309, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.151, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 806, i32 51}
!315 = !{ptr @.str.152, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 809, i32 3}
!317 = !{ptr @.str.153, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @cdns_mhdp_load_firmware._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @cdns_mhdp_load_firmware._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 769, i32 2}
!322 = !{ptr @.str.155, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @cdns_mhdp_fw_cb.__UNIQUE_ID_ddebug317, !321, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!324 = !{ptr @.str.156, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 772, i32 3}
!326 = !{ptr @cdns_mhdp_fw_cb._entry, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @cdns_mhdp_fw_cb._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.157, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 718, i32 3}
!330 = !{ptr @.str.158, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @cdns_mhdp_fw_activate._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @cdns_mhdp_fw_activate._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.159, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 758, i32 2}
!335 = !{ptr @cdns_mhdp_fw_activate.__UNIQUE_ID_ddebug316, !334, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!336 = !{ptr @.str.160, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 680, i32 4}
!338 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @cdns_mhdp_check_fw_version._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @cdns_mhdp_check_fw_version._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.162, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 691, i32 2}
!343 = !{ptr @cdns_mhdp_check_fw_version.__UNIQUE_ID_ddebug315, !342, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!344 = !{ptr @.str.163, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 353, i32 3}
!346 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @cdns_mhdp_set_firmware_active._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @cdns_mhdp_set_firmware_active._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.165, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2585, i32 3}
!351 = !{ptr @.str.166, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @cdns_mhdp_remove._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @cdns_mhdp_remove._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @mhdp_ids, !355, !"mhdp_ids", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c", i32 2613, i32 34}
!356 = !{i32 1, !"wchar_size", i32 2}
!357 = !{i32 1, !"min_enum_size", i32 4}
!358 = !{i32 8, !"branch-target-enforcement", i32 0}
!359 = !{i32 8, !"sign-return-address", i32 0}
!360 = !{i32 8, !"sign-return-address-all", i32 0}
!361 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!362 = !{i32 7, !"uwtable", i32 1}
!363 = !{i32 7, !"frame-pointer", i32 2}
!364 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!365 = !{i64 2148788704, i64 2148788709, i64 2148788722, i64 2148788766, i64 2148788800, i64 2148788821}
!366 = !{i64 2148306308}
!367 = !{i64 791131, i64 791156, i64 791178, i64 791194, i64 791206, i64 791226, i64 791250, i64 791266, i64 791278}
!368 = !{i64 2148306496}
!369 = !{i64 2157138647}
!370 = !{i64 4267221}
!371 = !{i64 2157139094}
!372 = !{i64 2157141792}
!373 = !{i8 0, i8 2}
!374 = !{i64 4267639}
!375 = !{i64 2157116877}
!376 = !{i64 2157117465}
!377 = !{!"branch_weights", i32 2000, i32 1}
!378 = !{i64 2156912945}
!379 = !{i64 2156913443}
!380 = !{i64 2156913672}
!381 = !{i64 2156909882}
!382 = !{i64 2156910380}
!383 = !{i64 2156910890}
!384 = !{i64 2157069128}
!385 = !{i64 2157096145}
!386 = !{!"auto-init"}
!387 = !{!"branch_weights", i32 1, i32 2000}
!388 = !{i64 2157105631}
!389 = !{i64 2157107538}
!390 = !{i8 0, i8 9}
!391 = !{i64 2156946817}
!392 = !{i64 2156947364}
!393 = !{i64 2156950943}
!394 = !{i64 2156951441}
!395 = !{i64 2156953738}
!396 = !{i64 2156954244}
!397 = !{i64 2156954750}
!398 = !{i64 2156955256}
!399 = !{i64 2156955594}
!400 = !{i64 2156940666}
!401 = !{i64 2156941172}
!402 = !{i64 2156941678}
!403 = !{i64 2156942184}
