; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-khadas-ts050.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-khadas-ts050.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.khadas_ts050_panel_cmd = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.khadas_ts050_panel = type { %struct.drm_panel, ptr, ptr, ptr, ptr, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
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

@__initcall__kmod_panel_khadas_ts050__306_866_khadas_ts050_panel_driver_init6 = internal global ptr @khadas_ts050_panel_driver_init, section ".initcall6.init", align 4
@khadas_ts050_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @khadas_ts050_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @khadas_ts050_panel_probe, ptr @khadas_ts050_panel_remove, ptr @khadas_ts050_panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_khadas_ts050_panel_driver_exit = internal global ptr @khadas_ts050_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [67 x i8] c"panel_khadas_ts050.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [57 x i8] c"panel_khadas_ts050.description=Khadas TS050 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [65 x i8] c"panel_khadas_ts050.file=drivers/gpu/drm/panel/panel-khadas-ts050\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [34 x i8] c"panel_khadas_ts050.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"panel-khadas-ts050\00", [45 x i8] zeroinitializer }, align 32
@khadas_ts050_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"khadas,ts050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get power supply\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get reset gpio\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get enable gpio\00", [38 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @khadas_ts050_panel_prepare, ptr @khadas_ts050_panel_enable, ptr @khadas_ts050_panel_disable, ptr @khadas_ts050_panel_unprepare, ptr @khadas_ts050_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_code = internal constant { [516 x %struct.khadas_ts050_panel_cmd], [280 x i8] } { [516 x %struct.khadas_ts050_panel_cmd] [%struct.khadas_ts050_panel_cmd { i8 -1, i8 -18 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 31, i8 69 }, %struct.khadas_ts050_panel_cmd { i8 36, i8 79 }, %struct.khadas_ts050_panel_cmd { i8 56, i8 -56 }, %struct.khadas_ts050_panel_cmd { i8 57, i8 39 }, %struct.khadas_ts050_panel_cmd { i8 30, i8 119 }, %struct.khadas_ts050_panel_cmd { i8 29, i8 15 }, %struct.khadas_ts050_panel_cmd { i8 126, i8 113 }, %struct.khadas_ts050_panel_cmd { i8 124, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 53, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 0, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 1, i8 85 }, %struct.khadas_ts050_panel_cmd { i8 2, i8 64 }, %struct.khadas_ts050_panel_cmd { i8 5, i8 64 }, %struct.khadas_ts050_panel_cmd { i8 6, i8 74 }, %struct.khadas_ts050_panel_cmd { i8 7, i8 36 }, %struct.khadas_ts050_panel_cmd { i8 8, i8 12 }, %struct.khadas_ts050_panel_cmd { i8 11, i8 125 }, %struct.khadas_ts050_panel_cmd { i8 12, i8 125 }, %struct.khadas_ts050_panel_cmd { i8 14, i8 -80 }, %struct.khadas_ts050_panel_cmd { i8 15, i8 -82 }, %struct.khadas_ts050_panel_cmd { i8 17, i8 16 }, %struct.khadas_ts050_panel_cmd { i8 18, i8 16 }, %struct.khadas_ts050_panel_cmd { i8 19, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 20, i8 74 }, %struct.khadas_ts050_panel_cmd { i8 21, i8 18 }, %struct.khadas_ts050_panel_cmd { i8 22, i8 18 }, %struct.khadas_ts050_panel_cmd { i8 24, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 25, i8 119 }, %struct.khadas_ts050_panel_cmd { i8 26, i8 85 }, %struct.khadas_ts050_panel_cmd { i8 27, i8 19 }, %struct.khadas_ts050_panel_cmd { i8 28, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 29, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 30, i8 19 }, %struct.khadas_ts050_panel_cmd { i8 31, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 35, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 36, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 37, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 38, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 39, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 40, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 53, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 102, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 88, i8 -126 }, %struct.khadas_ts050_panel_cmd { i8 89, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 90, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 91, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 92, i8 -126 }, %struct.khadas_ts050_panel_cmd { i8 93, i8 -126 }, %struct.khadas_ts050_panel_cmd { i8 94, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 95, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 114, i8 49 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 5 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 0, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 1, i8 11 }, %struct.khadas_ts050_panel_cmd { i8 2, i8 12 }, %struct.khadas_ts050_panel_cmd { i8 3, i8 9 }, %struct.khadas_ts050_panel_cmd { i8 4, i8 10 }, %struct.khadas_ts050_panel_cmd { i8 5, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 6, i8 15 }, %struct.khadas_ts050_panel_cmd { i8 7, i8 16 }, %struct.khadas_ts050_panel_cmd { i8 8, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 9, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 10, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 11, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 12, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 13, i8 19 }, %struct.khadas_ts050_panel_cmd { i8 14, i8 21 }, %struct.khadas_ts050_panel_cmd { i8 15, i8 23 }, %struct.khadas_ts050_panel_cmd { i8 16, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 17, i8 11 }, %struct.khadas_ts050_panel_cmd { i8 18, i8 12 }, %struct.khadas_ts050_panel_cmd { i8 19, i8 9 }, %struct.khadas_ts050_panel_cmd { i8 20, i8 10 }, %struct.khadas_ts050_panel_cmd { i8 21, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 22, i8 15 }, %struct.khadas_ts050_panel_cmd { i8 23, i8 16 }, %struct.khadas_ts050_panel_cmd { i8 24, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 25, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 26, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 27, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 28, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 29, i8 19 }, %struct.khadas_ts050_panel_cmd { i8 30, i8 21 }, %struct.khadas_ts050_panel_cmd { i8 31, i8 23 }, %struct.khadas_ts050_panel_cmd { i8 32, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 33, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 34, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 35, i8 64 }, %struct.khadas_ts050_panel_cmd { i8 36, i8 64 }, %struct.khadas_ts050_panel_cmd { i8 37, i8 -19 }, %struct.khadas_ts050_panel_cmd { i8 41, i8 88 }, %struct.khadas_ts050_panel_cmd { i8 42, i8 18 }, %struct.khadas_ts050_panel_cmd { i8 43, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 75, i8 6 }, %struct.khadas_ts050_panel_cmd { i8 76, i8 17 }, %struct.khadas_ts050_panel_cmd { i8 77, i8 32 }, %struct.khadas_ts050_panel_cmd { i8 78, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 79, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 80, i8 32 }, %struct.khadas_ts050_panel_cmd { i8 81, i8 97 }, %struct.khadas_ts050_panel_cmd { i8 82, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 83, i8 99 }, %struct.khadas_ts050_panel_cmd { i8 84, i8 119 }, %struct.khadas_ts050_panel_cmd { i8 85, i8 -19 }, %struct.khadas_ts050_panel_cmd { i8 91, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 92, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 93, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 94, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 95, i8 21 }, %struct.khadas_ts050_panel_cmd { i8 96, i8 117 }, %struct.khadas_ts050_panel_cmd { i8 97, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 98, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 99, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 100, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 101, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 102, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 103, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 104, i8 4 }, %struct.khadas_ts050_panel_cmd { i8 105, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 106, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 108, i8 64 }, %struct.khadas_ts050_panel_cmd { i8 117, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 118, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 122, i8 -128 }, %struct.khadas_ts050_panel_cmd { i8 123, i8 -93 }, %struct.khadas_ts050_panel_cmd { i8 124, i8 -40 }, %struct.khadas_ts050_panel_cmd { i8 125, i8 96 }, %struct.khadas_ts050_panel_cmd { i8 127, i8 21 }, %struct.khadas_ts050_panel_cmd { i8 -128, i8 -127 }, %struct.khadas_ts050_panel_cmd { i8 -125, i8 5 }, %struct.khadas_ts050_panel_cmd { i8 -109, i8 8 }, %struct.khadas_ts050_panel_cmd { i8 -108, i8 16 }, %struct.khadas_ts050_panel_cmd { i8 -118, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -101, i8 15 }, %struct.khadas_ts050_panel_cmd { i8 -22, i8 -1 }, %struct.khadas_ts050_panel_cmd { i8 -20, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 117, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 118, i8 -33 }, %struct.khadas_ts050_panel_cmd { i8 119, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 120, i8 -28 }, %struct.khadas_ts050_panel_cmd { i8 121, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 122, i8 -19 }, %struct.khadas_ts050_panel_cmd { i8 123, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 124, i8 -10 }, %struct.khadas_ts050_panel_cmd { i8 125, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 126, i8 -1 }, %struct.khadas_ts050_panel_cmd { i8 127, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -128, i8 7 }, %struct.khadas_ts050_panel_cmd { i8 -127, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -126, i8 16 }, %struct.khadas_ts050_panel_cmd { i8 -125, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -124, i8 24 }, %struct.khadas_ts050_panel_cmd { i8 -123, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -122, i8 32 }, %struct.khadas_ts050_panel_cmd { i8 -121, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -120, i8 61 }, %struct.khadas_ts050_panel_cmd { i8 -119, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -118, i8 86 }, %struct.khadas_ts050_panel_cmd { i8 -117, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -116, i8 -124 }, %struct.khadas_ts050_panel_cmd { i8 -115, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -114, i8 -85 }, %struct.khadas_ts050_panel_cmd { i8 -113, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -112, i8 -20 }, %struct.khadas_ts050_panel_cmd { i8 -111, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -110, i8 34 }, %struct.khadas_ts050_panel_cmd { i8 -109, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -108, i8 35 }, %struct.khadas_ts050_panel_cmd { i8 -107, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -106, i8 85 }, %struct.khadas_ts050_panel_cmd { i8 -105, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -104, i8 -117 }, %struct.khadas_ts050_panel_cmd { i8 -103, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -102, i8 -81 }, %struct.khadas_ts050_panel_cmd { i8 -101, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -100, i8 -33 }, %struct.khadas_ts050_panel_cmd { i8 -99, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -98, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -97, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -96, i8 44 }, %struct.khadas_ts050_panel_cmd { i8 -94, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -93, i8 57 }, %struct.khadas_ts050_panel_cmd { i8 -92, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -91, i8 71 }, %struct.khadas_ts050_panel_cmd { i8 -90, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -89, i8 86 }, %struct.khadas_ts050_panel_cmd { i8 -87, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -86, i8 102 }, %struct.khadas_ts050_panel_cmd { i8 -85, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -84, i8 118 }, %struct.khadas_ts050_panel_cmd { i8 -83, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -82, i8 -123 }, %struct.khadas_ts050_panel_cmd { i8 -81, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -80, i8 -112 }, %struct.khadas_ts050_panel_cmd { i8 -79, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -78, i8 -53 }, %struct.khadas_ts050_panel_cmd { i8 -77, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -76, i8 -33 }, %struct.khadas_ts050_panel_cmd { i8 -75, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -74, i8 -28 }, %struct.khadas_ts050_panel_cmd { i8 -73, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -72, i8 -19 }, %struct.khadas_ts050_panel_cmd { i8 -71, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -70, i8 -10 }, %struct.khadas_ts050_panel_cmd { i8 -69, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -68, i8 -1 }, %struct.khadas_ts050_panel_cmd { i8 -67, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -66, i8 7 }, %struct.khadas_ts050_panel_cmd { i8 -65, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -64, i8 16 }, %struct.khadas_ts050_panel_cmd { i8 -63, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -62, i8 24 }, %struct.khadas_ts050_panel_cmd { i8 -61, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -60, i8 32 }, %struct.khadas_ts050_panel_cmd { i8 -59, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -58, i8 61 }, %struct.khadas_ts050_panel_cmd { i8 -57, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -56, i8 86 }, %struct.khadas_ts050_panel_cmd { i8 -55, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -54, i8 -124 }, %struct.khadas_ts050_panel_cmd { i8 -53, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -52, i8 -85 }, %struct.khadas_ts050_panel_cmd { i8 -51, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -50, i8 -20 }, %struct.khadas_ts050_panel_cmd { i8 -49, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -48, i8 34 }, %struct.khadas_ts050_panel_cmd { i8 -47, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -46, i8 35 }, %struct.khadas_ts050_panel_cmd { i8 -45, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -44, i8 85 }, %struct.khadas_ts050_panel_cmd { i8 -43, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -42, i8 -117 }, %struct.khadas_ts050_panel_cmd { i8 -41, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -40, i8 -81 }, %struct.khadas_ts050_panel_cmd { i8 -39, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -38, i8 -33 }, %struct.khadas_ts050_panel_cmd { i8 -37, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -36, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -35, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -34, i8 44 }, %struct.khadas_ts050_panel_cmd { i8 -33, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -32, i8 57 }, %struct.khadas_ts050_panel_cmd { i8 -31, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -30, i8 71 }, %struct.khadas_ts050_panel_cmd { i8 -29, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -28, i8 86 }, %struct.khadas_ts050_panel_cmd { i8 -27, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -26, i8 102 }, %struct.khadas_ts050_panel_cmd { i8 -25, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -24, i8 118 }, %struct.khadas_ts050_panel_cmd { i8 -23, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -22, i8 -123 }, %struct.khadas_ts050_panel_cmd { i8 -21, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -20, i8 -112 }, %struct.khadas_ts050_panel_cmd { i8 -19, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -18, i8 -53 }, %struct.khadas_ts050_panel_cmd { i8 -17, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -16, i8 -69 }, %struct.khadas_ts050_panel_cmd { i8 -15, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -14, i8 -64 }, %struct.khadas_ts050_panel_cmd { i8 -13, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -12, i8 -52 }, %struct.khadas_ts050_panel_cmd { i8 -11, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -10, i8 -42 }, %struct.khadas_ts050_panel_cmd { i8 -9, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -8, i8 -31 }, %struct.khadas_ts050_panel_cmd { i8 -7, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -6, i8 -22 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd zeroinitializer, %struct.khadas_ts050_panel_cmd { i8 1, i8 -12 }, %struct.khadas_ts050_panel_cmd { i8 2, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 3, i8 -17 }, %struct.khadas_ts050_panel_cmd { i8 4, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 5, i8 7 }, %struct.khadas_ts050_panel_cmd { i8 6, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 7, i8 40 }, %struct.khadas_ts050_panel_cmd { i8 8, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 9, i8 68 }, %struct.khadas_ts050_panel_cmd { i8 10, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 11, i8 118 }, %struct.khadas_ts050_panel_cmd { i8 12, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 13, i8 -96 }, %struct.khadas_ts050_panel_cmd { i8 14, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 15, i8 -25 }, %struct.khadas_ts050_panel_cmd { i8 16, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 17, i8 31 }, %struct.khadas_ts050_panel_cmd { i8 18, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 19, i8 34 }, %struct.khadas_ts050_panel_cmd { i8 20, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 21, i8 84 }, %struct.khadas_ts050_panel_cmd { i8 22, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 23, i8 -117 }, %struct.khadas_ts050_panel_cmd { i8 24, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 25, i8 -81 }, %struct.khadas_ts050_panel_cmd { i8 26, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 27, i8 -32 }, %struct.khadas_ts050_panel_cmd { i8 28, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 29, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 30, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 31, i8 45 }, %struct.khadas_ts050_panel_cmd { i8 32, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 33, i8 57 }, %struct.khadas_ts050_panel_cmd { i8 34, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 35, i8 71 }, %struct.khadas_ts050_panel_cmd { i8 36, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 37, i8 87 }, %struct.khadas_ts050_panel_cmd { i8 38, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 39, i8 101 }, %struct.khadas_ts050_panel_cmd { i8 40, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 41, i8 119 }, %struct.khadas_ts050_panel_cmd { i8 42, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 43, i8 -123 }, %struct.khadas_ts050_panel_cmd { i8 45, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 47, i8 -113 }, %struct.khadas_ts050_panel_cmd { i8 48, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 49, i8 -53 }, %struct.khadas_ts050_panel_cmd { i8 50, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 51, i8 -69 }, %struct.khadas_ts050_panel_cmd { i8 52, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 53, i8 -64 }, %struct.khadas_ts050_panel_cmd { i8 54, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 55, i8 -52 }, %struct.khadas_ts050_panel_cmd { i8 56, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 57, i8 -42 }, %struct.khadas_ts050_panel_cmd { i8 58, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 59, i8 -31 }, %struct.khadas_ts050_panel_cmd { i8 61, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 63, i8 -22 }, %struct.khadas_ts050_panel_cmd { i8 64, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 65, i8 -12 }, %struct.khadas_ts050_panel_cmd { i8 66, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 67, i8 -2 }, %struct.khadas_ts050_panel_cmd { i8 68, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 69, i8 7 }, %struct.khadas_ts050_panel_cmd { i8 70, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 71, i8 40 }, %struct.khadas_ts050_panel_cmd { i8 72, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 73, i8 68 }, %struct.khadas_ts050_panel_cmd { i8 74, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 75, i8 118 }, %struct.khadas_ts050_panel_cmd { i8 76, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 77, i8 -96 }, %struct.khadas_ts050_panel_cmd { i8 78, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 79, i8 -25 }, %struct.khadas_ts050_panel_cmd { i8 80, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 81, i8 31 }, %struct.khadas_ts050_panel_cmd { i8 82, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 83, i8 34 }, %struct.khadas_ts050_panel_cmd { i8 84, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 85, i8 84 }, %struct.khadas_ts050_panel_cmd { i8 86, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 88, i8 -117 }, %struct.khadas_ts050_panel_cmd { i8 89, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 90, i8 -81 }, %struct.khadas_ts050_panel_cmd { i8 91, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 92, i8 -32 }, %struct.khadas_ts050_panel_cmd { i8 93, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 94, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 95, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 96, i8 45 }, %struct.khadas_ts050_panel_cmd { i8 97, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 98, i8 57 }, %struct.khadas_ts050_panel_cmd { i8 99, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 100, i8 71 }, %struct.khadas_ts050_panel_cmd { i8 101, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 102, i8 87 }, %struct.khadas_ts050_panel_cmd { i8 103, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 104, i8 101 }, %struct.khadas_ts050_panel_cmd { i8 105, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 106, i8 119 }, %struct.khadas_ts050_panel_cmd { i8 107, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 108, i8 -123 }, %struct.khadas_ts050_panel_cmd { i8 109, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 110, i8 -113 }, %struct.khadas_ts050_panel_cmd { i8 111, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 112, i8 -53 }, %struct.khadas_ts050_panel_cmd { i8 113, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 114, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 115, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 116, i8 33 }, %struct.khadas_ts050_panel_cmd { i8 117, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 118, i8 76 }, %struct.khadas_ts050_panel_cmd { i8 119, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 120, i8 107 }, %struct.khadas_ts050_panel_cmd { i8 121, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 122, i8 -123 }, %struct.khadas_ts050_panel_cmd { i8 123, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 124, i8 -102 }, %struct.khadas_ts050_panel_cmd { i8 125, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 126, i8 -83 }, %struct.khadas_ts050_panel_cmd { i8 127, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -128, i8 -66 }, %struct.khadas_ts050_panel_cmd { i8 -127, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -126, i8 -51 }, %struct.khadas_ts050_panel_cmd { i8 -125, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -124, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -123, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -122, i8 41 }, %struct.khadas_ts050_panel_cmd { i8 -121, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -120, i8 104 }, %struct.khadas_ts050_panel_cmd { i8 -119, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -118, i8 -104 }, %struct.khadas_ts050_panel_cmd { i8 -117, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -116, i8 -27 }, %struct.khadas_ts050_panel_cmd { i8 -115, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -114, i8 30 }, %struct.khadas_ts050_panel_cmd { i8 -113, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -112, i8 48 }, %struct.khadas_ts050_panel_cmd { i8 -111, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -110, i8 82 }, %struct.khadas_ts050_panel_cmd { i8 -109, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -108, i8 -120 }, %struct.khadas_ts050_panel_cmd { i8 -107, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -106, i8 -86 }, %struct.khadas_ts050_panel_cmd { i8 -105, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -104, i8 -41 }, %struct.khadas_ts050_panel_cmd { i8 -103, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -102, i8 -9 }, %struct.khadas_ts050_panel_cmd { i8 -101, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -100, i8 33 }, %struct.khadas_ts050_panel_cmd { i8 -99, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -98, i8 46 }, %struct.khadas_ts050_panel_cmd { i8 -97, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -96, i8 61 }, %struct.khadas_ts050_panel_cmd { i8 -94, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -93, i8 76 }, %struct.khadas_ts050_panel_cmd { i8 -92, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -91, i8 94 }, %struct.khadas_ts050_panel_cmd { i8 -90, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -89, i8 113 }, %struct.khadas_ts050_panel_cmd { i8 -87, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -86, i8 -122 }, %struct.khadas_ts050_panel_cmd { i8 -85, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -84, i8 -108 }, %struct.khadas_ts050_panel_cmd { i8 -83, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -82, i8 -6 }, %struct.khadas_ts050_panel_cmd { i8 -81, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -80, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -79, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -78, i8 33 }, %struct.khadas_ts050_panel_cmd { i8 -77, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -76, i8 76 }, %struct.khadas_ts050_panel_cmd { i8 -75, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -74, i8 107 }, %struct.khadas_ts050_panel_cmd { i8 -73, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -72, i8 -123 }, %struct.khadas_ts050_panel_cmd { i8 -71, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -70, i8 -102 }, %struct.khadas_ts050_panel_cmd { i8 -69, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -68, i8 -83 }, %struct.khadas_ts050_panel_cmd { i8 -67, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -66, i8 -66 }, %struct.khadas_ts050_panel_cmd { i8 -65, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -64, i8 -51 }, %struct.khadas_ts050_panel_cmd { i8 -63, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -62, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -61, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -60, i8 41 }, %struct.khadas_ts050_panel_cmd { i8 -59, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -58, i8 104 }, %struct.khadas_ts050_panel_cmd { i8 -57, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -56, i8 -104 }, %struct.khadas_ts050_panel_cmd { i8 -55, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -54, i8 -27 }, %struct.khadas_ts050_panel_cmd { i8 -53, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -52, i8 30 }, %struct.khadas_ts050_panel_cmd { i8 -51, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -50, i8 32 }, %struct.khadas_ts050_panel_cmd { i8 -49, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -48, i8 82 }, %struct.khadas_ts050_panel_cmd { i8 -47, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -46, i8 -120 }, %struct.khadas_ts050_panel_cmd { i8 -45, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -44, i8 -86 }, %struct.khadas_ts050_panel_cmd { i8 -43, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -42, i8 -41 }, %struct.khadas_ts050_panel_cmd { i8 -41, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -40, i8 -9 }, %struct.khadas_ts050_panel_cmd { i8 -39, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -38, i8 33 }, %struct.khadas_ts050_panel_cmd { i8 -37, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -36, i8 46 }, %struct.khadas_ts050_panel_cmd { i8 -35, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -34, i8 61 }, %struct.khadas_ts050_panel_cmd { i8 -33, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -32, i8 76 }, %struct.khadas_ts050_panel_cmd { i8 -31, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -30, i8 94 }, %struct.khadas_ts050_panel_cmd { i8 -29, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -28, i8 113 }, %struct.khadas_ts050_panel_cmd { i8 -27, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -26, i8 -122 }, %struct.khadas_ts050_panel_cmd { i8 -25, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -24, i8 -108 }, %struct.khadas_ts050_panel_cmd { i8 -23, i8 3 }, %struct.khadas_ts050_panel_cmd { i8 -22, i8 -6 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 2 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 4 }, %struct.khadas_ts050_panel_cmd { i8 -5, i8 1 }, %struct.khadas_ts050_panel_cmd { i8 -1, i8 0 }, %struct.khadas_ts050_panel_cmd { i8 -45, i8 5 }, %struct.khadas_ts050_panel_cmd { i8 -44, i8 4 }], [280 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 621, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed write cmds: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"khadas_ts050_panel_prepare\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/panel/panel-khadas-ts050.c\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_prepare._entry_ptr = internal global ptr @khadas_ts050_panel_prepare._entry, section ".printk_index", align 4
@khadas_ts050_panel_prepare._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 628, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_prepare._entry_ptr.14 = internal global ptr @khadas_ts050_panel_prepare._entry.12, section ".printk_index", align 4
@khadas_ts050_panel_prepare._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 640, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set tear on: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_prepare._entry_ptr.17 = internal global ptr @khadas_ts050_panel_prepare._entry.15, section ".printk_index", align 4
@khadas_ts050_panel_prepare._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.9, i32 646, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_prepare._entry_ptr.20 = internal global ptr @khadas_ts050_panel_prepare._entry.18, section ".printk_index", align 4
@khadas_ts050_panel_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.9, i32 710, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"khadas_ts050_panel_disable\00", [37 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_disable._entry_ptr = internal global ptr @khadas_ts050_panel_disable._entry, section ".printk_index", align 4
@khadas_ts050_panel_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.9, i32 677, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"khadas_ts050_panel_unprepare\00", [35 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_unprepare._entry_ptr = internal global ptr @khadas_ts050_panel_unprepare._entry, section ".printk_index", align 4
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 120000, i16 1088, i16 1192, i16 1196, i16 1323, i16 0, i16 1920, i16 1924, i16 1926, i16 1929, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.9, i32 741, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"khadas_ts050_panel_get_modes\00", [35 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_get_modes._entry_ptr = internal global ptr @khadas_ts050_panel_get_modes._entry, section ".printk_index", align 4
@khadas_ts050_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.9, i32 840, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"khadas_ts050_panel_remove\00", [38 x i8] zeroinitializer }, align 32
@khadas_ts050_panel_remove._entry_ptr = internal global ptr @khadas_ts050_panel_remove._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [26 x i8] c"khadas_ts050_panel_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 857, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 859, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"khadas_ts050_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 764, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 775, i32 49 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 778, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 780, i32 49 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 784, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 786, i32 50 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 790, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"khadas_ts050_panel_funcs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 756, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"init_code\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 39, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 621, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 628, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 640, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 646, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 710, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 677, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 719, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 739, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [46 x i8] c"../drivers/gpu/drm/panel/panel-khadas-ts050.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 840, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_khadas_ts050_panel_driver_exit, ptr @__initcall__kmod_panel_khadas_ts050__306_866_khadas_ts050_panel_driver_init6, ptr @khadas_ts050_panel_disable._entry, ptr @khadas_ts050_panel_disable._entry_ptr, ptr @khadas_ts050_panel_driver_exit, ptr @khadas_ts050_panel_get_modes._entry, ptr @khadas_ts050_panel_get_modes._entry_ptr, ptr @khadas_ts050_panel_prepare._entry, ptr @khadas_ts050_panel_prepare._entry.12, ptr @khadas_ts050_panel_prepare._entry.15, ptr @khadas_ts050_panel_prepare._entry.18, ptr @khadas_ts050_panel_prepare._entry_ptr, ptr @khadas_ts050_panel_prepare._entry_ptr.14, ptr @khadas_ts050_panel_prepare._entry_ptr.17, ptr @khadas_ts050_panel_prepare._entry_ptr.20, ptr @khadas_ts050_panel_remove._entry, ptr @khadas_ts050_panel_remove._entry_ptr, ptr @khadas_ts050_panel_unprepare._entry, ptr @khadas_ts050_panel_unprepare._entry_ptr, ptr @khadas_ts050_panel_driver, ptr @.str, ptr @khadas_ts050_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @khadas_ts050_panel_funcs, ptr @init_code, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @default_mode, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_code to i32), i32 1032, i32 1312, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_prepare._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_prepare._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_prepare._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @khadas_ts050_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @khadas_ts050_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @khadas_ts050_panel_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @khadas_ts050_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @khadas_ts050_panel_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @khadas_ts050_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %1 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2563, ptr %mode_flags, align 8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %link = getelementptr inbounds %struct.khadas_ts050_panel, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dsi, ptr %link, align 4
  %call.i22 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %supply.i = getelementptr inbounds %struct.khadas_ts050_panel, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i22, ptr %supply.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.khadas_ts050_panel_add.exit.sink.split_crit_edge, label %if.end.i

if.end.khadas_ts050_panel_add.exit.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %khadas_ts050_panel_add.exit.sink.split

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 3) #6
  %reset_gpio.i = getelementptr inbounds %struct.khadas_ts050_panel, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %reset_gpio.i, align 4
  %cmp.i50.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %if.end.i.khadas_ts050_panel_add.exit.sink.split_crit_edge, label %if.end14.i

if.end.i.khadas_ts050_panel_add.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %khadas_ts050_panel_add.exit.sink.split

if.end14.i:                                       ; preds = %if.end.i
  %call15.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 7) #6
  %enable_gpio.i = getelementptr inbounds %struct.khadas_ts050_panel, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15.i, ptr %enable_gpio.i, align 4
  %cmp.i51.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51.i, label %if.end14.i.khadas_ts050_panel_add.exit.sink.split_crit_edge, label %if.end22.i

if.end14.i.khadas_ts050_panel_add.exit.sink.split_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %khadas_ts050_panel_add.exit.sink.split

if.end22.i:                                       ; preds = %if.end14.i
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  %dev24.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev24.i, ptr noundef nonnull @khadas_ts050_panel_funcs, i32 noundef 16) #6
  %call26.i = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool.not.i, label %khadas_ts050_panel_add.exit.thread, label %if.end22.i.khadas_ts050_panel_add.exit_crit_edge

if.end22.i.khadas_ts050_panel_add.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %khadas_ts050_panel_add.exit

khadas_ts050_panel_add.exit.thread:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  br label %if.end3

khadas_ts050_panel_add.exit.sink.split:           ; preds = %if.end14.i.khadas_ts050_panel_add.exit.sink.split_crit_edge, %if.end.i.khadas_ts050_panel_add.exit.sink.split_crit_edge, %if.end.khadas_ts050_panel_add.exit.sink.split_crit_edge
  %call.i22.sink = phi ptr [ %call.i22, %if.end.khadas_ts050_panel_add.exit.sink.split_crit_edge ], [ %call7.i, %if.end.i.khadas_ts050_panel_add.exit.sink.split_crit_edge ], [ %call15.i, %if.end14.i.khadas_ts050_panel_add.exit.sink.split_crit_edge ]
  %.str.2.sink = phi ptr [ @.str.2, %if.end.khadas_ts050_panel_add.exit.sink.split_crit_edge ], [ @.str.4, %if.end.i.khadas_ts050_panel_add.exit.sink.split_crit_edge ], [ @.str.6, %if.end14.i.khadas_ts050_panel_add.exit.sink.split_crit_edge ]
  %10 = ptrtoint ptr %call.i22.sink to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull %.str.2.sink) #6
  br label %khadas_ts050_panel_add.exit

khadas_ts050_panel_add.exit:                      ; preds = %khadas_ts050_panel_add.exit.sink.split, %if.end22.i.khadas_ts050_panel_add.exit_crit_edge
  %retval.0.i = phi i32 [ %call26.i, %if.end22.i.khadas_ts050_panel_add.exit_crit_edge ], [ %call6.i, %khadas_ts050_panel_add.exit.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %khadas_ts050_panel_add.exit.cleanup_crit_edge, label %khadas_ts050_panel_add.exit.if.end3_crit_edge

khadas_ts050_panel_add.exit.if.end3_crit_edge:    ; preds = %khadas_ts050_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

khadas_ts050_panel_add.exit.cleanup_crit_edge:    ; preds = %khadas_ts050_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %khadas_ts050_panel_add.exit.if.end3_crit_edge, %khadas_ts050_panel_add.exit.thread
  %call4 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %khadas_ts050_panel_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %khadas_ts050_panel_add.exit.cleanup_crit_edge ], [ %call4, %if.then6 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @khadas_ts050_panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #6
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  %call5 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @khadas_ts050_panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  %call3 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @khadas_ts050_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  %.compoundliteral = alloca [1 x i8], align 1
  %.compoundliteral8 = alloca [1 x i8], align 1
  %.compoundliteral13 = alloca [1 x i8], align 1
  %.compoundliteral34 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_gpio = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #6
  %supply = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 2
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 60) #6
  %reset_gpio = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 3
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #6
  %link = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 1
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 4
  %14 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %.compoundliteral, align 1
  %call6 = call i32 @mipi_dsi_dcs_write(ptr noundef %13, i8 noundef zeroext -1, ptr noundef nonnull %.compoundliteral, i32 noundef 1) #6
  %15 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link, align 4
  %17 = ptrtoint ptr %.compoundliteral8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %.compoundliteral8, align 1
  %call11 = call i32 @mipi_dsi_dcs_write(ptr noundef %16, i8 noundef zeroext -5, ptr noundef nonnull %.compoundliteral8, i32 noundef 1) #6
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link, align 4
  %20 = ptrtoint ptr %.compoundliteral13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %.compoundliteral13, align 1
  %call16 = call i32 @mipi_dsi_dcs_write(ptr noundef %19, i8 noundef zeroext -59, ptr noundef nonnull %.compoundliteral13, i32 noundef 1) #6
  call void @msleep(i32 noundef 100) #6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 516
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end3
  %i.097 = phi i32 [ 0, %if.end3 ], [ %inc, %for.cond.for.body_crit_edge ]
  %21 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link, align 4
  %arrayidx = getelementptr [516 x %struct.khadas_ts050_panel_cmd], ptr @init_code, i32 0, i32 %i.097
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %data = getelementptr [516 x %struct.khadas_ts050_panel_cmd], ptr @init_code, i32 0, i32 %i.097, i32 1
  %call20 = call i32 @mipi_dsi_dcs_write(ptr noundef %22, i8 noundef zeroext %24, ptr noundef %data, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef %call20) #9
  br label %poweroff

for.end:                                          ; preds = %for.cond
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 4
  %call25 = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.13, i32 noundef %call25) #9
  br label %poweroff

if.end32:                                         ; preds = %for.end
  call void @msleep(i32 noundef 120) #6
  %31 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link, align 4
  %33 = ptrtoint ptr %.compoundliteral34 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %.compoundliteral34, align 1
  %call37 = call i32 @mipi_dsi_dcs_write(ptr noundef %32, i8 noundef zeroext -1, ptr noundef nonnull %.compoundliteral34, i32 noundef 1) #6
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 4
  %call39 = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %35, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef %call39) #9
  br label %poweroff

if.end46:                                         ; preds = %if.end32
  %38 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %link, align 4
  %call48 = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.19, i32 noundef %call48) #9
  br label %poweroff

if.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %42 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

poweroff:                                         ; preds = %do.end53, %do.end44, %do.end30, %do.end
  %err.0 = phi i32 [ %call20, %do.end ], [ %call25, %do.end30 ], [ %call39, %do.end44 ], [ %call48, %do.end53 ]
  %43 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %enable_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %44, i32 noundef 0) #6
  %45 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %46, i32 noundef 1) #6
  %47 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %supply, align 4
  %call60 = call i32 @regulator_disable(ptr noundef %48) #6
  br label %cleanup

cleanup:                                          ; preds = %poweroff, %if.end55, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %poweroff ], [ 0, %if.end55 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @khadas_ts050_panel_enable(ptr nocapture noundef writeonly %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %enabled, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @khadas_ts050_panel_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %call1) #9
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @khadas_ts050_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %prepared, align 4
  %link = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 1
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link, align 4
  %call2 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.23, i32 noundef %call2) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  tail call void @msleep(i32 noundef 150) #6
  %enable_gpio = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 4
  %7 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #6
  %reset_gpio = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 3
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 1) #6
  %supply = getelementptr inbounds %struct.khadas_ts050_panel, ptr %panel, i32 0, i32 2
  %11 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %supply, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %12) #6
  %13 = tail call i32 @llvm.smin.i32(i32 %call5, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %13, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @khadas_ts050_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef 1088, i32 noundef 1920, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %4 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 118, ptr %height_mm, align 4
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %bpc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_panel_khadas_ts050__306_866_khadas_ts050_panel_driver_init6, !1, !"__initcall__kmod_panel_khadas_ts050__306_866_khadas_ts050_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 866, i32 1}
!2 = !{ptr @__exitcall_khadas_ts050_panel_driver_exit, !1, !"__exitcall_khadas_ts050_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 868, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 869, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 870, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 859, i32 11}
!12 = !{ptr @khadas_ts050_panel_driver, !13, !"khadas_ts050_panel_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 857, i32 31}
!14 = !{ptr @khadas_ts050_of_match, !15, !"khadas_ts050_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 764, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 775, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 778, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 780, i32 49}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 784, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 786, i32 50}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 790, i32 10}
!28 = !{ptr @khadas_ts050_panel_funcs, !29, !"khadas_ts050_panel_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 756, i32 37}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 621, i32 4}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @khadas_ts050_panel_prepare._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @khadas_ts050_panel_prepare._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 628, i32 3}
!40 = !{ptr @khadas_ts050_panel_prepare._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @khadas_ts050_panel_prepare._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 640, i32 3}
!44 = !{ptr @khadas_ts050_panel_prepare._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @khadas_ts050_panel_prepare._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 646, i32 3}
!48 = !{ptr @khadas_ts050_panel_prepare._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @khadas_ts050_panel_prepare._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_code, !51, !"init_code", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 39, i32 44}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 710, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @khadas_ts050_panel_disable._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @khadas_ts050_panel_disable._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 677, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @khadas_ts050_panel_unprepare._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @khadas_ts050_panel_unprepare._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 739, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @khadas_ts050_panel_get_modes._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @khadas_ts050_panel_get_modes._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @default_mode, !68, !"default_mode", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 719, i32 38}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-khadas-ts050.c", i32 840, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @khadas_ts050_panel_remove._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @khadas_ts050_panel_remove._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
