; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.sharp_panel = type { %struct.drm_panel, ptr, ptr, ptr, i8, i8, ptr }
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

@__initcall__kmod_panel_sharp_lq101r1sx01__306_438_sharp_panel_driver_init6 = internal global ptr @sharp_panel_driver_init, section ".initcall6.init", align 4
@sharp_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sharp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sharp_panel_probe, ptr @sharp_panel_remove, ptr @sharp_panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_sharp_panel_driver_exit = internal global ptr @sharp_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [67 x i8] c"panel_sharp_lq101r1sx01.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [67 x i8] c"panel_sharp_lq101r1sx01.description=Sharp LQ101R1SX01 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [75 x i8] c"panel_sharp_lq101r1sx01.file=drivers/gpu/drm/panel/panel-sharp-lq101r1sx01\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [39 x i8] c"panel_sharp_lq101r1sx01.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panel-sharp-lq101r1sx01\00", [40 x i8] zeroinitializer }, align 32
@sharp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq101r1sx01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"link2\00", [26 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 278000, i16 2560, i16 2688, i16 2752, i16 2816, i16 0, i16 1600, i16 1604, i16 1612, i16 1644, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@sharp_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @sharp_panel_prepare, ptr @sharp_panel_enable, ptr @sharp_panel_disable, ptr @sharp_panel_unprepare, ptr @sharp_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@sharp_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 184, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sharp_panel_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sharp_panel_prepare._entry_ptr = internal global ptr @sharp_panel_prepare._entry, section ".printk_index", align 4
@sharp_panel_prepare._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set left-right mode: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sharp_panel_prepare._entry_ptr.10 = internal global ptr @sharp_panel_prepare._entry.8, section ".printk_index", align 4
@sharp_panel_prepare._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 207, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable command mode: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sharp_panel_prepare._entry_ptr.13 = internal global ptr @sharp_panel_prepare._entry.11, section ".printk_index", align 4
@sharp_panel_prepare._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 213, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set pixel format: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sharp_panel_prepare._entry_ptr.16 = internal global ptr @sharp_panel_prepare._entry.14, section ".printk_index", align 4
@sharp_panel_prepare._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 228, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set up symmetrical split: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sharp_panel_prepare._entry_ptr.19 = internal global ptr @sharp_panel_prepare._entry.17, section ".printk_index", align 4
@sharp_panel_prepare._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 234, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sharp_panel_prepare._entry_ptr.22 = internal global ptr @sharp_panel_prepare._entry.20, section ".printk_index", align 4
@sharp_panel_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 57, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to write %02x to %04x: %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sharp_panel_write\00", [46 x i8] zeroinitializer }, align 32
@sharp_panel_write._entry_ptr = internal global ptr @sharp_panel_write._entry, section ".printk_index", align 4
@sharp_panel_write._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 63, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to send DCS nop: %zd\0A\00", [35 x i8] zeroinitializer }, align 32
@sharp_panel_write._entry_ptr.27 = internal global ptr @sharp_panel_write._entry.25, section ".printk_index", align 4
@sharp_setup_symmetrical_split._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set column address: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sharp_setup_symmetrical_split\00", [34 x i8] zeroinitializer }, align 32
@sharp_setup_symmetrical_split._entry_ptr = internal global ptr @sharp_setup_symmetrical_split._entry, section ".printk_index", align 4
@sharp_setup_symmetrical_split._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 141, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set page address: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sharp_setup_symmetrical_split._entry_ptr.32 = internal global ptr @sharp_setup_symmetrical_split._entry.30, section ".printk_index", align 4
@sharp_setup_symmetrical_split._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 148, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@sharp_setup_symmetrical_split._entry_ptr.34 = internal global ptr @sharp_setup_symmetrical_split._entry.33, section ".printk_index", align 4
@sharp_setup_symmetrical_split._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 154, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@sharp_setup_symmetrical_split._entry_ptr.36 = internal global ptr @sharp_setup_symmetrical_split._entry.35, section ".printk_index", align 4
@sharp_panel_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 112, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sharp_panel_unprepare\00", [42 x i8] zeroinitializer }, align 32
@sharp_panel_unprepare._entry_ptr = internal global ptr @sharp_panel_unprepare._entry, section ".printk_index", align 4
@sharp_panel_unprepare._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 116, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sharp_panel_unprepare._entry_ptr.41 = internal global ptr @sharp_panel_unprepare._entry.39, section ".printk_index", align 4
@sharp_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sharp_panel_get_modes\00", [42 x i8] zeroinitializer }, align 32
@sharp_panel_get_modes._entry_ptr = internal global ptr @sharp_panel_get_modes._entry, section ".printk_index", align 4
@sharp_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 407, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sharp_panel_remove\00", [45 x i8] zeroinitializer }, align 32
@sharp_panel_remove._entry_ptr = internal global ptr @sharp_panel_remove._entry, section ".printk_index", align 4
@sharp_panel_remove._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 411, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sharp_panel_remove._entry_ptr.48 = internal global ptr @sharp_panel_remove._entry.46, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"sharp_panel_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 429, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 431, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"sharp_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 305, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 354, i32 42 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 262, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 317, i32 57 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"sharp_panel_funcs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 297, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 184, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 200, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 207, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 213, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 227, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 234, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 56, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 63, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 135, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 141, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 148, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 154, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 112, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 116, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 281, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 407, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [51 x i8] c"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 411, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_sharp_panel_driver_exit, ptr @__initcall__kmod_panel_sharp_lq101r1sx01__306_438_sharp_panel_driver_init6, ptr @sharp_panel_driver_exit, ptr @sharp_panel_get_modes._entry, ptr @sharp_panel_get_modes._entry_ptr, ptr @sharp_panel_prepare._entry, ptr @sharp_panel_prepare._entry.11, ptr @sharp_panel_prepare._entry.14, ptr @sharp_panel_prepare._entry.17, ptr @sharp_panel_prepare._entry.20, ptr @sharp_panel_prepare._entry.8, ptr @sharp_panel_prepare._entry_ptr, ptr @sharp_panel_prepare._entry_ptr.10, ptr @sharp_panel_prepare._entry_ptr.13, ptr @sharp_panel_prepare._entry_ptr.16, ptr @sharp_panel_prepare._entry_ptr.19, ptr @sharp_panel_prepare._entry_ptr.22, ptr @sharp_panel_remove._entry, ptr @sharp_panel_remove._entry.46, ptr @sharp_panel_remove._entry_ptr, ptr @sharp_panel_remove._entry_ptr.48, ptr @sharp_panel_unprepare._entry, ptr @sharp_panel_unprepare._entry.39, ptr @sharp_panel_unprepare._entry_ptr, ptr @sharp_panel_unprepare._entry_ptr.41, ptr @sharp_panel_write._entry, ptr @sharp_panel_write._entry.25, ptr @sharp_panel_write._entry_ptr, ptr @sharp_panel_write._entry_ptr.27, ptr @sharp_setup_symmetrical_split._entry, ptr @sharp_setup_symmetrical_split._entry.30, ptr @sharp_setup_symmetrical_split._entry.33, ptr @sharp_setup_symmetrical_split._entry.35, ptr @sharp_setup_symmetrical_split._entry_ptr, ptr @sharp_setup_symmetrical_split._entry_ptr.32, ptr @sharp_setup_symmetrical_split._entry_ptr.34, ptr @sharp_setup_symmetrical_split._entry_ptr.36, ptr @sharp_panel_driver, ptr @.str, ptr @sharp_of_match, ptr @.str.1, ptr @default_mode, ptr @.str.2, ptr @sharp_panel_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_prepare._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_prepare._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_prepare._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_prepare._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_prepare._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_write._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_setup_symmetrical_split._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_setup_symmetrical_split._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_setup_symmetrical_split._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_setup_symmetrical_split._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_unprepare._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_panel_remove._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @sharp_panel_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sharp_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @sharp_panel_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
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
  store i32 2048, ptr %mode_flags, align 8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %if.end17

of_parse_phandle.exit:                            ; preds = %entry
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.end17_crit_edge, label %if.then

of_parse_phandle.exit.if.end17_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %of_parse_phandle.exit
  %call1 = call ptr @of_find_mipi_dsi_device_by_node(ptr noundef nonnull %7) #6
  call void @of_node_put(ptr noundef nonnull %7) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.then
  %call.i50 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i50, null
  br i1 %tobool9.not, label %if.then6.cleanup.sink.split_crit_edge, label %if.end12

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.then6
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i50, ptr %driver_data.i.i, align 4
  %link2 = getelementptr inbounds %struct.sharp_panel, ptr %call.i50, i32 0, i32 2
  %9 = ptrtoint ptr %link2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %link2, align 4
  %link1 = getelementptr inbounds %struct.sharp_panel, ptr %call.i50, i32 0, i32 1
  %10 = ptrtoint ptr %link1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dsi, ptr %link1, align 4
  %mode.i = getelementptr inbounds %struct.sharp_panel, ptr %call.i50, i32 0, i32 6
  %11 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_mode, ptr %mode.i, align 4
  %call.i51 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %supply.i = getelementptr inbounds %struct.sharp_panel, ptr %call.i50, i32 0, i32 3
  %12 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i51, ptr %supply.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i53

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call.i51 to i32
  br label %sharp_panel_add.exit

if.end.i53:                                       ; preds = %if.end12
  %14 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link1, align 4
  %dev6.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %15, i32 0, i32 1
  call void @drm_panel_init(ptr noundef nonnull %call.i50, ptr noundef %dev6.i, ptr noundef nonnull @sharp_panel_funcs, i32 noundef 16) #6
  %call8.i = call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i52 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i52, label %sharp_panel_add.exit.thread, label %if.end.i53.sharp_panel_add.exit_crit_edge

if.end.i53.sharp_panel_add.exit_crit_edge:        ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %sharp_panel_add.exit

sharp_panel_add.exit.thread:                      ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_panel_add(ptr noundef nonnull %call.i50) #6
  br label %if.end17

sharp_panel_add.exit:                             ; preds = %if.end.i53.sharp_panel_add.exit_crit_edge, %if.then.i
  %retval.0.i54 = phi i32 [ %13, %if.then.i ], [ %call8.i, %if.end.i53.sharp_panel_add.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i54)
  %cmp = icmp slt i32 %retval.0.i54, 0
  br i1 %cmp, label %sharp_panel_add.exit.cleanup.sink.split_crit_edge, label %sharp_panel_add.exit.if.end17_crit_edge

sharp_panel_add.exit.if.end17_crit_edge:          ; preds = %sharp_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

sharp_panel_add.exit.cleanup.sink.split_crit_edge: ; preds = %sharp_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end17:                                         ; preds = %sharp_panel_add.exit.if.end17_crit_edge, %sharp_panel_add.exit.thread, %of_parse_phandle.exit.if.end17_crit_edge, %of_parse_phandle.exit.thread
  %tobool5.not62 = phi i1 [ false, %sharp_panel_add.exit.if.end17_crit_edge ], [ false, %sharp_panel_add.exit.thread ], [ true, %of_parse_phandle.exit.if.end17_crit_edge ], [ true, %of_parse_phandle.exit.thread ]
  %sharp.0 = phi ptr [ %call.i50, %sharp_panel_add.exit.if.end17_crit_edge ], [ %call.i50, %sharp_panel_add.exit.thread ], [ inttoptr (i32 -1 to ptr), %of_parse_phandle.exit.if.end17_crit_edge ], [ inttoptr (i32 -1 to ptr), %of_parse_phandle.exit.thread ]
  %call18 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp19 = icmp sgt i32 %call18, -1
  %brmerge = or i1 %tobool5.not62, %cmp19
  %.mux = select i1 %cmp19, i32 0, i32 %call18
  br i1 %brmerge, label %if.end17.cleanup_crit_edge, label %if.then22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  %16 = ptrtoint ptr %sharp.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sharp.0, align 4
  %tobool.not.i55 = icmp eq ptr %17, null
  br i1 %tobool.not.i55, label %if.then22.if.end.i57_crit_edge, label %if.then.i56

if.then22.if.end.i57_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i57

if.then.i56:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_panel_remove(ptr noundef nonnull %sharp.0) #6
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.then.i56, %if.then22.if.end.i57_crit_edge
  %link2.i = getelementptr inbounds %struct.sharp_panel, ptr %sharp.0, i32 0, i32 2
  %18 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link2.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.end.i57.cleanup_crit_edge, label %if.end.i57.cleanup.sink.split_crit_edge

if.end.i57.cleanup.sink.split_crit_edge:          ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i57.cleanup_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i57.cleanup.sink.split_crit_edge, %sharp_panel_add.exit.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %call1, %if.then6.cleanup.sink.split_crit_edge ], [ %call1, %sharp_panel_add.exit.cleanup.sink.split_crit_edge ], [ %19, %if.end.i57.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %if.then6.cleanup.sink.split_crit_edge ], [ %retval.0.i54, %sharp_panel_add.exit.cleanup.sink.split_crit_edge ], [ %call18, %if.end.i57.cleanup.sink.split_crit_edge ]
  %dev5.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %.sink, i32 0, i32 1
  call void @put_device(ptr noundef %dev5.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i57.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %if.then.cleanup_crit_edge ], [ %.mux, %if.end17.cleanup_crit_edge ], [ %call18, %if.end.i57.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @drm_panel_disable(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %call2) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.47, i32 noundef %call5) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end4.if.end12_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end12.if.end.i_crit_edge, label %if.then.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_remove(ptr noundef nonnull %1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %link2.i = getelementptr inbounds %struct.sharp_panel, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link2.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev5.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %5, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev5.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sharp_panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @drm_panel_disable(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 3
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 150) #6
  %link1 = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 1
  %4 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link1, align 4
  %call4 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %call4) #9
  br label %poweroff

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc i32 @sharp_panel_write(ptr noundef %panel, i16 noundef zeroext 4096, i8 noundef zeroext 42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %call8) #9
  br label %poweroff

if.end15:                                         ; preds = %if.end7
  %call16 = tail call fastcc i32 @sharp_panel_write(ptr noundef %panel, i16 noundef zeroext 4097, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %call16) #9
  br label %poweroff

if.end23:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link1, align 4
  %call25 = tail call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %13, i8 noundef zeroext 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %call25) #9
  br label %poweroff

if.end32:                                         ; preds = %if.end23
  %16 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link1, align 4
  %link2 = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 2
  %18 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link2, align 4
  %mode = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 6
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mode, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay.i, align 4
  %24 = lshr i16 %23, 1
  %sub.i = add nsw i16 %24, -1
  %call.i = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %17, i16 noundef zeroext 0, i16 noundef zeroext %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef %call.i) #9
  br label %do.end39

if.end.i:                                         ; preds = %if.end32
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %21, i32 0, i32 6
  %25 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay.i, align 2
  %sub4.i = add i16 %26, -1
  %call6.i = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %17, i16 noundef zeroext 0, i16 noundef zeroext %sub4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev13.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.31, i32 noundef %call6.i) #9
  br label %do.end39

if.end14.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hdisplay.i, align 4
  %div1766.i = lshr i16 %28, 1
  %sub21.i = add i16 %28, -1
  %call23.i = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %19, i16 noundef zeroext %div1766.i, i16 noundef zeroext %sub21.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end29.i, label %if.end31.i

do.end29.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev30.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull @.str.28, i32 noundef %call23.i) #9
  br label %do.end39

if.end31.i:                                       ; preds = %if.end14.i
  %29 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vdisplay.i, align 2
  %sub34.i = add i16 %30, -1
  %call36.i = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %19, i16 noundef zeroext 0, i16 noundef zeroext %sub34.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %do.end42.i, label %if.end41

do.end42.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev43.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.31, i32 noundef %call36.i) #9
  br label %do.end39

do.end39:                                         ; preds = %do.end42.i, %do.end29.i, %do.end12.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call36.i, %do.end42.i ], [ %call23.i, %do.end29.i ], [ %call6.i, %do.end12.i ], [ %call.i, %do.end.i ]
  %31 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.ph) #9
  br label %poweroff

if.end41:                                         ; preds = %if.end31.i
  %33 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link1, align 4
  %call43 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.21, i32 noundef %call43) #9
  br label %poweroff

if.end50:                                         ; preds = %if.end41
  %37 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %prepared, align 4
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mode, align 4
  %call.i88 = tail call i32 @drm_mode_vrefresh(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i88)
  %cmp.i89 = icmp ult i32 %call.i88, 6
  br i1 %cmp.i89, label %do.end.i90, label %if.end21.i, !prof !109

do.end.i90:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 42, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = udiv i32 %call.i88, 6
  %div22.i = udiv i32 1000, %div.i
  tail call void @msleep(i32 noundef %div22.i) #6
  br label %cleanup

poweroff:                                         ; preds = %do.end48, %do.end39, %do.end30, %do.end21, %do.end13, %do.end
  %err.0 = phi i32 [ %call4, %do.end ], [ %call8, %do.end13 ], [ %call16, %do.end21 ], [ %call25, %do.end30 ], [ %retval.0.i.ph, %do.end39 ], [ %call43, %do.end48 ]
  %40 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %supply, align 4
  %call53 = tail call i32 @regulator_disable(ptr noundef %41) #6
  br label %cleanup

cleanup:                                          ; preds = %poweroff, %if.end21.i, %do.end.i90, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %poweroff ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %do.end.i90 ], [ 0, %if.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sharp_panel_enable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sharp_panel_disable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode.i = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 6
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode.i, align 4
  %call.i = tail call i32 @drm_mode_vrefresh(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 4
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !109

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 42, i32 noundef 9, ptr noundef null) #6
  br label %sharp_wait_frames.exit

if.end21.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div.i26 = lshr i32 %call.i, 2
  %div22.i = udiv i32 1000, %div.i26
  tail call void @msleep(i32 noundef %div22.i) #6
  br label %sharp_wait_frames.exit

sharp_wait_frames.exit:                           ; preds = %if.end21.i, %do.end.i
  %link1 = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 1
  %4 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link1, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %sharp_wait_frames.exit.if.end3_crit_edge

sharp_wait_frames.exit.if.end3_crit_edge:         ; preds = %sharp_wait_frames.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %sharp_wait_frames.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef %call1) #9
  br label %if.end3

if.end3:                                          ; preds = %do.end, %sharp_wait_frames.exit.if.end3_crit_edge
  %8 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link1, align 4
  %call5 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef %call5) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end3.if.end12_crit_edge
  tail call void @msleep(i32 noundef 120) #6
  %supply = getelementptr inbounds %struct.sharp_panel, ptr %panel, i32 0, i32 3
  %12 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %supply, align 4
  %call13 = tail call i32 @regulator_disable(ptr noundef %13) #6
  %14 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef 2560, i32 noundef 1600, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %4 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 217, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 136, ptr %height_mm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sharp_panel_write(ptr nocapture noundef readonly %sharp, i16 noundef zeroext %offset, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %payload = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %payload) #6
  %0 = getelementptr inbounds [3 x i8], ptr %payload, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %payload, i32 0, i32 2
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %payload, align 1
  %conv3 = trunc i16 %offset to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %value, ptr %1, align 1
  %link1 = getelementptr inbounds %struct.sharp_panel, ptr %sharp, i32 0, i32 1
  %5 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link1, align 4
  %call = call i32 @mipi_dsi_generic_write(ptr noundef %6, ptr noundef nonnull %payload, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %offset to i32
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %6, i32 0, i32 1
  %conv6 = zext i8 %value to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv6, i32 noundef %conv, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @mipi_dsi_dcs_nop(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.mipi_dsi_device, ptr %6, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.26, i32 noundef %call8) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call8, %do.end14 ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %payload) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_nop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_panel_sharp_lq101r1sx01__306_438_sharp_panel_driver_init6, !1, !"__initcall__kmod_panel_sharp_lq101r1sx01__306_438_sharp_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 438, i32 1}
!2 = !{ptr @__exitcall_sharp_panel_driver_exit, !1, !"__exitcall_sharp_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 440, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 441, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 442, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 431, i32 11}
!12 = !{ptr @sharp_panel_driver, !13, !"sharp_panel_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 429, i32 31}
!14 = !{ptr @sharp_of_match, !15, !"sharp_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 305, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 354, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 317, i32 57}
!20 = !{ptr @default_mode, !21, !"default_mode", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 262, i32 38}
!22 = !{ptr @sharp_panel_funcs, !23, !"sharp_panel_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 297, i32 37}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 184, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sharp_panel_prepare._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @sharp_panel_prepare._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 200, i32 3}
!34 = !{ptr @sharp_panel_prepare._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sharp_panel_prepare._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 207, i32 3}
!38 = !{ptr @sharp_panel_prepare._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sharp_panel_prepare._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 213, i32 3}
!42 = !{ptr @sharp_panel_prepare._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sharp_panel_prepare._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 227, i32 3}
!46 = !{ptr @sharp_panel_prepare._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sharp_panel_prepare._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 234, i32 3}
!50 = !{ptr @sharp_panel_prepare._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sharp_panel_prepare._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 56, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sharp_panel_write._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @sharp_panel_write._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 63, i32 3}
!59 = !{ptr @sharp_panel_write._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sharp_panel_write._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 135, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sharp_setup_symmetrical_split._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @sharp_setup_symmetrical_split._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 141, i32 3}
!68 = !{ptr @sharp_setup_symmetrical_split._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sharp_setup_symmetrical_split._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @sharp_setup_symmetrical_split._entry.33, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 148, i32 3}
!72 = !{ptr @sharp_setup_symmetrical_split._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @sharp_setup_symmetrical_split._entry.35, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 154, i32 3}
!75 = !{ptr @sharp_setup_symmetrical_split._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 112, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @sharp_panel_unprepare._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @sharp_panel_unprepare._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 116, i32 3}
!83 = !{ptr @sharp_panel_unprepare._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sharp_panel_unprepare._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 281, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sharp_panel_get_modes._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @sharp_panel_get_modes._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 407, i32 3}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sharp_panel_remove._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @sharp_panel_remove._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c", i32 411, i32 3}
!97 = !{ptr @sharp_panel_remove._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @sharp_panel_remove._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i8 0, i8 2}
!109 = !{!"branch_weights", i32 1, i32 2000}
