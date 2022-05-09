; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sitronix-st7703.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sitronix-st7703.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st7703_panel_desc = type { ptr, i32, i32, i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.st7703 = type { ptr, %struct.drm_panel, ptr, ptr, ptr, i8, ptr, ptr }
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

@__initcall__kmod_panel_sitronix_st7703__305_635_st7703_driver_init6 = internal global ptr @st7703_driver_init, section ".initcall6.init", align 4
@st7703_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st7703_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @st7703_probe, ptr @st7703_remove, ptr @st7703_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_st7703_driver_exit = internal global ptr @st7703_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [62 x i8] c"panel_sitronix_st7703.author=Guido G\C3\BCnther <agx@sigxcpu.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [87 x i8] c"panel_sitronix_st7703.description=DRM driver for Sitronix ST7703 based MIPI DSI panels\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [71 x i8] c"panel_sitronix_st7703.file=drivers/gpu/drm/panel/panel-sitronix-st7703\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [37 x i8] c"panel_sitronix_st7703.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-sitronix-st7703\00", [42 x i8] zeroinitializer }, align 32
@st7703_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rocktech,jh057n00900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jh057n00900_panel_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xingbangda,xbd599\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xbd599_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@jh057n00900_panel_desc = internal constant { %struct.st7703_panel_desc, [44 x i8] } { %struct.st7703_panel_desc { ptr @jh057n00900_mode, i32 4, i32 7, i32 0, ptr @jh057n_init_sequence }, [44 x i8] zeroinitializer }, align 32
@xbd599_desc = internal constant { %struct.st7703_panel_desc, [44 x i8] } { %struct.st7703_panel_desc { ptr @xbd599_mode, i32 4, i32 5, i32 0, ptr @xbd599_init_sequence }, [44 x i8] zeroinitializer }, align 32
@jh057n00900_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 75276, i16 720, i16 810, i16 830, i16 850, i16 0, i16 1440, i16 1460, i16 1464, i16 1476, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 65, i16 130, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B9\F1\12\83", [28 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\B3\10\10\05\05\03\FF\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\C0ssPP\00\00\08p\00", [22 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\BCN", [30 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\CC\0B", [30 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B4\80", [30 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B2\F0\120", [28 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\E3\07\07\0B\0B\03\0B\00\00\00\00\FF\00\C0\10", [17 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B5\08\08", [29 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B6??", [29 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\BF\02\11\00", [28 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.11 = internal constant { <{ [51 x i8], [13 x i8] }>, [32 x i8] } { <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\E9\82\10\06\05\9E\0A\A5\121#7\83\04\BC'8\0C\00\03\00\00\00\0C\00\03\00\00\00uu1\88\88\88\88\88\88\13\88dd \88\88\88\88\88\88\02\88", [13 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\EA\02!\00\00\00\00\00\00\00\00\00\00\02F\02\88\88\88\88\88\88d\88\13W\13\88\88\88\88\88\88u\88#\14\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\0A\A5\00\00\00\00", [34 x i8] zeroinitializer }, align 32
@jh057n_init_sequence.d.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\E0\00\09\0E)-<A7\07\0B\0D\10\11\0F\10\11\18\00\09\0E)-<A7\07\0B\0D\10\11\0F\10\11\18", [61 x i8] zeroinitializer }, align 32
@xbd599_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 69000, i16 720, i16 760, i16 800, i16 840, i16 0, i16 1440, i16 1458, i16 1468, i16 1485, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 136, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F1\12\83", [29 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"3\81\05\F9\0E\0E \00\00\00\00\00\00\00D%\00\91\0A\00\00\02O\11\00\007", [37 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%\22 \03", [28 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\10\10\05\05\03\FF\00\00\00\00", [22 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssPP\00\C0\08p\00", [23 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.18 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"N", [31 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.19 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\0B", [31 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.20 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\80", [31 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0\12\F0", [29 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\00\0B\0B\10\10\00\00\00\00\FF\00\C0\10", [18 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\00\FF\FF\00", [27 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"t\0022w\F1\FF\FF\CC\CCww", [20 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\07\07", [30 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",,", [30 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\11\00", [29 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.28 = internal constant { <{ [50 x i8], [13 x i8] }>, [33 x i8] } { <{ [50 x i8], [13 x i8] }> <{ [50 x i8] c"\82\10\06\05\A2\0A\A5\121#7\83\04\BC'8\0C\00\03\00\00\00\0C\00\03\00\00\00uu1\88\88\88\88\88\88\13\88dd \88\88\88\88\88\88\02\88", [13 x i8] zeroinitializer }>, [33 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\02!\00\00\00\00\00\00\00\00\00\00\02F\02\88\88\88\88\88\88d\88\13W\13\88\88\88\88\88\88u\88#\14\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\0A\A5\00\00\00\00", [35 x i8] zeroinitializer }, align 32
@xbd599_init_sequence.d.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\00\09\0D#'<A5\07\0D\0E\12\13\10\12\12\18\00\09\0D#'<A5\07\0D\0E\12\13\10\12\12\18", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request vcc regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request iovcc regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@st7703_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @st7703_prepare, ptr @st7703_enable, ptr @st7703_disable, ptr @st7703_unprepare, ptr @st7703_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@st7703_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 573, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mipi_dsi_attach failed (%d). Is host ready?\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st7703_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-sitronix-st7703.c\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st7703_probe._entry_ptr = internal global ptr @st7703_probe._entry, section ".printk_index", align 4
@st7703_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.39, i32 581, ptr @.str.44, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%ux%u@%u %ubpp dsi %udl - ready\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st7703_probe._entry_ptr.45 = internal global ptr @st7703_probe._entry.42, section ".printk_index", align 4
@st7703_prepare.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.39, ptr @.str.48, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel_sitronix_st7703\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st7703_prepare\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Resetting the panel\0A\00", [43 x i8] zeroinitializer }, align 32
@st7703_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.39, i32 433, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable vcc supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@st7703_prepare._entry_ptr = internal global ptr @st7703_prepare._entry, section ".printk_index", align 4
@st7703_prepare._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.39, i32 438, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable iovcc supply: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@st7703_prepare._entry_ptr.52 = internal global ptr @st7703_prepare._entry.50, section ".printk_index", align 4
@st7703_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.39, i32 366, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Panel init sequence failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st7703_enable\00", [18 x i8] zeroinitializer }, align 32
@st7703_enable._entry_ptr = internal global ptr @st7703_enable._entry, section ".printk_index", align 4
@st7703_enable._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.39, i32 374, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@st7703_enable._entry_ptr.57 = internal global ptr @st7703_enable._entry.55, section ".printk_index", align 4
@st7703_enable.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.54, ptr @.str.39, ptr @.str.58, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Panel init sequence done\0A\00", [38 x i8] zeroinitializer }, align 32
@st7703_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.39, i32 398, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to turn off the display: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st7703_disable\00", [17 x i8] zeroinitializer }, align 32
@st7703_disable._entry_ptr = internal global ptr @st7703_disable._entry, section ".printk_index", align 4
@st7703_disable._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.39, i32 402, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@st7703_disable._entry_ptr.63 = internal global ptr @st7703_disable._entry.61, section ".printk_index", align 4
@st7703_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.39, i32 470, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st7703_get_modes\00", [47 x i8] zeroinitializer }, align 32
@st7703_get_modes._entry_ptr = internal global ptr @st7703_get_modes._entry, section ".printk_index", align 4
@mantix_bus_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4106], [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"allpixelson\00", [20 x i8] zeroinitializer }, align 32
@allpixelson_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @allpixelson_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@allpixelson_set.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.68, ptr @.str.39, ptr @.str.69, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"allpixelson_set\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting all pixels on\0A\00", [41 x i8] zeroinitializer }, align 32
@allpixelson_set.d = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"#", [31 x i8] zeroinitializer }, align 32
@st7703_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.39, i32 610, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st7703_remove\00", [18 x i8] zeroinitializer }, align 32
@st7703_remove._entry_ptr = internal global ptr @st7703_remove._entry, section ".printk_index", align 4
@st7703_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.39, i32 594, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to unprepare panel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st7703_shutdown\00", [16 x i8] zeroinitializer }, align 32
@st7703_shutdown._entry_ptr = internal global ptr @st7703_shutdown._entry, section ".printk_index", align 4
@st7703_shutdown._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.39, i32 598, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@st7703_shutdown._entry_ptr.76 = internal global ptr @st7703_shutdown._entry.74, section ".printk_index", align 4
@switch.table.st7703_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"st7703_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 626, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 631, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"st7703_of_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 619, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"jh057n00900_panel_desc\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 156, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"xbd599_desc\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 350, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"jh057n00900_mode\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 141, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 93, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 95, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 98, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 101, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 102, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 103, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 104, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 105, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 108, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 111, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 112, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 113, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 122, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 131, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"xbd599_mode\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 335, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 183, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 185, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 197, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 204, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 215, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 227, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 233, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 236, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 239, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 249, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 270, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 272, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 290, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 295, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 300, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 303, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 314, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 325, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 540, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 542, i32 55 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 553, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 555, i32 48 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 557, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 560, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"st7703_drm_funcs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 488, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 573, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 578, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 430, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 433, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 438, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 366, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 374, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 385, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 398, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 402, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 468, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"mantix_bus_formats\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 456, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 520, i32 22 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"allpixelson_fops\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 513, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 501, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 502, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 610, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 594, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-sitronix-st7703.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 598, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [26 x i8] c"switch.table.st7703_probe\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_st7703_driver_exit, ptr @__initcall__kmod_panel_sitronix_st7703__305_635_st7703_driver_init6, ptr @st7703_disable._entry, ptr @st7703_disable._entry.61, ptr @st7703_disable._entry_ptr, ptr @st7703_disable._entry_ptr.63, ptr @st7703_driver_exit, ptr @st7703_enable._entry, ptr @st7703_enable._entry.55, ptr @st7703_enable._entry_ptr, ptr @st7703_enable._entry_ptr.57, ptr @st7703_get_modes._entry, ptr @st7703_get_modes._entry_ptr, ptr @st7703_prepare._entry, ptr @st7703_prepare._entry.50, ptr @st7703_prepare._entry_ptr, ptr @st7703_prepare._entry_ptr.52, ptr @st7703_probe._entry, ptr @st7703_probe._entry.42, ptr @st7703_probe._entry_ptr, ptr @st7703_probe._entry_ptr.45, ptr @st7703_remove._entry, ptr @st7703_remove._entry_ptr, ptr @st7703_shutdown._entry, ptr @st7703_shutdown._entry.74, ptr @st7703_shutdown._entry_ptr, ptr @st7703_shutdown._entry_ptr.76, ptr @st7703_driver, ptr @.str, ptr @st7703_of_match, ptr @jh057n00900_panel_desc, ptr @xbd599_desc, ptr @jh057n00900_mode, ptr @jh057n_init_sequence.d, ptr @jh057n_init_sequence.d.1, ptr @jh057n_init_sequence.d.2, ptr @jh057n_init_sequence.d.3, ptr @jh057n_init_sequence.d.4, ptr @jh057n_init_sequence.d.5, ptr @jh057n_init_sequence.d.6, ptr @jh057n_init_sequence.d.7, ptr @jh057n_init_sequence.d.8, ptr @jh057n_init_sequence.d.9, ptr @jh057n_init_sequence.d.10, ptr @jh057n_init_sequence.d.11, ptr @jh057n_init_sequence.d.12, ptr @jh057n_init_sequence.d.13, ptr @xbd599_mode, ptr @xbd599_init_sequence.d, ptr @xbd599_init_sequence.d.14, ptr @xbd599_init_sequence.d.15, ptr @xbd599_init_sequence.d.16, ptr @xbd599_init_sequence.d.17, ptr @xbd599_init_sequence.d.18, ptr @xbd599_init_sequence.d.19, ptr @xbd599_init_sequence.d.20, ptr @xbd599_init_sequence.d.21, ptr @xbd599_init_sequence.d.22, ptr @xbd599_init_sequence.d.23, ptr @xbd599_init_sequence.d.24, ptr @xbd599_init_sequence.d.25, ptr @xbd599_init_sequence.d.26, ptr @xbd599_init_sequence.d.27, ptr @xbd599_init_sequence.d.28, ptr @xbd599_init_sequence.d.29, ptr @xbd599_init_sequence.d.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @st7703_drm_funcs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @mantix_bus_formats, ptr @.str.66, ptr @allpixelson_fops, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @allpixelson_set.d, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @switch.table.st7703_probe], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n00900_panel_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n00900_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jh057n_init_sequence.d.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbd599_init_sequence.d.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_prepare._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_enable._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_disable._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantix_bus_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allpixelson_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allpixelson_set.d to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7703_shutdown._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.st7703_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @st7703_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st7703_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @st7703_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.st7703, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @.str.32) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %desc = getelementptr inbounds %struct.st7703, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %desc, align 4
  %mode_flags = getelementptr inbounds %struct.st7703_panel_desc, ptr %call11, i32 0, i32 2
  %5 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_flags, align 4
  %mode_flags13 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %7 = ptrtoint ptr %mode_flags13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mode_flags13, align 8
  %format = getelementptr inbounds %struct.st7703_panel_desc, ptr %call11, i32 0, i32 3
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  %format15 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %10 = ptrtoint ptr %format15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format15, align 4
  %lanes = getelementptr inbounds %struct.st7703_panel_desc, ptr %call11, i32 0, i32 1
  %11 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lanes, align 4
  %lanes17 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %13 = ptrtoint ptr %lanes17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %lanes17, align 8
  %call18 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.33) #5
  %vcc = getelementptr inbounds %struct.st7703, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18, ptr %vcc, align 4
  %cmp.i104 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call18 to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %15, ptr noundef nonnull @.str.34) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end9
  %call26 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.35) #5
  %iovcc = getelementptr inbounds %struct.st7703, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %iovcc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call26, ptr %iovcc, align 4
  %cmp.i105 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call26 to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @.str.36) #5
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %panel = getelementptr inbounds %struct.st7703, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @st7703_drm_funcs, i32 noundef 16) #5
  %call35 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  tail call void @drm_panel_add(ptr noundef %panel) #5
  %call40 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %do.end, label %do.end46

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call40) #8
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  br label %cleanup

do.end46:                                         ; preds = %if.end38
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %23 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vdisplay, align 2
  %conv50 = zext i16 %25 to i32
  %call53 = tail call i32 @drm_mode_vrefresh(ptr noundef %21) #5
  %26 = ptrtoint ptr %format15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %switch.lookup, label %do.end46.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

do.end46.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.st7703_probe, i32 0, i32 %27
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %do.end46.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %do.end46.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %30 = ptrtoint ptr %lanes17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lanes17, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv50, i32 noundef %call53, i32 noundef %retval.0.i, i32 noundef %31) #8
  tail call fastcc void @st7703_debugfs_init(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %mipi_dsi_pixel_format_to_bpp.exit, %do.end, %if.end33.cleanup_crit_edge, %if.then29, %if.then21, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then5 ], [ %call24, %if.then21 ], [ %call32, %if.then29 ], [ %call40, %do.end ], [ 0, %mipi_dsi_pixel_format_to_bpp.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel.i = getelementptr inbounds %struct.st7703, ptr %1, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72, i32 noundef %call1.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call3.i = tail call i32 @drm_panel_disable(ptr noundef %panel.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.st7703_shutdown.exit_crit_edge

if.end.i.st7703_shutdown.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7703_shutdown.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev9.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.75, i32 noundef %call3.i) #8
  br label %st7703_shutdown.exit

st7703_shutdown.exit:                             ; preds = %do.end8.i, %if.end.i.st7703_shutdown.exit_crit_edge
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %st7703_shutdown.exit.if.end_crit_edge

st7703_shutdown.exit.if.end_crit_edge:            ; preds = %st7703_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %st7703_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %st7703_shutdown.exit.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %panel.i) #5
  %debugfs.i = getelementptr inbounds %struct.st7703, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #5
  %4 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %debugfs.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st7703_shutdown(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.st7703, ptr %1, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %call1) #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.75, i32 noundef %call3) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jh057n_init_sequence(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call1 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup145_crit_edge, label %do.body2

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.1, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.body2.cleanup145_crit_edge, label %do.body13

do.body2.cleanup145_crit_edge:                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body13:                                        ; preds = %do.body2
  %call15 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.2, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.body13.cleanup145_crit_edge, label %do.body24

do.body13.cleanup145_crit_edge:                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body24:                                        ; preds = %do.body13
  %call26 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.3, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.body24.cleanup145_crit_edge, label %do.body35

do.body24.cleanup145_crit_edge:                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body35:                                        ; preds = %do.body24
  %call37 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.4, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.body35.cleanup145_crit_edge, label %do.body46

do.body35.cleanup145_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body46:                                        ; preds = %do.body35
  %call48 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.5, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.body46.cleanup145_crit_edge, label %do.body57

do.body46.cleanup145_crit_edge:                   ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body57:                                        ; preds = %do.body46
  %call59 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.6, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.body57.cleanup145_crit_edge, label %do.body68

do.body57.cleanup145_crit_edge:                   ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body68:                                        ; preds = %do.body57
  %call70 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.7, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.body68.cleanup145_crit_edge, label %do.body79

do.body68.cleanup145_crit_edge:                   ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body79:                                        ; preds = %do.body68
  %call81 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.8, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.body79.cleanup145_crit_edge, label %do.end89

do.body79.cleanup145_crit_edge:                   ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.end89:                                         ; preds = %do.body79
  tail call void @msleep(i32 noundef 20) #5
  %call92 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.9, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end89.cleanup145_crit_edge, label %do.body101

do.end89.cleanup145_crit_edge:                    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body101:                                       ; preds = %do.end89
  %call103 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.10, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.body101.cleanup145_crit_edge, label %do.body112

do.body101.cleanup145_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body112:                                       ; preds = %do.body101
  %call114 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.11, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %do.body112.cleanup145_crit_edge, label %do.body123

do.body112.cleanup145_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body123:                                       ; preds = %do.body112
  %call125 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.12, i32 noundef 62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %do.body123.cleanup145_crit_edge, label %do.body134

do.body123.cleanup145_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

do.body134:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  %call136 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @jh057n_init_sequence.d.13, i32 noundef 35) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call136, i32 0)
  br label %cleanup145

cleanup145:                                       ; preds = %do.body134, %do.body123.cleanup145_crit_edge, %do.body112.cleanup145_crit_edge, %do.body101.cleanup145_crit_edge, %do.end89.cleanup145_crit_edge, %do.body79.cleanup145_crit_edge, %do.body68.cleanup145_crit_edge, %do.body57.cleanup145_crit_edge, %do.body46.cleanup145_crit_edge, %do.body35.cleanup145_crit_edge, %do.body24.cleanup145_crit_edge, %do.body13.cleanup145_crit_edge, %do.body2.cleanup145_crit_edge, %entry.cleanup145_crit_edge
  %retval.14 = phi i32 [ %call125, %do.body123.cleanup145_crit_edge ], [ %call114, %do.body112.cleanup145_crit_edge ], [ %call103, %do.body101.cleanup145_crit_edge ], [ %call92, %do.end89.cleanup145_crit_edge ], [ %call81, %do.body79.cleanup145_crit_edge ], [ %call70, %do.body68.cleanup145_crit_edge ], [ %call59, %do.body57.cleanup145_crit_edge ], [ %call48, %do.body46.cleanup145_crit_edge ], [ %call37, %do.body35.cleanup145_crit_edge ], [ %call26, %do.body24.cleanup145_crit_edge ], [ %call15, %do.body13.cleanup145_crit_edge ], [ %call4, %do.body2.cleanup145_crit_edge ], [ %call1, %entry.cleanup145_crit_edge ], [ %2, %do.body134 ]
  ret i32 %retval.14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xbd599_init_sequence(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call1 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -71, ptr noundef nonnull @xbd599_init_sequence.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup189_crit_edge, label %do.body2

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -70, ptr noundef nonnull @xbd599_init_sequence.d.14, i32 noundef 27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.body2.cleanup189_crit_edge, label %do.body13

do.body2.cleanup189_crit_edge:                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body13:                                        ; preds = %do.body2
  %call15 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -72, ptr noundef nonnull @xbd599_init_sequence.d.15, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.body13.cleanup189_crit_edge, label %do.body24

do.body13.cleanup189_crit_edge:                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body24:                                        ; preds = %do.body13
  %call26 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -77, ptr noundef nonnull @xbd599_init_sequence.d.16, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.body24.cleanup189_crit_edge, label %do.body35

do.body24.cleanup189_crit_edge:                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body35:                                        ; preds = %do.body24
  %call37 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -64, ptr noundef nonnull @xbd599_init_sequence.d.17, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.body35.cleanup189_crit_edge, label %do.body46

do.body35.cleanup189_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body46:                                        ; preds = %do.body35
  %call48 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -68, ptr noundef nonnull @xbd599_init_sequence.d.18, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.body46.cleanup189_crit_edge, label %do.body57

do.body46.cleanup189_crit_edge:                   ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body57:                                        ; preds = %do.body46
  %call59 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -52, ptr noundef nonnull @xbd599_init_sequence.d.19, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.body57.cleanup189_crit_edge, label %do.body68

do.body57.cleanup189_crit_edge:                   ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body68:                                        ; preds = %do.body57
  %call70 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -76, ptr noundef nonnull @xbd599_init_sequence.d.20, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.body68.cleanup189_crit_edge, label %do.body79

do.body68.cleanup189_crit_edge:                   ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body79:                                        ; preds = %do.body68
  %call81 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -78, ptr noundef nonnull @xbd599_init_sequence.d.21, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.body79.cleanup189_crit_edge, label %do.body90

do.body79.cleanup189_crit_edge:                   ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body90:                                        ; preds = %do.body79
  %call92 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -29, ptr noundef nonnull @xbd599_init_sequence.d.22, i32 noundef 14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.body90.cleanup189_crit_edge, label %do.body101

do.body90.cleanup189_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body101:                                       ; preds = %do.body90
  %call103 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -58, ptr noundef nonnull @xbd599_init_sequence.d.23, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.body101.cleanup189_crit_edge, label %do.body112

do.body101.cleanup189_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body112:                                       ; preds = %do.body101
  %call114 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -63, ptr noundef nonnull @xbd599_init_sequence.d.24, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %do.body112.cleanup189_crit_edge, label %do.body123

do.body112.cleanup189_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body123:                                       ; preds = %do.body112
  %call125 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -75, ptr noundef nonnull @xbd599_init_sequence.d.25, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %do.body123.cleanup189_crit_edge, label %do.end133

do.body123.cleanup189_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.end133:                                        ; preds = %do.body123
  tail call void @msleep(i32 noundef 20) #5
  %call136 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -74, ptr noundef nonnull @xbd599_init_sequence.d.26, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %do.end133.cleanup189_crit_edge, label %do.body145

do.end133.cleanup189_crit_edge:                   ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body145:                                       ; preds = %do.end133
  %call147 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -65, ptr noundef nonnull @xbd599_init_sequence.d.27, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %do.body145.cleanup189_crit_edge, label %do.body156

do.body145.cleanup189_crit_edge:                  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body156:                                       ; preds = %do.body145
  %call158 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -23, ptr noundef nonnull @xbd599_init_sequence.d.28, i32 noundef 63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %do.body156.cleanup189_crit_edge, label %do.body167

do.body156.cleanup189_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body167:                                       ; preds = %do.body156
  %call169 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -22, ptr noundef nonnull @xbd599_init_sequence.d.29, i32 noundef 61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %do.body167.cleanup189_crit_edge, label %do.body178

do.body167.cleanup189_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup189

do.body178:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  %call180 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -32, ptr noundef nonnull @xbd599_init_sequence.d.30, i32 noundef 34) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call180, i32 0)
  br label %cleanup189

cleanup189:                                       ; preds = %do.body178, %do.body167.cleanup189_crit_edge, %do.body156.cleanup189_crit_edge, %do.body145.cleanup189_crit_edge, %do.end133.cleanup189_crit_edge, %do.body123.cleanup189_crit_edge, %do.body112.cleanup189_crit_edge, %do.body101.cleanup189_crit_edge, %do.body90.cleanup189_crit_edge, %do.body79.cleanup189_crit_edge, %do.body68.cleanup189_crit_edge, %do.body57.cleanup189_crit_edge, %do.body46.cleanup189_crit_edge, %do.body35.cleanup189_crit_edge, %do.body24.cleanup189_crit_edge, %do.body13.cleanup189_crit_edge, %do.body2.cleanup189_crit_edge, %entry.cleanup189_crit_edge
  %retval.18 = phi i32 [ %call169, %do.body167.cleanup189_crit_edge ], [ %call158, %do.body156.cleanup189_crit_edge ], [ %call147, %do.body145.cleanup189_crit_edge ], [ %call136, %do.end133.cleanup189_crit_edge ], [ %call125, %do.body123.cleanup189_crit_edge ], [ %call114, %do.body112.cleanup189_crit_edge ], [ %call103, %do.body101.cleanup189_crit_edge ], [ %call92, %do.body90.cleanup189_crit_edge ], [ %call81, %do.body79.cleanup189_crit_edge ], [ %call70, %do.body68.cleanup189_crit_edge ], [ %call59, %do.body57.cleanup189_crit_edge ], [ %call48, %do.body46.cleanup189_crit_edge ], [ %call37, %do.body35.cleanup189_crit_edge ], [ %call26, %do.body24.cleanup189_crit_edge ], [ %call15, %do.body13.cleanup189_crit_edge ], [ %call4, %do.body2.cleanup189_crit_edge ], [ %call1, %entry.cleanup189_crit_edge ], [ %2, %do.body178 ]
  ret i32 %retval.18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st7703_debugfs_init(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #5
  %debugfs = getelementptr inbounds %struct.st7703, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %debugfs, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.66, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %ctx, ptr noundef nonnull @allpixelson_fops) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %prepared = getelementptr i8, ptr %panel, i32 36
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st7703_prepare.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st7703_prepare, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !191

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st7703_prepare.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.48) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %vcc = getelementptr i8, ptr %panel, i32 28
  %4 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc, align 4
  %call7 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.49, i32 noundef %call7) #8
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %8 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iovcc, align 4
  %call14 = tail call i32 @regulator_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.51, i32 noundef %call14) #8
  %12 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcc, align 4
  %call25 = tail call i32 @regulator_disable(ptr noundef %13) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %reset_gpio = getelementptr i8, ptr %panel, i32 24
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 20) #5
  %18 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end19, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end11 ], [ %call14, %do.end19 ], [ 0, %if.end21 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_enable(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %1, i32 -8
  %desc = getelementptr i8, ptr %panel, i32 44
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %init_sequence = getelementptr inbounds %struct.st7703_panel_desc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %init_sequence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_sequence, align 4
  %call2 = tail call i32 %5(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.53, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #5
  %call4 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.56, i32 noundef %call4) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 60) #5
  %call12 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %do.body15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st7703_enable.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st7703_enable, %if.then20)) #5
          to label %cleanup [label %if.then20], !srcloc !191

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st7703_enable.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.58) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body15, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %call2) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.62, i32 noundef %call4) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr i8, ptr %panel, i32 36
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reset_gpio = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  %iovcc = getelementptr i8, ptr %panel, i32 32
  %4 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iovcc, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #5
  %vcc = getelementptr i8, ptr %panel, i32 28
  %6 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %7) #5
  %8 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7703_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %desc = getelementptr i8, ptr %panel, i32 44
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %5) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %13 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay, align 2
  %conv8 = zext i16 %15 to i32
  %call11 = tail call i32 @drm_mode_vrefresh(ptr noundef %11) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.64, i32 noundef %conv, i32 noundef %conv8, i32 noundef %call11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call2) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 28
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 26
  %17 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %width_mm, align 2
  %conv12 = zext i16 %18 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %19 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv12, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 27
  %20 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %height_mm, align 4
  %conv14 = zext i16 %21 to i32
  %height_mm16 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %height_mm16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv14, ptr %height_mm16, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #5
  %call18 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @mantix_bus_formats, i32 noundef 1) #5
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
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allpixelson_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @allpixelson_set, ptr noundef nonnull @.str.67) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allpixelson_set(ptr noundef %data, i64 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @allpixelson_set.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@allpixelson_set, %if.then)) #5
          to label %do.body5 [label %if.then], !srcloc !191

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @allpixelson_set.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.69) #5
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %call6 = tail call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i, ptr noundef nonnull @allpixelson_set.d, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.body5.cleanup18_crit_edge, label %do.end10

do.body5.cleanup18_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = trunc i64 %val to i32
  %conv = mul i32 %4, 1000
  tail call void @msleep(i32 noundef %conv) #5
  %panel = getelementptr inbounds %struct.st7703, ptr %data, i32 0, i32 1
  %call11 = tail call i32 @drm_panel_disable(ptr noundef %panel) #5
  %call13 = tail call i32 @drm_panel_unprepare(ptr noundef %panel) #5
  %call15 = tail call i32 @drm_panel_prepare(ptr noundef %panel) #5
  %call17 = tail call i32 @drm_panel_enable(ptr noundef %panel) #5
  br label %cleanup18

cleanup18:                                        ; preds = %do.end10, %do.body5.cleanup18_crit_edge
  %retval.1 = phi i32 [ 0, %do.end10 ], [ %call6, %do.body5.cleanup18_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !158, !160, !161, !163, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__initcall__kmod_panel_sitronix_st7703__305_635_st7703_driver_init6, !1, !"__initcall__kmod_panel_sitronix_st7703__305_635_st7703_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 635, i32 1}
!2 = !{ptr @__exitcall_st7703_driver_exit, !1, !"__exitcall_st7703_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 637, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 638, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 639, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 631, i32 11}
!12 = !{ptr @st7703_driver, !13, !"st7703_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 626, i32 31}
!14 = !{ptr @st7703_of_match, !15, !"st7703_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 619, i32 34}
!16 = !{ptr @jh057n00900_panel_desc, !17, !"jh057n00900_panel_desc", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 156, i32 39}
!18 = !{ptr @jh057n00900_mode, !19, !"jh057n00900_mode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 141, i32 38}
!20 = !{ptr @jh057n_init_sequence.d, !21, !"d", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 93, i32 2}
!22 = !{ptr @jh057n_init_sequence.d.1, !23, !"d", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 95, i32 2}
!24 = !{ptr @jh057n_init_sequence.d.2, !25, !"d", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 98, i32 2}
!26 = !{ptr @jh057n_init_sequence.d.3, !27, !"d", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 101, i32 2}
!28 = !{ptr @jh057n_init_sequence.d.4, !29, !"d", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 102, i32 2}
!30 = !{ptr @jh057n_init_sequence.d.5, !31, !"d", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 103, i32 2}
!32 = !{ptr @jh057n_init_sequence.d.6, !33, !"d", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 104, i32 2}
!34 = !{ptr @jh057n_init_sequence.d.7, !35, !"d", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 105, i32 2}
!36 = !{ptr @jh057n_init_sequence.d.8, !37, !"d", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 108, i32 2}
!38 = !{ptr @jh057n_init_sequence.d.9, !39, !"d", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 111, i32 2}
!40 = !{ptr @jh057n_init_sequence.d.10, !41, !"d", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 112, i32 2}
!42 = !{ptr @jh057n_init_sequence.d.11, !43, !"d", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 113, i32 2}
!44 = !{ptr @jh057n_init_sequence.d.12, !45, !"d", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 122, i32 2}
!46 = !{ptr @jh057n_init_sequence.d.13, !47, !"d", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 131, i32 2}
!48 = !{ptr @xbd599_desc, !49, !"xbd599_desc", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 350, i32 39}
!50 = !{ptr @xbd599_mode, !51, !"xbd599_mode", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 335, i32 38}
!52 = !{ptr @xbd599_init_sequence.d, !53, !"d", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 183, i32 2}
!54 = !{ptr @xbd599_init_sequence.d.14, !55, !"d", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 185, i32 2}
!56 = !{ptr @xbd599_init_sequence.d.15, !57, !"d", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 197, i32 2}
!58 = !{ptr @xbd599_init_sequence.d.16, !59, !"d", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 204, i32 2}
!60 = !{ptr @xbd599_init_sequence.d.17, !61, !"d", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 215, i32 2}
!62 = !{ptr @xbd599_init_sequence.d.18, !63, !"d", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 227, i32 2}
!64 = !{ptr @xbd599_init_sequence.d.19, !65, !"d", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 233, i32 2}
!66 = !{ptr @xbd599_init_sequence.d.20, !67, !"d", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 236, i32 2}
!68 = !{ptr @xbd599_init_sequence.d.21, !69, !"d", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 239, i32 2}
!70 = !{ptr @xbd599_init_sequence.d.22, !71, !"d", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 249, i32 2}
!72 = !{ptr @xbd599_init_sequence.d.23, !73, !"d", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 270, i32 2}
!74 = !{ptr @xbd599_init_sequence.d.24, !75, !"d", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 272, i32 2}
!76 = !{ptr @xbd599_init_sequence.d.25, !77, !"d", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 290, i32 2}
!78 = !{ptr @xbd599_init_sequence.d.26, !79, !"d", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 295, i32 2}
!80 = !{ptr @xbd599_init_sequence.d.27, !81, !"d", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 300, i32 2}
!82 = !{ptr @xbd599_init_sequence.d.28, !83, !"d", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 303, i32 2}
!84 = !{ptr @xbd599_init_sequence.d.29, !85, !"d", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 314, i32 2}
!86 = !{ptr @xbd599_init_sequence.d.30, !87, !"d", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 325, i32 2}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 540, i32 40}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 542, i32 55}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 553, i32 37}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 555, i32 48}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 557, i32 39}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 560, i32 10}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 573, i32 3}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @st7703_probe._entry, !101, !"_entry", i1 false, i1 false}
!107 = !{ptr @st7703_probe._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 578, i32 2}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @st7703_probe._entry.42, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @st7703_probe._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @st7703_drm_funcs, !114, !"st7703_drm_funcs", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 488, i32 37}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 430, i32 2}
!117 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @st7703_prepare.__UNIQUE_ID_ddebug303, !116, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 433, i32 3}
!122 = !{ptr @st7703_prepare._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @st7703_prepare._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 438, i32 3}
!126 = !{ptr @st7703_prepare._entry.50, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @st7703_prepare._entry_ptr.52, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 366, i32 3}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @st7703_enable._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @st7703_enable._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 374, i32 3}
!135 = !{ptr @st7703_enable._entry.55, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @st7703_enable._entry_ptr.57, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 385, i32 2}
!139 = !{ptr @st7703_enable.__UNIQUE_ID_ddebug302, !138, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 398, i32 3}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @st7703_disable._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @st7703_disable._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 402, i32 3}
!147 = !{ptr @st7703_disable._entry.61, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @st7703_disable._entry_ptr.63, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 468, i32 3}
!151 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @st7703_get_modes._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @st7703_get_modes._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @mantix_bus_formats, !155, !"mantix_bus_formats", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 456, i32 18}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 520, i32 22}
!158 = !{ptr @allpixelson_fops, !159, !"allpixelson_fops", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 513, i32 1}
!160 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 501, i32 2}
!163 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @allpixelson_set.__UNIQUE_ID_ddebug304, !162, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!165 = !{ptr @allpixelson_set.d, !166, !"d", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 502, i32 2}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 610, i32 3}
!169 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @st7703_remove._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @st7703_remove._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 594, i32 3}
!174 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @st7703_shutdown._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @st7703_shutdown._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7703.c", i32 598, i32 3}
!179 = !{ptr @st7703_shutdown._entry.74, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @st7703_shutdown._entry_ptr.76, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{i8 0, i8 2}
!191 = !{i64 2148504938, i64 2148504943, i64 2148504956, i64 2148505000, i64 2148505034, i64 2148505055}
