; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.xpp055c272 = type { ptr, %struct.drm_panel, ptr, ptr, ptr, i8 }
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

@__initcall__kmod_panel_xinpeng_xpp055c272__304_373_xpp055c272_driver_init6 = internal global ptr @xpp055c272_driver_init, section ".initcall6.init", align 4
@xpp055c272_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xpp055c272_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @xpp055c272_probe, ptr @xpp055c272_remove, ptr @xpp055c272_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_xpp055c272_driver_exit = internal global ptr @xpp055c272_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [86 x i8] c"panel_xinpeng_xpp055c272.author=Heiko Stuebner <heiko.stuebner@theobroma-systems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [86 x i8] c"panel_xinpeng_xpp055c272.description=DRM driver for Xinpeng xpp055c272 MIPI DSI panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [77 x i8] c"panel_xinpeng_xpp055c272.file=drivers/gpu/drm/panel/panel-xinpeng-xpp055c272\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [40 x i8] c"panel_xinpeng_xpp055c272.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panel-xinpeng-xpp055c272\00", [39 x i8] zeroinitializer }, align 32
@xpp055c272_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xinpeng,xpp055c272\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get reset gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request vci regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request iovcc regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@xpp055c272_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @xpp055c272_prepare, ptr null, ptr null, ptr @xpp055c272_unprepare, ptr @xpp055c272_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@xpp055c272_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 320, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi_dsi_attach failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xpp055c272_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xpp055c272_probe._entry_ptr = internal global ptr @xpp055c272_probe._entry, section ".printk_index", align 4
@xpp055c272_prepare.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.9, ptr @.str.14, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panel_xinpeng_xpp055c272\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xpp055c272_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Resetting the panel\0A\00", [43 x i8] zeroinitializer }, align 32
@xpp055c272_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.9, i32 180, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable vci supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@xpp055c272_prepare._entry_ptr = internal global ptr @xpp055c272_prepare._entry, section ".printk_index", align 4
@xpp055c272_prepare._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.9, i32 185, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable iovcc supply: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@xpp055c272_prepare._entry_ptr.18 = internal global ptr @xpp055c272_prepare._entry.16, section ".printk_index", align 4
@xpp055c272_prepare._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.9, i32 199, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Panel init sequence failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@xpp055c272_prepare._entry_ptr.21 = internal global ptr @xpp055c272_prepare._entry.19, section ".printk_index", align 4
@xpp055c272_prepare._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.9, i32 205, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@xpp055c272_prepare._entry_ptr.24 = internal global ptr @xpp055c272_prepare._entry.22, section ".printk_index", align 4
@xpp055c272_prepare._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.9, i32 214, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@xpp055c272_prepare._entry_ptr.27 = internal global ptr @xpp055c272_prepare._entry.25, section ".printk_index", align 4
@xpp055c272_init_sequence.b = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B9\F1\12\83", [28 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\BA3\81\05\F9\0E\0E\00\00\00\00\00\00\00\00D%\00\91\0A\00\00\02O\01\00\007", [36 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B8%", [30 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\BF\02\11\00", [28 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\B3\0C\10\0AP\03\FF\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\C0ssPP\00\00\08p\00", [22 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\BCF", [30 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\CC\0B", [30 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B4\80", [30 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B2\C8\120", [28 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\E3\07\07\0B\0B\03\0B\00\00\00\00\FF\00\C0\10", [17 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\C1S\00\1E\1Ew\E1\CC\DDgw33", [19 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\C6\00\00\FF\FF\01\FF", [25 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B5\09\09", [29 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B6\87\95", [29 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.42 = internal constant { <{ [55 x i8], [9 x i8] }>, [32 x i8] } { <{ [55 x i8], [9 x i8] }> <{ [55 x i8] c"\E9\C2\10\05\05\10\05\A0\121#?\81\0A\A07\18\00\80\01\00\00\00\00\80\01\00\00\00H\F8\86B\08\88\88\80\88\88\88X\F8\87S\18\88\88\81\88\88\88\00\00\00\01", [9 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\EA\00\1A\00\00\00\00\02\00\00\00\00\00\1F\88\815x\88\88\85\88\88\88\0F\88\80$h\88\88\84\88\88\88#\10\00\00\1C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\05\A0\00\00\00\00", [34 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.b.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\E0\00\06\08*1?86\07\0C\0D\11\13\12\13\11\18\00\06\08*1?86\07\0C\0D\11\13\12\13\11\18", [61 x i8] zeroinitializer }, align 32
@xpp055c272_init_sequence.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.45, ptr @.str.9, ptr @.str.46, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xpp055c272_init_sequence\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Panel init sequence done\0A\00", [38 x i8] zeroinitializer }, align 32
@xpp055c272_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.9, i32 152, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xpp055c272_unprepare\00", [43 x i8] zeroinitializer }, align 32
@xpp055c272_unprepare._entry_ptr = internal global ptr @xpp055c272_unprepare._entry, section ".printk_index", align 4
@xpp055c272_unprepare._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.9, i32 156, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@xpp055c272_unprepare._entry_ptr.51 = internal global ptr @xpp055c272_unprepare._entry.49, section ".printk_index", align 4
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 64000, i16 720, i16 760, i16 770, i16 810, i16 0, i16 1280, i16 1302, i16 1306, i16 1317, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 121, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@xpp055c272_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.9, i32 255, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xpp055c272_get_modes\00", [43 x i8] zeroinitializer }, align 32
@xpp055c272_get_modes._entry_ptr = internal global ptr @xpp055c272_get_modes._entry, section ".printk_index", align 4
@xpp055c272_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.9, i32 351, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xpp055c272_remove\00", [46 x i8] zeroinitializer }, align 32
@xpp055c272_remove._entry_ptr = internal global ptr @xpp055c272_remove._entry, section ".printk_index", align 4
@xpp055c272_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.9, i32 335, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to unprepare panel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xpp055c272_shutdown\00", [44 x i8] zeroinitializer }, align 32
@xpp055c272_shutdown._entry_ptr = internal global ptr @xpp055c272_shutdown._entry, section ".printk_index", align 4
@xpp055c272_shutdown._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.9, i32 339, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@xpp055c272_shutdown._entry_ptr.60 = internal global ptr @xpp055c272_shutdown._entry.58, section ".printk_index", align 4
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"xpp055c272_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 364, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 366, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"xpp055c272_of_match\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 358, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 285, i32 49 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 288, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 290, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 293, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 295, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 298, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"xpp055c272_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 269, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 320, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 177, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 180, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 185, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 199, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 205, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 214, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 80, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 81, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 86, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 87, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 88, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 91, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 94, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 95, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 96, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 97, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 98, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 101, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 104, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 106, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 109, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 110, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 119, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 128, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 137, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 152, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 156, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 231, i32 38 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 253, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 351, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 335, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [52 x i8] c"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 339, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_xpp055c272_driver_exit, ptr @__initcall__kmod_panel_xinpeng_xpp055c272__304_373_xpp055c272_driver_init6, ptr @xpp055c272_driver_exit, ptr @xpp055c272_get_modes._entry, ptr @xpp055c272_get_modes._entry_ptr, ptr @xpp055c272_prepare._entry, ptr @xpp055c272_prepare._entry.16, ptr @xpp055c272_prepare._entry.19, ptr @xpp055c272_prepare._entry.22, ptr @xpp055c272_prepare._entry.25, ptr @xpp055c272_prepare._entry_ptr, ptr @xpp055c272_prepare._entry_ptr.18, ptr @xpp055c272_prepare._entry_ptr.21, ptr @xpp055c272_prepare._entry_ptr.24, ptr @xpp055c272_prepare._entry_ptr.27, ptr @xpp055c272_probe._entry, ptr @xpp055c272_probe._entry_ptr, ptr @xpp055c272_remove._entry, ptr @xpp055c272_remove._entry_ptr, ptr @xpp055c272_shutdown._entry, ptr @xpp055c272_shutdown._entry.58, ptr @xpp055c272_shutdown._entry_ptr, ptr @xpp055c272_shutdown._entry_ptr.60, ptr @xpp055c272_unprepare._entry, ptr @xpp055c272_unprepare._entry.49, ptr @xpp055c272_unprepare._entry_ptr, ptr @xpp055c272_unprepare._entry_ptr.51, ptr @xpp055c272_driver, ptr @.str, ptr @xpp055c272_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @xpp055c272_funcs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @xpp055c272_init_sequence.b, ptr @xpp055c272_init_sequence.b.28, ptr @xpp055c272_init_sequence.b.29, ptr @xpp055c272_init_sequence.b.30, ptr @xpp055c272_init_sequence.b.31, ptr @xpp055c272_init_sequence.b.32, ptr @xpp055c272_init_sequence.b.33, ptr @xpp055c272_init_sequence.b.34, ptr @xpp055c272_init_sequence.b.35, ptr @xpp055c272_init_sequence.b.36, ptr @xpp055c272_init_sequence.b.37, ptr @xpp055c272_init_sequence.b.38, ptr @xpp055c272_init_sequence.b.39, ptr @xpp055c272_init_sequence.b.40, ptr @xpp055c272_init_sequence.b.41, ptr @xpp055c272_init_sequence.b.42, ptr @xpp055c272_init_sequence.b.43, ptr @xpp055c272_init_sequence.b.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @default_mode, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_prepare._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_prepare._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_prepare._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_prepare._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.42 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_init_sequence.b.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_unprepare._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpp055c272_shutdown._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xpp055c272_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @xpp055c272_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xpp055c272_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @xpp055c272_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpp055c272_probe(ptr noundef %dsi) #2 align 64 {
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
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #4
  %reset_gpio = getelementptr inbounds %struct.xpp055c272, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #4
  %vci = getelementptr inbounds %struct.xpp055c272, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %vci to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %vci, align 4
  %cmp.i73 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call10 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #4
  %iovcc = getelementptr inbounds %struct.xpp055c272, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %iovcc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %iovcc, align 4
  %cmp.i74 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call18 to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.6) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %10 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2563, ptr %mode_flags, align 8
  %panel = getelementptr inbounds %struct.xpp055c272, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @xpp055c272_funcs, i32 noundef 16) #4
  %call29 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  tail call void @drm_panel_add(ptr noundef %panel) #4
  %call34 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call34) #7
  tail call void @drm_panel_remove(ptr noundef %panel) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end32.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then21, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then5 ], [ %call16, %if.then13 ], [ %call24, %if.then21 ], [ %call34, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end25.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpp055c272_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel.i = getelementptr inbounds %struct.xpp055c272, ptr %1, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.56, i32 noundef %call1.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call3.i = tail call i32 @drm_panel_disable(ptr noundef %panel.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.xpp055c272_shutdown.exit_crit_edge

if.end.i.xpp055c272_shutdown.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xpp055c272_shutdown.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev9.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.59, i32 noundef %call3.i) #7
  br label %xpp055c272_shutdown.exit

xpp055c272_shutdown.exit:                         ; preds = %do.end8.i, %if.end.i.xpp055c272_shutdown.exit_crit_edge
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %xpp055c272_shutdown.exit.if.end_crit_edge

xpp055c272_shutdown.exit.if.end_crit_edge:        ; preds = %xpp055c272_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %xpp055c272_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %xpp055c272_shutdown.exit.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %panel.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xpp055c272_shutdown(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.xpp055c272, ptr %1, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call1) #7
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.59, i32 noundef %call3) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpp055c272_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 36
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpp055c272_prepare.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpp055c272_prepare, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !143

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpp055c272_prepare.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.14) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %vci = getelementptr i8, ptr %panel, i32 28
  %6 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vci, align 4
  %call9 = tail call i32 @regulator_enable(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef %call9) #7
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %10 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iovcc, align 4
  %call16 = tail call i32 @regulator_enable(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.17, i32 noundef %call16) #7
  br label %disable_vci

if.end23:                                         ; preds = %if.end15
  %reset_gpio = getelementptr i8, ptr %panel, i32 24
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 20) #4
  %call25 = tail call fastcc i32 @xpp055c272_init_sequence(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.20, i32 noundef %call25) #7
  br label %disable_iovcc

if.end32:                                         ; preds = %if.end23
  %call33 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef %call33) #7
  br label %disable_iovcc

if.end40:                                         ; preds = %if.end32
  tail call void @msleep(i32 noundef 120) #4
  %call41 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef %call41) #7
  br label %disable_iovcc

if.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 50) #4
  %24 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

disable_iovcc:                                    ; preds = %do.end46, %do.end38, %do.end30
  %ret.0 = phi i32 [ %call25, %do.end30 ], [ %call33, %do.end38 ], [ %call41, %do.end46 ]
  %25 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iovcc, align 4
  %call51 = tail call i32 @regulator_disable(ptr noundef %26) #4
  br label %disable_vci

disable_vci:                                      ; preds = %disable_iovcc, %do.end21
  %ret.1 = phi i32 [ %call16, %do.end21 ], [ %ret.0, %disable_iovcc ]
  %27 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vci, align 4
  %call53 = tail call i32 @regulator_disable(ptr noundef %28) #4
  br label %cleanup

cleanup:                                          ; preds = %disable_vci, %if.end48, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end13 ], [ %ret.1, %disable_vci ], [ 0, %if.end48 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpp055c272_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 36
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end13.critedge

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.47, i32 noundef %call2) #7
  %call6.c = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i31) #4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %call2) #7
  br label %cleanup

if.end13.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6.c30 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i31) #4
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %8 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iovcc, align 4
  %call14 = tail call i32 @regulator_disable(ptr noundef %9) #4
  %vci = getelementptr i8, ptr %panel, i32 28
  %10 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vci, align 4
  %call15 = tail call i32 @regulator_disable(ptr noundef %11) #4
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13.critedge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end13.critedge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpp055c272_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef 720, i32 noundef 1280, i32 noundef %call4) #7
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
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xpp055c272_init_sequence(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call3 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup199_crit_edge, label %do.body4

entry.cleanup199_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body4:                                         ; preds = %entry
  %call6 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.28, i32 noundef 28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body4.cleanup199_crit_edge, label %do.body15

do.body4.cleanup199_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body15:                                        ; preds = %do.body4
  %call17 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.29, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.body15.cleanup199_crit_edge, label %do.body26

do.body15.cleanup199_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body26:                                        ; preds = %do.body15
  %call28 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.30, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body26.cleanup199_crit_edge, label %do.body37

do.body26.cleanup199_crit_edge:                   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body37:                                        ; preds = %do.body26
  %call39 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.31, i32 noundef 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.body37.cleanup199_crit_edge, label %do.body48

do.body37.cleanup199_crit_edge:                   ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body48:                                        ; preds = %do.body37
  %call50 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.32, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.body48.cleanup199_crit_edge, label %do.body59

do.body48.cleanup199_crit_edge:                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body59:                                        ; preds = %do.body48
  %call61 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.33, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.body59.cleanup199_crit_edge, label %do.body70

do.body59.cleanup199_crit_edge:                   ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body70:                                        ; preds = %do.body59
  %call72 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.34, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.body70.cleanup199_crit_edge, label %do.body81

do.body70.cleanup199_crit_edge:                   ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body81:                                        ; preds = %do.body70
  %call83 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.35, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.body81.cleanup199_crit_edge, label %do.body92

do.body81.cleanup199_crit_edge:                   ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body92:                                        ; preds = %do.body81
  %call94 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.36, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.body92.cleanup199_crit_edge, label %do.body103

do.body92.cleanup199_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body103:                                       ; preds = %do.body92
  %call105 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.37, i32 noundef 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.body103.cleanup199_crit_edge, label %do.body114

do.body103.cleanup199_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body114:                                       ; preds = %do.body103
  %call116 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.38, i32 noundef 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %do.body114.cleanup199_crit_edge, label %do.body125

do.body114.cleanup199_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body125:                                       ; preds = %do.body114
  %call127 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.39, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %do.body125.cleanup199_crit_edge, label %do.body136

do.body125.cleanup199_crit_edge:                  ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body136:                                       ; preds = %do.body125
  %call138 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.40, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %do.body136.cleanup199_crit_edge, label %do.end146

do.body136.cleanup199_crit_edge:                  ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.end146:                                        ; preds = %do.body136
  tail call void @msleep(i32 noundef 20) #4
  %call149 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.41, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %do.end146.cleanup199_crit_edge, label %do.body158

do.end146.cleanup199_crit_edge:                   ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body158:                                       ; preds = %do.end146
  %call160 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.42, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %do.body158.cleanup199_crit_edge, label %do.body169

do.body158.cleanup199_crit_edge:                  ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body169:                                       ; preds = %do.body158
  %call171 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.43, i32 noundef 62) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %do.body169.cleanup199_crit_edge, label %do.body180

do.body169.cleanup199_crit_edge:                  ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.body180:                                       ; preds = %do.body169
  %call182 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull @xpp055c272_init_sequence.b.44, i32 noundef 35) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %do.body180.cleanup199_crit_edge, label %do.end190

do.body180.cleanup199_crit_edge:                  ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup199

do.end190:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 60) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpp055c272_init_sequence.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpp055c272_init_sequence, %if.then195)) #4
          to label %cleanup199 [label %if.then195], !srcloc !143

if.then195:                                       ; preds = %do.end190
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpp055c272_init_sequence.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.46) #4
  br label %cleanup199

cleanup199:                                       ; preds = %if.then195, %do.end190, %do.body180.cleanup199_crit_edge, %do.body169.cleanup199_crit_edge, %do.body158.cleanup199_crit_edge, %do.end146.cleanup199_crit_edge, %do.body136.cleanup199_crit_edge, %do.body125.cleanup199_crit_edge, %do.body114.cleanup199_crit_edge, %do.body103.cleanup199_crit_edge, %do.body92.cleanup199_crit_edge, %do.body81.cleanup199_crit_edge, %do.body70.cleanup199_crit_edge, %do.body59.cleanup199_crit_edge, %do.body48.cleanup199_crit_edge, %do.body37.cleanup199_crit_edge, %do.body26.cleanup199_crit_edge, %do.body15.cleanup199_crit_edge, %do.body4.cleanup199_crit_edge, %entry.cleanup199_crit_edge
  %retval.18 = phi i32 [ %call182, %do.body180.cleanup199_crit_edge ], [ %call171, %do.body169.cleanup199_crit_edge ], [ %call160, %do.body158.cleanup199_crit_edge ], [ %call149, %do.end146.cleanup199_crit_edge ], [ %call138, %do.body136.cleanup199_crit_edge ], [ %call127, %do.body125.cleanup199_crit_edge ], [ %call116, %do.body114.cleanup199_crit_edge ], [ %call105, %do.body103.cleanup199_crit_edge ], [ %call94, %do.body92.cleanup199_crit_edge ], [ %call83, %do.body81.cleanup199_crit_edge ], [ %call72, %do.body70.cleanup199_crit_edge ], [ %call61, %do.body59.cleanup199_crit_edge ], [ %call50, %do.body48.cleanup199_crit_edge ], [ %call39, %do.body37.cleanup199_crit_edge ], [ %call28, %do.body26.cleanup199_crit_edge ], [ %call17, %do.body15.cleanup199_crit_edge ], [ %call6, %do.body4.cleanup199_crit_edge ], [ %call3, %entry.cleanup199_crit_edge ], [ 0, %if.then195 ], [ 0, %do.end190 ]
  ret i32 %retval.18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__initcall__kmod_panel_xinpeng_xpp055c272__304_373_xpp055c272_driver_init6, !1, !"__initcall__kmod_panel_xinpeng_xpp055c272__304_373_xpp055c272_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 373, i32 1}
!2 = !{ptr @__exitcall_xpp055c272_driver_exit, !1, !"__exitcall_xpp055c272_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 375, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 376, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 377, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 366, i32 11}
!12 = !{ptr @xpp055c272_driver, !13, !"xpp055c272_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 364, i32 31}
!14 = !{ptr @xpp055c272_of_match, !15, !"xpp055c272_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 358, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 285, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 288, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 290, i32 37}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 293, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 295, i32 39}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 298, i32 10}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 320, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @xpp055c272_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @xpp055c272_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @xpp055c272_funcs, !37, !"xpp055c272_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 269, i32 37}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 177, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xpp055c272_prepare.__UNIQUE_ID_ddebug303, !39, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 180, i32 3}
!45 = !{ptr @xpp055c272_prepare._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @xpp055c272_prepare._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 185, i32 3}
!49 = !{ptr @xpp055c272_prepare._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @xpp055c272_prepare._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 199, i32 3}
!53 = !{ptr @xpp055c272_prepare._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @xpp055c272_prepare._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 205, i32 3}
!57 = !{ptr @xpp055c272_prepare._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @xpp055c272_prepare._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 214, i32 3}
!61 = !{ptr @xpp055c272_prepare._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @xpp055c272_prepare._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @xpp055c272_init_sequence.b, !64, !"b", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 80, i32 2}
!65 = !{ptr @xpp055c272_init_sequence.b.28, !66, !"b", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 81, i32 2}
!67 = !{ptr @xpp055c272_init_sequence.b.29, !68, !"b", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 86, i32 2}
!69 = !{ptr @xpp055c272_init_sequence.b.30, !70, !"b", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 87, i32 2}
!71 = !{ptr @xpp055c272_init_sequence.b.31, !72, !"b", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 88, i32 2}
!73 = !{ptr @xpp055c272_init_sequence.b.32, !74, !"b", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 91, i32 2}
!75 = !{ptr @xpp055c272_init_sequence.b.33, !76, !"b", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 94, i32 2}
!77 = !{ptr @xpp055c272_init_sequence.b.34, !78, !"b", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 95, i32 2}
!79 = !{ptr @xpp055c272_init_sequence.b.35, !80, !"b", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 96, i32 2}
!81 = !{ptr @xpp055c272_init_sequence.b.36, !82, !"b", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 97, i32 2}
!83 = !{ptr @xpp055c272_init_sequence.b.37, !84, !"b", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 98, i32 2}
!85 = !{ptr @xpp055c272_init_sequence.b.38, !86, !"b", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 101, i32 2}
!87 = !{ptr @xpp055c272_init_sequence.b.39, !88, !"b", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 104, i32 2}
!89 = !{ptr @xpp055c272_init_sequence.b.40, !90, !"b", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 106, i32 2}
!91 = !{ptr @xpp055c272_init_sequence.b.41, !92, !"b", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 109, i32 2}
!93 = !{ptr @xpp055c272_init_sequence.b.42, !94, !"b", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 110, i32 2}
!95 = !{ptr @xpp055c272_init_sequence.b.43, !96, !"b", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 119, i32 2}
!97 = !{ptr @xpp055c272_init_sequence.b.44, !98, !"b", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 128, i32 2}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 137, i32 2}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @xpp055c272_init_sequence.__UNIQUE_ID_ddebug302, !100, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 152, i32 3}
!105 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @xpp055c272_unprepare._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @xpp055c272_unprepare._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 156, i32 3}
!110 = !{ptr @xpp055c272_unprepare._entry.49, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @xpp055c272_unprepare._entry_ptr.51, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 253, i32 3}
!114 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @xpp055c272_get_modes._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @xpp055c272_get_modes._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @default_mode, !118, !"default_mode", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 231, i32 38}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 351, i32 3}
!121 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @xpp055c272_remove._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @xpp055c272_remove._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 335, i32 3}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @xpp055c272_shutdown._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @xpp055c272_shutdown._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c", i32 339, i32 3}
!131 = !{ptr @xpp055c272_shutdown._entry.58, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @xpp055c272_shutdown._entry_ptr.60, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i8 0, i8 2}
!143 = !{i64 2148297607, i64 2148297612, i64 2148297625, i64 2148297669, i64 2148297703, i64 2148297724}
