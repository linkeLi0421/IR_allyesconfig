; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/imx/imx-ldb.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/imx-ldb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.imx_ldb_bit_mapping = type { i32, i32, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_mux = type { i32, i32, i32 }
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
%struct.imx_ldb = type { ptr, ptr, [2 x %struct.imx_ldb_channel], [2 x ptr], [4 x ptr], [4 x ptr], [2 x ptr], i32, ptr }
%struct.imx_ldb_channel = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_display_mode, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.imx_ldb_encoder = type { %struct.drm_connector, %struct.drm_encoder, ptr }
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
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }

@__initcall__kmod_imx_ldb__312_762_imx_ldb_driver_init6 = internal global ptr @imx_ldb_driver_init, section ".initcall6.init", align 4
@imx_ldb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_ldb_probe, ptr @imx_ldb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_ldb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_ldb_driver_exit = internal global ptr @imx_ldb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description313 = internal constant [37 x i8] c"imx_ldb.description=i.MX LVDS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [41 x i8] c"imx_ldb.author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [41 x i8] c"imx_ldb.file=drivers/gpu/drm/imx/imx-ldb\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [20 x i8] c"imx_ldb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias317 = internal constant [31 x i8] c"imx_ldb.alias=platform:imx-ldb\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-ldb\00", [24 x i8] zeroinitializer }, align 32
@imx_ldb_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ldb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_lvds_mux }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ldb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpr\00", [28 x i8] zeroinitializer }, align 32
@imx_ldb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 630, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get parent regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_ldb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/imx/imx-ldb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_ldb_probe._entry_ptr = internal global ptr @imx_ldb_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,dual-channel\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"di%d_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@imx_ldb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 683, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dual-channel mode, ignoring second output\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_ldb_probe._entry_ptr.13 = internal global ptr @imx_ldb_probe._entry.10, section ".printk_index", align 4
@imx_ldb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 720, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not determine data mapping: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@imx_ldb_probe._entry_ptr.16 = internal global ptr @imx_ldb_probe._entry.14, section ".printk_index", align 4
@imx_ldb_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @imx_ldb_bind, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddc-i2c-bus\00", [20 x i8] zeroinitializer }, align 32
@imx_ldb_panel_ddc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 561, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get ddc i2c adapter\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_ldb_panel_ddc\00", [46 x i8] zeroinitializer }, align 32
@imx_ldb_panel_ddc._entry_ptr = internal global ptr @imx_ldb_panel_ddc._entry, section ".printk_index", align 4
@imx_ldb_panel_ddc.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx_ldb\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no ddc available\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,data-mapping\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,data-width\00", [17 x i8] zeroinitializer }, align 32
@imx_ldb_bit_mappings = internal constant { [3 x %struct.imx_ldb_bit_mapping], [60 x i8] } { [3 x %struct.imx_ldb_bit_mapping] [%struct.imx_ldb_bit_mapping { i32 4112, i32 18, ptr @.str.27 }, %struct.imx_ldb_bit_mapping { i32 4113, i32 24, ptr @.str.27 }, %struct.imx_ldb_bit_mapping { i32 4114, i32 24, ptr @.str.28 }], [60 x i8] zeroinitializer }, align 32
@of_get_bus_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid data mapping: %d-bit \22%s\22\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_get_bus_format\00", [46 x i8] zeroinitializer }, align 32
@of_get_bus_format._entry_ptr = internal global ptr @of_get_bus_format._entry, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spwg\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"jeida\00", [26 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_ldb_encoder_atomic_mode_set, ptr null, ptr null, ptr null, ptr @imx_ldb_encoder_disable, ptr @imx_ldb_encoder_enable, ptr @imx_ldb_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@imx_ldb_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @imx_ldb_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@imx_ldb_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @imx_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"di%d\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"di%d_pll\00", [23 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_atomic_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 264, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: invalid mux %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"imx_ldb_encoder_atomic_mode_set\00", [32 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_atomic_mode_set._entry_ptr = internal global ptr @imx_ldb_encoder_atomic_mode_set._entry, section ".printk_index", align 4
@imx_ldb_encoder_atomic_mode_set._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 270, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: mode exceeds 170 MHz pixel clock\0A\00", [58 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_atomic_mode_set._entry_ptr.35 = internal global ptr @imx_ldb_encoder_atomic_mode_set._entry.33, section ".printk_index", align 4
@imx_ldb_encoder_atomic_mode_set._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.4, i32 274, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: mode exceeds 85 MHz pixel clock\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_atomic_mode_set._entry_ptr.38 = internal global ptr @imx_ldb_encoder_atomic_mode_set._entry.36, section ".printk_index", align 4
@imx_ldb_encoder_atomic_mode_set._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.4, i32 279, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: hdisplay does not align to 8 byte\0A\00", [57 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_atomic_mode_set._entry_ptr.41 = internal global ptr @imx_ldb_encoder_atomic_mode_set._entry.39, section ".printk_index", align 4
@imx_ldb_set_clock.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_ldb_set_clock\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: now: %ld want: %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@imx_ldb_set_clock.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.42, ptr @.str.4, ptr @.str.44, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s after: %ld\0A\00", [17 x i8] zeroinitializer }, align 32
@imx_ldb_set_clock.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@imx_ldb_set_clock.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.42, ptr @.str.4, ptr @.str.44, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@imx_ldb_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to set di%d parent clock to ldb_di%d\0A\00", [51 x i8] zeroinitializer }, align 32
@imx_ldb_set_clock._entry_ptr = internal global ptr @imx_ldb_set_clock._entry, section ".printk_index", align 4
@imx_ldb_encoder_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unable to set di%d parent clock to original parent\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_ldb_encoder_disable\00", [40 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_disable._entry_ptr = internal global ptr @imx_ldb_encoder_disable._entry, section ".printk_index", align 4
@imx_ldb_encoder_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.48, ptr @.str.4, i32 201, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_ldb_encoder_enable\00", [41 x i8] zeroinitializer }, align 32
@imx_ldb_encoder_enable._entry_ptr = internal global ptr @imx_ldb_encoder_enable._entry, section ".printk_index", align 4
@imx6q_lvds_mux = internal global { [2 x %struct.bus_mux], [40 x i8] } { [2 x %struct.bus_mux] [%struct.bus_mux { i32 12, i32 6, i32 192 }, %struct.bus_mux { i32 12, i32 8, i32 768 }], [40 x i8] zeroinitializer }, align 32
@switch.table.imx_ldb_encoder_atomic_check = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4105, i32 4106, i32 4106], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4113, i64 4114]
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"imx_ldb_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 753, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 758, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"imx_ldb_dt_ids\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 542, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 628, i32 56 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 630, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 642, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 656, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 673, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 683, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 719, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"imx_ldb_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 609, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 556, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 561, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 570, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 572, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 507, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 511, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"imx_ldb_bit_mappings\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 495, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 519, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 496, i32 42 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 498, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant [29 x i8] c"imx_ldb_encoder_helper_funcs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 410, i32 46 }
@___asan_gen_.155 = private unnamed_addr constant [31 x i8] c"imx_ldb_connector_helper_funcs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 406, i32 48 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"imx_ldb_connector_funcs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 398, i32 41 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 421, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 426, i32 37 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 264, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 269, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 273, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 278, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 170, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 174, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 188, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 355, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 201, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"imx6q_lvds_mux\00", align 1
@___asan_gen_.225 = private constant [33 x i8] c"../drivers/gpu/drm/imx/imx-ldb.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 524, i32 23 }
@___asan_gen_.227 = private unnamed_addr constant [42 x i8] c"switch.table.imx_ldb_encoder_atomic_check\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias317, ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_imx_ldb_driver_exit, ptr @__initcall__kmod_imx_ldb__312_762_imx_ldb_driver_init6, ptr @imx_ldb_driver_exit, ptr @imx_ldb_encoder_atomic_mode_set._entry, ptr @imx_ldb_encoder_atomic_mode_set._entry.33, ptr @imx_ldb_encoder_atomic_mode_set._entry.36, ptr @imx_ldb_encoder_atomic_mode_set._entry.39, ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr, ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr.35, ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr.38, ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr.41, ptr @imx_ldb_encoder_disable._entry, ptr @imx_ldb_encoder_disable._entry_ptr, ptr @imx_ldb_encoder_enable._entry, ptr @imx_ldb_encoder_enable._entry_ptr, ptr @imx_ldb_panel_ddc._entry, ptr @imx_ldb_panel_ddc._entry_ptr, ptr @imx_ldb_probe._entry, ptr @imx_ldb_probe._entry.10, ptr @imx_ldb_probe._entry.14, ptr @imx_ldb_probe._entry_ptr, ptr @imx_ldb_probe._entry_ptr.13, ptr @imx_ldb_probe._entry_ptr.16, ptr @imx_ldb_set_clock._entry, ptr @imx_ldb_set_clock._entry_ptr, ptr @of_get_bus_format._entry, ptr @of_get_bus_format._entry_ptr, ptr @imx_ldb_driver, ptr @.str, ptr @imx_ldb_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @imx_ldb_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @imx_ldb_bit_mappings, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @imx_ldb_encoder_helper_funcs, ptr @imx_ldb_connector_helper_funcs, ptr @imx_ldb_connector_funcs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @imx6q_lvds_mux, ptr @switch.table.imx_ldb_encoder_atomic_check], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_panel_ddc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_bit_mappings to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_bus_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_encoder_atomic_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_encoder_atomic_mode_set._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_encoder_atomic_mode_set._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_encoder_atomic_mode_set._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_encoder_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ldb_encoder_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_lvds_mux to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.imx_ldb_encoder_atomic_check to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ldb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_ldb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_ldb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_ldb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ldb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bm.i = alloca ptr, align 4
  %datawidth.i = alloca i32, align 4
  %i = alloca i32, align 4
  %clkname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @imx_ldb_dt_ids, ptr noundef %dev1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 368, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup121_crit_edge, label %if.end

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup121

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @regmap_write(ptr noundef %call3, i32 noundef 8, i32 noundef 0) #8
  %dev12 = getelementptr inbounds %struct.imx_ldb, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev12, align 4
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.end9.if.end15_crit_edge, label %if.then14

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %lvds_mux = getelementptr inbounds %struct.imx_ldb, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %lvds_mux to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %lvds_mux, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9.if.end15_crit_edge
  %call.i192 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i192, null
  br i1 %tobool.i.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %ldb_ctrl = getelementptr inbounds %struct.imx_ldb, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ldb_ctrl, align 4
  %or = or i32 %11, 16
  store i32 %or, ptr %ldb_ctrl, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %12 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %storemerge219 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clkname) #8
  %13 = call ptr @memset(ptr %clkname, i32 255, i32 16)
  %call21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clkname, ptr noundef nonnull @.str.8, i32 noundef %storemerge219)
  %14 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev12, align 4
  %call24 = call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull %clkname) #8
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  %arrayidx = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 4, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24, ptr %arrayidx, align 4
  %cmp.i193 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %call37 = call ptr @clk_get_parent(ptr noundef %call24) #8
  %19 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i, align 4
  %arrayidx38 = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 5, i32 %20
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %arrayidx38, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clkname) #8
  %inc = add i32 %20, 1
  %22 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %i, align 4
  %cmp = icmp slt i32 %inc, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end42_crit_edge

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %23 = ptrtoint ptr %call24 to i32
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clkname) #8
  %25 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp39 = icmp eq i32 %.pr, 0
  br i1 %cmp39, label %for.end.cleanup121_crit_edge, label %for.end.if.end42_crit_edge

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.end.cleanup121_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

if.end42:                                         ; preds = %for.end.if.end42_crit_edge, %for.inc.if.end42_crit_edge
  %call43 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %cmp45.not220 = icmp eq ptr %call43, null
  br i1 %cmp45.not220, label %if.end42.for.end118_crit_edge, label %for.body47.lr.ph

if.end42.for.end118_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end118

for.body47.lr.ph:                                 ; preds = %if.end42
  %lvds_mux70 = getelementptr inbounds %struct.imx_ldb, ptr %call.i, i32 0, i32 8
  br label %for.body47

for.body47:                                       ; preds = %for.inc116.for.body47_crit_edge, %for.body47.lr.ph
  %child.0221 = phi ptr [ %call43, %for.body47.lr.ph ], [ %call117, %for.inc116.for.body47_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0221, ptr noundef nonnull @.str.9, ptr noundef nonnull %i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool49.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool49.not, label %lor.lhs.false, label %for.body47.free_child_crit_edge

for.body47.free_child_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_child

lor.lhs.false:                                    ; preds = %for.body47
  %26 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %lor.lhs.false.free_child_crit_edge, label %if.end56

lor.lhs.false.free_child_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_child

if.end56:                                         ; preds = %lor.lhs.false
  %call57 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.0221) #8
  br i1 %call57, label %if.end59, label %if.end56.for.inc116_crit_edge

if.end56.for.inc116_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

if.end59:                                         ; preds = %if.end56
  br i1 %tobool.i.not, label %if.end59.if.end67_crit_edge, label %land.lhs.true

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end59
  %29 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp61 = icmp sgt i32 %30, 0
  br i1 %cmp61, label %do.end66, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end66:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %for.inc116

if.end67:                                         ; preds = %land.lhs.true.if.end67_crit_edge, %if.end59.if.end67_crit_edge
  %31 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i, align 4
  %arrayidx69 = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 2, i32 %32
  %33 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %arrayidx69, align 4
  %chno = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 2, i32 %32, i32 5
  %34 = ptrtoint ptr %chno to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %chno, align 4
  %35 = ptrtoint ptr %lvds_mux70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lvds_mux70, align 4
  %tobool71.not = icmp eq ptr %36, null
  %cond = select i1 %tobool71.not, i32 2, i32 4
  %panel = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 2, i32 %32, i32 1
  %bridge = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 2, i32 %32, i32 2
  %call72 = call i32 @drm_of_find_panel_or_bridge(ptr noundef nonnull %child.0221, i32 noundef %cond, i32 noundef 0, ptr noundef %panel, ptr noundef %bridge) #8
  %37 = zext i32 %call72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call72, label %if.end67.free_child_crit_edge [
    i32 0, label %if.end67.if.end78_crit_edge
    i32 -19, label %if.end67.if.end78_crit_edge259
  ]

if.end67.if.end78_crit_edge259:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end67.free_child_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_child

if.end78:                                         ; preds = %if.end67.if.end78_crit_edge, %if.end67.if.end78_crit_edge259
  %38 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bridge, align 4
  %tobool80.not = icmp eq ptr %39, null
  br i1 %tobool80.not, label %if.then81, label %if.end78.if.end86_crit_edge

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then81:                                        ; preds = %if.end78
  %call82 = call fastcc i32 @imx_ldb_panel_ddc(ptr noundef %dev1, ptr noundef %arrayidx69, ptr noundef nonnull %child.0221)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then81.if.end86_crit_edge, label %if.then81.free_child_crit_edge

if.then81.free_child_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_child

if.then81.if.end86_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end86:                                         ; preds = %if.then81.if.end86_crit_edge, %if.end78.if.end86_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bm.i) #8
  %40 = ptrtoint ptr %bm.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %bm.i, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datawidth.i) #8
  %41 = ptrtoint ptr %datawidth.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %datawidth.i, align 4
  %call.i194 = call i32 @of_property_read_string(ptr noundef nonnull %child.0221, ptr noundef nonnull @.str.23, ptr noundef nonnull %bm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp slt i32 %call.i194, 0
  br i1 %cmp.i195, label %if.end86.of_get_bus_format.exit_crit_edge, label %if.end.i

if.end86.of_get_bus_format.exit_crit_edge:        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_bus_format.exit

if.end.i:                                         ; preds = %if.end86
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0221, ptr noundef nonnull @.str.24, ptr noundef nonnull %datawidth.i, i32 noundef 1, i32 noundef 0) #8
  %42 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bm.i, align 4
  %call3.i = call i32 @strcasecmp(ptr noundef %43, ptr noundef nonnull @.str.27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.for.inc.1.i_crit_edge

if.end.i.for.inc.1.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %44 = ptrtoint ptr %datawidth.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %datawidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %45)
  %cmp6.i = icmp eq i32 %45, 18
  br i1 %cmp6.i, label %land.lhs.true.i.if.then7.i_crit_edge, label %land.lhs.true.1.i

land.lhs.true.i.if.then7.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.then7.i:                                       ; preds = %land.lhs.true.2.i.if.then7.i_crit_edge, %land.lhs.true.1.i.if.then7.i_crit_edge, %land.lhs.true.i.if.then7.i_crit_edge
  %i.019.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.then7.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.then7.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.then7.i_crit_edge ]
  %arrayidx.le.i = getelementptr [3 x %struct.imx_ldb_bit_mapping], ptr @imx_ldb_bit_mappings, i32 0, i32 %i.019.lcssa.i
  %46 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.le.i, align 4
  br label %of_get_bus_format.exit

land.lhs.true.1.i:                                ; preds = %land.lhs.true.i
  %48 = ptrtoint ptr %datawidth.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %datawidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %49)
  %cmp6.1.i = icmp eq i32 %49, 24
  br i1 %cmp6.1.i, label %land.lhs.true.1.i.if.then7.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

land.lhs.true.1.i.if.then7.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %if.end.i.for.inc.1.i_crit_edge
  %call3.2.i = call i32 @strcasecmp(ptr noundef %43, ptr noundef nonnull @.str.28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %tobool.not.2.i = icmp eq i32 %call3.2.i, 0
  br i1 %tobool.not.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.of_get_bus_format.exit.thread_crit_edge

for.inc.1.i.of_get_bus_format.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_bus_format.exit.thread

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %50 = ptrtoint ptr %datawidth.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %datawidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %51)
  %cmp6.2.i = icmp eq i32 %51, 24
  br i1 %cmp6.2.i, label %land.lhs.true.2.i.if.then7.i_crit_edge, label %land.lhs.true.2.i.of_get_bus_format.exit.thread_crit_edge

land.lhs.true.2.i.of_get_bus_format.exit.thread_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_bus_format.exit.thread

land.lhs.true.2.i.if.then7.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

of_get_bus_format.exit.thread:                    ; preds = %land.lhs.true.2.i.of_get_bus_format.exit.thread_crit_edge, %for.inc.1.i.of_get_bus_format.exit.thread_crit_edge
  %52 = ptrtoint ptr %datawidth.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %datawidth.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %53, ptr noundef %43) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datawidth.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bm.i) #8
  br label %do.end108

of_get_bus_format.exit:                           ; preds = %if.then7.i, %if.end86.of_get_bus_format.exit_crit_edge
  %retval.0.i = phi i32 [ %47, %if.then7.i ], [ %call.i194, %if.end86.of_get_bus_format.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datawidth.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %retval.0.i)
  %cmp88 = icmp eq i32 %retval.0.i, -22
  br i1 %cmp88, label %if.then90, label %if.end102

if.then90:                                        ; preds = %of_get_bus_format.exit
  %54 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %panel, align 4
  %tobool92.not = icmp eq ptr %55, null
  br i1 %tobool92.not, label %if.then90.do.end108_crit_edge, label %land.lhs.true93

if.then90.do.end108_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

land.lhs.true93:                                  ; preds = %if.then90
  %funcs = getelementptr inbounds %struct.drm_panel, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %funcs, align 4
  %tobool95.not = icmp eq ptr %57, null
  br i1 %tobool95.not, label %land.lhs.true93.do.end108_crit_edge, label %land.lhs.true96

land.lhs.true93.do.end108_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %get_modes = getelementptr inbounds %struct.drm_panel_funcs, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %get_modes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_modes, align 4
  %tobool99.not = icmp eq ptr %59, null
  br i1 %tobool99.not, label %land.lhs.true96.do.end108_crit_edge, label %land.lhs.true96.if.end109_crit_edge

land.lhs.true96.if.end109_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

land.lhs.true96.do.end108_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

if.end102:                                        ; preds = %of_get_bus_format.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp103 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp103, label %if.end102.do.end108_crit_edge, label %if.end102.if.end109_crit_edge

if.end102.if.end109_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.end102.do.end108_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

do.end108:                                        ; preds = %if.end102.do.end108_crit_edge, %land.lhs.true96.do.end108_crit_edge, %land.lhs.true93.do.end108_crit_edge, %if.then90.do.end108_crit_edge, %of_get_bus_format.exit.thread
  %bus_format.0206 = phi i32 [ -2, %of_get_bus_format.exit.thread ], [ -22, %land.lhs.true96.do.end108_crit_edge ], [ -22, %land.lhs.true93.do.end108_crit_edge ], [ -22, %if.then90.do.end108_crit_edge ], [ %retval.0.i, %if.end102.do.end108_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %bus_format.0206) #11
  br label %free_child

if.end109:                                        ; preds = %if.end102.if.end109_crit_edge, %land.lhs.true96.if.end109_crit_edge
  %bus_format.0210 = phi i32 [ %retval.0.i, %if.end102.if.end109_crit_edge ], [ 0, %land.lhs.true96.if.end109_crit_edge ]
  %bus_format110 = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 2, i32 %32, i32 9
  %60 = ptrtoint ptr %bus_format110 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %bus_format.0210, ptr %bus_format110, align 4
  %child111 = getelementptr %struct.imx_ldb, ptr %call.i, i32 0, i32 2, i32 %32, i32 3
  %61 = ptrtoint ptr %child111 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %child.0221, ptr %child111, align 4
  br label %for.inc116

for.inc116:                                       ; preds = %if.end109, %do.end66, %if.end56.for.inc116_crit_edge
  %call117 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0221) #8
  %cmp45.not = icmp eq ptr %call117, null
  br i1 %cmp45.not, label %for.inc116.for.end118_crit_edge, label %for.inc116.for.body47_crit_edge

for.inc116.for.body47_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body47

for.inc116.for.end118_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end118

for.end118:                                       ; preds = %for.inc116.for.end118_crit_edge, %if.end42.for.end118_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call120 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @imx_ldb_ops) #8
  br label %cleanup121

free_child:                                       ; preds = %do.end108, %if.then81.free_child_crit_edge, %if.end67.free_child_crit_edge, %lor.lhs.false.free_child_crit_edge, %for.body47.free_child_crit_edge
  %ret.4.ph = phi i32 [ %bus_format.0206, %do.end108 ], [ %call82, %if.then81.free_child_crit_edge ], [ %call72, %if.end67.free_child_crit_edge ], [ -22, %for.body47.free_child_crit_edge ], [ -22, %lor.lhs.false.free_child_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0221) #8
  br label %cleanup121

cleanup121:                                       ; preds = %free_child, %for.end118, %for.end.cleanup121_crit_edge, %do.end, %entry.cleanup121_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %ret.4.ph, %free_child ], [ %call120, %for.end118 ], [ -12, %entry.cleanup121_crit_edge ], [ %23, %for.end.cleanup121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ldb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %edid = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 0, i32 6
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %3) #8
  %ddc = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 0, i32 4
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 4
  tail call void @i2c_put_adapter(ptr noundef %5) #8
  %edid.1 = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 1, i32 6
  %6 = ptrtoint ptr %edid.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edid.1, align 4
  tail call void @kfree(ptr noundef %7) #8
  %ddc.1 = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 1, i32 4
  %8 = ptrtoint ptr %ddc.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.1, align 4
  tail call void @i2c_put_adapter(ptr noundef %9) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @imx_ldb_ops) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_ldb_panel_ddc(ptr noundef %dev, ptr noundef %channel, ptr noundef %child) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %edid_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %child, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.end5

of_parse_phandle.exit:                            ; preds = %entry
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.end5_crit_edge, label %if.then

of_parse_phandle.exit.if.end5_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %of_parse_phandle.exit
  %call1 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %2) #8
  %ddc = getelementptr inbounds %struct.imx_ldb_channel, ptr %channel, i32 0, i32 4
  %3 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %ddc, align 4
  call void @of_node_put(ptr noundef nonnull %2) #8
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %of_parse_phandle.exit.if.end5_crit_edge, %of_parse_phandle.exit.thread
  %ddc6 = getelementptr inbounds %struct.imx_ldb_channel, ptr %channel, i32 0, i32 4
  %6 = ptrtoint ptr %ddc6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edid_len) #8
  %8 = ptrtoint ptr %edid_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %edid_len, align 4, !annotation !135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_ldb_panel_ddc.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_ldb_panel_ddc, %if.then14)) #8
          to label %do.end17 [label %if.then14], !srcloc !136

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_ldb_panel_ddc.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %if.then8
  %call18 = call ptr @of_get_property(ptr noundef %child, ptr noundef nonnull @.str.22, ptr noundef nonnull %edid_len) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %edid_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %edid_len, align 4
  %call21 = call ptr @kmemdup(ptr noundef nonnull %call18, i32 noundef %10, i32 noundef 3264) #8
  %edid = getelementptr inbounds %struct.imx_ldb_channel, ptr %channel, i32 0, i32 6
  %11 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %edid, align 4
  br label %if.end29

if.else:                                          ; preds = %do.end17
  %panel = getelementptr inbounds %struct.imx_ldb_channel, ptr %channel, i32 0, i32 1
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %if.then23, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then23:                                        ; preds = %if.else
  %mode = getelementptr inbounds %struct.imx_ldb_channel, ptr %channel, i32 0, i32 7
  %bus_flags = getelementptr inbounds %struct.imx_ldb_channel, ptr %channel, i32 0, i32 10
  %call24 = call i32 @of_get_drm_display_mode(ptr noundef %child, ptr noundef %mode, ptr noundef %bus_flags, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %mode_valid = getelementptr inbounds %struct.imx_ldb_channel, ptr %channel, i32 0, i32 8
  %14 = ptrtoint ptr %mode_valid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %mode_valid, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edid_len) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -517, %do.end ], [ 0, %if.end29 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_drm_display_mode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ldb_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  %clkname.i60.i = alloca [16 x i8], align 1
  %clkname.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.body.backedge ]
  %i.031 = phi i32 [ 0, %entry ], [ 1, %for.body.backedge ]
  %arrayidx = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 %i.031
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i = call ptr @__drmm_simple_encoder_alloc(ptr noundef %data, i32 noundef 1120, i32 noundef 1040, i32 noundef 3) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup6.split.loop.exit27_crit_edge, label %if.end.i

if.end.cleanup6.split.loop.exit27_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6.split.loop.exit27

if.end.i:                                         ; preds = %if.end
  %channel.i = getelementptr inbounds %struct.imx_ldb_encoder, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %channel.i, align 8
  %encoder5.i = getelementptr inbounds %struct.imx_ldb_encoder, ptr %call.i, i32 0, i32 1
  %child.i = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 %i.031, i32 3
  %5 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %child.i, align 4
  %call6.i = call i32 @imx_drm_encoder_parse_of(ptr noundef %data, ptr noundef %encoder5.i, ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.cleanup6_crit_edge

if.end.i.cleanup6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

if.end8.i:                                        ; preds = %if.end.i
  %chno.i = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 %i.031, i32 5
  %7 = ptrtoint ptr %chno.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chno.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clkname.i.i) #8
  %9 = call ptr @memset(ptr %clkname.i.i, i32 255, i32 16)
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname.i.i, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %8) #8
  %dev.i.i = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %call2.i.i = call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull %clkname.i.i) #8
  %arrayidx.i.i = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 3, i32 %8
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2.i.i, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end8.i.imx_ldb_get_clk.exit.i_crit_edge, label %if.end.i.i

if.end8.i.imx_ldb_get_clk.exit.i_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_ldb_get_clk.exit.i

if.end.i.i:                                       ; preds = %if.end8.i
  %call10.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname.i.i, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %8) #8
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %call13.i.i = call ptr @devm_clk_get(ptr noundef %14, ptr noundef nonnull %clkname.i.i) #8
  %arrayidx14.i.i = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 6, i32 %8
  %15 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13.i.i, ptr %arrayidx14.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call13.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i.i.imx_ldb_get_clk.exit.i_crit_edge, label %imx_ldb_get_clk.exit.thread.i

if.end.i.i.imx_ldb_get_clk.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_ldb_get_clk.exit.i

imx_ldb_get_clk.exit.thread.i:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clkname.i.i) #8
  br label %if.end12.i

imx_ldb_get_clk.exit.i:                           ; preds = %if.end.i.i.imx_ldb_get_clk.exit.i_crit_edge, %if.end8.i.imx_ldb_get_clk.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %call13.i.i, %if.end.i.i.imx_ldb_get_clk.exit.i_crit_edge ], [ %call2.i.i, %if.end8.i.imx_ldb_get_clk.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clkname.i.i) #8
  %tobool10.not.i = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool10.not.i, label %imx_ldb_get_clk.exit.i.if.end12.i_crit_edge, label %imx_ldb_get_clk.exit.i.cleanup6.split.loop.exit27_crit_edge

imx_ldb_get_clk.exit.i.cleanup6.split.loop.exit27_crit_edge: ; preds = %imx_ldb_get_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6.split.loop.exit27

imx_ldb_get_clk.exit.i.if.end12.i_crit_edge:      ; preds = %imx_ldb_get_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %imx_ldb_get_clk.exit.i.if.end12.i_crit_edge, %imx_ldb_get_clk.exit.thread.i
  %ldb_ctrl.i = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %ldb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ldb_ctrl.i, align 4
  %and.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end19.i_crit_edge, label %if.then14.i

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clkname.i60.i) #8
  %18 = call ptr @memset(ptr %clkname.i60.i, i32 255, i32 16)
  %call.i61.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname.i60.i, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef 1) #8
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %call2.i63.i = call ptr @devm_clk_get(ptr noundef %20, ptr noundef nonnull %clkname.i60.i) #8
  %arrayidx.i64.i = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2.i63.i, ptr %arrayidx.i64.i, align 4
  %cmp.i.i65.i = icmp ugt ptr %call2.i63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i65.i, label %if.then14.i.imx_ldb_get_clk.exit74.i_crit_edge, label %if.end.i72.i

if.then14.i.imx_ldb_get_clk.exit74.i_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_ldb_get_clk.exit74.i

if.end.i72.i:                                     ; preds = %if.then14.i
  %call10.i67.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname.i60.i, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1) #8
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %call13.i68.i = call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull %clkname.i60.i) #8
  %arrayidx14.i69.i = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx14.i69.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call13.i68.i, ptr %arrayidx14.i69.i, align 4
  %cmp.i.i.i70.i = icmp ugt ptr %call13.i68.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i70.i, label %if.end.i72.i.imx_ldb_get_clk.exit74.i_crit_edge, label %imx_ldb_get_clk.exit74.thread.i

if.end.i72.i.imx_ldb_get_clk.exit74.i_crit_edge:  ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_ldb_get_clk.exit74.i

imx_ldb_get_clk.exit74.thread.i:                  ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clkname.i60.i) #8
  br label %if.end19.i

imx_ldb_get_clk.exit74.i:                         ; preds = %if.end.i72.i.imx_ldb_get_clk.exit74.i_crit_edge, %if.then14.i.imx_ldb_get_clk.exit74.i_crit_edge
  %retval.0.i73.in.i = phi ptr [ %call13.i68.i, %if.end.i72.i.imx_ldb_get_clk.exit74.i_crit_edge ], [ %call2.i63.i, %if.then14.i.imx_ldb_get_clk.exit74.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clkname.i60.i) #8
  %tobool16.not.i = icmp eq ptr %retval.0.i73.in.i, null
  br i1 %tobool16.not.i, label %imx_ldb_get_clk.exit74.i.if.end19.i_crit_edge, label %imx_ldb_get_clk.exit74.i.cleanup6.split.loop.exit27_crit_edge

imx_ldb_get_clk.exit74.i.cleanup6.split.loop.exit27_crit_edge: ; preds = %imx_ldb_get_clk.exit74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6.split.loop.exit27

imx_ldb_get_clk.exit74.i.if.end19.i_crit_edge:    ; preds = %imx_ldb_get_clk.exit74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %imx_ldb_get_clk.exit74.i.if.end19.i_crit_edge, %imx_ldb_get_clk.exit74.thread.i, %if.end12.i.if.end19.i_crit_edge
  %helper_private.i.i = getelementptr inbounds %struct.imx_ldb_encoder, ptr %call.i, i32 0, i32 1, i32 11
  %25 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @imx_ldb_encoder_helper_funcs, ptr %helper_private.i.i, align 4
  %bridge.i = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 %i.031, i32 2
  %26 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge.i, align 4
  %tobool20.not.i = icmp eq ptr %27, null
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i
  %call23.i = call i32 @drm_bridge_attach(ptr noundef %encoder5.i, ptr noundef nonnull %27, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %28 = and i1 %cmp, %tobool24.not.i
  br i1 %28, label %if.then21.i.for.body.backedge_crit_edge, label %if.then21.i.cleanup6_crit_edge

if.then21.i.cleanup6_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

if.then21.i.for.body.backedge_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

if.else.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %helper_private.i75.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %29 = ptrtoint ptr %helper_private.i75.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @imx_ldb_connector_helper_funcs, ptr %helper_private.i75.i, align 4
  %ddc.i = getelementptr %struct.imx_ldb, ptr %1, i32 0, i32 2, i32 %i.031, i32 4
  %30 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddc.i, align 4
  %call27.i = call i32 @drm_connector_init_with_ddc(ptr noundef %data, ptr noundef %call.i, ptr noundef nonnull @imx_ldb_connector_funcs, i32 noundef 7, ptr noundef %31) #8
  %call28.i = call i32 @drm_connector_attach_encoder(ptr noundef %call.i, ptr noundef %encoder5.i) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body.backedge_crit_edge, label %for.inc.cleanup6_crit_edge

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.then21.i.for.body.backedge_crit_edge
  br label %for.body

cleanup6.split.loop.exit27:                       ; preds = %imx_ldb_get_clk.exit74.i.cleanup6.split.loop.exit27_crit_edge, %imx_ldb_get_clk.exit.i.cleanup6.split.loop.exit27_crit_edge, %if.end.cleanup6.split.loop.exit27_crit_edge
  %retval.0.i.in36 = phi ptr [ %call.i, %if.end.cleanup6.split.loop.exit27_crit_edge ], [ %retval.0.i.in.i, %imx_ldb_get_clk.exit.i.cleanup6.split.loop.exit27_crit_edge ], [ %retval.0.i73.in.i, %imx_ldb_get_clk.exit74.i.cleanup6.split.loop.exit27_crit_edge ]
  %retval.0.i.le = ptrtoint ptr %retval.0.i.in36 to i32
  br label %cleanup6

cleanup6:                                         ; preds = %cleanup6.split.loop.exit27, %for.inc.cleanup6_crit_edge, %if.then21.i.cleanup6_crit_edge, %if.end.i.cleanup6_crit_edge
  %retval.2 = phi i32 [ %retval.0.i.le, %cleanup6.split.loop.exit27 ], [ %call23.i, %if.then21.i.cleanup6_crit_edge ], [ %call6.i, %if.end.i.cleanup6_crit_edge ], [ 0, %for.inc.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_ldb_encoder_atomic_mode_set(ptr noundef %encoder, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readonly %connector_state) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel.i, align 8
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ldb_ctrl = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ldb_ctrl, align 4
  %and = and i32 %5, 16
  %6 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %7, 1000
  %child = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %child, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #8
  %10 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !135
  %11 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !135
  %13 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %13, align 4, !annotation !135
  %call.i = call i32 @drm_of_encoder_active_endpoint(ptr noundef %9, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.drm_of_encoder_active_port_id.exit_crit_edge

entry.drm_of_encoder_active_port_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_of_encoder_active_port_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %endpoint.i, align 4
  br label %drm_of_encoder_active_port_id.exit

drm_of_encoder_active_port_id.exit:               ; preds = %cond.false.i, %entry.drm_of_encoder_active_port_id.exit_crit_edge
  %cond.i = phi i32 [ %16, %cond.false.i ], [ %call.i, %entry.drm_of_encoder_active_port_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #8
  %bus_format3 = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %bus_format3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_format3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i)
  %cmp4 = icmp ugt i32 %cond.i, 3
  br i1 %cmp4, label %do.end, label %if.end

do.end:                                           ; preds = %drm_of_encoder_active_port_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %cond.i) #11
  br label %cleanup

if.end:                                           ; preds = %drm_of_encoder_active_port_id.exit
  %21 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170000, i32 %22)
  %cmp6 = icmp sgt i32 %22, 170000
  br i1 %cmp6, label %do.end10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end.if.end12_crit_edge
  %25 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 85000, i32 %26)
  %cmp14 = icmp sgt i32 %26, 85000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond137 = select i1 %cmp14, i1 %tobool.not, i1 false
  br i1 %or.cond137, label %do.end18, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end12.if.end20_crit_edge
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hdisplay, align 4
  %31 = and i16 %30, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp22 = icmp eq i16 %31, 0
  br i1 %cmp22, label %if.end20.if.end29_crit_edge, label %do.end27

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end20.if.end29_crit_edge
  %34 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %adjusted_mode, align 4
  br i1 %tobool.not, label %if.end36, label %if.end36.thread

if.end36.thread:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %mul33 = mul i32 %35, 3500
  call fastcc void @imx_ldb_set_clock(ptr noundef %3, i32 noundef %cond.i, i32 noundef 0, i32 noundef %mul33, i32 noundef %mul)
  call fastcc void @imx_ldb_set_clock(ptr noundef %3, i32 noundef %cond.i, i32 noundef 1, i32 noundef %mul33, i32 noundef %mul)
  br label %if.then41

if.end36:                                         ; preds = %if.end29
  %mul35 = mul i32 %35, 7000
  %chno = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %chno to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chno, align 4
  call fastcc void @imx_ldb_set_clock(ptr noundef %3, i32 noundef %cond.i, i32 noundef %37, i32 noundef %mul35, i32 noundef %mul)
  %channel = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 2
  %cmp37 = icmp eq ptr %1, %channel
  br i1 %cmp37, label %if.end36.if.then41_crit_edge, label %if.end36.if.end55_crit_edge

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end36.if.then41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then41:                                        ; preds = %if.end36.if.then41_crit_edge, %if.end36.thread
  %38 = xor i1 %tobool.not, true
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and42 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ldb_ctrl, align 4
  %or = or i32 %42, 512
  br label %if.end55.sink.split

if.else46:                                        ; preds = %if.then41
  %and48 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else46.if.end55_crit_edge, label %if.then50

if.else46.if.end55_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ldb_ctrl, align 4
  %and52 = and i32 %44, -513
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then50, %if.then44
  %or.sink = phi i32 [ %or, %if.then44 ], [ %and52, %if.then50 ]
  %45 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.sink, ptr %ldb_ctrl, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else46.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %tobool30.not.not145 = phi i1 [ false, %if.end36.if.end55_crit_edge ], [ %38, %if.else46.if.end55_crit_edge ], [ %38, %if.end55.sink.split ]
  %arrayidx57 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 2, i32 1
  %cmp58 = icmp eq ptr %1, %arrayidx57
  %brmerge139 = select i1 %cmp58, i1 true, i1 %tobool30.not.not145
  br i1 %brmerge139, label %if.then62, label %if.end55.if.end78_crit_edge

if.end55.if.end78_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then62:                                        ; preds = %if.end55
  %flags63 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %46 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags63, align 4
  %and64 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.else69, label %if.then66

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ldb_ctrl, align 4
  %or68 = or i32 %49, 1024
  br label %if.end78.sink.split

if.else69:                                        ; preds = %if.then62
  %and71 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else69.if.end78_crit_edge, label %if.then73

if.else69.if.end78_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then73:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ldb_ctrl, align 4
  %and75 = and i32 %51, -1025
  br label %if.end78.sink.split

if.end78.sink.split:                              ; preds = %if.then73, %if.then66
  %or68.sink = phi i32 [ %or68, %if.then66 ], [ %and75, %if.then73 ]
  %52 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or68.sink, ptr %ldb_ctrl, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end78.sink.split, %if.else69.if.end78_crit_edge, %if.end55.if.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool79.not = icmp eq i32 %18, 0
  br i1 %tobool79.not, label %if.then80, label %if.end78.if.end86_crit_edge

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then80:                                        ; preds = %if.end78
  %53 = ptrtoint ptr %connector_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %connector_state, align 4
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %54, i32 0, i32 20, i32 7
  %55 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool82.not = icmp eq i32 %56, 0
  br i1 %tobool82.not, label %if.then80.cleanup_crit_edge, label %if.then83

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %54, i32 0, i32 20, i32 6
  %57 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus_formats, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end78.if.end86_crit_edge
  %bus_format.1 = phi i32 [ %18, %if.end78.if.end86_crit_edge ], [ %60, %if.then83 ]
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %ldb_ctrl.i = getelementptr inbounds %struct.imx_ldb, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %ldb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ldb_ctrl.i, align 4
  %and.i = and i32 %64, 16
  %65 = zext i32 %bus_format.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %bus_format.1, label %if.end86.cleanup_crit_edge [
    i32 4114, label %sw.bb11.i
    i32 4113, label %sw.bb.i
  ]

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end86
  %chno.i = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 5
  %66 = ptrtoint ptr %chno.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %chno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i = icmp ne i32 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i140 = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i140, i1 false
  br i1 %or.cond.i, label %sw.bb.i.if.end.i_crit_edge, label %if.then.i

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %64, 32
  %68 = ptrtoint ptr %ldb_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or.i, ptr %ldb_ctrl.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.i.if.end.i_crit_edge
  %69 = ptrtoint ptr %chno.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp4.i = icmp ne i32 %70, 1
  %or.cond39.i = select i1 %cmp4.i, i1 %tobool.not.i140, i1 false
  br i1 %or.cond39.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.sw.epilog.sink.split.i_crit_edge

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.end86
  %chno12.i = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 5
  %71 = ptrtoint ptr %chno12.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chno12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp13.i = icmp ne i32 %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  %or.cond40.i = select i1 %cmp13.i, i1 %tobool15.not.i, i1 false
  br i1 %or.cond40.i, label %sw.bb11.i.if.end19.i_crit_edge, label %if.then16.i

sw.bb11.i.if.end19.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then16.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  %or18.i = or i32 %64, 96
  %73 = ptrtoint ptr %ldb_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or18.i, ptr %ldb_ctrl.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %sw.bb11.i.if.end19.i_crit_edge
  %74 = ptrtoint ptr %chno12.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %chno12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp21.i = icmp ne i32 %75, 1
  %or.cond41.i = select i1 %cmp21.i, i1 %tobool15.not.i, i1 false
  br i1 %or.cond41.i, label %if.end19.i.cleanup_crit_edge, label %if.end19.i.sw.epilog.sink.split.i_crit_edge

if.end19.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.sink.split.i:                           ; preds = %if.end19.i.sw.epilog.sink.split.i_crit_edge, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink42.i = phi i32 [ 128, %if.end.i.sw.epilog.sink.split.i_crit_edge ], [ 384, %if.end19.i.sw.epilog.sink.split.i_crit_edge ]
  %76 = ptrtoint ptr %ldb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ldb_ctrl.i, align 4
  %or26.i = or i32 %77, %.sink42.i
  store i32 %or26.i, ptr %ldb_ctrl.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split.i, %if.end19.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_ldb_encoder_disable(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  %mux = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ldb_ctrl = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ldb_ctrl, align 4
  %and = and i32 %5, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mux) #8
  %6 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mux, align 4, !annotation !135
  %panel = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel, align 4
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %8) #8
  %channel = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 2
  %cmp = icmp eq ptr %1, %channel
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ldb_ctrl, align 4
  %and4 = and i32 %10, -4
  store i32 %and4, ptr %ldb_ctrl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx6 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 2, i32 1
  %cmp7 = icmp eq ptr %1, %arrayidx6
  %cmp7.not = xor i1 %cmp7, true
  %or.cond84 = select i1 %cmp7.not, i1 %tobool.not, i1 false
  br i1 %or.cond84, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ldb_ctrl, align 4
  %and12 = and i32 %12, -13
  store i32 %and12, ptr %ldb_ctrl, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %15 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ldb_ctrl, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 8, i32 noundef %16) #8
  br i1 %tobool.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  %arrayidx20 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx20, align 4
  tail call void @clk_disable(ptr noundef %20) #8
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %lvds_mux = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %lvds_mux to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lvds_mux, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %if.else42, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36 = getelementptr %struct.bus_mux, ptr %22, i32 1
  %spec.select = select i1 %cmp7, ptr %arrayidx36, ptr null
  %lvds_mux24.0 = select i1 %cmp, ptr %22, ptr %spec.select
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %25 = ptrtoint ptr %lvds_mux24.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lvds_mux24.0, align 4
  %call40 = call i32 @regmap_read(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %mux) #8
  %mask = getelementptr inbounds %struct.bus_mux, ptr %lvds_mux24.0, i32 0, i32 2
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask, align 4
  %29 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mux, align 4
  %and41 = and i32 %30, %28
  %shift = getelementptr inbounds %struct.bus_mux, ptr %lvds_mux24.0, i32 0, i32 1
  %31 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shift, align 4
  %shr = ashr i32 %and41, %32
  br label %if.end46

if.else42:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %cond = zext i1 %cmp.not to i32
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %if.then23
  %storemerge = phi i32 [ %cond, %if.else42 ], [ %shr, %if.then23 ]
  %33 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %mux, align 4
  %arrayidx47 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 4, i32 %storemerge
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 5, i32 %storemerge
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx48, align 4
  %call49 = call i32 @clk_set_parent(ptr noundef %35, ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end46.if.end52_crit_edge, label %do.end

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mux, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.46, i32 noundef %41) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end, %if.end46.if.end52_crit_edge
  %42 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %panel, align 4
  %call54 = call i32 @drm_panel_unprepare(ptr noundef %43) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mux) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_ldb_encoder_enable(ptr noundef %encoder) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ldb_ctrl = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ldb_ctrl, align 4
  %and = and i32 %5, 16
  %child = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #8
  %8 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !135
  %9 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !135
  %11 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !135
  %call.i = call i32 @drm_of_encoder_active_endpoint(ptr noundef %7, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.drm_of_encoder_active_port_id.exit_crit_edge

entry.drm_of_encoder_active_port_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_of_encoder_active_port_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endpoint.i, align 4
  br label %drm_of_encoder_active_port_id.exit

drm_of_encoder_active_port_id.exit:               ; preds = %cond.false.i, %entry.drm_of_encoder_active_port_id.exit_crit_edge
  %cond.i = phi i32 [ %14, %cond.false.i ], [ %call.i, %entry.drm_of_encoder_active_port_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i)
  %cmp3 = icmp ugt i32 %cond.i, 3
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %drm_of_encoder_active_port_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.48, i32 noundef %cond.i) #11
  br label %cleanup

if.end:                                           ; preds = %drm_of_encoder_active_port_id.exit
  %panel = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %panel, align 4
  %call4 = call i32 @drm_panel_prepare(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx20 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 4, i32 %cond.i
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx20, align 4
  br i1 %tobool.not, label %if.end24, label %if.then5

if.then5:                                         ; preds = %if.end
  %clk = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call7 = call i32 @clk_set_parent(ptr noundef %20, ptr noundef %22) #8
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx20, align 4
  %arrayidx11 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx11, align 4
  %call12 = call i32 @clk_set_parent(ptr noundef %24, ptr noundef %26) #8
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %call.i149 = call i32 @clk_prepare(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %if.end.i, label %if.then5.clk_prepare_enable.exit_crit_edge

if.then5.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then5
  %call1.i = call i32 @clk_enable(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %28) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then5.clk_prepare_enable.exit_crit_edge
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx11, align 4
  %call.i151 = call i32 @clk_prepare(ptr noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i155, label %clk_prepare_enable.exit.if.end24.thread_crit_edge

clk_prepare_enable.exit.if.end24.thread_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.thread

if.end.i155:                                      ; preds = %clk_prepare_enable.exit
  %call1.i153 = call i32 @clk_enable(ptr noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool2.not.i154 = icmp eq i32 %call1.i153, 0
  br i1 %tobool2.not.i154, label %if.end.i155.if.end24.thread_crit_edge, label %if.then3.i156

if.end.i155.if.end24.thread_crit_edge:            ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.thread

if.then3.i156:                                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %30) #8
  br label %if.end24.thread

if.end24.thread:                                  ; preds = %if.then3.i156, %if.end.i155.if.end24.thread_crit_edge, %clk_prepare_enable.exit.if.end24.thread_crit_edge
  %channel159 = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 2
  %cmp26160 = icmp eq ptr %1, %channel159
  br label %if.then29

if.end24:                                         ; preds = %if.end
  %chno = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %chno to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chno, align 4
  %arrayidx22 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 3, i32 %32
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx22, align 4
  %call23 = call i32 @clk_set_parent(ptr noundef %20, ptr noundef %34) #8
  %channel = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 2
  %cmp26 = icmp eq ptr %1, %channel
  br i1 %cmp26, label %if.end24.if.then29_crit_edge, label %if.end24.if.end44_crit_edge

if.end24.if.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end24.if.then29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %if.end24.if.then29_crit_edge, %if.end24.thread
  %cmp26164 = phi i1 [ %cmp26160, %if.end24.thread ], [ true, %if.end24.if.then29_crit_edge ]
  %35 = xor i1 %tobool.not, true
  %36 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ldb_ctrl, align 4
  %and31 = and i32 %37, -4
  store i32 %and31, ptr %ldb_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp32 = icmp eq i32 %cond.i, 0
  br i1 %cmp32, label %if.then29.if.then35_crit_edge, label %lor.lhs.false33

if.then29.if.then35_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false33:                                  ; preds = %if.then29
  %lvds_mux = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %lvds_mux to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lvds_mux, align 4
  %tobool34.not = icmp eq ptr %39, null
  br i1 %tobool34.not, label %if.else37, label %lor.lhs.false33.if.then35_crit_edge

lor.lhs.false33.if.then35_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false33.if.then35_crit_edge, %if.then29.if.then35_crit_edge
  %or = or i32 %and31, 1
  br label %if.end44.sink.split

if.else37:                                        ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp38 = icmp eq i32 %cond.i, 1
  br i1 %cmp38, label %if.then39, label %if.else37.if.end44_crit_edge

if.else37.if.end44_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then39:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %or41 = or i32 %37, 3
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then39, %if.then35
  %or.sink = phi i32 [ %or, %if.then35 ], [ %or41, %if.then39 ]
  %40 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.sink, ptr %ldb_ctrl, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else37.if.end44_crit_edge, %if.end24.if.end44_crit_edge
  %tobool.not.not165 = phi i1 [ false, %if.end24.if.end44_crit_edge ], [ %35, %if.else37.if.end44_crit_edge ], [ %35, %if.end44.sink.split ]
  %cmp26163 = phi i1 [ false, %if.end24.if.end44_crit_edge ], [ %cmp26164, %if.else37.if.end44_crit_edge ], [ %cmp26164, %if.end44.sink.split ]
  %arrayidx46 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 2, i32 1
  %cmp47 = icmp eq ptr %1, %arrayidx46
  %brmerge148 = select i1 %cmp47, i1 true, i1 %tobool.not.not165
  br i1 %brmerge148, label %if.then50, label %if.end44.if.end67_crit_edge

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then50:                                        ; preds = %if.end44
  %41 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ldb_ctrl, align 4
  %and52 = and i32 %42, -13
  store i32 %and52, ptr %ldb_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp53 = icmp eq i32 %cond.i, 1
  br i1 %cmp53, label %if.then50.if.then57_crit_edge, label %lor.lhs.false54

if.then50.if.then57_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false54:                                  ; preds = %if.then50
  %lvds_mux55 = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 8
  %43 = ptrtoint ptr %lvds_mux55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lvds_mux55, align 4
  %tobool56.not = icmp eq ptr %44, null
  br i1 %tobool56.not, label %if.else60, label %lor.lhs.false54.if.then57_crit_edge

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %if.then50.if.then57_crit_edge
  %or59 = or i32 %42, 12
  br label %if.end67.sink.split

if.else60:                                        ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp61 = icmp eq i32 %cond.i, 0
  br i1 %cmp61, label %if.then62, label %if.else60.if.end67_crit_edge

if.else60.if.end67_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then62:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  %or64 = or i32 %and52, 4
  br label %if.end67.sink.split

if.end67.sink.split:                              ; preds = %if.then62, %if.then57
  %or59.sink = phi i32 [ %or59, %if.then57 ], [ %or64, %if.then62 ]
  %45 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or59.sink, ptr %ldb_ctrl, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.else60.if.end67_crit_edge, %if.end44.if.end67_crit_edge
  %lvds_mux68 = getelementptr inbounds %struct.imx_ldb, ptr %3, i32 0, i32 8
  %46 = ptrtoint ptr %lvds_mux68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lvds_mux68, align 4
  %tobool69.not = icmp eq ptr %47, null
  br i1 %tobool69.not, label %if.end67.if.end88_crit_edge, label %if.then70

if.end67.if.end88_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx84 = getelementptr %struct.bus_mux, ptr %47, i32 1
  %spec.select = select i1 %cmp47, ptr %arrayidx84, ptr null
  %lvds_mux71.0 = select i1 %cmp26163, ptr %47, ptr %spec.select
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %50 = ptrtoint ptr %lvds_mux71.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lvds_mux71.0, align 4
  %mask = getelementptr inbounds %struct.bus_mux, ptr %lvds_mux71.0, i32 0, i32 2
  %52 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask, align 4
  %shift = getelementptr inbounds %struct.bus_mux, ptr %lvds_mux71.0, i32 0, i32 1
  %54 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %shift, align 4
  %shl = shl i32 %cond.i, %55
  %call.i158 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end88

if.end88:                                         ; preds = %if.then70, %if.end67.if.end88_crit_edge
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %58 = ptrtoint ptr %ldb_ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ldb_ctrl, align 4
  %call91 = call i32 @regmap_write(ptr noundef %57, i32 noundef 8, i32 noundef %59) #8
  %60 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %panel, align 4
  %call93 = call i32 @drm_panel_enable(ptr noundef %61) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_ldb_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readonly %conn_state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel.i, align 8
  %2 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_state, align 4
  %bus_format2 = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %bus_format2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_format2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 7
  %6 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_formats, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %bus_flags6 = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink.in = phi ptr [ %bus_flags6, %if.else ], [ %bus_flags, %if.then ]
  %bus_format.0 = phi i32 [ %5, %if.else ], [ %11, %if.then ]
  %12 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.sink = load i32, ptr %.sink.in, align 4
  %bus_flags7 = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 2
  %13 = ptrtoint ptr %bus_flags7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %bus_flags7, align 4
  %switch.tableidx = add i32 %bus_format.0, -4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 3
  br i1 %14, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.imx_ldb_encoder_atomic_check, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bus_format10 = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 1
  %16 = ptrtoint ptr %bus_format10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.load, ptr %bus_format10, align 4
  %di_hsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 3
  %17 = ptrtoint ptr %di_hsync_pin to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %di_hsync_pin, align 4
  %di_vsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 4
  %18 = ptrtoint ptr %di_vsync_pin to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %di_vsync_pin, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_ldb_set_clock(ptr nocapture noundef readonly %ldb, i32 noundef %mux, i32 noundef %chno, i32 noundef %serial_clk, i32 noundef %di_clk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_ldb_set_clock, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.imx_ldb, ptr %ldb, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.imx_ldb, ptr %ldb, i32 0, i32 6, i32 %chno
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_ldb_set_clock.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %call3, i32 noundef %serial_clk) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx5 = getelementptr %struct.imx_ldb, ptr %ldb, i32 0, i32 6, i32 %chno
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %call6 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %serial_clk) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_ldb_set_clock, %if.then19)) #8
          to label %do.body27 [label %if.then19], !srcloc !136

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.imx_ldb, ptr %ldb, i32 0, i32 1
  %6 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev20, align 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %call23 = tail call i32 @clk_get_rate(ptr noundef %9) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_ldb_set_clock.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %call23) #8
  br label %do.body27

do.body27:                                        ; preds = %if.then19, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_ldb_set_clock, %if.then39)) #8
          to label %do.end45 [label %if.then39], !srcloc !136

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.imx_ldb, ptr %ldb, i32 0, i32 1
  %10 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev40, align 4
  %arrayidx41 = getelementptr %struct.imx_ldb, ptr %ldb, i32 0, i32 3, i32 %chno
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx41, align 4
  %call42 = tail call i32 @clk_get_rate(ptr noundef %13) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_ldb_set_clock.__UNIQUE_ID_ddebug309, ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %call42, i32 noundef %di_clk) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then39, %do.body27
  %arrayidx47 = getelementptr %struct.imx_ldb, ptr %ldb, i32 0, i32 3, i32 %chno
  %14 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx47, align 4
  %call48 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %di_clk) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_ldb_set_clock, %if.then61)) #8
          to label %do.end68 [label %if.then61], !srcloc !136

if.then61:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  %dev62 = getelementptr inbounds %struct.imx_ldb, ptr %ldb, i32 0, i32 1
  %16 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev62, align 4
  %18 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx47, align 4
  %call65 = tail call i32 @clk_get_rate(ptr noundef %19) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_ldb_set_clock.__UNIQUE_ID_ddebug310, ptr noundef %17, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %call65) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then61, %do.end45
  %arrayidx69 = getelementptr %struct.imx_ldb, ptr %ldb, i32 0, i32 4, i32 %mux
  %20 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx69, align 4
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx47, align 4
  %call72 = tail call i32 @clk_set_parent(ptr noundef %21, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end68.if.end79_crit_edge, label %do.end77

do.end68.if.end79_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

do.end77:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.imx_ldb, ptr %ldb, i32 0, i32 1
  %24 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.45, i32 noundef %mux, i32 noundef %chno) #11
  br label %if.end79

if.end79:                                         ; preds = %do.end77, %do.end68.if.end79_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ldb_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr inbounds %struct.imx_ldb_encoder, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel.i, align 8
  %panel = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call1 = tail call i32 @drm_panel_get_modes(ptr noundef %3, ptr noundef %connector) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.end:                                           ; preds = %entry
  %edid = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

land.lhs.true:                                    ; preds = %if.end
  %ddc = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end7thread-pre-split, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %7) #8
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %edid, align 4
  br label %if.end7

if.end7thread-pre-split:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %edid, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.then3
  %10 = phi ptr [ %.pr, %if.end7thread-pre-split ], [ %call5, %if.then3 ]
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %if.end7.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %11 = phi ptr [ %10, %if.end7.if.then10_crit_edge ], [ %5, %if.end.if.then10_crit_edge ]
  %call12 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edid, align 4
  %call14 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %13) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7.if.end15_crit_edge
  %num_modes.0 = phi i32 [ %call14, %if.then10 ], [ %call1, %if.end7.if.end15_crit_edge ]
  %mode_valid = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %mode_valid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.end15.cleanup25_crit_edge, label %if.then17

if.end15.cleanup25_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.then17:                                        ; preds = %if.end15
  %16 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connector, align 8
  %call18 = tail call ptr @drm_mode_create(ptr noundef %17) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.cleanup25_crit_edge, label %cleanup

if.then17.cleanup25_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

cleanup:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %mode22 = getelementptr inbounds %struct.imx_ldb_channel, ptr %1, i32 0, i32 7
  tail call void @drm_mode_copy(ptr noundef nonnull %call18, ptr noundef %mode22) #8
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call18, i32 0, i32 28
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 2
  %20 = or i8 %19, 72
  store i8 %20, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call18) #8
  %inc = add i32 %num_modes.0, 1
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup, %if.then17.cleanup25_crit_edge, %if.end15.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ %call1, %entry.cleanup25_crit_edge ], [ %inc, %cleanup ], [ %num_modes.0, %if.end15.cleanup25_crit_edge ], [ -22, %if.then17.cleanup25_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_imx_ldb__312_762_imx_ldb_driver_init6, !1, !"__initcall__kmod_imx_ldb__312_762_imx_ldb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 762, i32 1}
!2 = !{ptr @__exitcall_imx_ldb_driver_exit, !1, !"__exitcall_imx_ldb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description313, !4, !"__UNIQUE_ID_description313", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 764, i32 1}
!5 = !{ptr @__UNIQUE_ID_author314, !6, !"__UNIQUE_ID_author314", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 765, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 766, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias317, !11, !"__UNIQUE_ID_alias317", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 767, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 758, i32 11}
!14 = !{ptr @imx_ldb_driver, !15, !"imx_ldb_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 753, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 628, i32 56}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 630, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx_ldb_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_ldb_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 642, i32 35}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 656, i32 20}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 673, i32 37}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 683, i32 4}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @imx_ldb_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @imx_ldb_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 719, i32 4}
!39 = !{ptr @imx_ldb_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @imx_ldb_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 556, i32 37}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 561, i32 4}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @imx_ldb_panel_ddc._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx_ldb_panel_ddc._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 570, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @imx_ldb_panel_ddc.__UNIQUE_ID_ddebug311, !49, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 572, i32 34}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 507, i32 36}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 511, i32 27}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 519, i32 2}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @of_get_bus_format._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @of_get_bus_format._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 496, i32 42}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 498, i32 42}
!67 = !{ptr @imx_ldb_bit_mappings, !68, !"imx_ldb_bit_mappings", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 495, i32 41}
!69 = !{ptr @imx_ldb_ops, !70, !"imx_ldb_ops", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 609, i32 35}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 421, i32 37}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 426, i32 37}
!75 = !{ptr @imx_ldb_encoder_helper_funcs, !76, !"imx_ldb_encoder_helper_funcs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 410, i32 46}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 264, i32 3}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 269, i32 3}
!84 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry.33, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr.35, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 273, i32 3}
!88 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry.36, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr.38, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 278, i32 3}
!92 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry.39, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @imx_ldb_encoder_atomic_mode_set._entry_ptr.41, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 170, i32 2}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug307, !95, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 174, i32 2}
!100 = !{ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug308, !99, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!101 = !{ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug309, !102, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 177, i32 2}
!103 = !{ptr @imx_ldb_set_clock.__UNIQUE_ID_ddebug310, !104, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 182, i32 2}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 188, i32 3}
!107 = !{ptr @imx_ldb_set_clock._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @imx_ldb_set_clock._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 355, i32 3}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @imx_ldb_encoder_disable._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @imx_ldb_encoder_disable._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 201, i32 3}
!116 = !{ptr @imx_ldb_encoder_enable._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @imx_ldb_encoder_enable._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @imx_ldb_connector_helper_funcs, !119, !"imx_ldb_connector_helper_funcs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 406, i32 48}
!120 = !{ptr @imx_ldb_connector_funcs, !121, !"imx_ldb_connector_funcs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 398, i32 41}
!122 = !{ptr @imx_ldb_dt_ids, !123, !"imx_ldb_dt_ids", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 542, i32 34}
!124 = !{ptr @imx6q_lvds_mux, !125, !"imx6q_lvds_mux", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/imx/imx-ldb.c", i32 524, i32 23}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i64 2148740413, i64 2148740418, i64 2148740431, i64 2148740475, i64 2148740509, i64 2148740530}
