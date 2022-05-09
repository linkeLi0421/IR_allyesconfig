; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vco_cntrl_value = type { i32, i32, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rcar_mipi_dsi = type { ptr, ptr, ptr, %struct.mipi_dsi_host, %struct.drm_bridge, ptr, %struct.drm_connector, ptr, %struct.anon.93, i32, i32, i32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.anon.93 = type { ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.dsi_setup_info = type { i32, i16, i16, i16, i16, i32, i32 }

@__initcall__kmod_rcar_mipi_dsi__312_816_rcar_mipi_dsi_platform_driver_init6 = internal global ptr @rcar_mipi_dsi_platform_driver_init, section ".initcall6.init", align 4
@rcar_mipi_dsi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_mipi_dsi_probe, ptr @rcar_mipi_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_mipi_dsi_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_mipi_dsi_platform_driver_exit = internal global ptr @rcar_mipi_dsi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description313 = internal constant [64 x i8] c"rcar_mipi_dsi.description=Renesas R-Car MIPI DSI Encoder Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [57 x i8] c"rcar_mipi_dsi.file=drivers/gpu/drm/rcar-du/rcar_mipi_dsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [26 x i8] c"rcar_mipi_dsi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rcar-mipi-dsi\00", [18 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779a0-dsi-csi2-tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get cpg reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_mipi_dsi_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_probe._entry_ptr = internal global ptr @rcar_mipi_dsi_probe._entry, section ".printk_index", align 4
@rcar_mipi_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @rcar_mipi_dsi_host_attach, ptr @rcar_mipi_dsi_host_detach, ptr null }, [20 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_parse_dt.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rcar_mipi_dsi\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_mipi_dsi_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unconnected port@1\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"missing or invalid data-lanes property\0A\00", [56 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_parse_dt._entry_ptr = internal global ptr @rcar_mipi_dsi_parse_dt._entry, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no input clock (pll, dsi)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_mipi_dsi_get_clocks\00", [39 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_get_clocks._entry_ptr = internal global ptr @rcar_mipi_dsi_get_clocks._entry, section ".printk_index", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get %s clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get next bridge: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_mipi_dsi_host_attach\00", [38 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_host_attach._entry_ptr = internal global ptr @rcar_mipi_dsi_host_attach._entry, section ".printk_index", align 4
@rcar_mipi_dsi_bridge_ops = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @rcar_mipi_dsi_attach, ptr null, ptr @rcar_mipi_dsi_bridge_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_mipi_dsi_atomic_enable, ptr @rcar_mipi_dsi_atomic_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_atomic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable DSI clocks\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_mipi_dsi_atomic_enable\00", [36 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_atomic_enable._entry_ptr = internal global ptr @rcar_mipi_dsi_atomic_enable._entry, section ".printk_index", align 4
@rcar_mipi_dsi_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 336, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid format\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_mipi_dsi_startup\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_startup._entry_ptr = internal global ptr @rcar_mipi_dsi_startup._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_mipi_dsi_startup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable PPI clock\0A\00", [36 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_startup._entry_ptr.26 = internal global ptr @rcar_mipi_dsi_startup._entry.24, section ".printk_index", align 4
@rcar_mipi_dsi_startup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.3, i32 426, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unsupported format\00", [45 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_startup._entry_ptr.29 = internal global ptr @rcar_mipi_dsi_startup._entry.27, section ".printk_index", align 4
@rcar_mipi_dsi_startup.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.22, ptr @.str.3, ptr @.str.30, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSI device is started\0A\00", [41 x i8] zeroinitializer }, align 32
@vco_cntrl_table = internal constant { [12 x %struct.vco_cntrl_value], [48 x i8] } { [12 x %struct.vco_cntrl_value] [%struct.vco_cntrl_value { i32 40000000, i32 55000000, i16 63 }, %struct.vco_cntrl_value { i32 52500000, i32 80000000, i16 57 }, %struct.vco_cntrl_value { i32 80000000, i32 110000000, i16 47 }, %struct.vco_cntrl_value { i32 105000000, i32 160000000, i16 41 }, %struct.vco_cntrl_value { i32 160000000, i32 220000000, i16 31 }, %struct.vco_cntrl_value { i32 210000000, i32 320000000, i16 25 }, %struct.vco_cntrl_value { i32 320000000, i32 440000000, i16 15 }, %struct.vco_cntrl_value { i32 420000000, i32 660000000, i16 9 }, %struct.vco_cntrl_value { i32 630000000, i32 1149000000, i16 3 }, %struct.vco_cntrl_value { i32 1100000000, i32 1152000000, i16 1 }, %struct.vco_cntrl_value { i32 1150000000, i32 1250000000, i16 1 }, %struct.vco_cntrl_value zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hsfreqrange_table = internal constant { [64 x [2 x i32]], [128 x i8] } { [64 x [2 x i32]] [[2 x i32] [i32 80000000, i32 0], [2 x i32] [i32 90000000, i32 16], [2 x i32] [i32 100000000, i32 32], [2 x i32] [i32 110000000, i32 48], [2 x i32] [i32 120000000, i32 1], [2 x i32] [i32 130000000, i32 17], [2 x i32] [i32 140000000, i32 33], [2 x i32] [i32 150000000, i32 49], [2 x i32] [i32 160000000, i32 2], [2 x i32] [i32 170000000, i32 18], [2 x i32] [i32 180000000, i32 34], [2 x i32] [i32 190000000, i32 50], [2 x i32] [i32 205000000, i32 3], [2 x i32] [i32 220000000, i32 19], [2 x i32] [i32 235000000, i32 35], [2 x i32] [i32 250000000, i32 51], [2 x i32] [i32 275000000, i32 4], [2 x i32] [i32 300000000, i32 20], [2 x i32] [i32 325000000, i32 37], [2 x i32] [i32 350000000, i32 53], [2 x i32] [i32 400000000, i32 5], [2 x i32] [i32 450000000, i32 22], [2 x i32] [i32 500000000, i32 38], [2 x i32] [i32 550000000, i32 55], [2 x i32] [i32 600000000, i32 7], [2 x i32] [i32 650000000, i32 24], [2 x i32] [i32 700000000, i32 40], [2 x i32] [i32 750000000, i32 57], [2 x i32] [i32 800000000, i32 9], [2 x i32] [i32 850000000, i32 25], [2 x i32] [i32 900000000, i32 41], [2 x i32] [i32 950000000, i32 58], [2 x i32] [i32 1000000000, i32 10], [2 x i32] [i32 1050000000, i32 26], [2 x i32] [i32 1100000000, i32 42], [2 x i32] [i32 1150000000, i32 59], [2 x i32] [i32 1200000000, i32 11], [2 x i32] [i32 1250000000, i32 27], [2 x i32] [i32 1300000000, i32 43], [2 x i32] [i32 1350000000, i32 60], [2 x i32] [i32 1400000000, i32 12], [2 x i32] [i32 1450000000, i32 28], [2 x i32] [i32 1500000000, i32 44], [2 x i32] [i32 1550000000, i32 61], [2 x i32] [i32 1600000000, i32 13], [2 x i32] [i32 1650000000, i32 29], [2 x i32] [i32 1700000000, i32 46], [2 x i32] [i32 1750000000, i32 62], [2 x i32] [i32 1800000000, i32 14], [2 x i32] [i32 1850000000, i32 30], [2 x i32] [i32 1900000000, i32 47], [2 x i32] [i32 1950000000, i32 63], [2 x i32] [i32 2000000000, i32 15], [2 x i32] [i32 2050000000, i32 64], [2 x i32] [i32 2100000000, i32 65], [2 x i32] [i32 -2144967296, i32 66], [2 x i32] [i32 -2094967296, i32 67], [2 x i32] [i32 -2044967296, i32 68], [2 x i32] [i32 -1994967296, i32 69], [2 x i32] [i32 -1944967296, i32 70], [2 x i32] [i32 -1894967296, i32 71], [2 x i32] [i32 -1844967296, i32 72], [2 x i32] [i32 -1794967296, i32 73], [2 x i32] zeroinitializer], [128 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rcar_mipi_dsi_parameters_calc\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%pC %lu Hz -> Fout %lu Hz (target %lu Hz, error %d.%02u%%), PLL M/N/DIV %u/%u/%u\0A\00", [46 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"vco_cntrl = 0x%x\09prop_cntrl = 0x%x\09hsfreqrange = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_phtw_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PHY test interface write timeout (0x%08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_mipi_dsi_phtw_test\00", [40 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_phtw_test._entry_ptr = internal global ptr @rcar_mipi_dsi_phtw_test._entry, section ".printk_index", align 4
@rcar_mipi_dsi_set_display_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.36, ptr @.str.3, i32 285, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rcar_mipi_dsi_set_display_timing\00", [63 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_set_display_timing._entry_ptr = internal global ptr @rcar_mipi_dsi_set_display_timing._entry, section ".printk_index", align 4
@rcar_mipi_dsi_start_hs_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable HS clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcar_mipi_dsi_start_hs_clock\00", [35 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_start_hs_clock._entry_ptr = internal global ptr @rcar_mipi_dsi_start_hs_clock._entry, section ".printk_index", align 4
@rcar_mipi_dsi_start_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Link failed to become ready\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_mipi_dsi_start_video\00", [38 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_start_video._entry_ptr = internal global ptr @rcar_mipi_dsi_start_video._entry, section ".printk_index", align 4
@rcar_mipi_dsi_start_video._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to de-assert video FIFO clear\0A\00", [58 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_start_video._entry_ptr.43 = internal global ptr @rcar_mipi_dsi_start_video._entry.41, section ".printk_index", align 4
@rcar_mipi_dsi_start_video._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enable video transmission\0A\00", [59 x i8] zeroinitializer }, align 32
@rcar_mipi_dsi_start_video._entry_ptr.46 = internal global ptr @rcar_mipi_dsi_start_video._entry.44, section ".printk_index", align 4
@rcar_mipi_dsi_shutdown.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_mipi_dsi_shutdown\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSI device is shutdown\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.rcar_mipi_dsi_startup = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.rcar_mipi_dsi_parameters_calc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 18, i64 24]
@___asan_gen_.50 = private unnamed_addr constant [30 x i8] c"rcar_mipi_dsi_platform_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 807, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 811, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"rcar_mipi_dsi_of_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 800, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 777, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"rcar_mipi_dsi_host_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 671, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 688, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 692, i32 48 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 697, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 730, i32 49 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 734, i32 49 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 739, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 718, i32 40 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 719, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 649, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"rcar_mipi_dsi_bridge_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 619, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 575, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 336, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 405, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 426, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 437, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"vco_cntrl_table\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 111, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"hsfreqrange_table\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 80, i32 18 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 257, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 261, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 157, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 285, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 497, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 516, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 527, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 538, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [43 x i8] c"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 447, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [35 x i8] c"switch.table.rcar_mipi_dsi_startup\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [43 x i8] c"switch.table.rcar_mipi_dsi_parameters_calc\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_rcar_mipi_dsi_platform_driver_exit, ptr @__initcall__kmod_rcar_mipi_dsi__312_816_rcar_mipi_dsi_platform_driver_init6, ptr @rcar_mipi_dsi_atomic_enable._entry, ptr @rcar_mipi_dsi_atomic_enable._entry_ptr, ptr @rcar_mipi_dsi_get_clocks._entry, ptr @rcar_mipi_dsi_get_clocks._entry_ptr, ptr @rcar_mipi_dsi_host_attach._entry, ptr @rcar_mipi_dsi_host_attach._entry_ptr, ptr @rcar_mipi_dsi_parse_dt._entry, ptr @rcar_mipi_dsi_parse_dt._entry_ptr, ptr @rcar_mipi_dsi_phtw_test._entry, ptr @rcar_mipi_dsi_phtw_test._entry_ptr, ptr @rcar_mipi_dsi_platform_driver_exit, ptr @rcar_mipi_dsi_probe._entry, ptr @rcar_mipi_dsi_probe._entry_ptr, ptr @rcar_mipi_dsi_set_display_timing._entry, ptr @rcar_mipi_dsi_set_display_timing._entry_ptr, ptr @rcar_mipi_dsi_start_hs_clock._entry, ptr @rcar_mipi_dsi_start_hs_clock._entry_ptr, ptr @rcar_mipi_dsi_start_video._entry, ptr @rcar_mipi_dsi_start_video._entry.41, ptr @rcar_mipi_dsi_start_video._entry.44, ptr @rcar_mipi_dsi_start_video._entry_ptr, ptr @rcar_mipi_dsi_start_video._entry_ptr.43, ptr @rcar_mipi_dsi_start_video._entry_ptr.46, ptr @rcar_mipi_dsi_startup._entry, ptr @rcar_mipi_dsi_startup._entry.24, ptr @rcar_mipi_dsi_startup._entry.27, ptr @rcar_mipi_dsi_startup._entry_ptr, ptr @rcar_mipi_dsi_startup._entry_ptr.26, ptr @rcar_mipi_dsi_startup._entry_ptr.29, ptr @rcar_mipi_dsi_platform_driver, ptr @.str, ptr @rcar_mipi_dsi_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rcar_mipi_dsi_host_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rcar_mipi_dsi_bridge_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @vco_cntrl_table, ptr @hsfreqrange_table, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @switch.table.rcar_mipi_dsi_startup, ptr @switch.table.rcar_mipi_dsi_parameters_calc], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_bridge_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_atomic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_startup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_startup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_cntrl_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsfreqrange_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_phtw_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_set_display_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_start_hs_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_start_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_start_video._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_mipi_dsi_start_video._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rcar_mipi_dsi_startup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rcar_mipi_dsi_parameters_calc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_mipi_dsi_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_mipi_dsi_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_mipi_dsi_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_mipi_dsi_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_mipi_dsi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1384, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %info = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %info, align 4
  %call5 = tail call fastcc i32 @rcar_mipi_dsi_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 8
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %call9) #7
  %mmio = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %mmio, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 8
  %call.i.i = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i.i to i32
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %call8.i.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %11, i32 noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #7
  %clocks66.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %clocks66.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %clocks66.i, align 4
  br label %rcar_mipi_dsi_get_clocks.exit

if.end.i:                                         ; preds = %if.end17
  %clocks.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %clocks.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %clocks.i, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  %call.i50.i = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.11) #7
  %cmp.i.i51.i = icmp ugt ptr %call.i50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i51.i, label %if.end.i53.i, label %rcar_mipi_dsi_get_clock.exit55.i

if.end.i53.i:                                     ; preds = %if.end.i
  %cmp.i52.i = icmp eq ptr %call.i50.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i52.i, label %rcar_mipi_dsi_get_clock.exit55.thread.i, label %if.then12.i

rcar_mipi_dsi_get_clock.exit55.thread.i:          ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll68.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %pll68.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pll68.i, align 4
  br label %if.end16.i

rcar_mipi_dsi_get_clock.exit55.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %pll.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i50.i, ptr %pll.i, align 4
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call.i50.i to i32
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  %call8.i54.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %20, i32 noundef %18, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11) #7
  %pll81.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %pll81.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i50.i, ptr %pll81.i, align 4
  br label %rcar_mipi_dsi_get_clocks.exit

if.end16.i:                                       ; preds = %rcar_mipi_dsi_get_clock.exit55.i, %rcar_mipi_dsi_get_clock.exit55.thread.i
  %pll70.i = phi ptr [ %pll68.i, %rcar_mipi_dsi_get_clock.exit55.thread.i ], [ %pll.i, %rcar_mipi_dsi_get_clock.exit55.i ]
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %call.i57.i = tail call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull @.str.12) #7
  %cmp.i.i58.i = icmp ugt ptr %call.i57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i58.i, label %if.end.i60.i, label %if.end27.i

if.end.i60.i:                                     ; preds = %if.end16.i
  %cmp.i59.i = icmp eq ptr %call.i57.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i59.i, label %if.end27.thread.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call.i57.i to i32
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %call8.i61.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %26, i32 noundef %24, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #7
  %dsi1982.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8, i32 2
  %27 = ptrtoint ptr %dsi1982.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i57.i, ptr %dsi1982.i, align 4
  br label %rcar_mipi_dsi_get_clocks.exit

if.end27.i:                                       ; preds = %if.end16.i
  %dsi19.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %dsi19.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i57.i, ptr %dsi19.i, align 4
  %29 = ptrtoint ptr %pll70.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll70.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  %tobool32.not.i = icmp eq ptr %call.i57.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool32.not.i, i1 false
  br i1 %or.cond.i, label %if.end27.i.rcar_mipi_dsi_get_clocks.exit.thread72_crit_edge, label %if.end27.i.if.end21_crit_edge

if.end27.i.if.end21_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end27.i.rcar_mipi_dsi_get_clocks.exit.thread72_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_mipi_dsi_get_clocks.exit.thread72

if.end27.thread.i:                                ; preds = %if.end.i60.i
  %dsi1972.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %dsi1972.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %dsi1972.i, align 4
  %32 = ptrtoint ptr %pll70.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pll70.i, align 4
  %tobool.not76.i = icmp eq ptr %33, null
  br i1 %tobool.not76.i, label %if.end27.thread.i.rcar_mipi_dsi_get_clocks.exit.thread72_crit_edge, label %if.end27.thread.i.if.end21_crit_edge

if.end27.thread.i.if.end21_crit_edge:             ; preds = %if.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end27.thread.i.rcar_mipi_dsi_get_clocks.exit.thread72_crit_edge: ; preds = %if.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_mipi_dsi_get_clocks.exit.thread72

rcar_mipi_dsi_get_clocks.exit.thread72:           ; preds = %if.end27.thread.i.rcar_mipi_dsi_get_clocks.exit.thread72_crit_edge, %if.end27.i.rcar_mipi_dsi_get_clocks.exit.thread72_crit_edge
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.13) #10
  br label %cleanup

rcar_mipi_dsi_get_clocks.exit:                    ; preds = %if.then23.i, %if.then12.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %18, %if.then12.i ], [ %24, %if.then23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp19, label %rcar_mipi_dsi_get_clocks.exit.cleanup_crit_edge, label %rcar_mipi_dsi_get_clocks.exit.if.end21_crit_edge

rcar_mipi_dsi_get_clocks.exit.if.end21_crit_edge: ; preds = %rcar_mipi_dsi_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

rcar_mipi_dsi_get_clocks.exit.cleanup_crit_edge:  ; preds = %rcar_mipi_dsi_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %rcar_mipi_dsi_get_clocks.exit.if.end21_crit_edge, %if.end27.thread.i.if.end21_crit_edge, %if.end27.i.if.end21_crit_edge
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  %call.i.i68 = tail call ptr @__devm_reset_control_get(ptr noundef %37, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rstc = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i68, ptr %rstc, align 8
  %cmp.i69 = icmp ugt ptr %call.i.i68, inttoptr (i32 -4096 to ptr)
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 8
  br i1 %cmp.i69, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.1) #10
  %41 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rstc, align 8
  %43 = ptrtoint ptr %42 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %host = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %40, ptr %host, align 4
  %ops = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %call.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @rcar_mipi_dsi_host_ops, ptr %ops, align 4
  %call35 = tail call i32 @mipi_dsi_host_register(ptr noundef %host) #7
  %46 = tail call i32 @llvm.smin.i32(i32 %call35, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %rcar_mipi_dsi_get_clocks.exit.cleanup_crit_edge, %rcar_mipi_dsi_get_clocks.exit.thread72, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then14 ], [ %43, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %retval.0.i, %rcar_mipi_dsi_get_clocks.exit.cleanup_crit_edge ], [ %46, %if.end30 ], [ -22, %rcar_mipi_dsi_get_clocks.exit.thread72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_mipi_dsi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %1, i32 0, i32 3
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_mipi_dsi_parse_dt(ptr nocapture noundef %dsi) unnamed_addr #2 align 64 {
entry:
  %data_lanes = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data_lanes) #7
  %0 = call ptr @memset(ptr %data_lanes, i32 255, i32 16)
  %1 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsi, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %4, i32 noundef 1, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_mipi_dsi_parse_dt.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_mipi_dsi_parse_dt, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !132

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsi, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_mipi_dsi_parse_dt.__UNIQUE_ID_ddebug311, ptr noundef %6, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %data_lanes, i32 noundef 1, i32 noundef 4) #7
  call void @of_node_put(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsi, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %num_data_lanes = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 10
  %9 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call8, ptr %num_data_lanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end12, %if.then5, %do.body
  %retval.0 = phi i32 [ -19, %do.end12 ], [ 0, %if.end14 ], [ -19, %if.then5 ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data_lanes) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_mipi_dsi_host_attach(ptr noundef %host, ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -12
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 8
  %num_data_lanes = getelementptr i8, ptr %host, i32 1360
  %2 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_data_lanes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lanes2 = getelementptr i8, ptr %host, i32 1364
  %4 = ptrtoint ptr %lanes2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %lanes2, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 5
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 4
  %format3 = getelementptr i8, ptr %host, i32 1356
  %7 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %format3, align 8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @devm_drm_of_get_bridge(ptr noundef %9, ptr noundef %11, i32 noundef 1, i32 noundef 0) #7
  %next_bridge = getelementptr i8, ptr %host, i32 296
  %12 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %next_bridge, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call5 to i32
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17, i32 noundef %13) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bridge = getelementptr i8, ptr %host, i32 16
  %funcs = getelementptr i8, ptr %host, i32 172
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rcar_mipi_dsi_bridge_ops, ptr %funcs, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %of_node14 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node14, align 8
  %of_node16 = getelementptr i8, ptr %host, i32 156
  %21 = ptrtoint ptr %of_node16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %of_node16, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then8 ], [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_mipi_dsi_host_detach(ptr noundef %host, ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr i8, ptr %host, i32 16
  tail call void @drm_bridge_remove(ptr noundef %bridge) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_of_get_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_mipi_dsi_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call1 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #7
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_mipi_dsi_bridge_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 297000, i32 %1)
  %cmp = icmp sgt i32 %1, 297000
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_mipi_dsi_atomic_enable(ptr noundef %bridge, ptr nocapture noundef readonly %old_bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old_bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_bridge_state, align 4
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -28
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call2 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %3) #7
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %call2, i32 0, i32 9
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %9, i32 %5, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %crtc4 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc4, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtcs.i, align 4
  %index.i.i34 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %index.i.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i34, align 4
  %new_state.i35 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %17, i32 3
  %18 = ptrtoint ptr %new_state.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_state.i35, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7
  %rstc.i = getelementptr i8, ptr %bridge, i32 -20
  %20 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rstc.i, align 8
  %call.i = tail call i32 @reset_control_deassert(ptr noundef %21) #7
  %clocks.i = getelementptr i8, ptr %bridge, i32 1328
  %22 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clocks.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %drm_atomic_get_new_connector_state.exit.clk_prepare_enable.exit.i_crit_edge

drm_atomic_get_new_connector_state.exit.clk_prepare_enable.exit.i_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %drm_atomic_get_new_connector_state.exit
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i36_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i36_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i36

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %drm_atomic_get_new_connector_state.exit.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %drm_atomic_get_new_connector_state.exit.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %clk_prepare_enable.exit.i.do.end_crit_edge, label %clk_prepare_enable.exit.i.if.end.i36_crit_edge

clk_prepare_enable.exit.i.if.end.i36_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i36

clk_prepare_enable.exit.i.do.end_crit_edge:       ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i36:                                       ; preds = %clk_prepare_enable.exit.i.if.end.i36_crit_edge, %if.end.i.i.if.end.i36_crit_edge
  %dsi3.i = getelementptr i8, ptr %bridge, i32 1336
  %24 = ptrtoint ptr %dsi3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dsi3.i, align 4
  %call.i18.i = tail call i32 @clk_prepare(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool.not.i19.i, label %if.end.i22.i, label %if.end.i36.clk_prepare_enable.exit25.i_crit_edge

if.end.i36.clk_prepare_enable.exit25.i_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit25.i

if.end.i22.i:                                     ; preds = %if.end.i36
  %call1.i20.i = tail call i32 @clk_enable(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool2.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool2.not.i21.i, label %if.end.i22.i.if.end_crit_edge, label %if.then3.i23.i

if.end.i22.i.if.end_crit_edge:                    ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i23.i:                                   ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %25) #7
  br label %clk_prepare_enable.exit25.i

clk_prepare_enable.exit25.i:                      ; preds = %if.then3.i23.i, %if.end.i36.clk_prepare_enable.exit25.i_crit_edge
  %retval.0.i24.i = phi i32 [ %call.i18.i, %if.end.i36.clk_prepare_enable.exit25.i_crit_edge ], [ %call1.i20.i, %if.then3.i23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i24.i)
  %cmp5.i = icmp slt i32 %retval.0.i24.i, 0
  br i1 %cmp5.i, label %err_clock.i, label %clk_prepare_enable.exit25.i.if.end_crit_edge

clk_prepare_enable.exit25.i.if.end_crit_edge:     ; preds = %clk_prepare_enable.exit25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

err_clock.i:                                      ; preds = %clk_prepare_enable.exit25.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clocks.i, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  br label %do.end

do.end:                                           ; preds = %err_clock.i, %clk_prepare_enable.exit.i.do.end_crit_edge
  %28 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rstc.i, align 8
  %call11.i = tail call i32 @reset_control_assert(ptr noundef %29) #7
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit25.i.if.end_crit_edge, %if.end.i22.i.if.end_crit_edge
  %call7 = tail call fastcc i32 @rcar_mipi_dsi_startup(ptr noundef %add.ptr.i, ptr noundef %adjusted_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.err_dsi_startup_crit_edge, label %if.end10

if.end.err_dsi_startup_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dsi_startup

if.end10:                                         ; preds = %if.end
  %format.i = getelementptr i8, ptr %bridge, i32 1340
  %32 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format.i, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %do.end.i [
    i32 0, label %if.end10.if.then.i_crit_edge
    i32 1, label %if.end10.if.then.i_crit_edge88
    i32 2, label %if.then4.i
    i32 3, label %if.then9.i
  ]

if.end10.if.then.i_crit_edge88:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end10.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge88
  %mmio.i.i = getelementptr i8, ptr %bridge, i32 1324
  %35 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 15872) #7, !srcloc !134
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %mmio.i99.i = getelementptr i8, ptr %bridge, i32 1324
  %37 = ptrtoint ptr %mmio.i99.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i99.i, align 8
  %add.ptr.i100.i = getelementptr i8, ptr %38, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 7680) #7, !srcloc !134
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %mmio.i106.i = getelementptr i8, ptr %bridge, i32 1324
  %39 = ptrtoint ptr %mmio.i106.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i106.i, align 8
  %add.ptr.i107.i = getelementptr i8, ptr %40, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 3584) #7, !srcloc !134
  br label %if.end12.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.28) #10
  br label %rcar_mipi_dsi_set_display_timing.exit

if.end12.i:                                       ; preds = %if.then9.i, %if.then4.i, %if.then.i
  %mmio.i108.i = getelementptr i8, ptr %bridge, i32 1324
  %43 = ptrtoint ptr %mmio.i108.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i108.i, align 8
  %add.ptr.i109.i = getelementptr i8, ptr %44, i32 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 125894656) #7, !srcloc !134
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 11
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %and.i = shl i32 %46, 14
  %47 = and i32 %and.i, 65536
  %and14.i = shl i32 %46, 17
  %48 = and i32 %and14.i, 131072
  %49 = or i32 %48, %47
  %or18.i = xor i32 %49, 196610
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 6
  %50 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vdisplay.i, align 2
  %conv.i = zext i16 %51 to i32
  %and19.i = shl nuw i32 %conv.i, 16
  %shl.i = and i32 %and19.i, 2147418112
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 8
  %52 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vsync_end.i, align 2
  %conv20.i = zext i16 %53 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 7
  %54 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vsync_start.i, align 4
  %conv21.i = zext i16 %55 to i32
  %sub.i = sub nsw i32 %conv20.i, %conv21.i
  %and22.i = and i32 %sub.i, 4095
  %or24.i = or i32 %and22.i, %shl.i
  %sub29.i = sub nsw i32 %conv21.i, %conv.i
  %and30.i = shl i32 %sub29.i, 16
  %shl31.i = and i32 %and30.i, 536805376
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 9
  %56 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vtotal.i, align 4
  %conv32.i = zext i16 %57 to i32
  %sub35.i = sub nsw i32 %conv32.i, %conv20.i
  %and36.i = and i32 %sub35.i, 8191
  %or38.i = or i32 %shl31.i, %and36.i
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hdisplay.i, align 4
  %conv39.i = zext i16 %59 to i32
  %and40.i = shl nuw i32 %conv39.i, 16
  %shl41.i = and i32 %and40.i, 2147418112
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 3
  %60 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hsync_end.i, align 4
  %conv42.i = zext i16 %61 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %hsync_start.i, align 2
  %conv43.i = zext i16 %63 to i32
  %sub44.i = sub nsw i32 %conv42.i, %conv43.i
  %and45.i = and i32 %sub44.i, 4095
  %or47.i = or i32 %and45.i, %shl41.i
  %sub52.i = sub nsw i32 %conv43.i, %conv39.i
  %and53.i = shl i32 %sub52.i, 16
  %shl54.i = and i32 %and53.i, 536805376
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 4
  %64 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %htotal.i, align 2
  %conv55.i = zext i16 %65 to i32
  %sub58.i = sub nsw i32 %conv55.i, %conv42.i
  %and59.i = and i32 %sub58.i, 8191
  %or61.i = or i32 %shl54.i, %and59.i
  %66 = ptrtoint ptr %mmio.i108.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i108.i, align 8
  %add.ptr.i111.i = getelementptr i8, ptr %67, i32 464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %68) #7, !srcloc !134
  %69 = ptrtoint ptr %mmio.i108.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i108.i, align 8
  %add.ptr.i113.i = getelementptr i8, ptr %70, i32 468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %71) #7, !srcloc !134
  %72 = ptrtoint ptr %mmio.i108.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i108.i, align 8
  %add.ptr.i115.i = getelementptr i8, ptr %73, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %or38.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %74) #7, !srcloc !134
  %75 = ptrtoint ptr %mmio.i108.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i108.i, align 8
  %add.ptr.i117.i = getelementptr i8, ptr %76, i32 476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %or47.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %77) #7, !srcloc !134
  %78 = ptrtoint ptr %mmio.i108.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i108.i, align 8
  %add.ptr.i119.i = getelementptr i8, ptr %79, i32 480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or61.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %80) #7, !srcloc !134
  br label %rcar_mipi_dsi_set_display_timing.exit

rcar_mipi_dsi_set_display_timing.exit:            ; preds = %if.end12.i, %do.end.i
  %mmio.i.i.i = getelementptr i8, ptr %bridge, i32 1324
  %81 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %82, i32 1808
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %84 = or i32 %83, 65536
  %85 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %86, i32 1808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %84) #7, !srcloc !134
  %call.i38 = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i38, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 495) #7
  %87 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i47.i = getelementptr i8, ptr %88, i32 1824
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #7, !srcloc !135
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %and48.i = and i32 %90, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool.not49.i = icmp eq i32 %and48.i, 0
  br i1 %tobool.not49.i, label %rcar_mipi_dsi_set_display_timing.exit.land.lhs.true.i_crit_edge, label %rcar_mipi_dsi_set_display_timing.exit.for.end.i_crit_edge

rcar_mipi_dsi_set_display_timing.exit.for.end.i_crit_edge: ; preds = %rcar_mipi_dsi_set_display_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

rcar_mipi_dsi_set_display_timing.exit.land.lhs.true.i_crit_edge: ; preds = %rcar_mipi_dsi_set_display_timing.exit
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then19.i.land.lhs.true.i_crit_edge, %rcar_mipi_dsi_set_display_timing.exit.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %if.then19.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %92, i32 1824
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #7, !srcloc !135
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  br label %for.end.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %95 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i39 = getelementptr i8, ptr %96, i32 1824
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #7, !srcloc !135
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %and.i40 = and i32 %98, 67108864
  %tobool.not.i = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i, label %if.then19.i.land.lhs.true.i_crit_edge, label %if.then19.i.for.end.i_crit_edge

if.then19.i.for.end.i_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then19.i.land.lhs.true.i_crit_edge:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then19.i.for.end.i_crit_edge, %if.then15.i, %rcar_mipi_dsi_set_display_timing.exit.for.end.i_crit_edge
  %status.0.i = phi i32 [ %94, %if.then15.i ], [ %90, %rcar_mipi_dsi_set_display_timing.exit.for.end.i_crit_edge ], [ %98, %if.then19.i.for.end.i_crit_edge ]
  %and21.i = and i32 %status.0.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %err_dsi_start_hs, label %if.end14

if.end14:                                         ; preds = %for.end.i
  %99 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i43.i = getelementptr i8, ptr %100, i32 1828
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %102 = or i32 %101, 4
  %103 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i45.i = getelementptr i8, ptr %104, i32 1828
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i45.i, i32 %102) #7, !srcloc !134
  %call.i42 = tail call i64 @ktime_get() #7
  %add.i.i43 = add i64 %call.i42, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 514) #7
  %105 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %106, i32 16
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #7, !srcloc !135
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %and33.i = and i32 %108, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool.not34.i = icmp eq i32 %and33.i, 0
  br i1 %tobool.not34.i, label %if.end14.for.end.i56_crit_edge, label %if.end14.land.lhs.true.i47_crit_edge

if.end14.land.lhs.true.i47_crit_edge:             ; preds = %if.end14
  br label %land.lhs.true.i47

if.end14.for.end.i56_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i56

land.lhs.true.i47:                                ; preds = %if.then19.i52.land.lhs.true.i47_crit_edge, %if.end14.land.lhs.true.i47_crit_edge
  %call12.i45 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i45, i64 %add.i.i43)
  %cmp3.i.i46 = icmp sgt i64 %call12.i45, %add.i.i43
  br i1 %cmp3.i.i46, label %if.then15.i48, label %if.then19.i52

if.then15.i48:                                    ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %110, i32 16
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #7, !srcloc !135
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  br label %for.end.i56

if.then19.i52:                                    ; preds = %land.lhs.true.i47
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %113 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i49 = getelementptr i8, ptr %114, i32 16
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #7, !srcloc !135
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %and.i50 = and i32 %116, 3
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %if.then19.i52.for.end.i56_crit_edge, label %if.then19.i52.land.lhs.true.i47_crit_edge

if.then19.i52.land.lhs.true.i47_crit_edge:        ; preds = %if.then19.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i47

if.then19.i52.for.end.i56_crit_edge:              ; preds = %if.then19.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i56

for.end.i56:                                      ; preds = %if.then19.i52.for.end.i56_crit_edge, %if.then15.i48, %if.end14.for.end.i56_crit_edge
  %status.0.i53 = phi i32 [ %112, %if.then15.i48 ], [ %108, %if.end14.for.end.i56_crit_edge ], [ %116, %if.then19.i52.for.end.i56_crit_edge ]
  %and21.i54 = and i32 %status.0.i53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i54)
  %tobool22.not.i55 = icmp eq i32 %and21.i54, 0
  br i1 %tobool22.not.i55, label %if.end28.i59, label %for.end.i56.cleanup.sink.split.i_crit_edge

for.end.i56.cleanup.sink.split.i_crit_edge:       ; preds = %for.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end28.i59:                                     ; preds = %for.end.i56
  %117 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i57 = getelementptr i8, ptr %118, i32 400
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i57) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %120 = and i32 %119, -1048577
  %121 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i.i58 = getelementptr i8, ptr %122, i32 400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i58, i32 %120) #7, !srcloc !134
  %call32.i = tail call i64 @ktime_get() #7
  %add.i3.i = add i64 %call32.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 525) #7
  %123 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i535.i = getelementptr i8, ptr %124, i32 416
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i535.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %126 = and i32 %125, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool49.not37.i = icmp eq i32 %126, 0
  br i1 %tobool49.not37.i, label %if.end28.i59.land.lhs.true53.i_crit_edge, label %if.end28.i59.if.end76.i_crit_edge

if.end28.i59.if.end76.i_crit_edge:                ; preds = %if.end28.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.end28.i59.land.lhs.true53.i_crit_edge:         ; preds = %if.end28.i59
  br label %land.lhs.true53.i

land.lhs.true53.i:                                ; preds = %if.then61.i.land.lhs.true53.i_crit_edge, %if.end28.i59.land.lhs.true53.i_crit_edge
  %call54.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call54.i, i64 %add.i3.i)
  %cmp3.i7.i = icmp sgt i64 %call54.i, %add.i3.i
  br i1 %cmp3.i7.i, label %for.end65.i, label %if.then61.i

if.then61.i:                                      ; preds = %land.lhs.true53.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %127 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %128, i32 416
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %130 = and i32 %129, 1048576
  %tobool49.not.i = icmp eq i32 %130, 0
  br i1 %tobool49.not.i, label %if.then61.i.land.lhs.true53.i_crit_edge, label %if.then61.i.if.end76.i_crit_edge

if.then61.i.if.end76.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then61.i.land.lhs.true53.i_crit_edge:          ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true53.i

for.end65.i:                                      ; preds = %land.lhs.true53.i
  %131 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %132, i32 416
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %134 = and i32 %133, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool68.not.i = icmp eq i32 %134, 0
  br i1 %tobool68.not.i, label %for.end65.i.cleanup.sink.split.i_crit_edge, label %for.end65.i.if.end76.i_crit_edge

for.end65.i.if.end76.i_crit_edge:                 ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

for.end65.i.cleanup.sink.split.i_crit_edge:       ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end76.i:                                       ; preds = %for.end65.i.if.end76.i_crit_edge, %if.then61.i.if.end76.i_crit_edge, %if.end28.i59.if.end76.i_crit_edge
  %135 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i13.i = getelementptr i8, ptr %136, i32 400
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %138 = or i32 %137, 16777216
  %139 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i14.i = getelementptr i8, ptr %140, i32 400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i14.i, i32 %138) #7, !srcloc !134
  %call80.i = tail call i64 @ktime_get() #7
  %add.i15.i = add i64 %call80.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 536) #7
  %141 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i1739.i = getelementptr i8, ptr %142, i32 416
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1739.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %144 = and i32 %143, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool97.not41.i = icmp eq i32 %144, 0
  br i1 %tobool97.not41.i, label %if.end76.i.land.lhs.true101.i_crit_edge, label %if.end76.i.cleanup_crit_edge

if.end76.i.cleanup_crit_edge:                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76.i.land.lhs.true101.i_crit_edge:          ; preds = %if.end76.i
  br label %land.lhs.true101.i

land.lhs.true101.i:                               ; preds = %if.then109.i.land.lhs.true101.i_crit_edge, %if.end76.i.land.lhs.true101.i_crit_edge
  %call102.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call102.i, i64 %add.i15.i)
  %cmp3.i19.i = icmp sgt i64 %call102.i, %add.i15.i
  br i1 %cmp3.i19.i, label %for.end113.i, label %if.then109.i

if.then109.i:                                     ; preds = %land.lhs.true101.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %145 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %146, i32 416
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %148 = and i32 %147, 16777216
  %tobool97.not.i = icmp eq i32 %148, 0
  br i1 %tobool97.not.i, label %if.then109.i.land.lhs.true101.i_crit_edge, label %if.then109.i.cleanup_crit_edge

if.then109.i.cleanup_crit_edge:                   ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then109.i.land.lhs.true101.i_crit_edge:        ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true101.i

for.end113.i:                                     ; preds = %land.lhs.true101.i
  %149 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %150, i32 416
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %152 = and i32 %151, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool116.not.i = icmp eq i32 %152, 0
  br i1 %tobool116.not.i, label %for.end113.i.cleanup.sink.split.i_crit_edge, label %for.end113.i.cleanup_crit_edge

for.end113.i.cleanup_crit_edge:                   ; preds = %for.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end113.i.cleanup.sink.split.i_crit_edge:      ; preds = %for.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end113.i.cleanup.sink.split.i_crit_edge, %for.end65.i.cleanup.sink.split.i_crit_edge, %for.end.i56.cleanup.sink.split.i_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.39, %for.end.i56.cleanup.sink.split.i_crit_edge ], [ @.str.42, %for.end65.i.cleanup.sink.split.i_crit_edge ], [ @.str.45, %for.end113.i.cleanup.sink.split.i_crit_edge ]
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull %.str.45.sink.i) #10
  br label %cleanup

err_dsi_start_hs:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.37) #10
  %157 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i62 = getelementptr i8, ptr %158, i32 4116
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i62) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %160 = and i32 %159, -16777217
  %161 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i.i63 = getelementptr i8, ptr %162, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i63, i32 %160) #7, !srcloc !134
  %163 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i6.i = getelementptr i8, ptr %164, i32 4116
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %166 = and i32 %165, -33554433
  %167 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i8.i = getelementptr i8, ptr %168, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i8.i, i32 %166) #7, !srcloc !134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_mipi_dsi_shutdown.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_mipi_dsi_atomic_enable, %if.then.i64)) #7
          to label %err_dsi_startup [label %if.then.i64], !srcloc !132

if.then.i64:                                      ; preds = %err_dsi_start_hs
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_mipi_dsi_shutdown.__UNIQUE_ID_ddebug310, ptr noundef %170, ptr noundef nonnull @.str.48) #7
  br label %err_dsi_startup

err_dsi_startup:                                  ; preds = %if.then.i64, %err_dsi_start_hs, %if.end.err_dsi_startup_crit_edge
  %171 = ptrtoint ptr %dsi3.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dsi3.i, align 4
  tail call void @clk_disable(ptr noundef %172) #7
  tail call void @clk_unprepare(ptr noundef %172) #7
  %173 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %clocks.i, align 4
  tail call void @clk_disable(ptr noundef %174) #7
  tail call void @clk_unprepare(ptr noundef %174) #7
  %175 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rstc.i, align 8
  %call.i68 = tail call i32 @reset_control_assert(ptr noundef %176) #7
  br label %cleanup

cleanup:                                          ; preds = %err_dsi_startup, %cleanup.sink.split.i, %for.end113.i.cleanup_crit_edge, %if.then109.i.cleanup_crit_edge, %if.end76.i.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_mipi_dsi_atomic_disable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %old_bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i.i.i = getelementptr i8, ptr %bridge, i32 1324
  %0 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %5, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %3) #7, !srcloc !134
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i6.i = getelementptr i8, ptr %7, i32 4116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %9 = and i32 %8, -33554433
  %10 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i4.i8.i = getelementptr i8, ptr %11, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i8.i, i32 %9) #7, !srcloc !134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_mipi_dsi_shutdown.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_mipi_dsi_atomic_disable, %if.then.i)) #7
          to label %rcar_mipi_dsi_shutdown.exit [label %if.then.i], !srcloc !132

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -28
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_mipi_dsi_shutdown.__UNIQUE_ID_ddebug310, ptr noundef %13, ptr noundef nonnull @.str.48) #7
  br label %rcar_mipi_dsi_shutdown.exit

rcar_mipi_dsi_shutdown.exit:                      ; preds = %if.then.i, %entry
  %clocks.i = getelementptr i8, ptr %bridge, i32 1328
  %dsi1.i = getelementptr i8, ptr %bridge, i32 1336
  %14 = ptrtoint ptr %dsi1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsi1.i, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %16 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clocks.i, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  %rstc.i = getelementptr i8, ptr %bridge, i32 -20
  %18 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rstc.i, align 8
  %call.i = tail call i32 @reset_control_assert(ptr noundef %19) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_mipi_dsi_startup(ptr noundef readonly %dsi, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %setup_info = alloca %struct.dsi_setup_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %setup_info) #7
  %0 = call ptr @memset(ptr %setup_info, i32 0, i32 20)
  %format = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 9
  %1 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.21) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rcar_mipi_dsi_startup, i32 0, i32 %2
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pll = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pll, align 4
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %mul = mul i32 %10, 1000
  call fastcc void @rcar_mipi_dsi_parameters_calc(ptr noundef %dsi, ptr noundef %8, i32 noundef %mul, ptr noundef nonnull %setup_info)
  %mmio.i.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 7
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4096
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %14 = or i32 %13, 65536
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %14) #7, !srcloc !134
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i166 = getelementptr i8, ptr %18, i32 4100
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i166) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %20 = or i32 %19, 65536
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i168 = getelementptr i8, ptr %22, i32 4100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i168, i32 %20) #7, !srcloc !134
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i170 = getelementptr i8, ptr %24, i32 4116
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i170) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %26 = and i32 %25, -16777217
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i171 = getelementptr i8, ptr %28, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i171, i32 %26) #7, !srcloc !134
  %29 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i173 = getelementptr i8, ptr %30, i32 4116
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i173) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %32 = and i32 %31, -33554433
  %33 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i175 = getelementptr i8, ptr %34, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i175, i32 %32) #7, !srcloc !134
  %35 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i177 = getelementptr i8, ptr %36, i32 4156
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i177) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %38 = or i32 %37, 16777216
  %39 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i179 = getelementptr i8, ptr %40, i32 4156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i179, i32 %38) #7, !srcloc !134
  %41 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i181 = getelementptr i8, ptr %42, i32 4156
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i181) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %44 = and i32 %43, -16777217
  %45 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i183 = getelementptr i8, ptr %46, i32 4156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i183, i32 %44) #7, !srcloc !134
  %47 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %48, i32 4116
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %50 = and i32 %49, -32513
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %hsfreqrange = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 3
  %52 = ptrtoint ptr %hsfreqrange to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hsfreqrange, align 4
  %54 = and i16 %53, 127
  %and2 = zext i16 %54 to i32
  %shl = shl nuw nsw i32 %and2, 16
  %or = or i32 %shl, %51
  %55 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i185 = getelementptr i8, ptr %56, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %57) #7, !srcloc !134
  %call5 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 16908564)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %switch.lookup.cleanup_crit_edge, label %for.cond

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %switch.lookup
  %call5.1 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 23068949)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %cmp6.1 = icmp slt i32 %call5.1, 0
  br i1 %cmp6.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call5.2 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 16974102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %cmp6.2 = icmp slt i32 %call5.2, 0
  br i1 %cmp6.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call5.3 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 16908573)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %cmp6.3 = icmp slt i32 %call5.3, 0
  br i1 %cmp6.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call5.4 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17891748)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %cmp6.4 = icmp slt i32 %call5.4, 0
  br i1 %cmp6.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %call5.5 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 25559460)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %cmp6.5 = icmp slt i32 %call5.5, 0
  br i1 %cmp6.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %call5.6 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 21103008)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %cmp6.6 = icmp slt i32 %call5.6, 0
  br i1 %cmp6.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %call5.7 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 16777635)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %cmp6.7 = icmp slt i32 %call5.7, 0
  br i1 %cmp6.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %call5.8 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 16843039)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %cmp6.8 = icmp slt i32 %call5.8, 0
  br i1 %cmp6.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %58 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i187 = getelementptr i8, ptr %59, i32 4124
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i187) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %61 = and i32 %60, -33554433
  %62 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i189 = getelementptr i8, ptr %63, i32 4124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i189, i32 %61) #7, !srcloc !134
  %64 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i191 = getelementptr i8, ptr %65, i32 4124
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i191) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %67 = or i32 %66, 33554432
  %68 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i193 = getelementptr i8, ptr %69, i32 4124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i193, i32 %67) #7, !srcloc !134
  %70 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i195 = getelementptr i8, ptr %71, i32 4124
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i195) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %73 = and i32 %72, -33554433
  %74 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i197 = getelementptr i8, ptr %75, i32 4124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i197, i32 %73) #7, !srcloc !134
  %m = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 5
  %76 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %m, align 4
  %and10 = shl i32 %77, 16
  %shl11 = and i32 %and10, 268369920
  %n = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 6
  %78 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n, align 4
  %and12 = and i32 %79, 15
  %or14 = or i32 %shl11, %and12
  %vco_cntrl = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 1
  %80 = ptrtoint ptr %vco_cntrl to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vco_cntrl, align 4
  %82 = shl i16 %81, 8
  %83 = and i16 %82, 16128
  %shl17 = zext i16 %83 to i32
  %or18 = or i32 %or14, %shl17
  %prop_cntrl = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 2
  %84 = ptrtoint ptr %prop_cntrl to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %prop_cntrl, align 2
  %86 = and i16 %85, 63
  %and20 = zext i16 %86 to i32
  %shl21 = shl nuw nsw i32 %and20, 24
  %or24 = or i32 %shl21, 4097
  %87 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i199 = getelementptr i8, ptr %88, i32 4128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %89 = tail call i32 @llvm.bswap.i32(i32 %or18) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %89) #7, !srcloc !134
  %90 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i201 = getelementptr i8, ptr %91, i32 4132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %92 = tail call i32 @llvm.bswap.i32(i32 %or24) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %92) #7, !srcloc !134
  %93 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i203 = getelementptr i8, ptr %94, i32 4124
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i203) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %96 = and i32 %95, -16777217
  %97 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i205 = getelementptr i8, ptr %98, i32 4124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i205, i32 %96) #7, !srcloc !134
  %99 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i207 = getelementptr i8, ptr %100, i32 4124
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i207) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %102 = or i32 %101, 16777216
  %103 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i209 = getelementptr i8, ptr %104, i32 4124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i209, i32 %102) #7, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 2147480) #7
  %106 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i211 = getelementptr i8, ptr %107, i32 4124
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i211) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %109 = and i32 %108, -16777217
  %110 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i213 = getelementptr i8, ptr %111, i32 4124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i213, i32 %109) #7, !srcloc !134
  %112 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i215 = getelementptr i8, ptr %113, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 251723776) #7, !srcloc !134
  %114 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i217 = getelementptr i8, ptr %115, i32 4116
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i217) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %117 = or i32 %116, 33554432
  %118 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i219 = getelementptr i8, ptr %119, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i219, i32 %117) #7, !srcloc !134
  %120 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i221 = getelementptr i8, ptr %121, i32 4116
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i221) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %123 = or i32 %122, 16777216
  %124 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i223 = getelementptr i8, ptr %125, i32 4116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i223, i32 %123) #7, !srcloc !134
  tail call void @usleep_range_state(i32 noundef 400, i32 noundef 500, i32 noundef 2) #7
  br label %for.body28

for.body28:                                       ; preds = %if.end39.for.body28_crit_edge, %for.cond.8
  %timeout.0248 = phi i32 [ 10, %for.cond.8 ], [ %dec, %if.end39.for.body28_crit_edge ]
  %126 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i225 = getelementptr i8, ptr %127, i32 1824
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %129 = and i32 %128, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not = icmp eq i32 %129, 0
  br i1 %tobool.not, label %for.body28.if.end39_crit_edge, label %land.lhs.true

for.body28.if.end39_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %for.body28
  %130 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i227 = getelementptr i8, ptr %131, i32 1888
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %133 = and i32 %132, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool33.not = icmp eq i32 %133, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true34

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true34:                                  ; preds = %land.lhs.true
  %134 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i229 = getelementptr i8, ptr %135, i32 4124
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %137 = and i32 %136, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool37.not = icmp eq i32 %137, 0
  br i1 %tobool37.not, label %land.lhs.true34.if.end39_crit_edge, label %for.body52.preheader

land.lhs.true34.if.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.body52.preheader:                             ; preds = %land.lhs.true34
  %call54 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17563952)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %for.body52.preheader.cleanup_crit_edge, label %for.cond49

for.body52.preheader.cleanup_crit_edge:           ; preds = %for.body52.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true34.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %for.body28.if.end39_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %dec = add nsw i32 %timeout.0248, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.end46, label %if.end39.for.body28_crit_edge

if.end39.for.body28_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dsi, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.25) #10
  br label %cleanup

for.cond49:                                       ; preds = %for.body52.preheader
  %call54.1 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17563968)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.1)
  %cmp55.1 = icmp slt i32 %call54.1, 0
  br i1 %cmp55.1, label %for.cond49.cleanup_crit_edge, label %for.cond49.1

for.cond49.cleanup_crit_edge:                     ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.1:                                     ; preds = %for.cond49
  %call54.2 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17563984)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.2)
  %cmp55.2 = icmp slt i32 %call54.2, 0
  br i1 %cmp55.2, label %for.cond49.1.cleanup_crit_edge, label %for.cond49.2

for.cond49.1.cleanup_crit_edge:                   ; preds = %for.cond49.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.2:                                     ; preds = %for.cond49.1
  %call54.3 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17564032)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.3)
  %cmp55.3 = icmp slt i32 %call54.3, 0
  br i1 %cmp55.3, label %for.cond49.2.cleanup_crit_edge, label %for.cond49.3

for.cond49.2.cleanup_crit_edge:                   ; preds = %for.cond49.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.3:                                     ; preds = %for.cond49.2
  %call54.4 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17564048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.4)
  %cmp55.4 = icmp slt i32 %call54.4, 0
  br i1 %cmp55.4, label %for.cond49.3.cleanup_crit_edge, label %for.cond49.4

for.cond49.3.cleanup_crit_edge:                   ; preds = %for.cond49.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.4:                                     ; preds = %for.cond49.3
  %call54.5 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17432928)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.5)
  %cmp55.5 = icmp slt i32 %call54.5, 0
  br i1 %cmp55.5, label %for.cond49.4.cleanup_crit_edge, label %for.cond49.5

for.cond49.4.cleanup_crit_edge:                   ; preds = %for.cond49.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.5:                                     ; preds = %for.cond49.4
  %call54.6 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 17432944)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.6)
  %cmp55.6 = icmp slt i32 %call54.6, 0
  br i1 %cmp55.6, label %for.cond49.5.cleanup_crit_edge, label %for.cond49.6

for.cond49.5.cleanup_crit_edge:                   ; preds = %for.cond49.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.6:                                     ; preds = %for.cond49.5
  %call54.7 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 25166180)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.7)
  %cmp55.7 = icmp slt i32 %call54.7, 0
  br i1 %cmp55.7, label %for.cond49.6.cleanup_crit_edge, label %for.cond49.7

for.cond49.6.cleanup_crit_edge:                   ; preds = %for.cond49.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.7:                                     ; preds = %for.cond49.6
  %call54.8 = tail call fastcc i32 @rcar_mipi_dsi_phtw_test(ptr noundef %dsi, i32 noundef 25166196)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.8)
  %cmp55.8 = icmp slt i32 %call54.8, 0
  br i1 %cmp55.8, label %for.cond49.7.cleanup_crit_edge, label %for.cond49.8

for.cond49.7.cleanup_crit_edge:                   ; preds = %for.cond49.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.8:                                     ; preds = %for.cond49.7
  %140 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i231 = getelementptr i8, ptr %141, i32 4108
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i231) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %143 = or i32 %142, 256
  %144 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i233 = getelementptr i8, ptr %145, i32 4108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i233, i32 %143) #7, !srcloc !134
  %146 = zext i32 %switch.load to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %switch.load, label %do.end78 [
    i32 24, label %for.cond49.8.if.end82_crit_edge
    i32 18, label %if.then68
    i32 16, label %if.then73
  ]

for.cond49.8.if.end82_crit_edge:                  ; preds = %for.cond49.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then68:                                        ; preds = %for.cond49.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then73:                                        ; preds = %for.cond49.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

do.end78:                                         ; preds = %for.cond49.8
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dsi, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end82:                                         ; preds = %if.then73, %if.then68, %for.cond49.8.if.end82_crit_edge
  %vclkset.0 = phi i32 [ 65540, %if.then68 ], [ 65536, %if.then73 ], [ 65548, %for.cond49.8.if.end82_crit_edge ]
  %div = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 4
  %149 = ptrtoint ptr %div to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %div, align 2
  %151 = shl i16 %150, 4
  %152 = and i16 %151, 48
  %shl85 = zext i16 %152 to i32
  %lanes = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 11
  %153 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %lanes, align 8
  %sub = add i32 %154, 3
  %and87 = and i32 %sub, 3
  %155 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i235 = getelementptr i8, ptr %156, i32 4108
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i235) #7, !srcloc !135
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %or89 = or i32 %vclkset.0, %shl85
  %or90 = or i32 %or89, %and87
  %or.i236 = or i32 %or90, %158
  %159 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i237 = getelementptr i8, ptr %160, i32 4108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %161 = tail call i32 @llvm.bswap.i32(i32 %or.i236) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i237, i32 %161) #7, !srcloc !134
  %162 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i239 = getelementptr i8, ptr %163, i32 4112
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i239) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %165 = or i32 %164, 16777216
  %166 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i4.i241 = getelementptr i8, ptr %167, i32 4112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i241, i32 %165) #7, !srcloc !134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_mipi_dsi_startup.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_mipi_dsi_startup, %if.then96)) #7
          to label %cleanup [label %if.then96], !srcloc !132

if.then96:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dsi, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_mipi_dsi_startup.__UNIQUE_ID_ddebug309, ptr noundef %169, ptr noundef nonnull @.str.30) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end82, %do.end78, %for.cond49.7.cleanup_crit_edge, %for.cond49.6.cleanup_crit_edge, %for.cond49.5.cleanup_crit_edge, %for.cond49.4.cleanup_crit_edge, %for.cond49.3.cleanup_crit_edge, %for.cond49.2.cleanup_crit_edge, %for.cond49.1.cleanup_crit_edge, %for.cond49.cleanup_crit_edge, %do.end46, %for.body52.preheader.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end78 ], [ -110, %do.end46 ], [ 0, %if.then96 ], [ 0, %if.end82 ], [ %call54, %for.body52.preheader.cleanup_crit_edge ], [ %call54.1, %for.cond49.cleanup_crit_edge ], [ %call54.2, %for.cond49.1.cleanup_crit_edge ], [ %call54.3, %for.cond49.2.cleanup_crit_edge ], [ %call54.4, %for.cond49.3.cleanup_crit_edge ], [ %call54.5, %for.cond49.4.cleanup_crit_edge ], [ %call54.6, %for.cond49.5.cleanup_crit_edge ], [ %call54.7, %for.cond49.6.cleanup_crit_edge ], [ %call54.8, %for.cond49.7.cleanup_crit_edge ], [ %call5, %switch.lookup.cleanup_crit_edge ], [ %call5.1, %for.cond.cleanup_crit_edge ], [ %call5.2, %for.cond.1.cleanup_crit_edge ], [ %call5.3, %for.cond.2.cleanup_crit_edge ], [ %call5.4, %for.cond.3.cleanup_crit_edge ], [ %call5.5, %for.cond.4.cleanup_crit_edge ], [ %call5.6, %for.cond.5.cleanup_crit_edge ], [ %call5.7, %for.cond.6.cleanup_crit_edge ], [ %call5.8, %for.cond.7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %setup_info) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_mipi_dsi_parameters_calc(ptr nocapture noundef readonly %dsi, ptr noundef %clk, i32 noundef %target, ptr nocapture noundef %setup_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 9
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rcar_mipi_dsi_parameters_calc, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i171 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %mul = mul i32 %retval.0.i171, %target
  %lanes = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 11
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lanes, align 8
  %mul1 = shl i32 %5, 1
  %div = udiv i32 %mul, %mul1
  %6 = add i32 %div, -1250000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1210000001, i32 %6)
  %7 = icmp ult i32 %6, -1210000001
  br i1 %7, label %mipi_dsi_pixel_format_to_bpp.exit.cleanup106_crit_edge, label %for.body.preheader

mipi_dsi_pixel_format_to_bpp.exit.cleanup106_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup106

for.body.preheader:                               ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000000, i32 %div)
  %cmp5 = icmp ugt i32 %div, 40000000
  br i1 %cmp5, label %land.lhs.true, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000000, i32 %div)
  %cmp6.not = icmp ugt i32 %div, 55000000
  br i1 %cmp6.not, label %land.lhs.true.1, label %land.lhs.true.if.then7.thread_crit_edge

land.lhs.true.if.then7.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

if.then7.thread:                                  ; preds = %land.lhs.true.8.if.then7.thread_crit_edge, %land.lhs.true.7.if.then7.thread_crit_edge, %land.lhs.true.6.if.then7.thread_crit_edge, %land.lhs.true.5.if.then7.thread_crit_edge, %land.lhs.true.4.if.then7.thread_crit_edge, %land.lhs.true.3.if.then7.thread_crit_edge, %land.lhs.true.2.if.then7.thread_crit_edge, %land.lhs.true.1.if.then7.thread_crit_edge, %land.lhs.true.if.then7.thread_crit_edge
  %vco_cntrl.0182.lcssa.ph = phi ptr [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 8), %land.lhs.true.8.if.then7.thread_crit_edge ], [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 7), %land.lhs.true.7.if.then7.thread_crit_edge ], [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 6), %land.lhs.true.6.if.then7.thread_crit_edge ], [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 5), %land.lhs.true.5.if.then7.thread_crit_edge ], [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 4), %land.lhs.true.4.if.then7.thread_crit_edge ], [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 3), %land.lhs.true.3.if.then7.thread_crit_edge ], [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 2), %land.lhs.true.2.if.then7.thread_crit_edge ], [ getelementptr inbounds ([12 x %struct.vco_cntrl_value], ptr @vco_cntrl_table, i32 0, i32 1), %land.lhs.true.1.if.then7.thread_crit_edge ], [ @vco_cntrl_table, %land.lhs.true.if.then7.thread_crit_edge ]
  %value203 = getelementptr inbounds %struct.vco_cntrl_value, ptr %vco_cntrl.0182.lcssa.ph, i32 0, i32 2
  %8 = ptrtoint ptr %value203 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %value203, align 4
  %vco_cntrl8204 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 1
  %10 = ptrtoint ptr %vco_cntrl8204 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vco_cntrl8204, align 4
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.9.if.else_crit_edge, %if.then7.thread
  br label %for.end.sink.split

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %div)
  %cmp6.not.1 = icmp ugt i32 %div, 80000000
  br i1 %cmp6.not.1, label %land.lhs.true.2, label %land.lhs.true.1.if.then7.thread_crit_edge

land.lhs.true.1.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000000, i32 %div)
  %cmp6.not.2 = icmp ugt i32 %div, 110000000
  br i1 %cmp6.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.then7.thread_crit_edge

land.lhs.true.2.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %div)
  %cmp6.not.3 = icmp ugt i32 %div, 160000000
  br i1 %cmp6.not.3, label %land.lhs.true.4, label %land.lhs.true.3.if.then7.thread_crit_edge

land.lhs.true.3.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 220000000, i32 %div)
  %cmp6.not.4 = icmp ugt i32 %div, 220000000
  br i1 %cmp6.not.4, label %land.lhs.true.5, label %land.lhs.true.4.if.then7.thread_crit_edge

land.lhs.true.4.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000000, i32 %div)
  %cmp6.not.5 = icmp ugt i32 %div, 320000000
  br i1 %cmp6.not.5, label %land.lhs.true.6, label %land.lhs.true.5.if.then7.thread_crit_edge

land.lhs.true.5.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.6:                                  ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 440000000, i32 %div)
  %cmp6.not.6 = icmp ugt i32 %div, 440000000
  br i1 %cmp6.not.6, label %land.lhs.true.7, label %land.lhs.true.6.if.then7.thread_crit_edge

land.lhs.true.6.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.7:                                  ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 660000000, i32 %div)
  %cmp6.not.7 = icmp ugt i32 %div, 660000000
  br i1 %cmp6.not.7, label %land.lhs.true.8, label %land.lhs.true.7.if.then7.thread_crit_edge

land.lhs.true.7.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.8:                                  ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1149000000, i32 %div)
  %cmp6.not.8 = icmp ugt i32 %div, 1149000000
  br i1 %cmp6.not.8, label %land.lhs.true.9, label %land.lhs.true.8.if.then7.thread_crit_edge

land.lhs.true.8.if.then7.thread_crit_edge:        ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.thread

land.lhs.true.9:                                  ; preds = %land.lhs.true.8
  %vco_cntrl8209 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 1
  %11 = ptrtoint ptr %vco_cntrl8209 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %vco_cntrl8209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1149999999, i32 %div)
  %cmp9 = icmp ugt i32 %div, 1149999999
  br i1 %cmp9, label %land.lhs.true.9.for.end.sink.split_crit_edge, label %land.lhs.true.9.if.else_crit_edge

land.lhs.true.9.if.else_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.9.for.end.sink.split_crit_edge:     ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.sink.split

for.end.sink.split:                               ; preds = %land.lhs.true.9.for.end.sink.split_crit_edge, %if.else
  %.sink = phi i16 [ 11, %if.else ], [ 12, %land.lhs.true.9.for.end.sink.split_crit_edge ]
  %prop_cntrl = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 2
  %12 = ptrtoint ptr %prop_cntrl to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink, ptr %prop_cntrl, align 2
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.body.preheader.for.end_crit_edge
  %vco_cntrl14 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 1
  %13 = ptrtoint ptr %vco_cntrl14 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vco_cntrl14, align 4
  %15 = lshr i16 %14, 4
  %16 = and i16 %15, 3
  %div16 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 4
  %17 = ptrtoint ptr %div16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %div16, align 2
  %mul17 = shl nuw i32 %div, 1
  br label %for.body21

for.body21:                                       ; preds = %for.inc30.for.body21_crit_edge, %for.end
  %i.0184 = phi i32 [ 0, %for.end ], [ %inc, %for.inc30.for.body21_crit_edge ]
  %arrayidx = getelementptr [64 x [2 x i32]], ptr @hsfreqrange_table, i32 0, i32 %i.0184
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul17)
  %cmp23.not = icmp ult i32 %19, %mul17
  br i1 %cmp23.not, label %for.inc30, label %if.then25

if.then25:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx27 = getelementptr [64 x [2 x i32]], ptr @hsfreqrange_table, i32 0, i32 %i.0184, i32 1
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx27, align 4
  %conv28 = trunc i32 %21 to i16
  %hsfreqrange = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 3
  %22 = ptrtoint ptr %hsfreqrange to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv28, ptr %hsfreqrange, align 4
  br label %for.end31

for.inc30:                                        ; preds = %for.body21
  %inc = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc30.for.end31_crit_edge, label %for.inc30.for.body21_crit_edge

for.inc30.for.body21_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.inc30.for.end31_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end31

for.end31:                                        ; preds = %for.inc30.for.end31_crit_edge, %if.then25
  %call32 = tail call i32 @clk_get_rate(ptr noundef %clk) #7
  %23 = ptrtoint ptr %div16 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %div16, align 2
  %conv34 = zext i16 %24 to i32
  %m55 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 5
  %n57 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 6
  %div39 = udiv i32 %call32, 3
  br label %for.body43

for.body43:                                       ; preds = %for.inc64.for.body43_crit_edge, %for.end31
  %m.0186 = phi i32 [ 64, %for.end31 ], [ %inc65, %for.inc64.for.body43_crit_edge ]
  %best_err.1185 = phi i32 [ -1, %for.end31 ], [ %best_err.2, %for.inc64.for.body43_crit_edge ]
  %mul44 = mul i32 %m.0186, %div39
  %div45167 = lshr i32 %mul44, %conv34
  %sub = sub i32 %div45167, %div
  %mul46 = mul i32 %sub, 10000
  %div47 = sdiv i32 %mul46, %div
  %25 = tail call i32 @llvm.abs.i32(i32 %div47, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %best_err.1185)
  %cmp51 = icmp ult i32 %25, %best_err.1185
  br i1 %cmp51, label %if.then53, label %for.body43.for.inc64_crit_edge

for.body43.for.inc64_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

if.then53:                                        ; preds = %for.body43
  %sub54 = add nsw i32 %m.0186, -2
  %26 = ptrtoint ptr %m55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub54, ptr %m55, align 4
  %27 = ptrtoint ptr %n57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %n57, align 4
  %28 = ptrtoint ptr %setup_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div45167, ptr %setup_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div47)
  %cmp59 = icmp eq i32 %div47, 0
  br i1 %cmp59, label %if.then53.do.body_crit_edge, label %if.then53.for.inc64_crit_edge

if.then53.for.inc64_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

if.then53.do.body_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc64:                                        ; preds = %if.then53.for.inc64_crit_edge, %for.body43.for.inc64_crit_edge
  %best_err.2 = phi i32 [ %25, %if.then53.for.inc64_crit_edge ], [ %best_err.1185, %for.body43.for.inc64_crit_edge ]
  %inc65 = add nuw nsw i32 %m.0186, 1
  %exitcond193.not = icmp eq i32 %inc65, 626
  br i1 %exitcond193.not, label %for.inc68, label %for.inc64.for.body43_crit_edge

for.inc64.for.body43_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43

for.inc68:                                        ; preds = %for.inc64
  %div39.1200 = lshr i32 %call32, 2
  br label %for.body43.1

for.body43.1:                                     ; preds = %for.inc64.1.for.body43.1_crit_edge, %for.inc68
  %m.0186.1 = phi i32 [ 64, %for.inc68 ], [ %inc65.1, %for.inc64.1.for.body43.1_crit_edge ]
  %best_err.1185.1 = phi i32 [ %best_err.2, %for.inc68 ], [ %best_err.2.1, %for.inc64.1.for.body43.1_crit_edge ]
  %mul44.1 = mul i32 %m.0186.1, %div39.1200
  %div45167.1 = lshr i32 %mul44.1, %conv34
  %sub.1 = sub i32 %div45167.1, %div
  %mul46.1 = mul i32 %sub.1, 10000
  %div47.1 = sdiv i32 %mul46.1, %div
  %29 = tail call i32 @llvm.abs.i32(i32 %div47.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %best_err.1185.1)
  %cmp51.1 = icmp ult i32 %29, %best_err.1185.1
  br i1 %cmp51.1, label %if.then53.1, label %for.body43.1.for.inc64.1_crit_edge

for.body43.1.for.inc64.1_crit_edge:               ; preds = %for.body43.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.1

if.then53.1:                                      ; preds = %for.body43.1
  %sub54.1 = add nsw i32 %m.0186.1, -2
  %30 = ptrtoint ptr %m55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub54.1, ptr %m55, align 4
  %31 = ptrtoint ptr %n57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %n57, align 4
  %32 = ptrtoint ptr %setup_info to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div45167.1, ptr %setup_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div47.1)
  %cmp59.1 = icmp eq i32 %div47.1, 0
  br i1 %cmp59.1, label %if.then53.1.do.body_crit_edge, label %if.then53.1.for.inc64.1_crit_edge

if.then53.1.for.inc64.1_crit_edge:                ; preds = %if.then53.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.1

if.then53.1.do.body_crit_edge:                    ; preds = %if.then53.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc64.1:                                      ; preds = %if.then53.1.for.inc64.1_crit_edge, %for.body43.1.for.inc64.1_crit_edge
  %best_err.2.1 = phi i32 [ %29, %if.then53.1.for.inc64.1_crit_edge ], [ %best_err.1185.1, %for.body43.1.for.inc64.1_crit_edge ]
  %inc65.1 = add nuw nsw i32 %m.0186.1, 1
  %exitcond193.1.not = icmp eq i32 %inc65.1, 626
  br i1 %exitcond193.1.not, label %for.inc68.1, label %for.inc64.1.for.body43.1_crit_edge

for.inc64.1.for.body43.1_crit_edge:               ; preds = %for.inc64.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.1

for.inc68.1:                                      ; preds = %for.inc64.1
  %div39.2 = udiv i32 %call32, 5
  br label %for.body43.2

for.body43.2:                                     ; preds = %for.inc64.2.for.body43.2_crit_edge, %for.inc68.1
  %m.0186.2 = phi i32 [ 64, %for.inc68.1 ], [ %inc65.2, %for.inc64.2.for.body43.2_crit_edge ]
  %best_err.1185.2 = phi i32 [ %best_err.2.1, %for.inc68.1 ], [ %best_err.2.2, %for.inc64.2.for.body43.2_crit_edge ]
  %mul44.2 = mul i32 %m.0186.2, %div39.2
  %div45167.2 = lshr i32 %mul44.2, %conv34
  %sub.2 = sub i32 %div45167.2, %div
  %mul46.2 = mul i32 %sub.2, 10000
  %div47.2 = sdiv i32 %mul46.2, %div
  %33 = tail call i32 @llvm.abs.i32(i32 %div47.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %best_err.1185.2)
  %cmp51.2 = icmp ult i32 %33, %best_err.1185.2
  br i1 %cmp51.2, label %if.then53.2, label %for.body43.2.for.inc64.2_crit_edge

for.body43.2.for.inc64.2_crit_edge:               ; preds = %for.body43.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.2

if.then53.2:                                      ; preds = %for.body43.2
  %sub54.2 = add nsw i32 %m.0186.2, -2
  %34 = ptrtoint ptr %m55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub54.2, ptr %m55, align 4
  %35 = ptrtoint ptr %n57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %n57, align 4
  %36 = ptrtoint ptr %setup_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div45167.2, ptr %setup_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div47.2)
  %cmp59.2 = icmp eq i32 %div47.2, 0
  br i1 %cmp59.2, label %if.then53.2.do.body_crit_edge, label %if.then53.2.for.inc64.2_crit_edge

if.then53.2.for.inc64.2_crit_edge:                ; preds = %if.then53.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.2

if.then53.2.do.body_crit_edge:                    ; preds = %if.then53.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc64.2:                                      ; preds = %if.then53.2.for.inc64.2_crit_edge, %for.body43.2.for.inc64.2_crit_edge
  %best_err.2.2 = phi i32 [ %33, %if.then53.2.for.inc64.2_crit_edge ], [ %best_err.1185.2, %for.body43.2.for.inc64.2_crit_edge ]
  %inc65.2 = add nuw nsw i32 %m.0186.2, 1
  %exitcond193.2.not = icmp eq i32 %inc65.2, 626
  br i1 %exitcond193.2.not, label %for.inc68.2, label %for.inc64.2.for.body43.2_crit_edge

for.inc64.2.for.body43.2_crit_edge:               ; preds = %for.inc64.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.2

for.inc68.2:                                      ; preds = %for.inc64.2
  %div39.3 = udiv i32 %call32, 6
  br label %for.body43.3

for.body43.3:                                     ; preds = %for.inc64.3.for.body43.3_crit_edge, %for.inc68.2
  %m.0186.3 = phi i32 [ 64, %for.inc68.2 ], [ %inc65.3, %for.inc64.3.for.body43.3_crit_edge ]
  %best_err.1185.3 = phi i32 [ %best_err.2.2, %for.inc68.2 ], [ %best_err.2.3, %for.inc64.3.for.body43.3_crit_edge ]
  %mul44.3 = mul i32 %m.0186.3, %div39.3
  %div45167.3 = lshr i32 %mul44.3, %conv34
  %sub.3 = sub i32 %div45167.3, %div
  %mul46.3 = mul i32 %sub.3, 10000
  %div47.3 = sdiv i32 %mul46.3, %div
  %37 = tail call i32 @llvm.abs.i32(i32 %div47.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %best_err.1185.3)
  %cmp51.3 = icmp ult i32 %37, %best_err.1185.3
  br i1 %cmp51.3, label %if.then53.3, label %for.body43.3.for.inc64.3_crit_edge

for.body43.3.for.inc64.3_crit_edge:               ; preds = %for.body43.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.3

if.then53.3:                                      ; preds = %for.body43.3
  %sub54.3 = add nsw i32 %m.0186.3, -2
  %38 = ptrtoint ptr %m55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub54.3, ptr %m55, align 4
  %39 = ptrtoint ptr %n57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %n57, align 4
  %40 = ptrtoint ptr %setup_info to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div45167.3, ptr %setup_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div47.3)
  %cmp59.3 = icmp eq i32 %div47.3, 0
  br i1 %cmp59.3, label %if.then53.3.do.body_crit_edge, label %if.then53.3.for.inc64.3_crit_edge

if.then53.3.for.inc64.3_crit_edge:                ; preds = %if.then53.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.3

if.then53.3.do.body_crit_edge:                    ; preds = %if.then53.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc64.3:                                      ; preds = %if.then53.3.for.inc64.3_crit_edge, %for.body43.3.for.inc64.3_crit_edge
  %best_err.2.3 = phi i32 [ %37, %if.then53.3.for.inc64.3_crit_edge ], [ %best_err.1185.3, %for.body43.3.for.inc64.3_crit_edge ]
  %inc65.3 = add nuw nsw i32 %m.0186.3, 1
  %exitcond193.3.not = icmp eq i32 %inc65.3, 626
  br i1 %exitcond193.3.not, label %for.inc68.3, label %for.inc64.3.for.body43.3_crit_edge

for.inc64.3.for.body43.3_crit_edge:               ; preds = %for.inc64.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.3

for.inc68.3:                                      ; preds = %for.inc64.3
  %div39.4 = udiv i32 %call32, 7
  br label %for.body43.4

for.body43.4:                                     ; preds = %for.inc64.4.for.body43.4_crit_edge, %for.inc68.3
  %m.0186.4 = phi i32 [ 64, %for.inc68.3 ], [ %inc65.4, %for.inc64.4.for.body43.4_crit_edge ]
  %best_err.1185.4 = phi i32 [ %best_err.2.3, %for.inc68.3 ], [ %best_err.2.4, %for.inc64.4.for.body43.4_crit_edge ]
  %mul44.4 = mul i32 %m.0186.4, %div39.4
  %div45167.4 = lshr i32 %mul44.4, %conv34
  %sub.4 = sub i32 %div45167.4, %div
  %mul46.4 = mul i32 %sub.4, 10000
  %div47.4 = sdiv i32 %mul46.4, %div
  %41 = tail call i32 @llvm.abs.i32(i32 %div47.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %best_err.1185.4)
  %cmp51.4 = icmp ult i32 %41, %best_err.1185.4
  br i1 %cmp51.4, label %if.then53.4, label %for.body43.4.for.inc64.4_crit_edge

for.body43.4.for.inc64.4_crit_edge:               ; preds = %for.body43.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.4

if.then53.4:                                      ; preds = %for.body43.4
  %sub54.4 = add nsw i32 %m.0186.4, -2
  %42 = ptrtoint ptr %m55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub54.4, ptr %m55, align 4
  %43 = ptrtoint ptr %n57 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %n57, align 4
  %44 = ptrtoint ptr %setup_info to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div45167.4, ptr %setup_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div47.4)
  %cmp59.4 = icmp eq i32 %div47.4, 0
  br i1 %cmp59.4, label %if.then53.4.do.body_crit_edge, label %if.then53.4.for.inc64.4_crit_edge

if.then53.4.for.inc64.4_crit_edge:                ; preds = %if.then53.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.4

if.then53.4.do.body_crit_edge:                    ; preds = %if.then53.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc64.4:                                      ; preds = %if.then53.4.for.inc64.4_crit_edge, %for.body43.4.for.inc64.4_crit_edge
  %best_err.2.4 = phi i32 [ %41, %if.then53.4.for.inc64.4_crit_edge ], [ %best_err.1185.4, %for.body43.4.for.inc64.4_crit_edge ]
  %inc65.4 = add nuw nsw i32 %m.0186.4, 1
  %exitcond193.4.not = icmp eq i32 %inc65.4, 626
  br i1 %exitcond193.4.not, label %for.inc68.4, label %for.inc64.4.for.body43.4_crit_edge

for.inc64.4.for.body43.4_crit_edge:               ; preds = %for.inc64.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.4

for.inc68.4:                                      ; preds = %for.inc64.4
  %div39.5201 = lshr i32 %call32, 3
  br label %for.body43.5

for.body43.5:                                     ; preds = %for.inc64.5.for.body43.5_crit_edge, %for.inc68.4
  %m.0186.5 = phi i32 [ 64, %for.inc68.4 ], [ %inc65.5, %for.inc64.5.for.body43.5_crit_edge ]
  %best_err.1185.5 = phi i32 [ %best_err.2.4, %for.inc68.4 ], [ %best_err.2.5, %for.inc64.5.for.body43.5_crit_edge ]
  %mul44.5 = mul i32 %m.0186.5, %div39.5201
  %div45167.5 = lshr i32 %mul44.5, %conv34
  %sub.5 = sub i32 %div45167.5, %div
  %mul46.5 = mul i32 %sub.5, 10000
  %div47.5 = sdiv i32 %mul46.5, %div
  %45 = tail call i32 @llvm.abs.i32(i32 %div47.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %best_err.1185.5)
  %cmp51.5 = icmp ult i32 %45, %best_err.1185.5
  br i1 %cmp51.5, label %if.then53.5, label %for.body43.5.for.inc64.5_crit_edge

for.body43.5.for.inc64.5_crit_edge:               ; preds = %for.body43.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.5

if.then53.5:                                      ; preds = %for.body43.5
  %sub54.5 = add nsw i32 %m.0186.5, -2
  %46 = ptrtoint ptr %m55 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub54.5, ptr %m55, align 4
  %47 = ptrtoint ptr %n57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 7, ptr %n57, align 4
  %48 = ptrtoint ptr %setup_info to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div45167.5, ptr %setup_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div47.5)
  %cmp59.5 = icmp eq i32 %div47.5, 0
  br i1 %cmp59.5, label %if.then53.5.do.body_crit_edge, label %if.then53.5.for.inc64.5_crit_edge

if.then53.5.for.inc64.5_crit_edge:                ; preds = %if.then53.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.5

if.then53.5.do.body_crit_edge:                    ; preds = %if.then53.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc64.5:                                      ; preds = %if.then53.5.for.inc64.5_crit_edge, %for.body43.5.for.inc64.5_crit_edge
  %best_err.2.5 = phi i32 [ %45, %if.then53.5.for.inc64.5_crit_edge ], [ %best_err.1185.5, %for.body43.5.for.inc64.5_crit_edge ]
  %inc65.5 = add nuw nsw i32 %m.0186.5, 1
  %exitcond193.5.not = icmp eq i32 %inc65.5, 626
  br i1 %exitcond193.5.not, label %for.inc64.5.do.body_crit_edge, label %for.inc64.5.for.body43.5_crit_edge

for.inc64.5.for.body43.5_crit_edge:               ; preds = %for.inc64.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.5

for.inc64.5.do.body_crit_edge:                    ; preds = %for.inc64.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.inc64.5.do.body_crit_edge, %if.then53.5.do.body_crit_edge, %if.then53.4.do.body_crit_edge, %if.then53.3.do.body_crit_edge, %if.then53.2.do.body_crit_edge, %if.then53.1.do.body_crit_edge, %if.then53.do.body_crit_edge
  %best_err.4 = phi i32 [ 0, %if.then53.5.do.body_crit_edge ], [ %best_err.2.5, %for.inc64.5.do.body_crit_edge ], [ 0, %if.then53.4.do.body_crit_edge ], [ 0, %if.then53.3.do.body_crit_edge ], [ 0, %if.then53.2.do.body_crit_edge ], [ 0, %if.then53.1.do.body_crit_edge ], [ 0, %if.then53.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_mipi_dsi_parameters_calc, %if.then75)) #7
          to label %do.body83 [label %if.then75], !srcloc !132

if.then75:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dsi, align 8
  %51 = ptrtoint ptr %setup_info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %setup_info, align 4
  %best_err.4.frozen = freeze i32 %best_err.4
  %div77 = udiv i32 %best_err.4.frozen, 100
  %53 = mul i32 %div77, 100
  %rem.decomposed = sub i32 %best_err.4.frozen, %53
  %54 = ptrtoint ptr %m55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m55, align 4
  %56 = ptrtoint ptr %n57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n57, align 4
  %58 = ptrtoint ptr %div16 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %div16, align 2
  %conv81 = zext i16 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug307, ptr noundef %50, ptr noundef nonnull @.str.32, ptr noundef %clk, i32 noundef %call32, i32 noundef %52, i32 noundef %div, i32 noundef %div77, i32 noundef %rem.decomposed, i32 noundef %55, i32 noundef %57, i32 noundef %conv81) #7
  br label %do.body83

do.body83:                                        ; preds = %if.then75, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_mipi_dsi_parameters_calc, %if.then95)) #7
          to label %cleanup106 [label %if.then95], !srcloc !132

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dsi, align 8
  %62 = ptrtoint ptr %vco_cntrl14 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vco_cntrl14, align 4
  %conv98 = zext i16 %63 to i32
  %prop_cntrl99 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 2
  %64 = ptrtoint ptr %prop_cntrl99 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %prop_cntrl99, align 2
  %conv100 = zext i16 %65 to i32
  %hsfreqrange101 = getelementptr inbounds %struct.dsi_setup_info, ptr %setup_info, i32 0, i32 3
  %66 = ptrtoint ptr %hsfreqrange101 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %hsfreqrange101, align 4
  %conv102 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug308, ptr noundef %61, ptr noundef nonnull @.str.33, i32 noundef %conv98, i32 noundef %conv100, i32 noundef %conv102) #7
  br label %cleanup106

cleanup106:                                       ; preds = %if.then95, %do.body83, %mipi_dsi_pixel_format_to_bpp.exit.cleanup106_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_mipi_dsi_phtw_test(ptr nocapture noundef readonly %dsi, i32 noundef %phtw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.rcar_mipi_dsi, ptr %dsi, i32 0, i32 7
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %phtw) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !134
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 155) #7
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i4246 = getelementptr i8, ptr %4, i32 4148
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4246) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %6 = and i32 %5, 65537
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not48 = icmp eq i32 %6, 0
  br i1 %tobool.not48, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then19.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %9, i32 4148
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %11 = and i32 %10, 65537
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  br label %for.end

if.then19:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %14, i32 4148
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %16 = and i32 %15, 65537
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then19.cleanup_crit_edge, label %if.then19.land.lhs.true_crit_edge

if.then19.land.lhs.true_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %if.then15, %entry.for.end_crit_edge
  %and21.pre-phi = phi i32 [ %7, %entry.for.end_crit_edge ], [ %12, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.pre-phi)
  %tobool22.not = icmp eq i32 %and21.pre-phi, 0
  br i1 %tobool22.not, label %for.end.cleanup_crit_edge, label %do.end27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsi, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.34, i32 noundef %phtw) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %for.end.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %cond = phi i32 [ -110, %do.end27 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !86, !88, !89, !90, !91, !93, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_rcar_mipi_dsi__312_816_rcar_mipi_dsi_platform_driver_init6, !1, !"__initcall__kmod_rcar_mipi_dsi__312_816_rcar_mipi_dsi_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 816, i32 1}
!2 = !{ptr @__exitcall_rcar_mipi_dsi_platform_driver_exit, !1, !"__exitcall_rcar_mipi_dsi_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description313, !4, !"__UNIQUE_ID_description313", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 818, i32 1}
!5 = !{ptr @__UNIQUE_ID_file314, !6, !"__UNIQUE_ID_file314", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 819, i32 1}
!7 = !{ptr @__UNIQUE_ID_license315, !6, !"__UNIQUE_ID_license315", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 811, i32 13}
!10 = !{ptr @rcar_mipi_dsi_platform_driver, !11, !"rcar_mipi_dsi_platform_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 807, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 777, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rcar_mipi_dsi_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @rcar_mipi_dsi_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 688, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rcar_mipi_dsi_parse_dt.__UNIQUE_ID_ddebug311, !21, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 692, i32 48}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 697, i32 3}
!29 = !{ptr @rcar_mipi_dsi_parse_dt._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rcar_mipi_dsi_parse_dt._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 730, i32 49}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 734, i32 49}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 739, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rcar_mipi_dsi_get_clocks._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rcar_mipi_dsi_get_clocks._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 718, i32 40}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 719, i32 23}
!44 = !{ptr @rcar_mipi_dsi_host_ops, !45, !"rcar_mipi_dsi_host_ops", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 671, i32 39}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 649, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rcar_mipi_dsi_host_attach._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rcar_mipi_dsi_host_attach._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @rcar_mipi_dsi_bridge_ops, !52, !"rcar_mipi_dsi_bridge_ops", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 619, i32 38}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 575, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rcar_mipi_dsi_atomic_enable._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @rcar_mipi_dsi_atomic_enable._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 336, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @rcar_mipi_dsi_startup._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @rcar_mipi_dsi_startup._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 405, i32 3}
!66 = !{ptr @rcar_mipi_dsi_startup._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rcar_mipi_dsi_startup._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 426, i32 3}
!70 = !{ptr @rcar_mipi_dsi_startup._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rcar_mipi_dsi_startup._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 437, i32 2}
!74 = !{ptr @rcar_mipi_dsi_startup.__UNIQUE_ID_ddebug309, !73, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 257, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug307, !76, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 261, i32 2}
!81 = !{ptr @rcar_mipi_dsi_parameters_calc.__UNIQUE_ID_ddebug308, !80, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!82 = !{ptr @vco_cntrl_table, !83, !"vco_cntrl_table", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 111, i32 37}
!84 = !{ptr @hsfreqrange_table, !85, !"hsfreqrange_table", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 80, i32 18}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 157, i32 3}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rcar_mipi_dsi_phtw_test._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @rcar_mipi_dsi_phtw_test._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"phtw", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 64, i32 18}
!93 = distinct !{null, !94, !"phtw2", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 72, i32 18}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 285, i32 3}
!97 = !{ptr @rcar_mipi_dsi_set_display_timing._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rcar_mipi_dsi_set_display_timing._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 497, i32 3}
!101 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rcar_mipi_dsi_start_hs_clock._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rcar_mipi_dsi_start_hs_clock._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 516, i32 3}
!106 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rcar_mipi_dsi_start_video._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @rcar_mipi_dsi_start_video._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 527, i32 3}
!111 = !{ptr @rcar_mipi_dsi_start_video._entry.41, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rcar_mipi_dsi_start_video._entry_ptr.43, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 538, i32 3}
!115 = !{ptr @rcar_mipi_dsi_start_video._entry.44, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rcar_mipi_dsi_start_video._entry_ptr.46, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 447, i32 2}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rcar_mipi_dsi_shutdown.__UNIQUE_ID_ddebug310, !118, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!121 = !{ptr @rcar_mipi_dsi_of_table, !122, !"rcar_mipi_dsi_of_table", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/rcar-du/rcar_mipi_dsi.c", i32 800, i32 34}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2148742266, i64 2148742271, i64 2148742284, i64 2148742328, i64 2148742362, i64 2148742383}
!133 = !{i64 2150631978}
!134 = !{i64 3089856}
!135 = !{i64 3090274}
!136 = !{i64 2150630623}
