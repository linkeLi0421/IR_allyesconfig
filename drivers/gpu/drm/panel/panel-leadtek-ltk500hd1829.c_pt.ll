; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ltk500hd1829_cmd = type { i8, i8 }
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
%struct.ltk500hd1829 = type { ptr, %struct.drm_panel, ptr, ptr, ptr, i8 }
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

@__initcall__kmod_panel_leadtek_ltk500hd1829__306_511_ltk500hd1829_driver_init6 = internal global ptr @ltk500hd1829_driver_init, section ".initcall6.init", align 4
@ltk500hd1829_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltk500hd1829_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltk500hd1829_probe, ptr @ltk500hd1829_remove, ptr @ltk500hd1829_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_ltk500hd1829_driver_exit = internal global ptr @ltk500hd1829_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [88 x i8] c"panel_leadtek_ltk500hd1829.author=Heiko Stuebner <heiko.stuebner@theobroma-systems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [73 x i8] c"panel_leadtek_ltk500hd1829.description=Leadtek LTK500HD1829 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [81 x i8] c"panel_leadtek_ltk500hd1829.file=drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [42 x i8] c"panel_leadtek_ltk500hd1829.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"panel-leadtek-ltk500hd1829\00", [37 x i8] zeroinitializer }, align 32
@ltk500hd1829_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"leadtek,ltk500hd1829\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get reset gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ltk500hd1829_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry_ptr = internal global ptr @ltk500hd1829_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request vcc regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry_ptr.10 = internal global ptr @ltk500hd1829_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request iovcc regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry_ptr.14 = internal global ptr @ltk500hd1829_probe._entry.12, section ".printk_index", align 4
@ltk500hd1829_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ltk500hd1829_prepare, ptr null, ptr null, ptr @ltk500hd1829_unprepare, ptr @ltk500hd1829_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi_dsi_attach failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ltk500hd1829_probe._entry_ptr.17 = internal global ptr @ltk500hd1829_probe._entry.15, section ".printk_index", align 4
@ltk500hd1829_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable vci supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ltk500hd1829_prepare\00", [43 x i8] zeroinitializer }, align 32
@ltk500hd1829_prepare._entry_ptr = internal global ptr @ltk500hd1829_prepare._entry, section ".printk_index", align 4
@ltk500hd1829_prepare._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable iovcc supply: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ltk500hd1829_prepare._entry_ptr.22 = internal global ptr @ltk500hd1829_prepare._entry.20, section ".printk_index", align 4
@init_code = internal constant { [218 x %struct.ltk500hd1829_cmd], [108 x i8] } { [218 x %struct.ltk500hd1829_cmd] [%struct.ltk500hd1829_cmd { i8 -32, i8 0 }, %struct.ltk500hd1829_cmd { i8 -31, i8 -109 }, %struct.ltk500hd1829_cmd { i8 -30, i8 101 }, %struct.ltk500hd1829_cmd { i8 -29, i8 -8 }, %struct.ltk500hd1829_cmd { i8 -128, i8 3 }, %struct.ltk500hd1829_cmd { i8 -32, i8 4 }, %struct.ltk500hd1829_cmd { i8 45, i8 3 }, %struct.ltk500hd1829_cmd { i8 -32, i8 1 }, %struct.ltk500hd1829_cmd zeroinitializer, %struct.ltk500hd1829_cmd { i8 1, i8 -74 }, %struct.ltk500hd1829_cmd { i8 3, i8 0 }, %struct.ltk500hd1829_cmd { i8 4, i8 -59 }, %struct.ltk500hd1829_cmd { i8 23, i8 0 }, %struct.ltk500hd1829_cmd { i8 24, i8 -65 }, %struct.ltk500hd1829_cmd { i8 25, i8 1 }, %struct.ltk500hd1829_cmd { i8 26, i8 0 }, %struct.ltk500hd1829_cmd { i8 27, i8 -65 }, %struct.ltk500hd1829_cmd { i8 28, i8 1 }, %struct.ltk500hd1829_cmd { i8 31, i8 124 }, %struct.ltk500hd1829_cmd { i8 32, i8 38 }, %struct.ltk500hd1829_cmd { i8 33, i8 38 }, %struct.ltk500hd1829_cmd { i8 34, i8 78 }, %struct.ltk500hd1829_cmd { i8 55, i8 9 }, %struct.ltk500hd1829_cmd { i8 56, i8 4 }, %struct.ltk500hd1829_cmd { i8 57, i8 8 }, %struct.ltk500hd1829_cmd { i8 58, i8 31 }, %struct.ltk500hd1829_cmd { i8 59, i8 31 }, %struct.ltk500hd1829_cmd { i8 60, i8 120 }, %struct.ltk500hd1829_cmd { i8 61, i8 -1 }, %struct.ltk500hd1829_cmd { i8 62, i8 -1 }, %struct.ltk500hd1829_cmd { i8 63, i8 0 }, %struct.ltk500hd1829_cmd { i8 64, i8 4 }, %struct.ltk500hd1829_cmd { i8 65, i8 -96 }, %struct.ltk500hd1829_cmd { i8 67, i8 15 }, %struct.ltk500hd1829_cmd { i8 68, i8 10 }, %struct.ltk500hd1829_cmd { i8 69, i8 36 }, %struct.ltk500hd1829_cmd { i8 85, i8 1 }, %struct.ltk500hd1829_cmd { i8 86, i8 1 }, %struct.ltk500hd1829_cmd { i8 87, i8 -91 }, %struct.ltk500hd1829_cmd { i8 88, i8 10 }, %struct.ltk500hd1829_cmd { i8 89, i8 74 }, %struct.ltk500hd1829_cmd { i8 90, i8 56 }, %struct.ltk500hd1829_cmd { i8 91, i8 16 }, %struct.ltk500hd1829_cmd { i8 92, i8 25 }, %struct.ltk500hd1829_cmd { i8 93, i8 124 }, %struct.ltk500hd1829_cmd { i8 94, i8 100 }, %struct.ltk500hd1829_cmd { i8 95, i8 84 }, %struct.ltk500hd1829_cmd { i8 96, i8 72 }, %struct.ltk500hd1829_cmd { i8 97, i8 68 }, %struct.ltk500hd1829_cmd { i8 98, i8 53 }, %struct.ltk500hd1829_cmd { i8 99, i8 58 }, %struct.ltk500hd1829_cmd { i8 100, i8 36 }, %struct.ltk500hd1829_cmd { i8 101, i8 59 }, %struct.ltk500hd1829_cmd { i8 102, i8 57 }, %struct.ltk500hd1829_cmd { i8 103, i8 55 }, %struct.ltk500hd1829_cmd { i8 104, i8 86 }, %struct.ltk500hd1829_cmd { i8 105, i8 65 }, %struct.ltk500hd1829_cmd { i8 106, i8 71 }, %struct.ltk500hd1829_cmd { i8 107, i8 47 }, %struct.ltk500hd1829_cmd { i8 108, i8 35 }, %struct.ltk500hd1829_cmd { i8 109, i8 19 }, %struct.ltk500hd1829_cmd { i8 110, i8 2 }, %struct.ltk500hd1829_cmd { i8 111, i8 8 }, %struct.ltk500hd1829_cmd { i8 112, i8 124 }, %struct.ltk500hd1829_cmd { i8 113, i8 100 }, %struct.ltk500hd1829_cmd { i8 114, i8 84 }, %struct.ltk500hd1829_cmd { i8 115, i8 72 }, %struct.ltk500hd1829_cmd { i8 116, i8 68 }, %struct.ltk500hd1829_cmd { i8 117, i8 53 }, %struct.ltk500hd1829_cmd { i8 118, i8 58 }, %struct.ltk500hd1829_cmd { i8 119, i8 34 }, %struct.ltk500hd1829_cmd { i8 120, i8 59 }, %struct.ltk500hd1829_cmd { i8 121, i8 57 }, %struct.ltk500hd1829_cmd { i8 122, i8 56 }, %struct.ltk500hd1829_cmd { i8 123, i8 82 }, %struct.ltk500hd1829_cmd { i8 124, i8 65 }, %struct.ltk500hd1829_cmd { i8 125, i8 71 }, %struct.ltk500hd1829_cmd { i8 126, i8 47 }, %struct.ltk500hd1829_cmd { i8 127, i8 35 }, %struct.ltk500hd1829_cmd { i8 -128, i8 19 }, %struct.ltk500hd1829_cmd { i8 -127, i8 2 }, %struct.ltk500hd1829_cmd { i8 -126, i8 8 }, %struct.ltk500hd1829_cmd { i8 -32, i8 2 }, %struct.ltk500hd1829_cmd { i8 0, i8 87 }, %struct.ltk500hd1829_cmd { i8 1, i8 119 }, %struct.ltk500hd1829_cmd { i8 2, i8 68 }, %struct.ltk500hd1829_cmd { i8 3, i8 70 }, %struct.ltk500hd1829_cmd { i8 4, i8 72 }, %struct.ltk500hd1829_cmd { i8 5, i8 74 }, %struct.ltk500hd1829_cmd { i8 6, i8 76 }, %struct.ltk500hd1829_cmd { i8 7, i8 78 }, %struct.ltk500hd1829_cmd { i8 8, i8 80 }, %struct.ltk500hd1829_cmd { i8 9, i8 85 }, %struct.ltk500hd1829_cmd { i8 10, i8 82 }, %struct.ltk500hd1829_cmd { i8 11, i8 85 }, %struct.ltk500hd1829_cmd { i8 12, i8 85 }, %struct.ltk500hd1829_cmd { i8 13, i8 85 }, %struct.ltk500hd1829_cmd { i8 14, i8 85 }, %struct.ltk500hd1829_cmd { i8 15, i8 85 }, %struct.ltk500hd1829_cmd { i8 16, i8 85 }, %struct.ltk500hd1829_cmd { i8 17, i8 85 }, %struct.ltk500hd1829_cmd { i8 18, i8 85 }, %struct.ltk500hd1829_cmd { i8 19, i8 64 }, %struct.ltk500hd1829_cmd { i8 20, i8 85 }, %struct.ltk500hd1829_cmd { i8 21, i8 85 }, %struct.ltk500hd1829_cmd { i8 22, i8 87 }, %struct.ltk500hd1829_cmd { i8 23, i8 119 }, %struct.ltk500hd1829_cmd { i8 24, i8 69 }, %struct.ltk500hd1829_cmd { i8 25, i8 71 }, %struct.ltk500hd1829_cmd { i8 26, i8 73 }, %struct.ltk500hd1829_cmd { i8 27, i8 75 }, %struct.ltk500hd1829_cmd { i8 28, i8 77 }, %struct.ltk500hd1829_cmd { i8 29, i8 79 }, %struct.ltk500hd1829_cmd { i8 30, i8 81 }, %struct.ltk500hd1829_cmd { i8 31, i8 85 }, %struct.ltk500hd1829_cmd { i8 32, i8 83 }, %struct.ltk500hd1829_cmd { i8 33, i8 85 }, %struct.ltk500hd1829_cmd { i8 34, i8 85 }, %struct.ltk500hd1829_cmd { i8 35, i8 85 }, %struct.ltk500hd1829_cmd { i8 36, i8 85 }, %struct.ltk500hd1829_cmd { i8 37, i8 85 }, %struct.ltk500hd1829_cmd { i8 38, i8 85 }, %struct.ltk500hd1829_cmd { i8 39, i8 85 }, %struct.ltk500hd1829_cmd { i8 40, i8 85 }, %struct.ltk500hd1829_cmd { i8 41, i8 65 }, %struct.ltk500hd1829_cmd { i8 42, i8 85 }, %struct.ltk500hd1829_cmd { i8 43, i8 85 }, %struct.ltk500hd1829_cmd { i8 44, i8 87 }, %struct.ltk500hd1829_cmd { i8 45, i8 119 }, %struct.ltk500hd1829_cmd { i8 46, i8 79 }, %struct.ltk500hd1829_cmd { i8 47, i8 77 }, %struct.ltk500hd1829_cmd { i8 48, i8 75 }, %struct.ltk500hd1829_cmd { i8 49, i8 73 }, %struct.ltk500hd1829_cmd { i8 50, i8 71 }, %struct.ltk500hd1829_cmd { i8 51, i8 69 }, %struct.ltk500hd1829_cmd { i8 52, i8 65 }, %struct.ltk500hd1829_cmd { i8 53, i8 85 }, %struct.ltk500hd1829_cmd { i8 54, i8 83 }, %struct.ltk500hd1829_cmd { i8 55, i8 85 }, %struct.ltk500hd1829_cmd { i8 56, i8 85 }, %struct.ltk500hd1829_cmd { i8 57, i8 85 }, %struct.ltk500hd1829_cmd { i8 58, i8 85 }, %struct.ltk500hd1829_cmd { i8 59, i8 85 }, %struct.ltk500hd1829_cmd { i8 60, i8 85 }, %struct.ltk500hd1829_cmd { i8 61, i8 85 }, %struct.ltk500hd1829_cmd { i8 62, i8 85 }, %struct.ltk500hd1829_cmd { i8 63, i8 81 }, %struct.ltk500hd1829_cmd { i8 64, i8 85 }, %struct.ltk500hd1829_cmd { i8 65, i8 85 }, %struct.ltk500hd1829_cmd { i8 66, i8 87 }, %struct.ltk500hd1829_cmd { i8 67, i8 119 }, %struct.ltk500hd1829_cmd { i8 68, i8 78 }, %struct.ltk500hd1829_cmd { i8 69, i8 76 }, %struct.ltk500hd1829_cmd { i8 70, i8 74 }, %struct.ltk500hd1829_cmd { i8 71, i8 72 }, %struct.ltk500hd1829_cmd { i8 72, i8 70 }, %struct.ltk500hd1829_cmd { i8 73, i8 68 }, %struct.ltk500hd1829_cmd { i8 74, i8 64 }, %struct.ltk500hd1829_cmd { i8 75, i8 85 }, %struct.ltk500hd1829_cmd { i8 76, i8 82 }, %struct.ltk500hd1829_cmd { i8 77, i8 85 }, %struct.ltk500hd1829_cmd { i8 78, i8 85 }, %struct.ltk500hd1829_cmd { i8 79, i8 85 }, %struct.ltk500hd1829_cmd { i8 80, i8 85 }, %struct.ltk500hd1829_cmd { i8 81, i8 85 }, %struct.ltk500hd1829_cmd { i8 82, i8 85 }, %struct.ltk500hd1829_cmd { i8 83, i8 85 }, %struct.ltk500hd1829_cmd { i8 84, i8 85 }, %struct.ltk500hd1829_cmd { i8 85, i8 80 }, %struct.ltk500hd1829_cmd { i8 86, i8 85 }, %struct.ltk500hd1829_cmd { i8 87, i8 85 }, %struct.ltk500hd1829_cmd { i8 88, i8 64 }, %struct.ltk500hd1829_cmd { i8 89, i8 0 }, %struct.ltk500hd1829_cmd { i8 90, i8 0 }, %struct.ltk500hd1829_cmd { i8 91, i8 16 }, %struct.ltk500hd1829_cmd { i8 92, i8 9 }, %struct.ltk500hd1829_cmd { i8 93, i8 48 }, %struct.ltk500hd1829_cmd { i8 94, i8 1 }, %struct.ltk500hd1829_cmd { i8 95, i8 2 }, %struct.ltk500hd1829_cmd { i8 96, i8 48 }, %struct.ltk500hd1829_cmd { i8 97, i8 3 }, %struct.ltk500hd1829_cmd { i8 98, i8 4 }, %struct.ltk500hd1829_cmd { i8 99, i8 6 }, %struct.ltk500hd1829_cmd { i8 100, i8 106 }, %struct.ltk500hd1829_cmd { i8 101, i8 117 }, %struct.ltk500hd1829_cmd { i8 102, i8 15 }, %struct.ltk500hd1829_cmd { i8 103, i8 -77 }, %struct.ltk500hd1829_cmd { i8 104, i8 11 }, %struct.ltk500hd1829_cmd { i8 105, i8 6 }, %struct.ltk500hd1829_cmd { i8 106, i8 106 }, %struct.ltk500hd1829_cmd { i8 107, i8 16 }, %struct.ltk500hd1829_cmd { i8 108, i8 0 }, %struct.ltk500hd1829_cmd { i8 109, i8 4 }, %struct.ltk500hd1829_cmd { i8 110, i8 4 }, %struct.ltk500hd1829_cmd { i8 111, i8 -120 }, %struct.ltk500hd1829_cmd { i8 112, i8 0 }, %struct.ltk500hd1829_cmd { i8 113, i8 0 }, %struct.ltk500hd1829_cmd { i8 114, i8 6 }, %struct.ltk500hd1829_cmd { i8 115, i8 123 }, %struct.ltk500hd1829_cmd { i8 116, i8 0 }, %struct.ltk500hd1829_cmd { i8 117, i8 -68 }, %struct.ltk500hd1829_cmd { i8 118, i8 0 }, %struct.ltk500hd1829_cmd { i8 119, i8 5 }, %struct.ltk500hd1829_cmd { i8 120, i8 46 }, %struct.ltk500hd1829_cmd { i8 121, i8 0 }, %struct.ltk500hd1829_cmd { i8 122, i8 0 }, %struct.ltk500hd1829_cmd { i8 123, i8 0 }, %struct.ltk500hd1829_cmd { i8 124, i8 0 }, %struct.ltk500hd1829_cmd { i8 125, i8 3 }, %struct.ltk500hd1829_cmd { i8 126, i8 123 }, %struct.ltk500hd1829_cmd { i8 -32, i8 4 }, %struct.ltk500hd1829_cmd { i8 9, i8 16 }, %struct.ltk500hd1829_cmd { i8 43, i8 43 }, %struct.ltk500hd1829_cmd { i8 46, i8 68 }, %struct.ltk500hd1829_cmd { i8 -32, i8 0 }, %struct.ltk500hd1829_cmd { i8 -26, i8 2 }, %struct.ltk500hd1829_cmd { i8 -25, i8 2 }, %struct.ltk500hd1829_cmd { i8 53, i8 0 }], [108 x i8] zeroinitializer }, align 32
@ltk500hd1829_prepare._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write init cmds: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ltk500hd1829_prepare._entry_ptr.25 = internal global ptr @ltk500hd1829_prepare._entry.23, section ".printk_index", align 4
@ltk500hd1829_prepare._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.4, i32 338, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ltk500hd1829_prepare._entry_ptr.28 = internal global ptr @ltk500hd1829_prepare._entry.26, section ".printk_index", align 4
@ltk500hd1829_prepare._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ltk500hd1829_prepare._entry_ptr.31 = internal global ptr @ltk500hd1829_prepare._entry.29, section ".printk_index", align 4
@ltk500hd1829_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ltk500hd1829_unprepare\00", [41 x i8] zeroinitializer }, align 32
@ltk500hd1829_unprepare._entry_ptr = internal global ptr @ltk500hd1829_unprepare._entry, section ".printk_index", align 4
@ltk500hd1829_unprepare._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ltk500hd1829_unprepare._entry_ptr.36 = internal global ptr @ltk500hd1829_unprepare._entry.34, section ".printk_index", align 4
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 69217, i16 720, i16 770, i16 820, i16 870, i16 0, i16 1280, i16 1310, i16 1314, i16 1326, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 62, i16 110, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ltk500hd1829_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 386, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ltk500hd1829_get_modes\00", [41 x i8] zeroinitializer }, align 32
@ltk500hd1829_get_modes._entry_ptr = internal global ptr @ltk500hd1829_get_modes._entry, section ".printk_index", align 4
@ltk500hd1829_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 489, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltk500hd1829_remove\00", [44 x i8] zeroinitializer }, align 32
@ltk500hd1829_remove._entry_ptr = internal global ptr @ltk500hd1829_remove._entry, section ".printk_index", align 4
@ltk500hd1829_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to unprepare panel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ltk500hd1829_shutdown\00", [42 x i8] zeroinitializer }, align 32
@ltk500hd1829_shutdown._entry_ptr = internal global ptr @ltk500hd1829_shutdown._entry, section ".printk_index", align 4
@ltk500hd1829_shutdown._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ltk500hd1829_shutdown._entry_ptr.45 = internal global ptr @ltk500hd1829_shutdown._entry.43, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"ltk500hd1829_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 502, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 504, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"ltk500hd1829_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 496, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 416, i32 49 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 418, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 422, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 426, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 430, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 434, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"ltk500hd1829_funcs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 400, i32 37 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 458, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 310, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 315, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [10 x i8] c"init_code\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 42, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 331, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 338, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 347, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 280, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 284, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 362, i32 38 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 384, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 489, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 473, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [54 x i8] c"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 477, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_ltk500hd1829_driver_exit, ptr @__initcall__kmod_panel_leadtek_ltk500hd1829__306_511_ltk500hd1829_driver_init6, ptr @ltk500hd1829_driver_exit, ptr @ltk500hd1829_get_modes._entry, ptr @ltk500hd1829_get_modes._entry_ptr, ptr @ltk500hd1829_prepare._entry, ptr @ltk500hd1829_prepare._entry.20, ptr @ltk500hd1829_prepare._entry.23, ptr @ltk500hd1829_prepare._entry.26, ptr @ltk500hd1829_prepare._entry.29, ptr @ltk500hd1829_prepare._entry_ptr, ptr @ltk500hd1829_prepare._entry_ptr.22, ptr @ltk500hd1829_prepare._entry_ptr.25, ptr @ltk500hd1829_prepare._entry_ptr.28, ptr @ltk500hd1829_prepare._entry_ptr.31, ptr @ltk500hd1829_probe._entry, ptr @ltk500hd1829_probe._entry.12, ptr @ltk500hd1829_probe._entry.15, ptr @ltk500hd1829_probe._entry.8, ptr @ltk500hd1829_probe._entry_ptr, ptr @ltk500hd1829_probe._entry_ptr.10, ptr @ltk500hd1829_probe._entry_ptr.14, ptr @ltk500hd1829_probe._entry_ptr.17, ptr @ltk500hd1829_remove._entry, ptr @ltk500hd1829_remove._entry_ptr, ptr @ltk500hd1829_shutdown._entry, ptr @ltk500hd1829_shutdown._entry.43, ptr @ltk500hd1829_shutdown._entry_ptr, ptr @ltk500hd1829_shutdown._entry_ptr.45, ptr @ltk500hd1829_unprepare._entry, ptr @ltk500hd1829_unprepare._entry.34, ptr @ltk500hd1829_unprepare._entry_ptr, ptr @ltk500hd1829_unprepare._entry_ptr.36, ptr @ltk500hd1829_driver, ptr @.str, ptr @ltk500hd1829_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @ltk500hd1829_funcs, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @init_code, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @default_mode, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_prepare._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_code to i32), i32 436, i32 544, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_prepare._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_prepare._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_prepare._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_unprepare._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk500hd1829_shutdown._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk500hd1829_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @ltk500hd1829_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltk500hd1829_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @ltk500hd1829_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk500hd1829_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #4
  %reset_gpio = getelementptr inbounds %struct.ltk500hd1829, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %1 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset_gpio, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #4
  %vcc = getelementptr inbounds %struct.ltk500hd1829, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %vcc, align 4
  %cmp.i92 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end9
  %cmp.not = icmp eq ptr %call10, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then13.cleanup_crit_edge, label %do.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %5) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %call22 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #4
  %iovcc = getelementptr inbounds %struct.ltk500hd1829, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %iovcc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call22, ptr %iovcc, align 4
  %cmp.i93 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.end21
  %cmp28.not = icmp eq ptr %call22, inttoptr (i32 -517 to ptr)
  br i1 %cmp28.not, label %if.then25.cleanup_crit_edge, label %do.end32

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %7) #7
  br label %cleanup

if.end34:                                         ; preds = %if.end21
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %call.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %10 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %12 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2563, ptr %mode_flags, align 8
  %panel = getelementptr inbounds %struct.ltk500hd1829, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @ltk500hd1829_funcs, i32 noundef 16) #4
  %call38 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  tail call void @drm_panel_add(ptr noundef %panel) #4
  %call43 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call43) #7
  tail call void @drm_panel_remove(ptr noundef %panel) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.end41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end32, %if.then25.cleanup_crit_edge, %do.end19, %if.then13.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %call43, %do.end48 ], [ -12, %entry.cleanup_crit_edge ], [ %5, %do.end19 ], [ -517, %if.then13.cleanup_crit_edge ], [ %7, %do.end32 ], [ -517, %if.then25.cleanup_crit_edge ], [ %call38, %if.end34.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk500hd1829_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel.i = getelementptr inbounds %struct.ltk500hd1829, ptr %1, i32 0, i32 1
  %call1.i = tail call i32 @drm_panel_unprepare(ptr noundef %panel.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %call1.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call3.i = tail call i32 @drm_panel_disable(ptr noundef %panel.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.ltk500hd1829_shutdown.exit_crit_edge

if.end.i.ltk500hd1829_shutdown.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltk500hd1829_shutdown.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev9.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.44, i32 noundef %call3.i) #7
  br label %ltk500hd1829_shutdown.exit

ltk500hd1829_shutdown.exit:                       ; preds = %do.end8.i, %if.end.i.ltk500hd1829_shutdown.exit_crit_edge
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %ltk500hd1829_shutdown.exit.if.end_crit_edge

ltk500hd1829_shutdown.exit.if.end_crit_edge:      ; preds = %ltk500hd1829_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %ltk500hd1829_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %ltk500hd1829_shutdown.exit.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %panel.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltk500hd1829_shutdown(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.ltk500hd1829, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @drm_panel_unprepare(ptr noundef %panel) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %panel) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.44, i32 noundef %call3) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk500hd1829_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 36
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %vcc = getelementptr i8, ptr %panel, i32 28
  %4 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %call2) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %8 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iovcc, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %call6) #7
  br label %disable_vcc

if.end13:                                         ; preds = %if.end5
  %reset_gpio = getelementptr i8, ptr %panel, i32 24
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 218
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end13
  %i.077 = phi i32 [ 0, %if.end13 ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [218 x %struct.ltk500hd1829_cmd], ptr @init_code, i32 0, i32 %i.077
  %call16 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i76, ptr noundef %arrayidx, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %for.cond

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.24, i32 noundef %call16) #7
  br label %disable_iovcc

for.end:                                          ; preds = %for.cond
  %call24 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i76) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %if.end31

do.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.27, i32 noundef %call24) #7
  br label %disable_iovcc

if.end31:                                         ; preds = %for.end
  tail call void @msleep(i32 noundef 120) #4
  %call32 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i76) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %call32) #7
  br label %disable_iovcc

if.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

disable_iovcc:                                    ; preds = %do.end37, %do.end29, %do.end21
  %ret.0 = phi i32 [ %call16, %do.end21 ], [ %call24, %do.end29 ], [ %call32, %do.end37 ]
  %23 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iovcc, align 4
  %call42 = tail call i32 @regulator_disable(ptr noundef %24) #4
  br label %disable_vcc

disable_vcc:                                      ; preds = %disable_iovcc, %do.end11
  %ret.1 = phi i32 [ %call6, %do.end11 ], [ %ret.0, %disable_iovcc ]
  %25 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vcc, align 4
  %call44 = tail call i32 @regulator_disable(ptr noundef %26) #4
  br label %cleanup

cleanup:                                          ; preds = %disable_vcc, %if.end39, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.1, %disable_vcc ], [ 0, %if.end39 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk500hd1829_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 36
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %call2) #7
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %call6) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %if.end5.if.end13_crit_edge
  tail call void @msleep(i32 noundef 120) #4
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %8 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iovcc, align 4
  %call14 = tail call i32 @regulator_disable(ptr noundef %9) #4
  %vcc = getelementptr i8, ptr %panel, i32 28
  %10 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vcc, align 4
  %call15 = tail call i32 @regulator_disable(ptr noundef %11) #4
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk500hd1829_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call4 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef 720, i32 noundef 1280, i32 noundef %call4) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mode_set_name(ptr noundef nonnull %call1) #4
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 26
  %5 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %width_mm, align 2
  %conv5 = zext i16 %6 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %7 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 27
  %8 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height_mm, align 4
  %conv7 = zext i16 %9 to i32
  %height_mm9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %height_mm9, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_panel_leadtek_ltk500hd1829__306_511_ltk500hd1829_driver_init6, !1, !"__initcall__kmod_panel_leadtek_ltk500hd1829__306_511_ltk500hd1829_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 511, i32 1}
!2 = !{ptr @__exitcall_ltk500hd1829_driver_exit, !1, !"__exitcall_ltk500hd1829_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 513, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 514, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 515, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 504, i32 11}
!12 = !{ptr @ltk500hd1829_driver, !13, !"ltk500hd1829_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 502, i32 31}
!14 = !{ptr @ltk500hd1829_of_match, !15, !"ltk500hd1829_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 496, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 416, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 418, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ltk500hd1829_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ltk500hd1829_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 422, i32 37}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 426, i32 4}
!30 = !{ptr @ltk500hd1829_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ltk500hd1829_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 430, i32 39}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 434, i32 4}
!36 = !{ptr @ltk500hd1829_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ltk500hd1829_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 458, i32 3}
!40 = !{ptr @ltk500hd1829_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ltk500hd1829_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ltk500hd1829_funcs, !43, !"ltk500hd1829_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 400, i32 37}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 310, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ltk500hd1829_prepare._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ltk500hd1829_prepare._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 315, i32 3}
!51 = !{ptr @ltk500hd1829_prepare._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ltk500hd1829_prepare._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 331, i32 4}
!55 = !{ptr @ltk500hd1829_prepare._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ltk500hd1829_prepare._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 338, i32 3}
!59 = !{ptr @ltk500hd1829_prepare._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ltk500hd1829_prepare._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 347, i32 3}
!63 = !{ptr @ltk500hd1829_prepare._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ltk500hd1829_prepare._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @init_code, !66, !"init_code", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 42, i32 38}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 280, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ltk500hd1829_unprepare._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ltk500hd1829_unprepare._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 284, i32 3}
!74 = !{ptr @ltk500hd1829_unprepare._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ltk500hd1829_unprepare._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 384, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ltk500hd1829_get_modes._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ltk500hd1829_get_modes._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @default_mode, !82, !"default_mode", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 362, i32 38}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 489, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ltk500hd1829_remove._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ltk500hd1829_remove._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 473, i32 3}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ltk500hd1829_shutdown._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ltk500hd1829_shutdown._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c", i32 477, i32 3}
!95 = !{ptr @ltk500hd1829_shutdown._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ltk500hd1829_shutdown._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
