; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ltk050h3146w_desc = type { ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ltk050h3146w_cmd = type { i8, i8 }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.ltk050h3146w = type { ptr, %struct.drm_panel, ptr, ptr, ptr, ptr, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_leadtek_ltk050h3146w__303_669_ltk050h3146w_driver_init6 = internal global ptr @ltk050h3146w_driver_init, section ".initcall6.init", align 4
@ltk050h3146w_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltk050h3146w_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltk050h3146w_probe, ptr @ltk050h3146w_remove, ptr @ltk050h3146w_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_ltk050h3146w_driver_exit = internal global ptr @ltk050h3146w_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [88 x i8] c"panel_leadtek_ltk050h3146w.author=Heiko Stuebner <heiko.stuebner@theobroma-systems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [90 x i8] c"panel_leadtek_ltk050h3146w.description=DRM driver for Leadtek LTK050H3146W MIPI DSI panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [81 x i8] c"panel_leadtek_ltk050h3146w.file=drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [42 x i8] c"panel_leadtek_ltk050h3146w.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"panel-leadtek-ltk050h3146w\00", [37 x i8] zeroinitializer }, align 32
@ltk050h3146w_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"leadtek,ltk050h3146w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ltk050h3146w_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"leadtek,ltk050h3146w-a2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ltk050h3146w_a2_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ltk050h3146w_data = internal constant { %struct.ltk050h3146w_desc, [24 x i8] } { %struct.ltk050h3146w_desc { ptr @ltk050h3146w_mode, ptr @ltk050h3146w_init_sequence }, [24 x i8] zeroinitializer }, align 32
@ltk050h3146w_a2_data = internal constant { %struct.ltk050h3146w_desc, [24 x i8] } { %struct.ltk050h3146w_desc { ptr @ltk050h3146w_a2_mode, ptr @ltk050h3146w_a2_init_sequence }, [24 x i8] zeroinitializer }, align 32
@ltk050h3146w_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 64018, i16 720, i16 762, i16 770, i16 812, i16 0, i16 1280, i16 1292, i16 1296, i16 1314, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 62, i16 110, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\DF\93e\F8", [28 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\B0\01\03\02\00d\06\01", [24 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B2\00\B5", [29 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B3\00\B5", [29 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\B7\00\BF\00\00\BF\00", [25 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\B9\00\C4#\07", [27 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\BB\02\01$\00(\0F(\04\CC\CC\CC", [20 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BC\0F\04", [29 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BE\1E\F2", [29 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C0&\03", [29 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C1\00\12", [29 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\C3\04\02\02v\01\80\80", [24 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\C4$\80\B4\81\12\0F\16\00\00", [22 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\C8\7Frg]]PVAYWUp[_OG8#\08\7Frg]]PVAYWUp[_OG8#\08", [57 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\D0\1E\1FWXHJDF@\1FB\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F", [41 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\D1\1E\1FWXIKEGA\1FC\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F", [41 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\D2\1F\1E\17\18\07\05\0B\09\03\1F\01\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F", [41 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\D3\1F\1E\17\18\06\04\0A\08\02\1F\00\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F", [41 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\D4\00\00\00\0C\06 \01\02\00`\15\B00\03\04\00`r\0A\00`\08", [41 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\D5\00\06\06\000\00\00\00\00\00\BCP\00\05!\00`", [46 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\DD,\A3\00", [28 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\DE\02", [30 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B22\1C", [29 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\B7;p\00\04", [27 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C1\11", [30 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\BB!\22#$67", [25 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C2 8\1E\84", [27 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence.b.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\DE\00", [30 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 316, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set tear on: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ltk050h3146w_init_sequence\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltk050h3146w_init_sequence._entry_ptr = internal global ptr @ltk050h3146w_init_sequence._entry, section ".printk_index", align 4
@ltk050h3146w_a2_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 65595, i16 720, i16 762, i16 772, i16 832, i16 0, i16 1280, i16 1298, i16 1302, i16 1314, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 62, i16 110, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@page3_cmds = internal constant { [127 x %struct.ltk050h3146w_cmd], [34 x i8] } { [127 x %struct.ltk050h3146w_cmd] [%struct.ltk050h3146w_cmd { i8 1, i8 0 }, %struct.ltk050h3146w_cmd { i8 2, i8 0 }, %struct.ltk050h3146w_cmd { i8 3, i8 115 }, %struct.ltk050h3146w_cmd { i8 4, i8 0 }, %struct.ltk050h3146w_cmd { i8 5, i8 0 }, %struct.ltk050h3146w_cmd { i8 6, i8 10 }, %struct.ltk050h3146w_cmd { i8 7, i8 0 }, %struct.ltk050h3146w_cmd { i8 8, i8 0 }, %struct.ltk050h3146w_cmd { i8 9, i8 1 }, %struct.ltk050h3146w_cmd { i8 10, i8 0 }, %struct.ltk050h3146w_cmd { i8 11, i8 0 }, %struct.ltk050h3146w_cmd { i8 12, i8 1 }, %struct.ltk050h3146w_cmd { i8 13, i8 0 }, %struct.ltk050h3146w_cmd { i8 14, i8 0 }, %struct.ltk050h3146w_cmd { i8 15, i8 29 }, %struct.ltk050h3146w_cmd { i8 16, i8 29 }, %struct.ltk050h3146w_cmd { i8 17, i8 0 }, %struct.ltk050h3146w_cmd { i8 18, i8 0 }, %struct.ltk050h3146w_cmd { i8 19, i8 0 }, %struct.ltk050h3146w_cmd { i8 20, i8 0 }, %struct.ltk050h3146w_cmd { i8 21, i8 0 }, %struct.ltk050h3146w_cmd { i8 22, i8 0 }, %struct.ltk050h3146w_cmd { i8 23, i8 0 }, %struct.ltk050h3146w_cmd { i8 24, i8 0 }, %struct.ltk050h3146w_cmd { i8 25, i8 0 }, %struct.ltk050h3146w_cmd { i8 26, i8 0 }, %struct.ltk050h3146w_cmd { i8 27, i8 0 }, %struct.ltk050h3146w_cmd { i8 28, i8 0 }, %struct.ltk050h3146w_cmd { i8 29, i8 0 }, %struct.ltk050h3146w_cmd { i8 30, i8 64 }, %struct.ltk050h3146w_cmd { i8 31, i8 -128 }, %struct.ltk050h3146w_cmd { i8 32, i8 6 }, %struct.ltk050h3146w_cmd { i8 33, i8 2 }, %struct.ltk050h3146w_cmd { i8 34, i8 0 }, %struct.ltk050h3146w_cmd { i8 35, i8 0 }, %struct.ltk050h3146w_cmd { i8 36, i8 0 }, %struct.ltk050h3146w_cmd { i8 37, i8 0 }, %struct.ltk050h3146w_cmd { i8 38, i8 0 }, %struct.ltk050h3146w_cmd { i8 39, i8 0 }, %struct.ltk050h3146w_cmd { i8 40, i8 51 }, %struct.ltk050h3146w_cmd { i8 41, i8 3 }, %struct.ltk050h3146w_cmd { i8 42, i8 0 }, %struct.ltk050h3146w_cmd { i8 43, i8 0 }, %struct.ltk050h3146w_cmd { i8 44, i8 0 }, %struct.ltk050h3146w_cmd { i8 45, i8 0 }, %struct.ltk050h3146w_cmd { i8 46, i8 0 }, %struct.ltk050h3146w_cmd { i8 47, i8 0 }, %struct.ltk050h3146w_cmd { i8 48, i8 0 }, %struct.ltk050h3146w_cmd { i8 49, i8 0 }, %struct.ltk050h3146w_cmd { i8 50, i8 0 }, %struct.ltk050h3146w_cmd { i8 51, i8 0 }, %struct.ltk050h3146w_cmd { i8 52, i8 4 }, %struct.ltk050h3146w_cmd { i8 53, i8 0 }, %struct.ltk050h3146w_cmd { i8 54, i8 0 }, %struct.ltk050h3146w_cmd { i8 55, i8 0 }, %struct.ltk050h3146w_cmd { i8 56, i8 60 }, %struct.ltk050h3146w_cmd { i8 57, i8 53 }, %struct.ltk050h3146w_cmd { i8 58, i8 1 }, %struct.ltk050h3146w_cmd { i8 59, i8 64 }, %struct.ltk050h3146w_cmd { i8 60, i8 0 }, %struct.ltk050h3146w_cmd { i8 61, i8 1 }, %struct.ltk050h3146w_cmd { i8 62, i8 0 }, %struct.ltk050h3146w_cmd { i8 63, i8 0 }, %struct.ltk050h3146w_cmd { i8 64, i8 0 }, %struct.ltk050h3146w_cmd { i8 65, i8 -120 }, %struct.ltk050h3146w_cmd { i8 66, i8 0 }, %struct.ltk050h3146w_cmd { i8 67, i8 0 }, %struct.ltk050h3146w_cmd { i8 68, i8 31 }, %struct.ltk050h3146w_cmd { i8 80, i8 1 }, %struct.ltk050h3146w_cmd { i8 81, i8 35 }, %struct.ltk050h3146w_cmd { i8 82, i8 69 }, %struct.ltk050h3146w_cmd { i8 83, i8 103 }, %struct.ltk050h3146w_cmd { i8 84, i8 -119 }, %struct.ltk050h3146w_cmd { i8 85, i8 -85 }, %struct.ltk050h3146w_cmd { i8 86, i8 1 }, %struct.ltk050h3146w_cmd { i8 87, i8 35 }, %struct.ltk050h3146w_cmd { i8 88, i8 69 }, %struct.ltk050h3146w_cmd { i8 89, i8 103 }, %struct.ltk050h3146w_cmd { i8 90, i8 -119 }, %struct.ltk050h3146w_cmd { i8 91, i8 -85 }, %struct.ltk050h3146w_cmd { i8 92, i8 -51 }, %struct.ltk050h3146w_cmd { i8 93, i8 -17 }, %struct.ltk050h3146w_cmd { i8 94, i8 17 }, %struct.ltk050h3146w_cmd { i8 95, i8 1 }, %struct.ltk050h3146w_cmd { i8 96, i8 0 }, %struct.ltk050h3146w_cmd { i8 97, i8 21 }, %struct.ltk050h3146w_cmd { i8 98, i8 20 }, %struct.ltk050h3146w_cmd { i8 99, i8 14 }, %struct.ltk050h3146w_cmd { i8 100, i8 15 }, %struct.ltk050h3146w_cmd { i8 101, i8 12 }, %struct.ltk050h3146w_cmd { i8 102, i8 13 }, %struct.ltk050h3146w_cmd { i8 103, i8 6 }, %struct.ltk050h3146w_cmd { i8 104, i8 2 }, %struct.ltk050h3146w_cmd { i8 105, i8 7 }, %struct.ltk050h3146w_cmd { i8 106, i8 2 }, %struct.ltk050h3146w_cmd { i8 107, i8 2 }, %struct.ltk050h3146w_cmd { i8 108, i8 2 }, %struct.ltk050h3146w_cmd { i8 109, i8 2 }, %struct.ltk050h3146w_cmd { i8 110, i8 2 }, %struct.ltk050h3146w_cmd { i8 111, i8 2 }, %struct.ltk050h3146w_cmd { i8 112, i8 2 }, %struct.ltk050h3146w_cmd { i8 113, i8 2 }, %struct.ltk050h3146w_cmd { i8 114, i8 2 }, %struct.ltk050h3146w_cmd { i8 115, i8 2 }, %struct.ltk050h3146w_cmd { i8 116, i8 2 }, %struct.ltk050h3146w_cmd { i8 117, i8 1 }, %struct.ltk050h3146w_cmd { i8 118, i8 0 }, %struct.ltk050h3146w_cmd { i8 119, i8 20 }, %struct.ltk050h3146w_cmd { i8 120, i8 21 }, %struct.ltk050h3146w_cmd { i8 121, i8 14 }, %struct.ltk050h3146w_cmd { i8 122, i8 15 }, %struct.ltk050h3146w_cmd { i8 123, i8 12 }, %struct.ltk050h3146w_cmd { i8 124, i8 13 }, %struct.ltk050h3146w_cmd { i8 125, i8 6 }, %struct.ltk050h3146w_cmd { i8 126, i8 2 }, %struct.ltk050h3146w_cmd { i8 127, i8 7 }, %struct.ltk050h3146w_cmd { i8 -128, i8 2 }, %struct.ltk050h3146w_cmd { i8 -127, i8 2 }, %struct.ltk050h3146w_cmd { i8 -126, i8 2 }, %struct.ltk050h3146w_cmd { i8 -125, i8 2 }, %struct.ltk050h3146w_cmd { i8 -124, i8 2 }, %struct.ltk050h3146w_cmd { i8 -123, i8 2 }, %struct.ltk050h3146w_cmd { i8 -122, i8 2 }, %struct.ltk050h3146w_cmd { i8 -121, i8 2 }, %struct.ltk050h3146w_cmd { i8 -120, i8 2 }, %struct.ltk050h3146w_cmd { i8 -119, i8 2 }, %struct.ltk050h3146w_cmd { i8 -118, i8 2 }], [34 x i8] zeroinitializer }, align 32
@page4_cmds = internal constant { [12 x %struct.ltk050h3146w_cmd], [40 x i8] } { [12 x %struct.ltk050h3146w_cmd] [%struct.ltk050h3146w_cmd { i8 112, i8 0 }, %struct.ltk050h3146w_cmd { i8 113, i8 0 }, %struct.ltk050h3146w_cmd { i8 -126, i8 15 }, %struct.ltk050h3146w_cmd { i8 -124, i8 15 }, %struct.ltk050h3146w_cmd { i8 -123, i8 13 }, %struct.ltk050h3146w_cmd { i8 50, i8 -84 }, %struct.ltk050h3146w_cmd { i8 -116, i8 -128 }, %struct.ltk050h3146w_cmd { i8 60, i8 -11 }, %struct.ltk050h3146w_cmd { i8 -75, i8 7 }, %struct.ltk050h3146w_cmd { i8 49, i8 69 }, %struct.ltk050h3146w_cmd { i8 58, i8 36 }, %struct.ltk050h3146w_cmd { i8 -120, i8 51 }], [40 x i8] zeroinitializer }, align 32
@page1_cmds = internal constant { [47 x %struct.ltk050h3146w_cmd], [34 x i8] } { [47 x %struct.ltk050h3146w_cmd] [%struct.ltk050h3146w_cmd { i8 34, i8 10 }, %struct.ltk050h3146w_cmd { i8 49, i8 0 }, %struct.ltk050h3146w_cmd { i8 83, i8 -94 }, %struct.ltk050h3146w_cmd { i8 85, i8 -94 }, %struct.ltk050h3146w_cmd { i8 80, i8 -127 }, %struct.ltk050h3146w_cmd { i8 81, i8 -123 }, %struct.ltk050h3146w_cmd { i8 98, i8 13 }, %struct.ltk050h3146w_cmd { i8 -96, i8 0 }, %struct.ltk050h3146w_cmd { i8 -95, i8 26 }, %struct.ltk050h3146w_cmd { i8 -94, i8 40 }, %struct.ltk050h3146w_cmd { i8 -93, i8 19 }, %struct.ltk050h3146w_cmd { i8 -92, i8 22 }, %struct.ltk050h3146w_cmd { i8 -91, i8 41 }, %struct.ltk050h3146w_cmd { i8 -90, i8 29 }, %struct.ltk050h3146w_cmd { i8 -89, i8 30 }, %struct.ltk050h3146w_cmd { i8 -88, i8 -124 }, %struct.ltk050h3146w_cmd { i8 -87, i8 28 }, %struct.ltk050h3146w_cmd { i8 -86, i8 40 }, %struct.ltk050h3146w_cmd { i8 -85, i8 117 }, %struct.ltk050h3146w_cmd { i8 -84, i8 26 }, %struct.ltk050h3146w_cmd { i8 -83, i8 25 }, %struct.ltk050h3146w_cmd { i8 -82, i8 77 }, %struct.ltk050h3146w_cmd { i8 -81, i8 34 }, %struct.ltk050h3146w_cmd { i8 -80, i8 40 }, %struct.ltk050h3146w_cmd { i8 -79, i8 84 }, %struct.ltk050h3146w_cmd { i8 -78, i8 102 }, %struct.ltk050h3146w_cmd { i8 -77, i8 57 }, %struct.ltk050h3146w_cmd { i8 -64, i8 0 }, %struct.ltk050h3146w_cmd { i8 -63, i8 26 }, %struct.ltk050h3146w_cmd { i8 -62, i8 40 }, %struct.ltk050h3146w_cmd { i8 -61, i8 19 }, %struct.ltk050h3146w_cmd { i8 -60, i8 22 }, %struct.ltk050h3146w_cmd { i8 -59, i8 41 }, %struct.ltk050h3146w_cmd { i8 -58, i8 29 }, %struct.ltk050h3146w_cmd { i8 -57, i8 30 }, %struct.ltk050h3146w_cmd { i8 -56, i8 -124 }, %struct.ltk050h3146w_cmd { i8 -55, i8 28 }, %struct.ltk050h3146w_cmd { i8 -54, i8 40 }, %struct.ltk050h3146w_cmd { i8 -53, i8 117 }, %struct.ltk050h3146w_cmd { i8 -52, i8 26 }, %struct.ltk050h3146w_cmd { i8 -51, i8 25 }, %struct.ltk050h3146w_cmd { i8 -50, i8 77 }, %struct.ltk050h3146w_cmd { i8 -49, i8 34 }, %struct.ltk050h3146w_cmd { i8 -48, i8 40 }, %struct.ltk050h3146w_cmd { i8 -47, i8 84 }, %struct.ltk050h3146w_cmd { i8 -46, i8 102 }, %struct.ltk050h3146w_cmd { i8 -45, i8 57 }], [34 x i8] zeroinitializer }, align 32
@ltk050h3146w_a2_init_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.30, i32 403, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to select page 0: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ltk050h3146w_a2_init_sequence\00", [34 x i8] zeroinitializer }, align 32
@ltk050h3146w_a2_init_sequence._entry_ptr = internal global ptr @ltk050h3146w_a2_init_sequence._entry, section ".printk_index", align 4
@ltk050h3146w_a2_init_sequence._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.34, ptr @.str.30, i32 410, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@ltk050h3146w_a2_init_sequence._entry_ptr.36 = internal global ptr @ltk050h3146w_a2_init_sequence._entry.35, section ".printk_index", align 4
@ltk050h3146w_a2_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.30, i32 361, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to select page %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ltk050h3146w_a2_write_page\00", [37 x i8] zeroinitializer }, align 32
@ltk050h3146w_a2_write_page._entry_ptr = internal global ptr @ltk050h3146w_a2_write_page._entry, section ".printk_index", align 4
@ltk050h3146w_a2_write_page._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.30, i32 369, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to write page %d init cmds: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ltk050h3146w_a2_write_page._entry_ptr.41 = internal global ptr @ltk050h3146w_a2_write_page._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.30, i32 569, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get reset gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ltk050h3146w_probe\00", [45 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry_ptr = internal global ptr @ltk050h3146w_probe._entry, section ".printk_index", align 4
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.30, i32 577, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request vci regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry_ptr.48 = internal global ptr @ltk050h3146w_probe._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.30, i32 585, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request iovcc regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry_ptr.52 = internal global ptr @ltk050h3146w_probe._entry.50, section ".printk_index", align 4
@ltk050h3146w_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ltk050h3146w_prepare, ptr null, ptr null, ptr @ltk050h3146w_unprepare, ptr @ltk050h3146w_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.30, i32 609, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi_dsi_attach failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ltk050h3146w_probe._entry_ptr.55 = internal global ptr @ltk050h3146w_probe._entry.53, section ".printk_index", align 4
@ltk050h3146w_prepare.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.57, ptr @.str.30, ptr @.str.58, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"panel_leadtek_ltk050h3146w\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ltk050h3146w_prepare\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Resetting the panel\0A\00", [43 x i8] zeroinitializer }, align 32
@ltk050h3146w_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.30, i32 479, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable vci supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ltk050h3146w_prepare._entry_ptr = internal global ptr @ltk050h3146w_prepare._entry, section ".printk_index", align 4
@ltk050h3146w_prepare._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.30, i32 484, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable iovcc supply: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ltk050h3146w_prepare._entry_ptr.62 = internal global ptr @ltk050h3146w_prepare._entry.60, section ".printk_index", align 4
@ltk050h3146w_prepare._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.30, i32 495, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Panel init sequence failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ltk050h3146w_prepare._entry_ptr.65 = internal global ptr @ltk050h3146w_prepare._entry.63, section ".printk_index", align 4
@ltk050h3146w_prepare._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.30, i32 501, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ltk050h3146w_prepare._entry_ptr.68 = internal global ptr @ltk050h3146w_prepare._entry.66, section ".printk_index", align 4
@ltk050h3146w_prepare._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.30, i32 510, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ltk050h3146w_prepare._entry_ptr.71 = internal global ptr @ltk050h3146w_prepare._entry.69, section ".printk_index", align 4
@ltk050h3146w_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.30, i32 449, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ltk050h3146w_unprepare\00", [41 x i8] zeroinitializer }, align 32
@ltk050h3146w_unprepare._entry_ptr = internal global ptr @ltk050h3146w_unprepare._entry, section ".printk_index", align 4
@ltk050h3146w_unprepare._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.30, i32 455, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ltk050h3146w_unprepare._entry_ptr.76 = internal global ptr @ltk050h3146w_unprepare._entry.74, section ".printk_index", align 4
@ltk050h3146w_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.30, i32 640, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltk050h3146w_remove\00", [44 x i8] zeroinitializer }, align 32
@ltk050h3146w_remove._entry_ptr = internal global ptr @ltk050h3146w_remove._entry, section ".printk_index", align 4
@ltk050h3146w_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.30, i32 624, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to unprepare panel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ltk050h3146w_shutdown\00", [42 x i8] zeroinitializer }, align 32
@ltk050h3146w_shutdown._entry_ptr = internal global ptr @ltk050h3146w_shutdown._entry, section ".printk_index", align 4
@ltk050h3146w_shutdown._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.30, i32 628, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ltk050h3146w_shutdown._entry_ptr.83 = internal global ptr @ltk050h3146w_shutdown._entry.81, section ".printk_index", align 4
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"ltk050h3146w_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 660, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 662, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"ltk050h3146w_of_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 647, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"ltk050h3146w_data\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 339, i32 39 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"ltk050h3146w_a2_data\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 433, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"ltk050h3146w_mode\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 325, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 264, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 265, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 267, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 268, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 269, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 271, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 272, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 274, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 275, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 276, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 277, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 278, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 280, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 282, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 287, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 290, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 293, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 296, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 299, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 302, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 305, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 306, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 307, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 308, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 309, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 310, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 311, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 312, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 316, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [21 x i8] c"ltk050h3146w_a2_mode\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 419, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"page3_cmds\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 96, i32 38 }
@___asan_gen_.210 = private unnamed_addr constant [11 x i8] c"page4_cmds\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 226, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant [11 x i8] c"page1_cmds\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 42, i32 38 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 403, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 410, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 361, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 369, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 567, i32 49 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 569, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 573, i32 37 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 577, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 581, i32 39 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 585, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c"ltk050h3146w_funcs\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 547, i32 37 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 609, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 476, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 479, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 484, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 495, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 501, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 510, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 449, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 455, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 640, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 624, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [54 x i8] c"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 628, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_ltk050h3146w_driver_exit, ptr @__initcall__kmod_panel_leadtek_ltk050h3146w__303_669_ltk050h3146w_driver_init6, ptr @ltk050h3146w_a2_init_sequence._entry, ptr @ltk050h3146w_a2_init_sequence._entry.35, ptr @ltk050h3146w_a2_init_sequence._entry_ptr, ptr @ltk050h3146w_a2_init_sequence._entry_ptr.36, ptr @ltk050h3146w_a2_write_page._entry, ptr @ltk050h3146w_a2_write_page._entry.39, ptr @ltk050h3146w_a2_write_page._entry_ptr, ptr @ltk050h3146w_a2_write_page._entry_ptr.41, ptr @ltk050h3146w_driver_exit, ptr @ltk050h3146w_init_sequence._entry, ptr @ltk050h3146w_init_sequence._entry_ptr, ptr @ltk050h3146w_prepare._entry, ptr @ltk050h3146w_prepare._entry.60, ptr @ltk050h3146w_prepare._entry.63, ptr @ltk050h3146w_prepare._entry.66, ptr @ltk050h3146w_prepare._entry.69, ptr @ltk050h3146w_prepare._entry_ptr, ptr @ltk050h3146w_prepare._entry_ptr.62, ptr @ltk050h3146w_prepare._entry_ptr.65, ptr @ltk050h3146w_prepare._entry_ptr.68, ptr @ltk050h3146w_prepare._entry_ptr.71, ptr @ltk050h3146w_probe._entry, ptr @ltk050h3146w_probe._entry.46, ptr @ltk050h3146w_probe._entry.50, ptr @ltk050h3146w_probe._entry.53, ptr @ltk050h3146w_probe._entry_ptr, ptr @ltk050h3146w_probe._entry_ptr.48, ptr @ltk050h3146w_probe._entry_ptr.52, ptr @ltk050h3146w_probe._entry_ptr.55, ptr @ltk050h3146w_remove._entry, ptr @ltk050h3146w_remove._entry_ptr, ptr @ltk050h3146w_shutdown._entry, ptr @ltk050h3146w_shutdown._entry.81, ptr @ltk050h3146w_shutdown._entry_ptr, ptr @ltk050h3146w_shutdown._entry_ptr.83, ptr @ltk050h3146w_unprepare._entry, ptr @ltk050h3146w_unprepare._entry.74, ptr @ltk050h3146w_unprepare._entry_ptr, ptr @ltk050h3146w_unprepare._entry_ptr.76, ptr @ltk050h3146w_driver, ptr @.str, ptr @ltk050h3146w_of_match, ptr @ltk050h3146w_data, ptr @ltk050h3146w_a2_data, ptr @ltk050h3146w_mode, ptr @ltk050h3146w_init_sequence.b, ptr @ltk050h3146w_init_sequence.b.1, ptr @ltk050h3146w_init_sequence.b.2, ptr @ltk050h3146w_init_sequence.b.3, ptr @ltk050h3146w_init_sequence.b.4, ptr @ltk050h3146w_init_sequence.b.5, ptr @ltk050h3146w_init_sequence.b.6, ptr @ltk050h3146w_init_sequence.b.7, ptr @ltk050h3146w_init_sequence.b.8, ptr @ltk050h3146w_init_sequence.b.9, ptr @ltk050h3146w_init_sequence.b.10, ptr @ltk050h3146w_init_sequence.b.11, ptr @ltk050h3146w_init_sequence.b.12, ptr @ltk050h3146w_init_sequence.b.13, ptr @ltk050h3146w_init_sequence.b.14, ptr @ltk050h3146w_init_sequence.b.15, ptr @ltk050h3146w_init_sequence.b.16, ptr @ltk050h3146w_init_sequence.b.17, ptr @ltk050h3146w_init_sequence.b.18, ptr @ltk050h3146w_init_sequence.b.19, ptr @ltk050h3146w_init_sequence.b.20, ptr @ltk050h3146w_init_sequence.b.21, ptr @ltk050h3146w_init_sequence.b.22, ptr @ltk050h3146w_init_sequence.b.23, ptr @ltk050h3146w_init_sequence.b.24, ptr @ltk050h3146w_init_sequence.b.25, ptr @ltk050h3146w_init_sequence.b.26, ptr @ltk050h3146w_init_sequence.b.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ltk050h3146w_a2_mode, ptr @page3_cmds, ptr @page4_cmds, ptr @page1_cmds, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @ltk050h3146w_funcs, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_a2_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence.b.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_init_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_a2_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page3_cmds to i32), i32 254, i32 288, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page4_cmds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page1_cmds to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_a2_init_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_a2_init_sequence._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_a2_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_a2_write_page._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_prepare._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_prepare._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_prepare._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_prepare._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_unprepare._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltk050h3146w_shutdown._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk050h3146w_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @ltk050h3146w_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltk050h3146w_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @ltk050h3146w_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk050h3146w_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %panel_desc = getelementptr inbounds %struct.ltk050h3146w, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %panel_desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %panel_desc, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.ltk050h3146w, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #8
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.45) #5
  %vci = getelementptr inbounds %struct.ltk050h3146w, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %vci to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %vci, align 4
  %cmp.i99 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end13
  %cmp.not = icmp eq ptr %call14, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then17.cleanup_crit_edge, label %do.end23

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %6) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %call26 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.49) #5
  %iovcc = getelementptr inbounds %struct.ltk050h3146w, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %iovcc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call26, ptr %iovcc, align 4
  %cmp.i100 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %if.then29, label %if.end38

if.then29:                                        ; preds = %if.end25
  %cmp32.not = icmp eq ptr %call26, inttoptr (i32 -517 to ptr)
  br i1 %cmp32.not, label %if.then29.cleanup_crit_edge, label %do.end36

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %8) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %call.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %11 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %13 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2563, ptr %mode_flags, align 8
  %panel = getelementptr inbounds %struct.ltk050h3146w, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @ltk050h3146w_funcs, i32 noundef 16) #5
  %call42 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  tail call void @drm_panel_add(ptr noundef %panel) #5
  %call47 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end52, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %call47) #8
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end45.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.end36, %if.then29.cleanup_crit_edge, %do.end23, %if.then17.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %call47, %do.end52 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %6, %do.end23 ], [ -517, %if.then17.cleanup_crit_edge ], [ %8, %do.end36 ], [ -517, %if.then29.cleanup_crit_edge ], [ %call42, %if.end38.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk050h3146w_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel.i = getelementptr inbounds %struct.ltk050h3146w, ptr %1, i32 0, i32 1
  %call1.i = tail call i32 @drm_panel_unprepare(ptr noundef %panel.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79, i32 noundef %call1.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call3.i = tail call i32 @drm_panel_disable(ptr noundef %panel.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.ltk050h3146w_shutdown.exit_crit_edge

if.end.i.ltk050h3146w_shutdown.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltk050h3146w_shutdown.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev9.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.82, i32 noundef %call3.i) #8
  br label %ltk050h3146w_shutdown.exit

ltk050h3146w_shutdown.exit:                       ; preds = %do.end8.i, %if.end.i.ltk050h3146w_shutdown.exit_crit_edge
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %ltk050h3146w_shutdown.exit.if.end_crit_edge

ltk050h3146w_shutdown.exit.if.end_crit_edge:      ; preds = %ltk050h3146w_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %ltk050h3146w_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %ltk050h3146w_shutdown.exit.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %panel.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltk050h3146w_shutdown(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.ltk050h3146w, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @drm_panel_unprepare(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.82, i32 noundef %call3) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk050h3146w_init_sequence(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup308_crit_edge, label %do.body3

entry.cleanup308_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body3:                                         ; preds = %entry
  %call5 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.1, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body3.cleanup308_crit_edge, label %do.body14

do.body3.cleanup308_crit_edge:                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body14:                                        ; preds = %do.body3
  %call16 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.2, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body14.cleanup308_crit_edge, label %do.body25

do.body14.cleanup308_crit_edge:                   ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body25:                                        ; preds = %do.body14
  %call27 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.3, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.body25.cleanup308_crit_edge, label %do.body36

do.body25.cleanup308_crit_edge:                   ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body36:                                        ; preds = %do.body25
  %call38 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.4, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.body36.cleanup308_crit_edge, label %do.body47

do.body36.cleanup308_crit_edge:                   ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body47:                                        ; preds = %do.body36
  %call49 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.5, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.body47.cleanup308_crit_edge, label %do.body58

do.body47.cleanup308_crit_edge:                   ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body58:                                        ; preds = %do.body47
  %call60 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.6, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.body58.cleanup308_crit_edge, label %do.body69

do.body58.cleanup308_crit_edge:                   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body69:                                        ; preds = %do.body58
  %call71 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.7, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.body69.cleanup308_crit_edge, label %do.body80

do.body69.cleanup308_crit_edge:                   ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body80:                                        ; preds = %do.body69
  %call82 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.8, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.body80.cleanup308_crit_edge, label %do.body91

do.body80.cleanup308_crit_edge:                   ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body91:                                        ; preds = %do.body80
  %call93 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.9, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.body91.cleanup308_crit_edge, label %do.body102

do.body91.cleanup308_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body102:                                       ; preds = %do.body91
  %call104 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.10, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.body102.cleanup308_crit_edge, label %do.body113

do.body102.cleanup308_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body113:                                       ; preds = %do.body102
  %call115 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.11, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %do.body113.cleanup308_crit_edge, label %do.body124

do.body113.cleanup308_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body124:                                       ; preds = %do.body113
  %call126 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.12, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %do.body124.cleanup308_crit_edge, label %do.body135

do.body124.cleanup308_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body135:                                       ; preds = %do.body124
  %call137 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.13, i32 noundef 39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %do.body135.cleanup308_crit_edge, label %do.body146

do.body135.cleanup308_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body146:                                       ; preds = %do.body135
  %call148 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.14, i32 noundef 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %do.body146.cleanup308_crit_edge, label %do.body157

do.body146.cleanup308_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body157:                                       ; preds = %do.body146
  %call159 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.15, i32 noundef 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %do.body157.cleanup308_crit_edge, label %do.body168

do.body157.cleanup308_crit_edge:                  ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body168:                                       ; preds = %do.body157
  %call170 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.16, i32 noundef 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %do.body168.cleanup308_crit_edge, label %do.body179

do.body168.cleanup308_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body179:                                       ; preds = %do.body168
  %call181 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.17, i32 noundef 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %do.body179.cleanup308_crit_edge, label %do.body190

do.body179.cleanup308_crit_edge:                  ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body190:                                       ; preds = %do.body179
  %call192 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.18, i32 noundef 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %do.body190.cleanup308_crit_edge, label %do.body201

do.body190.cleanup308_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body201:                                       ; preds = %do.body190
  %call203 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.19, i32 noundef 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %do.body201.cleanup308_crit_edge, label %do.body212

do.body201.cleanup308_crit_edge:                  ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body212:                                       ; preds = %do.body201
  %call214 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.20, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %do.body212.cleanup308_crit_edge, label %do.body223

do.body212.cleanup308_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body223:                                       ; preds = %do.body212
  %call225 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.21, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %cmp226 = icmp slt i32 %call225, 0
  br i1 %cmp226, label %do.body223.cleanup308_crit_edge, label %do.body234

do.body223.cleanup308_crit_edge:                  ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body234:                                       ; preds = %do.body223
  %call236 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.22, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %do.body234.cleanup308_crit_edge, label %do.body245

do.body234.cleanup308_crit_edge:                  ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body245:                                       ; preds = %do.body234
  %call247 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.23, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %cmp248 = icmp slt i32 %call247, 0
  br i1 %cmp248, label %do.body245.cleanup308_crit_edge, label %do.body256

do.body245.cleanup308_crit_edge:                  ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body256:                                       ; preds = %do.body245
  %call258 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.24, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259 = icmp slt i32 %call258, 0
  br i1 %cmp259, label %do.body256.cleanup308_crit_edge, label %do.body267

do.body256.cleanup308_crit_edge:                  ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body267:                                       ; preds = %do.body256
  %call269 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.25, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %cmp270 = icmp slt i32 %call269, 0
  br i1 %cmp270, label %do.body267.cleanup308_crit_edge, label %do.body278

do.body267.cleanup308_crit_edge:                  ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body278:                                       ; preds = %do.body267
  %call280 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.26, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %cmp281 = icmp slt i32 %call280, 0
  br i1 %cmp281, label %do.body278.cleanup308_crit_edge, label %do.body289

do.body278.cleanup308_crit_edge:                  ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.body289:                                       ; preds = %do.body278
  %call291 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @ltk050h3146w_init_sequence.b.27, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %cmp292 = icmp slt i32 %call291, 0
  br i1 %cmp292, label %do.body289.cleanup308_crit_edge, label %do.end299

do.body289.cleanup308_crit_edge:                  ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup308

do.end299:                                        ; preds = %do.body289
  %call300 = tail call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %add.ptr.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %cmp301 = icmp slt i32 %call300, 0
  br i1 %cmp301, label %do.end305, label %if.end307

do.end305:                                        ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %call300) #8
  br label %cleanup308

if.end307:                                        ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 60) #5
  br label %cleanup308

cleanup308:                                       ; preds = %if.end307, %do.end305, %do.body289.cleanup308_crit_edge, %do.body278.cleanup308_crit_edge, %do.body267.cleanup308_crit_edge, %do.body256.cleanup308_crit_edge, %do.body245.cleanup308_crit_edge, %do.body234.cleanup308_crit_edge, %do.body223.cleanup308_crit_edge, %do.body212.cleanup308_crit_edge, %do.body201.cleanup308_crit_edge, %do.body190.cleanup308_crit_edge, %do.body179.cleanup308_crit_edge, %do.body168.cleanup308_crit_edge, %do.body157.cleanup308_crit_edge, %do.body146.cleanup308_crit_edge, %do.body135.cleanup308_crit_edge, %do.body124.cleanup308_crit_edge, %do.body113.cleanup308_crit_edge, %do.body102.cleanup308_crit_edge, %do.body91.cleanup308_crit_edge, %do.body80.cleanup308_crit_edge, %do.body69.cleanup308_crit_edge, %do.body58.cleanup308_crit_edge, %do.body47.cleanup308_crit_edge, %do.body36.cleanup308_crit_edge, %do.body25.cleanup308_crit_edge, %do.body14.cleanup308_crit_edge, %do.body3.cleanup308_crit_edge, %entry.cleanup308_crit_edge
  %retval.28 = phi i32 [ %call300, %do.end305 ], [ 0, %if.end307 ], [ %call291, %do.body289.cleanup308_crit_edge ], [ %call280, %do.body278.cleanup308_crit_edge ], [ %call269, %do.body267.cleanup308_crit_edge ], [ %call258, %do.body256.cleanup308_crit_edge ], [ %call247, %do.body245.cleanup308_crit_edge ], [ %call236, %do.body234.cleanup308_crit_edge ], [ %call225, %do.body223.cleanup308_crit_edge ], [ %call214, %do.body212.cleanup308_crit_edge ], [ %call203, %do.body201.cleanup308_crit_edge ], [ %call192, %do.body190.cleanup308_crit_edge ], [ %call181, %do.body179.cleanup308_crit_edge ], [ %call170, %do.body168.cleanup308_crit_edge ], [ %call159, %do.body157.cleanup308_crit_edge ], [ %call148, %do.body146.cleanup308_crit_edge ], [ %call137, %do.body135.cleanup308_crit_edge ], [ %call126, %do.body124.cleanup308_crit_edge ], [ %call115, %do.body113.cleanup308_crit_edge ], [ %call104, %do.body102.cleanup308_crit_edge ], [ %call93, %do.body91.cleanup308_crit_edge ], [ %call82, %do.body80.cleanup308_crit_edge ], [ %call71, %do.body69.cleanup308_crit_edge ], [ %call60, %do.body58.cleanup308_crit_edge ], [ %call49, %do.body47.cleanup308_crit_edge ], [ %call38, %do.body36.cleanup308_crit_edge ], [ %call27, %do.body25.cleanup308_crit_edge ], [ %call16, %do.body14.cleanup308_crit_edge ], [ %call5, %do.body3.cleanup308_crit_edge ], [ %call2, %entry.cleanup308_crit_edge ]
  ret i32 %retval.28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk050h3146w_a2_init_sequence(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  %d.i = alloca [3 x i8], align 1
  %d.i.i58 = alloca [3 x i8], align 1
  %d.i.i41 = alloca [3 x i8], align 1
  %d.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d.i.i) #5
  %2 = getelementptr inbounds [3 x i8], ptr %d.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %d.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -104, ptr %d.i.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -127, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %3, align 1
  %call2.i.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -1, ptr noundef nonnull %d.i.i, i32 noundef 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.37, i32 noundef 3, i32 noundef %call2.i.i) #8
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %if.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ltk050h3146w_cmd, ptr @page3_cmds, i32 %i.027.i
  %call4.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %for.cond.i

do.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.40, i32 noundef 3, i32 noundef %call4.i) #8
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %12, i32 -8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d.i.i41) #5
  %13 = getelementptr inbounds [3 x i8], ptr %d.i.i41, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %d.i.i41, i32 0, i32 2
  %15 = ptrtoint ptr %d.i.i41 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -104, ptr %d.i.i41, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -127, ptr %13, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %14, align 1
  %call2.i.i43 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i42, i8 noundef zeroext -1, ptr noundef nonnull %d.i.i41, i32 noundef 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d.i.i41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i43)
  %cmp.i44 = icmp slt i32 %call2.i.i43, 0
  br i1 %cmp.i44, label %do.end.i46, label %for.body.i54.preheader

for.body.i54.preheader:                           ; preds = %if.end
  %call4.i52 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef nonnull @page4_cmds, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52)
  %cmp5.i53 = icmp slt i32 %call4.i52, 0
  br i1 %cmp5.i53, label %for.body.i54.preheader.do.end9.i55_crit_edge, label %for.cond.i49

for.body.i54.preheader.do.end9.i55_crit_edge:     ; preds = %for.body.i54.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

do.end.i46:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.37, i32 noundef 4, i32 noundef %call2.i.i43) #8
  br label %cleanup

for.cond.i49:                                     ; preds = %for.body.i54.preheader
  %call4.i52.1 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 1), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.1)
  %cmp5.i53.1 = icmp slt i32 %call4.i52.1, 0
  br i1 %cmp5.i53.1, label %for.cond.i49.do.end9.i55_crit_edge, label %for.cond.i49.1

for.cond.i49.do.end9.i55_crit_edge:               ; preds = %for.cond.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.1:                                   ; preds = %for.cond.i49
  %call4.i52.2 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 2), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.2)
  %cmp5.i53.2 = icmp slt i32 %call4.i52.2, 0
  br i1 %cmp5.i53.2, label %for.cond.i49.1.do.end9.i55_crit_edge, label %for.cond.i49.2

for.cond.i49.1.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.2:                                   ; preds = %for.cond.i49.1
  %call4.i52.3 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 3), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.3)
  %cmp5.i53.3 = icmp slt i32 %call4.i52.3, 0
  br i1 %cmp5.i53.3, label %for.cond.i49.2.do.end9.i55_crit_edge, label %for.cond.i49.3

for.cond.i49.2.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.3:                                   ; preds = %for.cond.i49.2
  %call4.i52.4 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 4), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.4)
  %cmp5.i53.4 = icmp slt i32 %call4.i52.4, 0
  br i1 %cmp5.i53.4, label %for.cond.i49.3.do.end9.i55_crit_edge, label %for.cond.i49.4

for.cond.i49.3.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.4:                                   ; preds = %for.cond.i49.3
  %call4.i52.5 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 5), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.5)
  %cmp5.i53.5 = icmp slt i32 %call4.i52.5, 0
  br i1 %cmp5.i53.5, label %for.cond.i49.4.do.end9.i55_crit_edge, label %for.cond.i49.5

for.cond.i49.4.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.5:                                   ; preds = %for.cond.i49.4
  %call4.i52.6 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 6), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.6)
  %cmp5.i53.6 = icmp slt i32 %call4.i52.6, 0
  br i1 %cmp5.i53.6, label %for.cond.i49.5.do.end9.i55_crit_edge, label %for.cond.i49.6

for.cond.i49.5.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.6:                                   ; preds = %for.cond.i49.5
  %call4.i52.7 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 7), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.7)
  %cmp5.i53.7 = icmp slt i32 %call4.i52.7, 0
  br i1 %cmp5.i53.7, label %for.cond.i49.6.do.end9.i55_crit_edge, label %for.cond.i49.7

for.cond.i49.6.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.7:                                   ; preds = %for.cond.i49.6
  %call4.i52.8 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 8), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.8)
  %cmp5.i53.8 = icmp slt i32 %call4.i52.8, 0
  br i1 %cmp5.i53.8, label %for.cond.i49.7.do.end9.i55_crit_edge, label %for.cond.i49.8

for.cond.i49.7.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.8:                                   ; preds = %for.cond.i49.7
  %call4.i52.9 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 9), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.9)
  %cmp5.i53.9 = icmp slt i32 %call4.i52.9, 0
  br i1 %cmp5.i53.9, label %for.cond.i49.8.do.end9.i55_crit_edge, label %for.cond.i49.9

for.cond.i49.8.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.9:                                   ; preds = %for.cond.i49.8
  %call4.i52.10 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 10), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.10)
  %cmp5.i53.10 = icmp slt i32 %call4.i52.10, 0
  br i1 %cmp5.i53.10, label %for.cond.i49.9.do.end9.i55_crit_edge, label %for.cond.i49.10

for.cond.i49.9.do.end9.i55_crit_edge:             ; preds = %for.cond.i49.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.10:                                  ; preds = %for.cond.i49.9
  %call4.i52.11 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42, ptr noundef getelementptr inbounds ([12 x %struct.ltk050h3146w_cmd], ptr @page4_cmds, i32 0, i32 11), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52.11)
  %cmp5.i53.11 = icmp slt i32 %call4.i52.11, 0
  br i1 %cmp5.i53.11, label %for.cond.i49.10.do.end9.i55_crit_edge, label %for.cond.i49.11

for.cond.i49.10.do.end9.i55_crit_edge:            ; preds = %for.cond.i49.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55

for.cond.i49.11:                                  ; preds = %for.cond.i49.10
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %21, i32 -8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d.i.i58) #5
  %22 = getelementptr inbounds [3 x i8], ptr %d.i.i58, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %d.i.i58, i32 0, i32 2
  %24 = ptrtoint ptr %d.i.i58 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -104, ptr %d.i.i58, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -127, ptr %22, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %23, align 1
  %call2.i.i60 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i59, i8 noundef zeroext -1, ptr noundef nonnull %d.i.i58, i32 noundef 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d.i.i58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i60)
  %cmp.i61 = icmp slt i32 %call2.i.i60, 0
  br i1 %cmp.i61, label %do.end.i63, label %for.cond.i49.11.for.body.i71_crit_edge

for.cond.i49.11.for.body.i71_crit_edge:           ; preds = %for.cond.i49.11
  br label %for.body.i71

do.end9.i55:                                      ; preds = %for.cond.i49.10.do.end9.i55_crit_edge, %for.cond.i49.9.do.end9.i55_crit_edge, %for.cond.i49.8.do.end9.i55_crit_edge, %for.cond.i49.7.do.end9.i55_crit_edge, %for.cond.i49.6.do.end9.i55_crit_edge, %for.cond.i49.5.do.end9.i55_crit_edge, %for.cond.i49.4.do.end9.i55_crit_edge, %for.cond.i49.3.do.end9.i55_crit_edge, %for.cond.i49.2.do.end9.i55_crit_edge, %for.cond.i49.1.do.end9.i55_crit_edge, %for.cond.i49.do.end9.i55_crit_edge, %for.body.i54.preheader.do.end9.i55_crit_edge
  %call4.i52.lcssa = phi i32 [ %call4.i52, %for.body.i54.preheader.do.end9.i55_crit_edge ], [ %call4.i52.1, %for.cond.i49.do.end9.i55_crit_edge ], [ %call4.i52.2, %for.cond.i49.1.do.end9.i55_crit_edge ], [ %call4.i52.3, %for.cond.i49.2.do.end9.i55_crit_edge ], [ %call4.i52.4, %for.cond.i49.3.do.end9.i55_crit_edge ], [ %call4.i52.5, %for.cond.i49.4.do.end9.i55_crit_edge ], [ %call4.i52.6, %for.cond.i49.5.do.end9.i55_crit_edge ], [ %call4.i52.7, %for.cond.i49.6.do.end9.i55_crit_edge ], [ %call4.i52.8, %for.cond.i49.7.do.end9.i55_crit_edge ], [ %call4.i52.9, %for.cond.i49.8.do.end9.i55_crit_edge ], [ %call4.i52.10, %for.cond.i49.9.do.end9.i55_crit_edge ], [ %call4.i52.11, %for.cond.i49.10.do.end9.i55_crit_edge ]
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.40, i32 noundef 4, i32 noundef %call4.i52.lcssa) #8
  br label %cleanup

do.end.i63:                                       ; preds = %for.cond.i49.11
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.37, i32 noundef 1, i32 noundef %call2.i.i60) #8
  br label %cleanup

for.cond.i66:                                     ; preds = %for.body.i71
  %inc.i64 = add nuw nsw i32 %i.027.i67, 1
  %exitcond.not.i65 = icmp eq i32 %inc.i64, 47
  br i1 %exitcond.not.i65, label %if.end9, label %for.cond.i66.for.body.i71_crit_edge

for.cond.i66.for.body.i71_crit_edge:              ; preds = %for.cond.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i71

for.body.i71:                                     ; preds = %for.cond.i66.for.body.i71_crit_edge, %for.cond.i49.11.for.body.i71_crit_edge
  %i.027.i67 = phi i32 [ %inc.i64, %for.cond.i66.for.body.i71_crit_edge ], [ 0, %for.cond.i49.11.for.body.i71_crit_edge ]
  %arrayidx.i68 = getelementptr %struct.ltk050h3146w_cmd, ptr @page1_cmds, i32 %i.027.i67
  %call4.i69 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i59, ptr noundef %arrayidx.i68, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i69)
  %cmp5.i70 = icmp slt i32 %call4.i69, 0
  br i1 %cmp5.i70, label %do.end9.i72, label %for.cond.i66

do.end9.i72:                                      ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef %call4.i69) #8
  br label %cleanup

if.end9:                                          ; preds = %for.cond.i66
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %34, i32 -8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d.i) #5
  %35 = getelementptr inbounds [3 x i8], ptr %d.i, i32 0, i32 1
  %36 = getelementptr inbounds [3 x i8], ptr %d.i, i32 0, i32 2
  %37 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -104, ptr %d.i, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -127, ptr %35, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %36, align 1
  %call2.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i75, i8 noundef zeroext -1, ptr noundef nonnull %d.i, i32 noundef 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11 = icmp slt i32 %call2.i, 0
  br i1 %cmp11, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.33, i32 noundef %call2.i) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %add.ptr.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.28, i32 noundef %call15) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 60) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end20, %do.end, %do.end9.i72, %do.end.i63, %do.end9.i55, %do.end.i46, %do.end9.i, %do.end.i
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end22 ], [ %call4.i, %do.end9.i ], [ %call2.i.i, %do.end.i ], [ %call4.i52.lcssa, %do.end9.i55 ], [ %call2.i.i43, %do.end.i46 ], [ %call4.i69, %do.end9.i72 ], [ %call2.i.i60, %do.end.i63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @ltk050h3146w_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 40
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltk050h3146w_prepare.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltk050h3146w_prepare, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !194

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltk050h3146w_prepare.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.58) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %vci = getelementptr i8, ptr %panel, i32 28
  %6 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vci, align 4
  %call9 = tail call i32 @regulator_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.59, i32 noundef %call9) #8
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %10 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iovcc, align 4
  %call16 = tail call i32 @regulator_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.61, i32 noundef %call16) #8
  br label %disable_vci

if.end23:                                         ; preds = %if.end15
  %reset_gpio = getelementptr i8, ptr %panel, i32 24
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 20) #5
  %panel_desc = getelementptr i8, ptr %panel, i32 36
  %18 = ptrtoint ptr %panel_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %panel_desc, align 4
  %init = getelementptr inbounds %struct.ltk050h3146w_desc, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init, align 4
  %call25 = tail call i32 %21(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.64, i32 noundef %call25) #8
  br label %disable_iovcc

if.end32:                                         ; preds = %if.end23
  %call33 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.67, i32 noundef %call33) #8
  br label %disable_iovcc

if.end40:                                         ; preds = %if.end32
  tail call void @msleep(i32 noundef 120) #5
  %call41 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.70, i32 noundef %call41) #8
  br label %disable_iovcc

if.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 50) #5
  %28 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

disable_iovcc:                                    ; preds = %do.end46, %do.end38, %do.end30
  %ret.0 = phi i32 [ %call25, %do.end30 ], [ %call33, %do.end38 ], [ %call41, %do.end46 ]
  %29 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iovcc, align 4
  %call51 = tail call i32 @regulator_disable(ptr noundef %30) #5
  br label %disable_vci

disable_vci:                                      ; preds = %disable_iovcc, %do.end21
  %ret.1 = phi i32 [ %call16, %do.end21 ], [ %ret.0, %disable_iovcc ]
  %31 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vci, align 4
  %call53 = tail call i32 @regulator_disable(ptr noundef %32) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_vci, %if.end48, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end13 ], [ %ret.1, %disable_vci ], [ 0, %if.end48 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk050h3146w_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 40
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.72, i32 noundef %call2) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i31) #5
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %6 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iovcc, align 4
  %call14 = tail call i32 @regulator_disable(ptr noundef %7) #5
  %vci = getelementptr i8, ptr %panel, i32 28
  %8 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vci, align 4
  %call15 = tail call i32 @regulator_disable(ptr noundef %9) #5
  %10 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltk050h3146w_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %panel_desc = getelementptr i8, ptr %panel, i32 36
  %2 = ptrtoint ptr %panel_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %5) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call2) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 28
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 26
  %7 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %8 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %9 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 27
  %10 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %height_mm, align 4
  %conv4 = zext i16 %11 to i32
  %height_mm6 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %height_mm6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv4, ptr %height_mm6, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122, !123, !124, !126, !128, !129, !130, !132, !133, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_panel_leadtek_ltk050h3146w__303_669_ltk050h3146w_driver_init6, !1, !"__initcall__kmod_panel_leadtek_ltk050h3146w__303_669_ltk050h3146w_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 669, i32 1}
!2 = !{ptr @__exitcall_ltk050h3146w_driver_exit, !1, !"__exitcall_ltk050h3146w_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 671, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 672, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 673, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 662, i32 11}
!12 = !{ptr @ltk050h3146w_driver, !13, !"ltk050h3146w_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 660, i32 31}
!14 = !{ptr @ltk050h3146w_of_match, !15, !"ltk050h3146w_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 647, i32 34}
!16 = !{ptr @ltk050h3146w_data, !17, !"ltk050h3146w_data", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 339, i32 39}
!18 = !{ptr @ltk050h3146w_mode, !19, !"ltk050h3146w_mode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 325, i32 38}
!20 = !{ptr @ltk050h3146w_init_sequence.b, !21, !"b", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 264, i32 2}
!22 = !{ptr @ltk050h3146w_init_sequence.b.1, !23, !"b", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 265, i32 2}
!24 = !{ptr @ltk050h3146w_init_sequence.b.2, !25, !"b", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 267, i32 2}
!26 = !{ptr @ltk050h3146w_init_sequence.b.3, !27, !"b", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 268, i32 2}
!28 = !{ptr @ltk050h3146w_init_sequence.b.4, !29, !"b", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 269, i32 2}
!30 = !{ptr @ltk050h3146w_init_sequence.b.5, !31, !"b", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 271, i32 2}
!32 = !{ptr @ltk050h3146w_init_sequence.b.6, !33, !"b", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 272, i32 2}
!34 = !{ptr @ltk050h3146w_init_sequence.b.7, !35, !"b", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 274, i32 2}
!36 = !{ptr @ltk050h3146w_init_sequence.b.8, !37, !"b", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 275, i32 2}
!38 = !{ptr @ltk050h3146w_init_sequence.b.9, !39, !"b", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 276, i32 2}
!40 = !{ptr @ltk050h3146w_init_sequence.b.10, !41, !"b", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 277, i32 2}
!42 = !{ptr @ltk050h3146w_init_sequence.b.11, !43, !"b", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 278, i32 2}
!44 = !{ptr @ltk050h3146w_init_sequence.b.12, !45, !"b", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 280, i32 2}
!46 = !{ptr @ltk050h3146w_init_sequence.b.13, !47, !"b", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 282, i32 2}
!48 = !{ptr @ltk050h3146w_init_sequence.b.14, !49, !"b", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 287, i32 2}
!50 = !{ptr @ltk050h3146w_init_sequence.b.15, !51, !"b", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 290, i32 2}
!52 = !{ptr @ltk050h3146w_init_sequence.b.16, !53, !"b", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 293, i32 2}
!54 = !{ptr @ltk050h3146w_init_sequence.b.17, !55, !"b", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 296, i32 2}
!56 = !{ptr @ltk050h3146w_init_sequence.b.18, !57, !"b", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 299, i32 2}
!58 = !{ptr @ltk050h3146w_init_sequence.b.19, !59, !"b", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 302, i32 2}
!60 = !{ptr @ltk050h3146w_init_sequence.b.20, !61, !"b", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 305, i32 2}
!62 = !{ptr @ltk050h3146w_init_sequence.b.21, !63, !"b", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 306, i32 2}
!64 = !{ptr @ltk050h3146w_init_sequence.b.22, !65, !"b", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 307, i32 2}
!66 = !{ptr @ltk050h3146w_init_sequence.b.23, !67, !"b", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 308, i32 2}
!68 = !{ptr @ltk050h3146w_init_sequence.b.24, !69, !"b", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 309, i32 2}
!70 = !{ptr @ltk050h3146w_init_sequence.b.25, !71, !"b", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 310, i32 2}
!72 = !{ptr @ltk050h3146w_init_sequence.b.26, !73, !"b", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 311, i32 2}
!74 = !{ptr @ltk050h3146w_init_sequence.b.27, !75, !"b", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 312, i32 2}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 316, i32 3}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ltk050h3146w_init_sequence._entry, !77, !"_entry", i1 false, i1 false}
!83 = !{ptr @ltk050h3146w_init_sequence._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @ltk050h3146w_a2_data, !85, !"ltk050h3146w_a2_data", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 433, i32 39}
!86 = !{ptr @ltk050h3146w_a2_mode, !87, !"ltk050h3146w_a2_mode", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 419, i32 38}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 403, i32 3}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ltk050h3146w_a2_init_sequence._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ltk050h3146w_a2_init_sequence._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ltk050h3146w_a2_init_sequence._entry.35, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 410, i32 3}
!95 = !{ptr @ltk050h3146w_a2_init_sequence._entry_ptr.36, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 361, i32 3}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ltk050h3146w_a2_write_page._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ltk050h3146w_a2_write_page._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 369, i32 4}
!103 = !{ptr @ltk050h3146w_a2_write_page._entry.39, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ltk050h3146w_a2_write_page._entry_ptr.41, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @page3_cmds, !106, !"page3_cmds", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 96, i32 38}
!107 = !{ptr @page4_cmds, !108, !"page4_cmds", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 226, i32 38}
!109 = !{ptr @page1_cmds, !110, !"page1_cmds", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 42, i32 38}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 567, i32 49}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 569, i32 3}
!115 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ltk050h3146w_probe._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ltk050h3146w_probe._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 573, i32 37}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 577, i32 4}
!122 = !{ptr @ltk050h3146w_probe._entry.46, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ltk050h3146w_probe._entry_ptr.48, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 581, i32 39}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 585, i32 4}
!128 = !{ptr @ltk050h3146w_probe._entry.50, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ltk050h3146w_probe._entry_ptr.52, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 609, i32 3}
!132 = !{ptr @ltk050h3146w_probe._entry.53, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ltk050h3146w_probe._entry_ptr.55, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @ltk050h3146w_funcs, !135, !"ltk050h3146w_funcs", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 547, i32 37}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 476, i32 2}
!138 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ltk050h3146w_prepare.__UNIQUE_ID_ddebug302, !137, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 479, i32 3}
!143 = !{ptr @ltk050h3146w_prepare._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ltk050h3146w_prepare._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 484, i32 3}
!147 = !{ptr @ltk050h3146w_prepare._entry.60, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ltk050h3146w_prepare._entry_ptr.62, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 495, i32 3}
!151 = !{ptr @ltk050h3146w_prepare._entry.63, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ltk050h3146w_prepare._entry_ptr.65, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 501, i32 3}
!155 = !{ptr @ltk050h3146w_prepare._entry.66, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ltk050h3146w_prepare._entry_ptr.68, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 510, i32 3}
!159 = !{ptr @ltk050h3146w_prepare._entry.69, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @ltk050h3146w_prepare._entry_ptr.71, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 449, i32 3}
!163 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ltk050h3146w_unprepare._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @ltk050h3146w_unprepare._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 455, i32 3}
!168 = !{ptr @ltk050h3146w_unprepare._entry.74, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ltk050h3146w_unprepare._entry_ptr.76, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 640, i32 3}
!172 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ltk050h3146w_remove._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ltk050h3146w_remove._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 624, i32 3}
!177 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ltk050h3146w_shutdown._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @ltk050h3146w_shutdown._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/panel/panel-leadtek-ltk050h3146w.c", i32 628, i32 3}
!182 = !{ptr @ltk050h3146w_shutdown._entry.81, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ltk050h3146w_shutdown._entry_ptr.83, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i8 0, i8 2}
!194 = !{i64 2148770835, i64 2148770840, i64 2148770853, i64 2148770897, i64 2148770931, i64 2148770952}
