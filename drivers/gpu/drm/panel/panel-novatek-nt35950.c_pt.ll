; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-novatek-nt35950.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-novatek-nt35950.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nt35950_panel_desc = type { ptr, %struct.mipi_dsi_device_info, ptr, i8, i8, i8 }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.nt35950_panel_mode = type { %struct.drm_display_mode, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.nt35950 = type { %struct.drm_panel, ptr, [2 x ptr], [4 x %struct.regulator_bulk_data], ptr, ptr, i32, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@__initcall__kmod_panel_novatek_nt35950__306_698_nt35950_driver_init6 = internal global ptr @nt35950_driver_init, section ".initcall6.init", align 4
@nt35950_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nt35950_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nt35950_probe, ptr @nt35950_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_nt35950_driver_exit = internal global ptr @nt35950_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [99 x i8] c"panel_novatek_nt35950.author=AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [73 x i8] c"panel_novatek_nt35950.description=Novatek NT35950 DriverIC panels driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [71 x i8] c"panel_novatek_nt35950.file=drivers/gpu/drm/panel/panel-novatek-nt35950\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [37 x i8] c"panel_novatek_nt35950.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-novatek-nt35950\00", [42 x i8] zeroinitializer }, align 32
@nt35950_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,ls055d1sx04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_ls055d1sx04 }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sharp_ls055d1sx04 = internal constant { %struct.nt35950_panel_desc, [56 x i8] } { %struct.nt35950_panel_desc { ptr @.str.1, %struct.mipi_dsi_device_info { [20 x i8] c"LS055D1SX04\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, ptr @sharp_ls055d1sx04_modes, i8 1, i8 4, i8 1 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Sharp LS055D1SX04\00", [46 x i8] zeroinitializer }, align 32
@sharp_ls055d1sx04_modes = internal constant { [1 x %struct.nt35950_panel_mode], [40 x i8] } { [1 x %struct.nt35950_panel_mode] [%struct.nt35950_panel_mode { %struct.drm_display_mode { i32 214537, i16 1080, i16 1480, i16 1520, i16 1820, i16 0, i16 1920, i16 1932, i16 1934, i16 1944, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 121, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i8 1, i8 0, i8 1, i8 17, i8 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Regulator init failure.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@nt35950_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 571, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot get secondary DSI node.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nt35950_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-novatek-nt35950.c\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nt35950_probe._entry_ptr = internal global ptr @nt35950_probe._entry, section ".printk_index", align 4
@nt35950_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 577, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot get secondary DSI host\0A\00", [33 x i8] zeroinitializer }, align 32
@nt35950_probe._entry_ptr.12 = internal global ptr @nt35950_probe._entry.10, section ".printk_index", align 4
@nt35950_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 583, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot get secondary DSI node\0A\00", [33 x i8] zeroinitializer }, align 32
@nt35950_probe._entry_ptr.15 = internal global ptr @nt35950_probe._entry.13, section ".printk_index", align 4
@nt35950_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @nt35950_prepare, ptr null, ptr null, ptr @nt35950_unprepare, ptr @nt35950_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get backlight\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot attach to DSI%d host.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avee\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@nt35950_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.7, i32 468, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize panel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nt35950_prepare\00", [16 x i8] zeroinitializer }, align 32
@nt35950_prepare._entry_ptr = internal global ptr @nt35950_prepare._entry, section ".printk_index", align 4
@nt35950_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 325, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set tear on: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nt35950_on\00", [21 x i8] zeroinitializer }, align 32
@nt35950_on._entry_ptr = internal global ptr @nt35950_on._entry, section ".printk_index", align 4
@nt35950_on._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.7, i32 331, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set tear scanline: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nt35950_on._entry_ptr.28 = internal global ptr @nt35950_on._entry.26, section ".printk_index", align 4
@nt35950_on.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D4\88\88", [29 x i8] zeroinitializer }, align 32
@nt35950_on.d.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E3\01", [30 x i8] zeroinitializer }, align 32
@nt35950_on.d.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\EF\01", [30 x i8] zeroinitializer }, align 32
@__const.nt35950_inject_black_image.cmd_test = private unnamed_addr constant [5 x i8] c"\FF\AAU\A5\80", align 1
@nt35950_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 493, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to deinitialize panel: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nt35950_unprepare\00", [46 x i8] zeroinitializer }, align 32
@nt35950_unprepare._entry_ptr = internal global ptr @nt35950_unprepare._entry, section ".printk_index", align 4
@nt35950_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 382, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nt35950_off\00", [20 x i8] zeroinitializer }, align 32
@nt35950_off._entry_ptr = internal global ptr @nt35950_off._entry, section ".printk_index", align 4
@nt35950_off._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.7, i32 389, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nt35950_off._entry_ptr.37 = internal global ptr @nt35950_off._entry.35, section ".printk_index", align 4
@nt35950_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 631, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to detach from DSI0 host: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nt35950_remove\00", [17 x i8] zeroinitializer }, align 32
@nt35950_remove._entry_ptr = internal global ptr @nt35950_remove._entry, section ".printk_index", align 4
@nt35950_remove._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.7, i32 637, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to detach from DSI1 host: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nt35950_remove._entry_ptr.42 = internal global ptr @nt35950_remove._entry.40, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"nt35950_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 690, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 694, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"nt35950_of_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 684, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"sharp_ls055d1sx04\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 671, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 672, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"sharp_ls055d1sx04_modes\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 646, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 554, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 560, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 563, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 571, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 577, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 583, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"nt35950_panel_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 533, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 597, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 614, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 405, i32 24 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 406, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 407, i32 24 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 408, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 468, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 325, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 331, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 341, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 349, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 352, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 493, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 382, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 389, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 630, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-novatek-nt35950.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 636, i32 4 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_nt35950_driver_exit, ptr @__initcall__kmod_panel_novatek_nt35950__306_698_nt35950_driver_init6, ptr @nt35950_driver_exit, ptr @nt35950_off._entry, ptr @nt35950_off._entry.35, ptr @nt35950_off._entry_ptr, ptr @nt35950_off._entry_ptr.37, ptr @nt35950_on._entry, ptr @nt35950_on._entry.26, ptr @nt35950_on._entry_ptr, ptr @nt35950_on._entry_ptr.28, ptr @nt35950_prepare._entry, ptr @nt35950_prepare._entry_ptr, ptr @nt35950_probe._entry, ptr @nt35950_probe._entry.10, ptr @nt35950_probe._entry.13, ptr @nt35950_probe._entry_ptr, ptr @nt35950_probe._entry_ptr.12, ptr @nt35950_probe._entry_ptr.15, ptr @nt35950_remove._entry, ptr @nt35950_remove._entry.40, ptr @nt35950_remove._entry_ptr, ptr @nt35950_remove._entry_ptr.42, ptr @nt35950_unprepare._entry, ptr @nt35950_unprepare._entry_ptr, ptr @nt35950_driver, ptr @.str, ptr @nt35950_of_match, ptr @sharp_ls055d1sx04, ptr @.str.1, ptr @sharp_ls055d1sx04_modes, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @nt35950_panel_funcs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @nt35950_on.d, ptr @nt35950_on.d.29, ptr @nt35950_on.d.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_ls055d1sx04 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_ls055d1sx04_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_on._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_on.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_on.d.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_on.d.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_off._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35950_remove._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35950_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @nt35950_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nt35950_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @nt35950_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35950_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vregs.i = getelementptr inbounds %struct.nt35950, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %vregs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.18, ptr %vregs.i, align 4
  %arrayidx2.i = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.19, ptr %arrayidx2.i, align 4
  %arrayidx5.i = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.20, ptr %arrayidx5.i, align 4
  %arrayidx8.i = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.21, ptr %arrayidx8.i, align 4
  %call.i141 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 4, ptr noundef %vregs.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp.i = icmp slt i32 %call.i141, 0
  br i1 %cmp.i, label %if.end.if.then4_crit_edge, label %if.end.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %consumer.i = getelementptr inbounds %struct.nt35950, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer.i, align 4
  %call13.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %5, i32 noundef 1750000, i32 noundef 1950000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then4_crit_edge, label %if.end15.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end15.i:                                       ; preds = %if.end.i
  %consumer18.i = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %consumer18.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer18.i, align 4
  %call19.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %7, i32 noundef 5200000, i32 noundef 5900000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end15.i.if.then4_crit_edge, label %if.end22.i

if.end15.i.if.then4_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end22.i:                                       ; preds = %if.end15.i
  %consumer25.i = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %8 = ptrtoint ptr %consumer25.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer25.i, align 4
  %call26.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %9, i32 noundef 5200000, i32 noundef 5900000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end22.i.if.then4_crit_edge, label %if.end29.i

if.end22.i.if.then4_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end29.i:                                       ; preds = %if.end22.i
  %consumer32.i = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %10 = ptrtoint ptr %consumer32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer32.i, align 4
  %call33.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %11, i32 noundef 1300000, i32 noundef 1400000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end29.i.if.then4_crit_edge, label %if.end6

if.end29.i.if.then4_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %if.end29.i.if.then4_crit_edge, %if.end22.i.if.then4_crit_edge, %if.end15.i.if.then4_crit_edge, %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end22.i.if.then4_crit_edge ], [ -22, %if.end15.i.if.then4_crit_edge ], [ -22, %if.end.i.if.then4_crit_edge ], [ %call.i141, %if.end.if.then4_crit_edge ], [ -22, %if.end29.i.if.then4_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i.ph, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end29.i
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %desc = getelementptr inbounds %struct.nt35950, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %desc, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %reset_gpio = getelementptr inbounds %struct.nt35950, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %reset_gpio, align 4
  %cmp.i142 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call12 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  %is_dual_dsi = getelementptr inbounds %struct.nt35950_panel_desc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %is_dual_dsi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_dual_dsi, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool21.not = icmp eq i8 %18, 0
  br i1 %tobool21.not, label %if.end19.if.end46_crit_edge, label %if.then22

if.end19.if.end46_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then22:                                        ; preds = %if.end19
  %dsi_info = getelementptr inbounds %struct.nt35950_panel_desc, ptr %16, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call25 = tail call ptr @of_graph_get_remote_node(ptr noundef %20, i32 noundef 1, i32 noundef -1) #5
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end, label %if.end28

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end28:                                         ; preds = %if.then22
  %call29 = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef nonnull %call25) #5
  tail call void @of_node_put(ptr noundef nonnull %call25) #5
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @mipi_dsi_device_register_full(ptr noundef nonnull %call29, ptr noundef %dsi_info) #5
  %arrayidx = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call36, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %call36, null
  br i1 %tobool40.not, label %do.end44, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end35.if.end46_crit_edge, %if.end19.if.end46_crit_edge
  %dsi47 = getelementptr inbounds %struct.nt35950, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %dsi47 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dsi, ptr %dsi47, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @nt35950_panel_funcs, i32 noundef 16) #5
  %call50 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %call53 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @.str.16) #5
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc, align 4
  %num_lanes = getelementptr inbounds %struct.nt35950_panel_desc, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_lanes, align 1
  %conv = zext i8 %27 to i32
  %arrayidx58 = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 2, i32 0
  %28 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx58, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %lanes, align 8
  %31 = load ptr, ptr %arrayidx58, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %format, align 4
  %33 = load ptr, ptr %arrayidx58, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3072, ptr %mode_flags, align 8
  %35 = load ptr, ptr %desc, align 4
  %mode_data = getelementptr inbounds %struct.nt35950_panel_desc, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %mode_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mode_data, align 4
  %is_video_mode = getelementptr inbounds %struct.nt35950_panel_mode, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %is_video_mode to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_video_mode, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool65.not = icmp eq i8 %39, 0
  br i1 %tobool65.not, label %if.end54.if.end70_crit_edge, label %if.then66

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx58, align 4
  %mode_flags69 = getelementptr inbounds %struct.mipi_dsi_device, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %mode_flags69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode_flags69, align 8
  %or = or i32 %43, 1
  store i32 %or, ptr %mode_flags69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end54.if.end70_crit_edge
  %44 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx58, align 4
  %call73 = tail call i32 @mipi_dsi_attach(ptr noundef %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end70.if.then76_crit_edge, label %for.inc

if.end70.if.then76_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then76

if.then76:                                        ; preds = %if.end70.1.if.then76_crit_edge, %if.end70.if.then76_crit_edge
  %call73.lcssa = phi i32 [ %call73, %if.end70.if.then76_crit_edge ], [ %call73.1, %if.end70.1.if.then76_crit_edge ]
  %i.0147.lcssa = phi i32 [ 0, %if.end70.if.then76_crit_edge ], [ 1, %if.end70.1.if.then76_crit_edge ]
  %call77 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call73.lcssa, ptr noundef nonnull @.str.17, i32 noundef %i.0147.lcssa) #5
  br label %cleanup

for.inc:                                          ; preds = %if.end70
  br i1 %tobool21.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc, align 4
  %num_lanes.1 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %num_lanes.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_lanes.1, align 1
  %conv.1 = zext i8 %49 to i32
  %arrayidx58.1 = getelementptr %struct.nt35950, ptr %call.i, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx58.1, align 4
  %lanes.1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %lanes.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv.1, ptr %lanes.1, align 8
  %53 = load ptr, ptr %arrayidx58.1, align 4
  %format.1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %format.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %format.1, align 4
  %55 = load ptr, ptr %arrayidx58.1, align 4
  %mode_flags.1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %mode_flags.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3072, ptr %mode_flags.1, align 8
  %57 = load ptr, ptr %desc, align 4
  %mode_data.1 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %mode_data.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mode_data.1, align 4
  %is_video_mode.1 = getelementptr inbounds %struct.nt35950_panel_mode, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %is_video_mode.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_video_mode.1, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool65.not.1 = icmp eq i8 %61, 0
  br i1 %tobool65.not.1, label %for.body.1.if.end70.1_crit_edge, label %if.then66.1

for.body.1.if.end70.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.1

if.then66.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx58.1, align 4
  %mode_flags69.1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %mode_flags69.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode_flags69.1, align 8
  %or.1 = or i32 %65, 1
  store i32 %or.1, ptr %mode_flags69.1, align 8
  br label %if.end70.1

if.end70.1:                                       ; preds = %if.then66.1, %for.body.1.if.end70.1_crit_edge
  %66 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx58.1, align 4
  %call73.1 = tail call i32 @mipi_dsi_attach(ptr noundef %67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.1)
  %cmp74.1 = icmp slt i32 %call73.1, 0
  br i1 %cmp74.1, label %if.end70.1.if.then76_crit_edge, label %if.end70.1.for.end_crit_edge

if.end70.1.for.end_crit_edge:                     ; preds = %if.end70.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end70.1.if.then76_crit_edge:                   ; preds = %if.end70.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then76

for.end:                                          ; preds = %if.end70.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %68 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %69, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then76, %if.then52, %do.end44, %do.end34, %do.end, %if.then15, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call18, %if.then15 ], [ %call53, %if.then52 ], [ %call77, %if.then76 ], [ 0, %for.end ], [ -19, %do.end44 ], [ -517, %do.end34 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35950_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.nt35950, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi1, align 4
  %call2 = tail call i32 @mipi_dsi_detach(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call2) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx4 = getelementptr %struct.nt35950, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then5

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then5:                                         ; preds = %if.end
  %call8 = tail call i32 @mipi_dsi_detach(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.then5.if.end15_crit_edge

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %dev14 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.41, i32 noundef %call8) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.then5.if.end15_crit_edge
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  tail call void @mipi_dsi_device_unregister(ptr noundef %7) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end.if.end18_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mipi_dsi_device_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35950_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 8
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vregs = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 3
  %consumer = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 5000, i32 noundef 2) #5
  %consumer9 = getelementptr %struct.nt35950, ptr %panel, i32 0, i32 3, i32 3, i32 1
  %6 = ptrtoint ptr %consumer9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer9, align 4
  %call10 = tail call i32 @regulator_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.end_crit_edge

if.end6.end_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end13:                                         ; preds = %if.end6
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 18000, i32 noundef 2) #5
  %consumer16 = getelementptr %struct.nt35950, ptr %panel, i32 0, i32 3, i32 1, i32 1
  %8 = ptrtoint ptr %consumer16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer16, align 4
  %call17 = tail call i32 @regulator_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end13.end_crit_edge

if.end13.end_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end20:                                         ; preds = %if.end13
  %consumer23 = getelementptr %struct.nt35950, ptr %panel, i32 0, i32 3, i32 2, i32 1
  %10 = ptrtoint ptr %consumer23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer23, align 4
  %call24 = tail call i32 @regulator_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.end_crit_edge

if.end20.end_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end27:                                         ; preds = %if.end20
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 13000, i32 noundef 2) #5
  tail call fastcc void @nt35950_reset(ptr noundef %panel)
  %call28 = tail call fastcc i32 @nt35950_on(ptr noundef %panel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %end.thread, label %end.thread59

end.thread:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call28) #8
  br label %if.then33

end.thread59:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %prepared, align 1
  br label %cleanup

end:                                              ; preds = %if.end20.end_crit_edge, %if.end13.end_crit_edge, %if.end6.end_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end6.end_crit_edge ], [ %call17, %if.end13.end_crit_edge ], [ %call24, %if.end20.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp32 = icmp slt i32 %ret.0, 0
  br i1 %cmp32, label %end.if.then33_crit_edge, label %end.cleanup_crit_edge

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

end.if.then33_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33

if.then33:                                        ; preds = %end.if.then33_crit_edge, %end.thread
  %ret.058 = phi i32 [ %call28, %end.thread ], [ %ret.0, %end.if.then33_crit_edge ]
  %call35 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %vregs) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %end.cleanup_crit_edge, %end.thread59, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.058, %if.then33 ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %end.cleanup_crit_edge ], [ 0, %end.thread59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35950_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 8
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsi.i = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi.i, align 4
  %dev1.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.33, i32 noundef %call.i) #8
  br label %nt35950_off.exit

if.end.i:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %4 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi.i, align 4
  %call6.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.end12.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.36, i32 noundef %call6.i) #8
  br label %nt35950_off.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 150) #5
  br label %nt35950_off.exit

nt35950_off.exit:                                 ; preds = %if.end12.i, %do.end11.i, %do.end.i
  %6 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %9, 2048
  store i32 %or.i, ptr %mode_flags.i, align 8
  %arrayidx16.i = getelementptr %struct.nt35950, ptr %panel, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16.i, align 4
  %mode_flags17.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mode_flags17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_flags17.i, align 8
  %or18.i = or i32 %13, 2048
  store i32 %or18.i, ptr %mode_flags17.i, align 8
  %reset_gpio = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 4
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #5
  %vregs = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 3
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %vregs) #5
  %16 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %prepared, align 1
  br label %cleanup

cleanup:                                          ; preds = %nt35950_off.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35950_get_modes(ptr nocapture noundef %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %num_modes56 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_modes56 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_modes56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp58.not = icmp eq i8 %3, 0
  br i1 %cmp58.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %19, %if.end17.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.059 = phi i32 [ %inc, %if.end17.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %connector, align 8
  %mode_data = getelementptr inbounds %struct.nt35950_panel_desc, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %mode_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_data, align 4
  %arrayidx = getelementptr %struct.nt35950_panel_mode, ptr %8, i32 %i.059
  %call4 = tail call ptr @drm_mode_duplicate(ptr noundef %6, ptr noundef %arrayidx) #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.body.cleanup36_crit_edge, label %if.end

for.body.cleanup36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup36

if.end:                                           ; preds = %for.body
  tail call void @drm_mode_set_name(ptr noundef nonnull %call4) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call4, i32 0, i32 28
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 2
  %11 = or i8 %10, 64
  store i8 %11, ptr %type, align 2
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %num_modes8 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %num_modes8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_modes8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp10 = icmp eq i8 %15, 1
  br i1 %cmp10, label %if.then12, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = or i8 %10, 72
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %type, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call4) #5
  %inc = add nuw nsw i32 %i.059, 1
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %num_modes = getelementptr inbounds %struct.nt35950_panel_desc, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %num_modes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_modes, align 2
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end17.for.body_crit_edge, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %entry.for.end_crit_edge
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %22 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %bpc, align 8
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc, align 4
  %mode_data19 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %mode_data19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mode_data19, align 4
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %height_mm, align 4
  %conv22 = zext i16 %28 to i32
  %height_mm24 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %29 = ptrtoint ptr %height_mm24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv22, ptr %height_mm24, align 4
  %30 = load ptr, ptr %desc, align 4
  %mode_data26 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %mode_data26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mode_data26, align 4
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %32, i32 0, i32 26
  %33 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %width_mm, align 2
  %conv29 = zext i16 %34 to i32
  %35 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv29, ptr %display_info, align 8
  %connector32 = getelementptr inbounds %struct.nt35950, ptr %panel, i32 0, i32 1
  %36 = ptrtoint ptr %connector32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %connector, ptr %connector32, align 4
  %37 = load ptr, ptr %desc, align 4
  %num_modes34 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %num_modes34 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_modes34, align 2
  %conv35 = zext i8 %39 to i32
  br label %cleanup36

cleanup36:                                        ; preds = %for.end, %for.body.cleanup36_crit_edge
  %retval.2 = phi i32 [ %conv35, %for.end ], [ -12, %for.body.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nt35950_reset(ptr nocapture noundef readonly %nt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.nt35950, ptr %nt, i32 0, i32 4
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 13000, i32 noundef 2) #5
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #5
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 13000, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nt35950_on(ptr noundef %nt) unnamed_addr #2 align 64 {
entry:
  %mauc_cmd2_page.i191 = alloca [6 x i8], align 1
  %mauc_cmd2_page.i183 = alloca [6 x i8], align 1
  %cmd_dispout.i = alloca [2 x i8], align 2
  %cmd_scaler.i174 = alloca [2 x i8], align 1
  %cmd_scaler.i = alloca [2 x i8], align 1
  %mauc_cmd2_page.i67.i = alloca [6 x i8], align 1
  %mauc_cmd2_page.i59.i = alloca [6 x i8], align 1
  %cmd_data_compression.i = alloca [2 x i8], align 1
  %cmd_vesa_dsc_on.i = alloca [2 x i8], align 1
  %cmd_vesa_dsc_setting.i = alloca [2 x i8], align 2
  %mauc_cmd2_page.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.nt35950, ptr %nt, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %mode_data1 = getelementptr inbounds %struct.nt35950_panel_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_data1, align 4
  %dsi2 = getelementptr inbounds %struct.nt35950, ptr %nt, i32 0, i32 2
  %4 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi2, align 4
  %dev3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %5, i32 0, i32 1
  %connector1.i = getelementptr inbounds %struct.nt35950, ptr %nt, i32 0, i32 1
  %6 = ptrtoint ptr %connector1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector1.i, align 4
  %state.i = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 52
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.nt35950_get_current_mode.exit_crit_edge, label %lor.lhs.false.i

entry.nt35950_get_current_mode.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_get_current_mode.exit

lor.lhs.false.i:                                  ; preds = %entry
  %crtc.i = getelementptr inbounds %struct.drm_connector_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.nt35950_get_current_mode.exit_crit_edge, label %if.end.i

lor.lhs.false.i.nt35950_get_current_mode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_get_current_mode.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %num_modes22.i = getelementptr inbounds %struct.nt35950_panel_desc, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %num_modes22.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_modes22.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp24.not.i = icmp eq i8 %13, 0
  br i1 %cmp24.not.i, label %if.end.i.nt35950_get_current_mode.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.nt35950_get_current_mode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_get_current_mode.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %state6.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 22
  %14 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state6.i, align 4
  %mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %16 = phi ptr [ %1, %for.body.lr.ph.i ], [ %20, %for.inc.i.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mode_data.i = getelementptr inbounds %struct.nt35950_panel_desc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mode_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mode_data.i, align 4
  %arrayidx.i = getelementptr %struct.nt35950_panel_mode, ptr %18, i32 %i.025.i
  %call.i = tail call zeroext i1 @drm_mode_match(ptr noundef %mode.i, ptr noundef %arrayidx.i, i32 noundef 3) #5
  br i1 %call.i, label %for.body.i.nt35950_get_current_mode.exit_crit_edge, label %for.inc.i

for.body.i.nt35950_get_current_mode.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_get_current_mode.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %num_modes.i = getelementptr inbounds %struct.nt35950_panel_desc, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_modes.i, align 2
  %conv.i = zext i8 %22 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nt35950_get_current_mode.exit_crit_edge

for.inc.i.nt35950_get_current_mode.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_get_current_mode.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

nt35950_get_current_mode.exit:                    ; preds = %for.inc.i.nt35950_get_current_mode.exit_crit_edge, %for.body.i.nt35950_get_current_mode.exit_crit_edge, %if.end.i.nt35950_get_current_mode.exit_crit_edge, %lor.lhs.false.i.nt35950_get_current_mode.exit_crit_edge, %entry.nt35950_get_current_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.nt35950_get_current_mode.exit_crit_edge ], [ 0, %entry.nt35950_get_current_mode.exit_crit_edge ], [ 0, %if.end.i.nt35950_get_current_mode.exit_crit_edge ], [ 0, %for.inc.i.nt35950_get_current_mode.exit_crit_edge ], [ %i.025.i, %for.body.i.nt35950_get_current_mode.exit_crit_edge ]
  %cur_mode = getelementptr inbounds %struct.nt35950, ptr %nt, i32 0, i32 6
  %23 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %cur_mode, align 4
  %24 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dsi2, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode_flags, align 8
  %or = or i32 %27, 2048
  store i32 %or, ptr %mode_flags, align 8
  %arrayidx7 = getelementptr %struct.nt35950, ptr %nt, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx7, align 4
  %mode_flags8 = getelementptr inbounds %struct.mipi_dsi_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %mode_flags8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode_flags8, align 8
  %or9 = or i32 %31, 2048
  store i32 %or9, ptr %mode_flags8, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mauc_cmd2_page.i) #5
  %32 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i, i32 0, i32 1
  %33 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i, i32 0, i32 2
  %34 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i, i32 0, i32 3
  %35 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i, i32 0, i32 4
  %36 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i, i32 0, i32 5
  %37 = ptrtoint ptr %mauc_cmd2_page.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -16, ptr %mauc_cmd2_page.i, align 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 85, ptr %32, align 1
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -86, ptr %33, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 82, ptr %34, align 1
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %35, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %36, align 1
  %43 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dsi2, align 4
  %call.i165 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %44, ptr noundef nonnull %mauc_cmd2_page.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp.i166 = icmp slt i32 %call.i165, 0
  br i1 %cmp.i166, label %nt35950_set_cmd2_page.exit.thread, label %if.end10.i

nt35950_set_cmd2_page.exit.thread:                ; preds = %nt35950_get_current_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i) #5
  br label %cleanup101

if.end10.i:                                       ; preds = %nt35950_get_current_mode.exit
  %last_page.i = getelementptr inbounds %struct.nt35950, ptr %nt, i32 0, i32 7
  %45 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %last_page.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i) #5
  %46 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cur_mode, align 4
  %compression = getelementptr %struct.nt35950_panel_mode, ptr %3, i32 %47, i32 5
  %48 = ptrtoint ptr %compression to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %compression, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_data_compression.i) #5
  %50 = getelementptr inbounds [2 x i8], ptr %cmd_data_compression.i, i32 0, i32 1
  %51 = ptrtoint ptr %cmd_data_compression.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -112, ptr %cmd_data_compression.i, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_vesa_dsc_on.i) #5
  %53 = getelementptr inbounds [2 x i8], ptr %cmd_vesa_dsc_on.i, i32 0, i32 1
  %54 = ptrtoint ptr %cmd_vesa_dsc_on.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %cmd_vesa_dsc_on.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.i = icmp ne i8 %49, 0
  %conv.i169 = zext i1 %tobool.i to i8
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i169, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_vesa_dsc_setting.i) #5
  %56 = ptrtoint ptr %cmd_vesa_dsc_setting.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -16381, ptr %cmd_vesa_dsc_setting.i, align 2
  %57 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dsi2, align 4
  %call11.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %58, ptr noundef nonnull %cmd_data_compression.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.nt35950_set_data_compression.exit.thread_crit_edge, label %if.end15.i

if.end10.i.nt35950_set_data_compression.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_set_data_compression.exit.thread

if.end15.i:                                       ; preds = %if.end10.i
  %59 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dsi2, align 4
  %call19.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %60, ptr noundef nonnull %cmd_vesa_dsc_on.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end15.i.nt35950_set_data_compression.exit.thread_crit_edge, label %if.end23.i

if.end15.i.nt35950_set_data_compression.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_set_data_compression.exit.thread

if.end23.i:                                       ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mauc_cmd2_page.i59.i) #5
  %61 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i59.i, i32 0, i32 1
  %62 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i59.i, i32 0, i32 2
  %63 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i59.i, i32 0, i32 3
  %64 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i59.i, i32 0, i32 4
  %65 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i59.i, i32 0, i32 5
  %66 = ptrtoint ptr %mauc_cmd2_page.i59.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -16, ptr %mauc_cmd2_page.i59.i, align 1
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 85, ptr %61, align 1
  %68 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -86, ptr %62, align 1
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 82, ptr %63, align 1
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 8, ptr %64, align 1
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 4, ptr %65, align 1
  %72 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dsi2, align 4
  %call.i61.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %73, ptr noundef nonnull %mauc_cmd2_page.i59.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp.i62.i = icmp slt i32 %call.i61.i, 0
  br i1 %cmp.i62.i, label %nt35950_set_cmd2_page.exit66.thread.i, label %if.end28.i

nt35950_set_cmd2_page.exit66.thread.i:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i59.i) #5
  br label %nt35950_set_data_compression.exit.thread

if.end28.i:                                       ; preds = %if.end23.i
  %74 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %last_page.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i59.i) #5
  %75 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dsi2, align 4
  %call32.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %76, ptr noundef nonnull %cmd_vesa_dsc_setting.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end28.i.nt35950_set_data_compression.exit.thread_crit_edge, label %if.end36.i

if.end28.i.nt35950_set_data_compression.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_set_data_compression.exit.thread

if.end36.i:                                       ; preds = %if.end28.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mauc_cmd2_page.i67.i) #5
  %77 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i67.i, i32 0, i32 1
  %78 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i67.i, i32 0, i32 2
  %79 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i67.i, i32 0, i32 3
  %80 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i67.i, i32 0, i32 4
  %81 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i67.i, i32 0, i32 5
  %82 = ptrtoint ptr %mauc_cmd2_page.i67.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -16, ptr %mauc_cmd2_page.i67.i, align 1
  %83 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 85, ptr %77, align 1
  %84 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -86, ptr %78, align 1
  %85 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 82, ptr %79, align 1
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 8, ptr %80, align 1
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %81, align 1
  %88 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dsi2, align 4
  %call.i69.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %89, ptr noundef nonnull %mauc_cmd2_page.i67.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp.i70.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp.i70.i, label %nt35950_set_data_compression.exit.thread203, label %if.end16

nt35950_set_data_compression.exit.thread203:      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i67.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_vesa_dsc_setting.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_vesa_dsc_on.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_data_compression.i) #5
  br label %cleanup101

nt35950_set_data_compression.exit.thread:         ; preds = %if.end28.i.nt35950_set_data_compression.exit.thread_crit_edge, %nt35950_set_cmd2_page.exit66.thread.i, %if.end15.i.nt35950_set_data_compression.exit.thread_crit_edge, %if.end10.i.nt35950_set_data_compression.exit.thread_crit_edge
  %retval.0.i171.ph = phi i32 [ %call.i61.i, %nt35950_set_cmd2_page.exit66.thread.i ], [ %call32.i, %if.end28.i.nt35950_set_data_compression.exit.thread_crit_edge ], [ %call19.i, %if.end15.i.nt35950_set_data_compression.exit.thread_crit_edge ], [ %call11.i, %if.end10.i.nt35950_set_data_compression.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_vesa_dsc_setting.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_vesa_dsc_on.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_data_compression.i) #5
  br label %cleanup101

if.end16:                                         ; preds = %if.end36.i
  %90 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %last_page.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i67.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_vesa_dsc_setting.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_vesa_dsc_on.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_data_compression.i) #5
  %91 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cur_mode, align 4
  %scaler_mode = getelementptr %struct.nt35950_panel_mode, ptr %3, i32 %92, i32 4
  %93 = ptrtoint ptr %scaler_mode to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %scaler_mode, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_scaler.i) #5
  %95 = getelementptr inbounds [2 x i8], ptr %cmd_scaler.i, i32 0, i32 1
  %96 = ptrtoint ptr %cmd_scaler.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -55, ptr %cmd_scaler.i, align 1
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %94, ptr %95, align 1
  %98 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dsi2, align 4
  %call.i173 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %99, ptr noundef nonnull %cmd_scaler.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_scaler.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %cmp20 = icmp slt i32 %call.i173, 0
  br i1 %cmp20, label %if.end16.cleanup101_crit_edge, label %if.end22

if.end16.cleanup101_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

if.end22:                                         ; preds = %if.end16
  %100 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cur_mode, align 4
  %scaler_on = getelementptr %struct.nt35950_panel_mode, ptr %3, i32 %101, i32 3
  %102 = ptrtoint ptr %scaler_on to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %scaler_on, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_scaler.i174) #5
  %104 = getelementptr inbounds [2 x i8], ptr %cmd_scaler.i174, i32 0, i32 1
  %105 = ptrtoint ptr %cmd_scaler.i174 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 88, ptr %cmd_scaler.i174, align 1
  %106 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %103, ptr %104, align 1
  %107 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dsi2, align 4
  %call.i176 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %108, ptr noundef nonnull %cmd_scaler.i174, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_scaler.i174) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp26 = icmp slt i32 %call.i176, 0
  br i1 %cmp26, label %if.end22.cleanup101_crit_edge, label %if.end28

if.end22.cleanup101_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

if.end28:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_dispout.i) #5
  %109 = ptrtoint ptr %cmd_dispout.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -19456, ptr %cmd_dispout.i, align 2
  %110 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc, align 4
  %mode_data1.i = getelementptr inbounds %struct.nt35950_panel_desc, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %mode_data1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mode_data1.i, align 4
  %114 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cur_mode, align 4
  %is_video_mode.i = getelementptr %struct.nt35950_panel_mode, ptr %113, i32 %115, i32 2
  %116 = ptrtoint ptr %is_video_mode.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %is_video_mode.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i178 = icmp eq i8 %117, 0
  br i1 %tobool.not.i178, label %if.end28.if.end.i180_crit_edge, label %if.then.i179

if.end28.if.end.i180_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i180

if.then.i179:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2.i = getelementptr inbounds [2 x i8], ptr %cmd_dispout.i, i32 0, i32 1
  %118 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx2.i, align 1
  %120 = or i8 %119, 16
  store i8 %120, ptr %arrayidx2.i, align 1
  br label %if.end.i180

if.end.i180:                                      ; preds = %if.then.i179, %if.end28.if.end.i180_crit_edge
  %enable_sram.i = getelementptr %struct.nt35950_panel_mode, ptr %113, i32 %115, i32 1
  %121 = ptrtoint ptr %enable_sram.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %enable_sram.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool6.not.i = icmp eq i8 %122, 0
  br i1 %tobool6.not.i, label %if.end.i180.nt35950_set_dispout.exit_crit_edge, label %if.then7.i

if.end.i180.nt35950_set_dispout.exit_crit_edge:   ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %nt35950_set_dispout.exit

if.then7.i:                                       ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.i = getelementptr inbounds [2 x i8], ptr %cmd_dispout.i, i32 0, i32 1
  %123 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx8.i, align 1
  %125 = or i8 %124, 1
  store i8 %125, ptr %arrayidx8.i, align 1
  br label %nt35950_set_dispout.exit

nt35950_set_dispout.exit:                         ; preds = %if.then7.i, %if.end.i180.nt35950_set_dispout.exit_crit_edge
  %126 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dsi2, align 4
  %call.i182 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %127, ptr noundef nonnull %cmd_dispout.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_dispout.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp30 = icmp slt i32 %call.i182, 0
  br i1 %cmp30, label %nt35950_set_dispout.exit.cleanup101_crit_edge, label %if.end32

nt35950_set_dispout.exit.cleanup101_crit_edge:    ; preds = %nt35950_set_dispout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

if.end32:                                         ; preds = %nt35950_set_dispout.exit
  %call33 = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %5, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end, label %if.end36

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.24, i32 noundef %call33) #8
  br label %cleanup101

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @mipi_dsi_dcs_set_tear_scanline(ptr noundef %5, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.27, i32 noundef %call37) #8
  br label %cleanup101

if.end43:                                         ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mauc_cmd2_page.i183) #5
  %128 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i183, i32 0, i32 1
  %129 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i183, i32 0, i32 2
  %130 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i183, i32 0, i32 3
  %131 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i183, i32 0, i32 4
  %132 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i183, i32 0, i32 5
  %133 = ptrtoint ptr %mauc_cmd2_page.i183 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -16, ptr %mauc_cmd2_page.i183, align 1
  %134 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 85, ptr %128, align 1
  %135 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -86, ptr %129, align 1
  %136 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 82, ptr %130, align 1
  %137 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 8, ptr %131, align 1
  %138 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %132, align 1
  %139 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dsi2, align 4
  %call.i185 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %140, ptr noundef nonnull %mauc_cmd2_page.i183, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %nt35950_set_cmd2_page.exit190.thread, label %do.body48

nt35950_set_cmd2_page.exit190.thread:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i183) #5
  br label %cleanup101

do.body48:                                        ; preds = %if.end43
  %141 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %last_page.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i183) #5
  %call50 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %5, ptr noundef nonnull @nt35950_on.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.body48.cleanup101_crit_edge, label %do.end55

do.body48.cleanup101_crit_edge:                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

do.end55:                                         ; preds = %do.body48
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mauc_cmd2_page.i191) #5
  %142 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i191, i32 0, i32 1
  %143 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i191, i32 0, i32 2
  %144 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i191, i32 0, i32 3
  %145 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i191, i32 0, i32 4
  %146 = getelementptr inbounds [6 x i8], ptr %mauc_cmd2_page.i191, i32 0, i32 5
  %147 = ptrtoint ptr %mauc_cmd2_page.i191 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -16, ptr %mauc_cmd2_page.i191, align 1
  %148 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 85, ptr %142, align 1
  %149 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -86, ptr %143, align 1
  %150 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 82, ptr %144, align 1
  %151 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 8, ptr %145, align 1
  %152 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 7, ptr %146, align 1
  %153 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dsi2, align 4
  %call.i193 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %154, ptr noundef nonnull %mauc_cmd2_page.i191, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp.i194 = icmp slt i32 %call.i193, 0
  br i1 %cmp.i194, label %nt35950_set_cmd2_page.exit198.thread, label %do.body60

nt35950_set_cmd2_page.exit198.thread:             ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i191) #5
  br label %cleanup101

do.body60:                                        ; preds = %do.end55
  %155 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 7, ptr %last_page.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mauc_cmd2_page.i191) #5
  %call62 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %5, ptr noundef nonnull @nt35950_on.d.29, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.body60.cleanup101_crit_edge, label %do.body71

do.body60.cleanup101_crit_edge:                   ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

do.body71:                                        ; preds = %do.body60
  %call73 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %5, ptr noundef nonnull @nt35950_on.d.30, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.body71.cleanup101_crit_edge, label %do.end81

do.body71.cleanup101_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

do.end81:                                         ; preds = %do.body71
  %call82 = call fastcc i32 @nt35950_inject_black_image(ptr noundef %nt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end81.cleanup101_crit_edge, label %if.end85

do.end81.cleanup101_crit_edge:                    ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

if.end85:                                         ; preds = %do.end81
  %call86 = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end85.cleanup101_crit_edge, label %if.end89

if.end85.cleanup101_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

if.end89:                                         ; preds = %if.end85
  call void @msleep(i32 noundef 120) #5
  %call90 = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end89.cleanup101_crit_edge, label %if.end93

if.end89.cleanup101_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup101

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 120) #5
  %156 = ptrtoint ptr %dsi2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dsi2, align 4
  %mode_flags96 = getelementptr inbounds %struct.mipi_dsi_device, ptr %157, i32 0, i32 6
  %158 = ptrtoint ptr %mode_flags96 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mode_flags96, align 8
  %and = and i32 %159, -2049
  store i32 %and, ptr %mode_flags96, align 8
  %160 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx7, align 4
  %mode_flags99 = getelementptr inbounds %struct.mipi_dsi_device, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %mode_flags99 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mode_flags99, align 8
  %and100 = and i32 %163, -2049
  store i32 %and100, ptr %mode_flags99, align 8
  br label %cleanup101

cleanup101:                                       ; preds = %if.end93, %if.end89.cleanup101_crit_edge, %if.end85.cleanup101_crit_edge, %do.end81.cleanup101_crit_edge, %do.body71.cleanup101_crit_edge, %do.body60.cleanup101_crit_edge, %nt35950_set_cmd2_page.exit198.thread, %do.body48.cleanup101_crit_edge, %nt35950_set_cmd2_page.exit190.thread, %do.end42, %do.end, %nt35950_set_dispout.exit.cleanup101_crit_edge, %if.end22.cleanup101_crit_edge, %if.end16.cleanup101_crit_edge, %nt35950_set_data_compression.exit.thread, %nt35950_set_data_compression.exit.thread203, %nt35950_set_cmd2_page.exit.thread
  %retval.3 = phi i32 [ %call33, %do.end ], [ %call37, %do.end42 ], [ 0, %if.end93 ], [ %call73, %do.body71.cleanup101_crit_edge ], [ %call62, %do.body60.cleanup101_crit_edge ], [ %call50, %do.body48.cleanup101_crit_edge ], [ %call.i173, %if.end16.cleanup101_crit_edge ], [ %call.i176, %if.end22.cleanup101_crit_edge ], [ %call.i182, %nt35950_set_dispout.exit.cleanup101_crit_edge ], [ %call82, %do.end81.cleanup101_crit_edge ], [ %call86, %if.end85.cleanup101_crit_edge ], [ %call90, %if.end89.cleanup101_crit_edge ], [ %call.i165, %nt35950_set_cmd2_page.exit.thread ], [ %retval.0.i171.ph, %nt35950_set_data_compression.exit.thread ], [ %call.i69.i, %nt35950_set_data_compression.exit.thread203 ], [ %call.i185, %nt35950_set_cmd2_page.exit190.thread ], [ %call.i193, %nt35950_set_cmd2_page.exit198.thread ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_scanline(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nt35950_inject_black_image(ptr nocapture noundef readonly %nt) unnamed_addr #2 align 64 {
entry:
  %cmd0_black_img = alloca [2 x i8], align 2
  %cmd1_black_img = alloca [2 x i8], align 2
  %cmd_test = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd0_black_img) #5
  %0 = ptrtoint ptr %cmd0_black_img to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 28417, ptr %cmd0_black_img, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd1_black_img) #5
  %1 = ptrtoint ptr %cmd1_black_img to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -3312, ptr %cmd1_black_img, align 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd_test) #5
  %2 = call ptr @memcpy(ptr %cmd_test, ptr @__const.nt35950_inject_black_image.cmd_test, i32 5)
  %dsi = getelementptr inbounds %struct.nt35950, ptr %nt, i32 0, i32 2
  %3 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dsi, align 4
  %call = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %4, ptr noundef nonnull %cmd_test, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsi, align 4
  %call4 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %6, ptr noundef nonnull %cmd0_black_img, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsi, align 4
  %call11 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %8, ptr noundef nonnull %cmd1_black_img, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15 = getelementptr inbounds [5 x i8], ptr %cmd_test, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx15, align 1
  %10 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi, align 4
  %call19 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull %cmd_test, i32 noundef 5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd_test) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd1_black_img) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd0_black_img) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_match(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_panel_novatek_nt35950__306_698_nt35950_driver_init6, !1, !"__initcall__kmod_panel_novatek_nt35950__306_698_nt35950_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 698, i32 1}
!2 = !{ptr @__exitcall_nt35950_driver_exit, !1, !"__exitcall_nt35950_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 700, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 701, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 702, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 694, i32 11}
!12 = !{ptr @nt35950_driver, !13, !"nt35950_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 690, i32 31}
!14 = !{ptr @nt35950_of_match, !15, !"nt35950_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 684, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 672, i32 16}
!18 = !{ptr @sharp_ls055d1sx04, !19, !"sharp_ls055d1sx04", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 671, i32 40}
!20 = !{ptr @sharp_ls055d1sx04_modes, !21, !"sharp_ls055d1sx04_modes", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 646, i32 40}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 554, i32 34}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 560, i32 39}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 563, i32 10}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 571, i32 4}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nt35950_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @nt35950_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 577, i32 4}
!38 = !{ptr @nt35950_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nt35950_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 583, i32 4}
!42 = !{ptr @nt35950_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nt35950_probe._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 597, i32 34}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 614, i32 11}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 405, i32 24}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 406, i32 24}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 407, i32 24}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 408, i32 24}
!56 = !{ptr @nt35950_panel_funcs, !57, !"nt35950_panel_funcs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 533, i32 37}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 468, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nt35950_prepare._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nt35950_prepare._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 325, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nt35950_on._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nt35950_on._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 331, i32 3}
!70 = !{ptr @nt35950_on._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @nt35950_on._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @nt35950_on.d, !73, !"d", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 341, i32 2}
!74 = !{ptr @nt35950_on.d.29, !75, !"d", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 349, i32 2}
!76 = !{ptr @nt35950_on.d.30, !77, !"d", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 352, i32 2}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 493, i32 3}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nt35950_unprepare._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nt35950_unprepare._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 382, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nt35950_off._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @nt35950_off._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 389, i32 3}
!90 = !{ptr @nt35950_off._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @nt35950_off._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 630, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @nt35950_remove._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @nt35950_remove._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35950.c", i32 636, i32 4}
!99 = !{ptr @nt35950_remove._entry.40, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @nt35950_remove._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i8 0, i8 2}
