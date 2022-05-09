; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s6e88a0_ams452ef01 = type { %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data], ptr, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_samsung_s6e88a0_ams452ef01__302_285_s6e88a0_ams452ef01_driver_init6 = internal global ptr @s6e88a0_ams452ef01_driver_init, section ".initcall6.init", align 4
@s6e88a0_ams452ef01_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6e88a0_ams452ef01_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s6e88a0_ams452ef01_probe, ptr @s6e88a0_ams452ef01_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_s6e88a0_ams452ef01_driver_exit = internal global ptr @s6e88a0_ams452ef01_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [78 x i8] c"panel_samsung_s6e88a0_ams452ef01.author=Michael Srba <Michael.Srba@seznam.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [125 x i8] c"panel_samsung_s6e88a0_ams452ef01.description=MIPI-DSI based Panel Driver for AMS452EF01 AMOLED LCD with a S6E88A0 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [93 x i8] c"panel_samsung_s6e88a0_ams452ef01.file=drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [48 x i8] c"panel_samsung_s6e88a0_ams452ef01.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panel-s6e88a0-ams452ef01\00", [39 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e88a0-ams452ef01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 224, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s6e88a0_ams452ef01_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_probe._entry_ptr = internal global ptr @s6e88a0_ams452ef01_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 231, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get reset-gpios: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_probe._entry_ptr.11 = internal global ptr @s6e88a0_ams452ef01_probe._entry.9, section ".printk_index", align 4
@s6e88a0_ams452ef01_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @s6e88a0_ams452ef01_prepare, ptr null, ptr null, ptr @s6e88a0_ams452ef01_unprepare, ptr @s6e88a0_ams452ef01_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 249, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to attach to DSI host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_probe._entry_ptr.14 = internal global ptr @s6e88a0_ams452ef01_probe._entry.12, section ".printk_index", align 4
@s6e88a0_ams452ef01_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 131, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s6e88a0_ams452ef01_prepare\00", [37 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_prepare._entry_ptr = internal global ptr @s6e88a0_ams452ef01_prepare._entry, section ".printk_index", align 4
@s6e88a0_ams452ef01_prepare._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 139, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize panel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_prepare._entry_ptr.19 = internal global ptr @s6e88a0_ams452ef01_prepare._entry.17, section ".printk_index", align 4
@s6e88a0_ams452ef01_on.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on.d.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\CCL", [30 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 62, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s6e88a0_ams452ef01_on\00", [42 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on._entry_ptr = internal global ptr @s6e88a0_ams452ef01_on._entry, section ".printk_index", align 4
@s6e88a0_ams452ef01_on.d.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\CA\01\00\01\00\01\00\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80khq\00\00\00", [62 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on.d.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\B2@\0A\17\00\0A", [26 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on.d.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B6,\0B", [29 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on.d.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on.d.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F7\03", [30 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on.d.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0\A5\A5", [29 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.5, i32 88, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_on._entry_ptr.31 = internal global ptr @s6e88a0_ams452ef01_on._entry.29, section ".printk_index", align 4
@s6e88a0_ams452ef01_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to un-initialize panel: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s6e88a0_ams452ef01_unprepare\00", [35 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_unprepare._entry_ptr = internal global ptr @s6e88a0_ams452ef01_unprepare._entry, section ".printk_index", align 4
@s6e88a0_ams452ef01_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 105, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s6e88a0_ams452ef01_off\00", [41 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_off._entry_ptr = internal global ptr @s6e88a0_ams452ef01_off._entry, section ".printk_index", align 4
@s6e88a0_ams452ef01_off._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 112, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_off._entry_ptr.38 = internal global ptr @s6e88a0_ams452ef01_off._entry.36, section ".printk_index", align 4
@s6e88a0_ams452ef01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 38494, i16 540, i16 628, i16 632, i16 652, i16 0, i16 960, i16 974, i16 976, i16 984, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 56, i16 100, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 264, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s6e88a0_ams452ef01_remove\00", [38 x i8] zeroinitializer }, align 32
@s6e88a0_ams452ef01_remove._entry_ptr = internal global ptr @s6e88a0_ams452ef01_remove._entry, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"s6e88a0_ams452ef01_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 277, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 281, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"s6e88a0_ams452ef01_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 271, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 219, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 220, i32 28 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 224, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 228, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 231, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"s6e88a0_ams452ef01_panel_funcs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 203, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 249, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 131, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 139, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 57, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 58, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 62, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 68, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 80, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 81, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 82, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 83, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 84, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 88, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 161, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 105, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 112, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [24 x i8] c"s6e88a0_ams452ef01_mode\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 170, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [60 x i8] c"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 264, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_s6e88a0_ams452ef01_driver_exit, ptr @__initcall__kmod_panel_samsung_s6e88a0_ams452ef01__302_285_s6e88a0_ams452ef01_driver_init6, ptr @s6e88a0_ams452ef01_driver_exit, ptr @s6e88a0_ams452ef01_off._entry, ptr @s6e88a0_ams452ef01_off._entry.36, ptr @s6e88a0_ams452ef01_off._entry_ptr, ptr @s6e88a0_ams452ef01_off._entry_ptr.38, ptr @s6e88a0_ams452ef01_on._entry, ptr @s6e88a0_ams452ef01_on._entry.29, ptr @s6e88a0_ams452ef01_on._entry_ptr, ptr @s6e88a0_ams452ef01_on._entry_ptr.31, ptr @s6e88a0_ams452ef01_prepare._entry, ptr @s6e88a0_ams452ef01_prepare._entry.17, ptr @s6e88a0_ams452ef01_prepare._entry_ptr, ptr @s6e88a0_ams452ef01_prepare._entry_ptr.19, ptr @s6e88a0_ams452ef01_probe._entry, ptr @s6e88a0_ams452ef01_probe._entry.12, ptr @s6e88a0_ams452ef01_probe._entry.9, ptr @s6e88a0_ams452ef01_probe._entry_ptr, ptr @s6e88a0_ams452ef01_probe._entry_ptr.11, ptr @s6e88a0_ams452ef01_probe._entry_ptr.14, ptr @s6e88a0_ams452ef01_remove._entry, ptr @s6e88a0_ams452ef01_remove._entry_ptr, ptr @s6e88a0_ams452ef01_unprepare._entry, ptr @s6e88a0_ams452ef01_unprepare._entry_ptr, ptr @s6e88a0_ams452ef01_driver, ptr @.str, ptr @s6e88a0_ams452ef01_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @s6e88a0_ams452ef01_panel_funcs, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @s6e88a0_ams452ef01_on.d, ptr @s6e88a0_ams452ef01_on.d.20, ptr @.str.21, ptr @.str.22, ptr @s6e88a0_ams452ef01_on.d.23, ptr @s6e88a0_ams452ef01_on.d.24, ptr @s6e88a0_ams452ef01_on.d.25, ptr @s6e88a0_ams452ef01_on.d.26, ptr @s6e88a0_ams452ef01_on.d.27, ptr @s6e88a0_ams452ef01_on.d.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @s6e88a0_ams452ef01_mode, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_prepare._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on.d.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_off._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e88a0_ams452ef01_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e88a0_ams452ef01_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @s6e88a0_ams452ef01_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s6e88a0_ams452ef01_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @s6e88a0_ams452ef01_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e88a0_ams452ef01_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx3 = getelementptr %struct.s6e88a0_ams452ef01, ptr %call.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %call6 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call6) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #4
  %reset_gpio = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %3) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %dsi19 = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dsi19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dsi, ptr %dsi19, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %mode_flags, align 8
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @s6e88a0_ams452ef01_panel_funcs, i32 noundef 16) #4
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #4
  %call21 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call21) #7
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end18.cleanup_crit_edge, %if.then12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %3, %if.then12 ], [ %call21, %do.end26 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e88a0_ams452ef01_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e88a0_ams452ef01_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call2) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 3
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #4
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #4
  %10 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi, align 4
  %dev2.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 1
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %13, 2048
  store i32 %or.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end4.do.end10_crit_edge, label %do.body4.i

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body4.i:                                       ; preds = %if.end4
  %call6.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d.20, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.body4.i.do.end10_crit_edge, label %do.end14.i

do.body4.i.do.end10_crit_edge:                    ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.end14.i:                                       ; preds = %do.body4.i
  %call15.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end21.i

do.end20.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.21, i32 noundef %call15.i) #7
  br label %do.end10

if.end21.i:                                       ; preds = %do.end14.i
  tail call void @msleep(i32 noundef 120) #4
  %call24.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d.23, i32 noundef 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end21.i.do.end10_crit_edge, label %do.body33.i

if.end21.i.do.end10_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body33.i:                                      ; preds = %if.end21.i
  %call35.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d.24, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %do.body33.i.do.end10_crit_edge, label %do.body44.i

do.body33.i.do.end10_crit_edge:                   ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body44.i:                                      ; preds = %do.body33.i
  %call46.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d.25, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.body44.i.do.end10_crit_edge, label %do.body55.i

do.body44.i.do.end10_crit_edge:                   ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body55.i:                                      ; preds = %do.body44.i
  %call57.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d.26, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %do.body55.i.do.end10_crit_edge, label %do.body66.i

do.body55.i.do.end10_crit_edge:                   ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body66.i:                                      ; preds = %do.body55.i
  %call68.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d.27, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %do.body66.i.do.end10_crit_edge, label %do.body77.i

do.body66.i.do.end10_crit_edge:                   ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body77.i:                                      ; preds = %do.body66.i
  %call79.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e88a0_ams452ef01_on.d.28, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %do.body77.i.do.end10_crit_edge, label %do.end87.i

do.body77.i.do.end10_crit_edge:                   ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.end87.i:                                       ; preds = %do.body77.i
  %call88.i = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %do.end93.i, label %if.end14

do.end93.i:                                       ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.30, i32 noundef %call88.i) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end93.i, %do.body77.i.do.end10_crit_edge, %do.body66.i.do.end10_crit_edge, %do.body55.i.do.end10_crit_edge, %do.body44.i.do.end10_crit_edge, %do.body33.i.do.end10_crit_edge, %if.end21.i.do.end10_crit_edge, %do.end20.i, %do.body4.i.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  %retval.8.i.ph = phi i32 [ %call.i, %if.end4.do.end10_crit_edge ], [ %call6.i, %do.body4.i.do.end10_crit_edge ], [ %call24.i, %if.end21.i.do.end10_crit_edge ], [ %call35.i, %do.body33.i.do.end10_crit_edge ], [ %call46.i, %do.body44.i.do.end10_crit_edge ], [ %call57.i, %do.body55.i.do.end10_crit_edge ], [ %call68.i, %do.body66.i.do.end10_crit_edge ], [ %call79.i, %do.body77.i.do.end10_crit_edge ], [ %call88.i, %do.end93.i ], [ %call15.i, %do.end20.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %retval.8.i.ph) #7
  %14 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #4
  %call13 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #4
  br label %cleanup

if.end14:                                         ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.8.i.ph, %do.end10 ], [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e88a0_ams452ef01_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %5, -2049
  store i32 %and.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call.i) #7
  br label %do.end

if.end.i:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 35) #4
  %call3.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %s6e88a0_ams452ef01_off.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call3.i) #7
  br label %do.end

s6e88a0_ams452ef01_off.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 120) #4
  br label %if.end4

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call3.i, %do.end8.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i.ph) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end, %s6e88a0_ams452ef01_off.exit
  %reset_gpio = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #4
  %supplies = getelementptr inbounds %struct.s6e88a0_ams452ef01, ptr %panel, i32 0, i32 2
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #4
  %8 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e88a0_ams452ef01_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @s6e88a0_ams452ef01_mode) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #4
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 26
  %3 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %4 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %5 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 27
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %height_mm, align 4
  %conv2 = zext i16 %7 to i32
  %height_mm4 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %height_mm4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %height_mm4, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_panel_samsung_s6e88a0_ams452ef01__302_285_s6e88a0_ams452ef01_driver_init6, !1, !"__initcall__kmod_panel_samsung_s6e88a0_ams452ef01__302_285_s6e88a0_ams452ef01_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 285, i32 1}
!2 = !{ptr @__exitcall_s6e88a0_ams452ef01_driver_exit, !1, !"__exitcall_s6e88a0_ams452ef01_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 287, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 288, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 289, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 281, i32 11}
!12 = !{ptr @s6e88a0_ams452ef01_driver, !13, !"s6e88a0_ams452ef01_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 277, i32 31}
!14 = !{ptr @s6e88a0_ams452ef01_of_match, !15, !"s6e88a0_ams452ef01_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 271, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 219, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 220, i32 28}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 224, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @s6e88a0_ams452ef01_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @s6e88a0_ams452ef01_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 228, i32 40}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 231, i32 3}
!32 = !{ptr @s6e88a0_ams452ef01_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @s6e88a0_ams452ef01_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 249, i32 3}
!36 = !{ptr @s6e88a0_ams452ef01_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @s6e88a0_ams452ef01_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @s6e88a0_ams452ef01_panel_funcs, !39, !"s6e88a0_ams452ef01_panel_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 203, i32 37}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 131, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @s6e88a0_ams452ef01_prepare._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @s6e88a0_ams452ef01_prepare._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 139, i32 3}
!47 = !{ptr @s6e88a0_ams452ef01_prepare._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @s6e88a0_ams452ef01_prepare._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @s6e88a0_ams452ef01_on.d, !50, !"d", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 57, i32 2}
!51 = !{ptr @s6e88a0_ams452ef01_on.d.20, !52, !"d", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 58, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 62, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @s6e88a0_ams452ef01_on._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @s6e88a0_ams452ef01_on._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @s6e88a0_ams452ef01_on.d.23, !59, !"d", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 68, i32 2}
!60 = !{ptr @s6e88a0_ams452ef01_on.d.24, !61, !"d", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 80, i32 2}
!62 = !{ptr @s6e88a0_ams452ef01_on.d.25, !63, !"d", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 81, i32 2}
!64 = !{ptr @s6e88a0_ams452ef01_on.d.26, !65, !"d", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 82, i32 2}
!66 = !{ptr @s6e88a0_ams452ef01_on.d.27, !67, !"d", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 83, i32 2}
!68 = !{ptr @s6e88a0_ams452ef01_on.d.28, !69, !"d", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 84, i32 2}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 88, i32 3}
!72 = !{ptr @s6e88a0_ams452ef01_on._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @s6e88a0_ams452ef01_on._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 161, i32 3}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @s6e88a0_ams452ef01_unprepare._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @s6e88a0_ams452ef01_unprepare._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 105, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @s6e88a0_ams452ef01_off._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @s6e88a0_ams452ef01_off._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 112, i32 3}
!86 = !{ptr @s6e88a0_ams452ef01_off._entry.36, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @s6e88a0_ams452ef01_off._entry_ptr.38, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @s6e88a0_ams452ef01_mode, !89, !"s6e88a0_ams452ef01_mode", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 170, i32 38}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams452ef01.c", i32 264, i32 3}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @s6e88a0_ams452ef01_remove._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @s6e88a0_ams452ef01_remove._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
