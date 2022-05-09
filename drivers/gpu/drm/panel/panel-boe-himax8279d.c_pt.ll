; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-boe-himax8279d.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-boe-himax8279d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.panel_desc = type { ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.panel_cmd = type { i8, i8 }
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
%struct.panel_info = type { %struct.drm_panel, ptr, ptr, ptr, ptr, ptr, i8, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_boe_himax8279d__302_961_panel_driver_init6 = internal global ptr @panel_driver_init, section ".initcall6.init", align 4
@panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @panel_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @panel_probe, ptr @panel_remove, ptr @panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_panel_driver_exit = internal global ptr @panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [63 x i8] c"panel_boe_himax8279d.author=Jerry Han <jerry.han.hq@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [55 x i8] c"panel_boe_himax8279d.description=Boe Himax8279d driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [69 x i8] c"panel_boe_himax8279d.file=drivers/gpu/drm/panel/panel-boe-himax8279d\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [36 x i8] c"panel_boe_himax8279d.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-boe-himax8279d\00", [43 x i8] zeroinitializer }, align 32
@panel_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,himax8279d8p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_himax8279d8p_panel_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,himax8279d10p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_himax8279d10p_panel_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@boe_himax8279d8p_panel_desc = internal constant { %struct.panel_desc, [60 x i8] } { %struct.panel_desc { ptr @default_display_mode, i32 8, i32 107, i32 172, i32 3077, i32 0, i32 4, ptr @boe_himax8279d8p_on_cmds, i32 260 }, [60 x i8] zeroinitializer }, align 32
@boe_himax8279d10p_panel_desc = internal constant { %struct.panel_desc, [60 x i8] } { %struct.panel_desc { ptr @default_display_mode, i32 8, i32 135, i32 216, i32 3077, i32 0, i32 4, ptr @boe_himax8279d10p_on_cmds, i32 283 }, [60 x i8] zeroinitializer }, align 32
@default_display_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 159420, i16 1200, i16 1280, i16 1340, i16 1364, i16 0, i16 1920, i16 1930, i16 1944, i16 1948, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@boe_himax8279d8p_on_cmds = internal constant { [260 x %struct.panel_cmd], [152 x i8] } { [260 x %struct.panel_cmd] [%struct.panel_cmd { i8 -80, i8 5 }, %struct.panel_cmd { i8 -79, i8 -27 }, %struct.panel_cmd { i8 -77, i8 82 }, %struct.panel_cmd { i8 -64, i8 0 }, %struct.panel_cmd { i8 -62, i8 87 }, %struct.panel_cmd { i8 -39, i8 -123 }, %struct.panel_cmd { i8 -80, i8 1 }, %struct.panel_cmd { i8 -56, i8 0 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -52, i8 38 }, %struct.panel_cmd { i8 -51, i8 38 }, %struct.panel_cmd { i8 -36, i8 0 }, %struct.panel_cmd { i8 -35, i8 0 }, %struct.panel_cmd { i8 -32, i8 38 }, %struct.panel_cmd { i8 -31, i8 38 }, %struct.panel_cmd { i8 -80, i8 3 }, %struct.panel_cmd { i8 -61, i8 42 }, %struct.panel_cmd { i8 -25, i8 42 }, %struct.panel_cmd { i8 -59, i8 42 }, %struct.panel_cmd { i8 -34, i8 42 }, %struct.panel_cmd { i8 -68, i8 2 }, %struct.panel_cmd { i8 -53, i8 2 }, %struct.panel_cmd { i8 -80, i8 0 }, %struct.panel_cmd { i8 -74, i8 3 }, %struct.panel_cmd { i8 -70, i8 -117 }, %struct.panel_cmd { i8 -65, i8 21 }, %struct.panel_cmd { i8 -64, i8 24 }, %struct.panel_cmd { i8 -62, i8 20 }, %struct.panel_cmd { i8 -61, i8 2 }, %struct.panel_cmd { i8 -60, i8 20 }, %struct.panel_cmd { i8 -59, i8 2 }, %struct.panel_cmd { i8 -52, i8 10 }, %struct.panel_cmd { i8 -80, i8 6 }, %struct.panel_cmd { i8 -64, i8 -91 }, %struct.panel_cmd { i8 -43, i8 32 }, %struct.panel_cmd { i8 -64, i8 0 }, %struct.panel_cmd { i8 -80, i8 2 }, %struct.panel_cmd { i8 -64, i8 0 }, %struct.panel_cmd { i8 -63, i8 2 }, %struct.panel_cmd { i8 -62, i8 6 }, %struct.panel_cmd { i8 -61, i8 22 }, %struct.panel_cmd { i8 -60, i8 14 }, %struct.panel_cmd { i8 -59, i8 24 }, %struct.panel_cmd { i8 -58, i8 38 }, %struct.panel_cmd { i8 -57, i8 50 }, %struct.panel_cmd { i8 -56, i8 63 }, %struct.panel_cmd { i8 -55, i8 63 }, %struct.panel_cmd { i8 -54, i8 63 }, %struct.panel_cmd { i8 -53, i8 63 }, %struct.panel_cmd { i8 -52, i8 61 }, %struct.panel_cmd { i8 -51, i8 47 }, %struct.panel_cmd { i8 -50, i8 47 }, %struct.panel_cmd { i8 -49, i8 47 }, %struct.panel_cmd { i8 -48, i8 7 }, %struct.panel_cmd { i8 -46, i8 0 }, %struct.panel_cmd { i8 -45, i8 2 }, %struct.panel_cmd { i8 -44, i8 6 }, %struct.panel_cmd { i8 -43, i8 18 }, %struct.panel_cmd { i8 -42, i8 10 }, %struct.panel_cmd { i8 -41, i8 20 }, %struct.panel_cmd { i8 -40, i8 34 }, %struct.panel_cmd { i8 -39, i8 46 }, %struct.panel_cmd { i8 -38, i8 61 }, %struct.panel_cmd { i8 -37, i8 63 }, %struct.panel_cmd { i8 -36, i8 63 }, %struct.panel_cmd { i8 -35, i8 63 }, %struct.panel_cmd { i8 -34, i8 61 }, %struct.panel_cmd { i8 -33, i8 47 }, %struct.panel_cmd { i8 -32, i8 47 }, %struct.panel_cmd { i8 -31, i8 47 }, %struct.panel_cmd { i8 -30, i8 7 }, %struct.panel_cmd { i8 -80, i8 7 }, %struct.panel_cmd { i8 -79, i8 24 }, %struct.panel_cmd { i8 -78, i8 25 }, %struct.panel_cmd { i8 -77, i8 46 }, %struct.panel_cmd { i8 -76, i8 82 }, %struct.panel_cmd { i8 -75, i8 114 }, %struct.panel_cmd { i8 -74, i8 -116 }, %struct.panel_cmd { i8 -73, i8 -67 }, %struct.panel_cmd { i8 -72, i8 -21 }, %struct.panel_cmd { i8 -71, i8 71 }, %struct.panel_cmd { i8 -70, i8 -106 }, %struct.panel_cmd { i8 -69, i8 30 }, %struct.panel_cmd { i8 -68, i8 -112 }, %struct.panel_cmd { i8 -67, i8 -109 }, %struct.panel_cmd { i8 -66, i8 -6 }, %struct.panel_cmd { i8 -65, i8 86 }, %struct.panel_cmd { i8 -64, i8 -116 }, %struct.panel_cmd { i8 -63, i8 -73 }, %struct.panel_cmd { i8 -62, i8 -52 }, %struct.panel_cmd { i8 -61, i8 -33 }, %struct.panel_cmd { i8 -60, i8 -24 }, %struct.panel_cmd { i8 -59, i8 -16 }, %struct.panel_cmd { i8 -58, i8 -8 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 90 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 8 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 21 }, %struct.panel_cmd { i8 -77, i8 45 }, %struct.panel_cmd { i8 -76, i8 81 }, %struct.panel_cmd { i8 -75, i8 114 }, %struct.panel_cmd { i8 -74, i8 -115 }, %struct.panel_cmd { i8 -73, i8 -66 }, %struct.panel_cmd { i8 -72, i8 -19 }, %struct.panel_cmd { i8 -71, i8 74 }, %struct.panel_cmd { i8 -70, i8 -102 }, %struct.panel_cmd { i8 -69, i8 35 }, %struct.panel_cmd { i8 -68, i8 -107 }, %struct.panel_cmd { i8 -67, i8 -104 }, %struct.panel_cmd { i8 -66, i8 -1 }, %struct.panel_cmd { i8 -65, i8 89 }, %struct.panel_cmd { i8 -64, i8 -114 }, %struct.panel_cmd { i8 -63, i8 -71 }, %struct.panel_cmd { i8 -62, i8 -51 }, %struct.panel_cmd { i8 -61, i8 -33 }, %struct.panel_cmd { i8 -60, i8 -24 }, %struct.panel_cmd { i8 -59, i8 -16 }, %struct.panel_cmd { i8 -58, i8 -8 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 90 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 9 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 44 }, %struct.panel_cmd { i8 -77, i8 54 }, %struct.panel_cmd { i8 -76, i8 83 }, %struct.panel_cmd { i8 -75, i8 115 }, %struct.panel_cmd { i8 -74, i8 -114 }, %struct.panel_cmd { i8 -73, i8 -64 }, %struct.panel_cmd { i8 -72, i8 -17 }, %struct.panel_cmd { i8 -71, i8 76 }, %struct.panel_cmd { i8 -70, i8 -99 }, %struct.panel_cmd { i8 -69, i8 37 }, %struct.panel_cmd { i8 -68, i8 -106 }, %struct.panel_cmd { i8 -67, i8 -102 }, %struct.panel_cmd { i8 -66, i8 1 }, %struct.panel_cmd { i8 -65, i8 89 }, %struct.panel_cmd { i8 -64, i8 -114 }, %struct.panel_cmd { i8 -63, i8 -71 }, %struct.panel_cmd { i8 -62, i8 -51 }, %struct.panel_cmd { i8 -61, i8 -33 }, %struct.panel_cmd { i8 -60, i8 -24 }, %struct.panel_cmd { i8 -59, i8 -16 }, %struct.panel_cmd { i8 -58, i8 -8 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 90 }, %struct.panel_cmd { i8 -52, i8 -65 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 10 }, %struct.panel_cmd { i8 -79, i8 24 }, %struct.panel_cmd { i8 -78, i8 25 }, %struct.panel_cmd { i8 -77, i8 46 }, %struct.panel_cmd { i8 -76, i8 82 }, %struct.panel_cmd { i8 -75, i8 114 }, %struct.panel_cmd { i8 -74, i8 -116 }, %struct.panel_cmd { i8 -73, i8 -67 }, %struct.panel_cmd { i8 -72, i8 -21 }, %struct.panel_cmd { i8 -71, i8 71 }, %struct.panel_cmd { i8 -70, i8 -106 }, %struct.panel_cmd { i8 -69, i8 30 }, %struct.panel_cmd { i8 -68, i8 -112 }, %struct.panel_cmd { i8 -67, i8 -109 }, %struct.panel_cmd { i8 -66, i8 -6 }, %struct.panel_cmd { i8 -65, i8 86 }, %struct.panel_cmd { i8 -64, i8 -116 }, %struct.panel_cmd { i8 -63, i8 -73 }, %struct.panel_cmd { i8 -62, i8 -52 }, %struct.panel_cmd { i8 -61, i8 -33 }, %struct.panel_cmd { i8 -60, i8 -24 }, %struct.panel_cmd { i8 -59, i8 -16 }, %struct.panel_cmd { i8 -58, i8 -8 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 90 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 11 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 21 }, %struct.panel_cmd { i8 -77, i8 45 }, %struct.panel_cmd { i8 -76, i8 81 }, %struct.panel_cmd { i8 -75, i8 114 }, %struct.panel_cmd { i8 -74, i8 -115 }, %struct.panel_cmd { i8 -73, i8 -66 }, %struct.panel_cmd { i8 -72, i8 -19 }, %struct.panel_cmd { i8 -71, i8 74 }, %struct.panel_cmd { i8 -70, i8 -102 }, %struct.panel_cmd { i8 -69, i8 35 }, %struct.panel_cmd { i8 -68, i8 -107 }, %struct.panel_cmd { i8 -67, i8 -104 }, %struct.panel_cmd { i8 -66, i8 -1 }, %struct.panel_cmd { i8 -65, i8 89 }, %struct.panel_cmd { i8 -64, i8 -114 }, %struct.panel_cmd { i8 -63, i8 -71 }, %struct.panel_cmd { i8 -62, i8 -51 }, %struct.panel_cmd { i8 -61, i8 -33 }, %struct.panel_cmd { i8 -60, i8 -24 }, %struct.panel_cmd { i8 -59, i8 -16 }, %struct.panel_cmd { i8 -58, i8 -8 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 90 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 12 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 44 }, %struct.panel_cmd { i8 -77, i8 54 }, %struct.panel_cmd { i8 -76, i8 83 }, %struct.panel_cmd { i8 -75, i8 115 }, %struct.panel_cmd { i8 -74, i8 -114 }, %struct.panel_cmd { i8 -73, i8 -64 }, %struct.panel_cmd { i8 -72, i8 -17 }, %struct.panel_cmd { i8 -71, i8 76 }, %struct.panel_cmd { i8 -70, i8 -99 }, %struct.panel_cmd { i8 -69, i8 37 }, %struct.panel_cmd { i8 -68, i8 -106 }, %struct.panel_cmd { i8 -67, i8 -102 }, %struct.panel_cmd { i8 -66, i8 1 }, %struct.panel_cmd { i8 -65, i8 89 }, %struct.panel_cmd { i8 -64, i8 -114 }, %struct.panel_cmd { i8 -63, i8 -71 }, %struct.panel_cmd { i8 -62, i8 -51 }, %struct.panel_cmd { i8 -61, i8 -33 }, %struct.panel_cmd { i8 -60, i8 -24 }, %struct.panel_cmd { i8 -59, i8 -16 }, %struct.panel_cmd { i8 -58, i8 -8 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 90 }, %struct.panel_cmd { i8 -52, i8 -65 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 4 }, %struct.panel_cmd { i8 -75, i8 2 }, %struct.panel_cmd { i8 -74, i8 1 }], [152 x i8] zeroinitializer }, align 32
@boe_himax8279d10p_on_cmds = internal constant { [283 x %struct.panel_cmd], [138 x i8] } { [283 x %struct.panel_cmd] [%struct.panel_cmd { i8 -80, i8 5 }, %struct.panel_cmd { i8 -79, i8 -27 }, %struct.panel_cmd { i8 -77, i8 82 }, %struct.panel_cmd { i8 -80, i8 0 }, %struct.panel_cmd { i8 -74, i8 3 }, %struct.panel_cmd { i8 -70, i8 -117 }, %struct.panel_cmd { i8 -65, i8 26 }, %struct.panel_cmd { i8 -64, i8 15 }, %struct.panel_cmd { i8 -62, i8 12 }, %struct.panel_cmd { i8 -61, i8 2 }, %struct.panel_cmd { i8 -60, i8 12 }, %struct.panel_cmd { i8 -59, i8 2 }, %struct.panel_cmd { i8 -80, i8 1 }, %struct.panel_cmd { i8 -32, i8 38 }, %struct.panel_cmd { i8 -31, i8 38 }, %struct.panel_cmd { i8 -36, i8 0 }, %struct.panel_cmd { i8 -35, i8 0 }, %struct.panel_cmd { i8 -52, i8 38 }, %struct.panel_cmd { i8 -51, i8 38 }, %struct.panel_cmd { i8 -56, i8 0 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -46, i8 3 }, %struct.panel_cmd { i8 -45, i8 3 }, %struct.panel_cmd { i8 -26, i8 4 }, %struct.panel_cmd { i8 -25, i8 4 }, %struct.panel_cmd { i8 -60, i8 9 }, %struct.panel_cmd { i8 -59, i8 9 }, %struct.panel_cmd { i8 -40, i8 10 }, %struct.panel_cmd { i8 -39, i8 10 }, %struct.panel_cmd { i8 -62, i8 11 }, %struct.panel_cmd { i8 -61, i8 11 }, %struct.panel_cmd { i8 -42, i8 12 }, %struct.panel_cmd { i8 -41, i8 12 }, %struct.panel_cmd { i8 -64, i8 5 }, %struct.panel_cmd { i8 -63, i8 5 }, %struct.panel_cmd { i8 -44, i8 6 }, %struct.panel_cmd { i8 -43, i8 6 }, %struct.panel_cmd { i8 -54, i8 7 }, %struct.panel_cmd { i8 -53, i8 7 }, %struct.panel_cmd { i8 -34, i8 8 }, %struct.panel_cmd { i8 -33, i8 8 }, %struct.panel_cmd { i8 -80, i8 2 }, %struct.panel_cmd { i8 -64, i8 0 }, %struct.panel_cmd { i8 -63, i8 13 }, %struct.panel_cmd { i8 -62, i8 23 }, %struct.panel_cmd { i8 -61, i8 38 }, %struct.panel_cmd { i8 -60, i8 49 }, %struct.panel_cmd { i8 -59, i8 28 }, %struct.panel_cmd { i8 -58, i8 44 }, %struct.panel_cmd { i8 -57, i8 51 }, %struct.panel_cmd { i8 -56, i8 49 }, %struct.panel_cmd { i8 -55, i8 55 }, %struct.panel_cmd { i8 -54, i8 55 }, %struct.panel_cmd { i8 -53, i8 55 }, %struct.panel_cmd { i8 -52, i8 57 }, %struct.panel_cmd { i8 -51, i8 46 }, %struct.panel_cmd { i8 -50, i8 47 }, %struct.panel_cmd { i8 -49, i8 47 }, %struct.panel_cmd { i8 -48, i8 7 }, %struct.panel_cmd { i8 -46, i8 0 }, %struct.panel_cmd { i8 -45, i8 13 }, %struct.panel_cmd { i8 -44, i8 23 }, %struct.panel_cmd { i8 -43, i8 38 }, %struct.panel_cmd { i8 -42, i8 49 }, %struct.panel_cmd { i8 -41, i8 63 }, %struct.panel_cmd { i8 -40, i8 63 }, %struct.panel_cmd { i8 -39, i8 63 }, %struct.panel_cmd { i8 -38, i8 63 }, %struct.panel_cmd { i8 -37, i8 55 }, %struct.panel_cmd { i8 -36, i8 55 }, %struct.panel_cmd { i8 -35, i8 55 }, %struct.panel_cmd { i8 -34, i8 57 }, %struct.panel_cmd { i8 -33, i8 46 }, %struct.panel_cmd { i8 -32, i8 47 }, %struct.panel_cmd { i8 -31, i8 47 }, %struct.panel_cmd { i8 -30, i8 7 }, %struct.panel_cmd { i8 -80, i8 3 }, %struct.panel_cmd { i8 -56, i8 11 }, %struct.panel_cmd { i8 -55, i8 7 }, %struct.panel_cmd { i8 -61, i8 0 }, %struct.panel_cmd { i8 -25, i8 0 }, %struct.panel_cmd { i8 -59, i8 42 }, %struct.panel_cmd { i8 -34, i8 42 }, %struct.panel_cmd { i8 -54, i8 67 }, %struct.panel_cmd { i8 -55, i8 7 }, %struct.panel_cmd { i8 -28, i8 -64 }, %struct.panel_cmd { i8 -27, i8 13 }, %struct.panel_cmd { i8 -53, i8 1 }, %struct.panel_cmd { i8 -68, i8 1 }, %struct.panel_cmd { i8 -80, i8 6 }, %struct.panel_cmd { i8 -72, i8 -91 }, %struct.panel_cmd { i8 -64, i8 -91 }, %struct.panel_cmd { i8 -57, i8 15 }, %struct.panel_cmd { i8 -43, i8 50 }, %struct.panel_cmd { i8 -72, i8 0 }, %struct.panel_cmd { i8 -64, i8 0 }, %struct.panel_cmd { i8 -68, i8 0 }, %struct.panel_cmd { i8 -80, i8 7 }, %struct.panel_cmd { i8 -79, i8 0 }, %struct.panel_cmd { i8 -78, i8 5 }, %struct.panel_cmd { i8 -77, i8 16 }, %struct.panel_cmd { i8 -76, i8 34 }, %struct.panel_cmd { i8 -75, i8 54 }, %struct.panel_cmd { i8 -74, i8 74 }, %struct.panel_cmd { i8 -73, i8 108 }, %struct.panel_cmd { i8 -72, i8 -102 }, %struct.panel_cmd { i8 -71, i8 -41 }, %struct.panel_cmd { i8 -70, i8 23 }, %struct.panel_cmd { i8 -69, i8 -110 }, %struct.panel_cmd { i8 -68, i8 21 }, %struct.panel_cmd { i8 -67, i8 24 }, %struct.panel_cmd { i8 -66, i8 -116 }, %struct.panel_cmd { i8 -65, i8 0 }, %struct.panel_cmd { i8 -64, i8 58 }, %struct.panel_cmd { i8 -63, i8 114 }, %struct.panel_cmd { i8 -62, i8 -116 }, %struct.panel_cmd { i8 -61, i8 -91 }, %struct.panel_cmd { i8 -60, i8 -79 }, %struct.panel_cmd { i8 -59, i8 -66 }, %struct.panel_cmd { i8 -58, i8 -54 }, %struct.panel_cmd { i8 -57, i8 -47 }, %struct.panel_cmd { i8 -56, i8 -44 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 22 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 8 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 5 }, %struct.panel_cmd { i8 -77, i8 17 }, %struct.panel_cmd { i8 -76, i8 36 }, %struct.panel_cmd { i8 -75, i8 57 }, %struct.panel_cmd { i8 -74, i8 78 }, %struct.panel_cmd { i8 -73, i8 114 }, %struct.panel_cmd { i8 -72, i8 -93 }, %struct.panel_cmd { i8 -71, i8 -31 }, %struct.panel_cmd { i8 -70, i8 37 }, %struct.panel_cmd { i8 -69, i8 -88 }, %struct.panel_cmd { i8 -68, i8 46 }, %struct.panel_cmd { i8 -67, i8 50 }, %struct.panel_cmd { i8 -66, i8 -83 }, %struct.panel_cmd { i8 -65, i8 40 }, %struct.panel_cmd { i8 -64, i8 99 }, %struct.panel_cmd { i8 -63, i8 -101 }, %struct.panel_cmd { i8 -62, i8 -75 }, %struct.panel_cmd { i8 -61, i8 -49 }, %struct.panel_cmd { i8 -60, i8 -37 }, %struct.panel_cmd { i8 -59, i8 -24 }, %struct.panel_cmd { i8 -58, i8 -11 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 22 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 9 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 4 }, %struct.panel_cmd { i8 -77, i8 15 }, %struct.panel_cmd { i8 -76, i8 34 }, %struct.panel_cmd { i8 -75, i8 55 }, %struct.panel_cmd { i8 -74, i8 77 }, %struct.panel_cmd { i8 -73, i8 113 }, %struct.panel_cmd { i8 -72, i8 -94 }, %struct.panel_cmd { i8 -71, i8 -31 }, %struct.panel_cmd { i8 -70, i8 38 }, %struct.panel_cmd { i8 -69, i8 -87 }, %struct.panel_cmd { i8 -68, i8 47 }, %struct.panel_cmd { i8 -67, i8 51 }, %struct.panel_cmd { i8 -66, i8 -84 }, %struct.panel_cmd { i8 -65, i8 36 }, %struct.panel_cmd { i8 -64, i8 93 }, %struct.panel_cmd { i8 -63, i8 -108 }, %struct.panel_cmd { i8 -62, i8 -84 }, %struct.panel_cmd { i8 -61, i8 -59 }, %struct.panel_cmd { i8 -60, i8 -47 }, %struct.panel_cmd { i8 -59, i8 -36 }, %struct.panel_cmd { i8 -58, i8 -24 }, %struct.panel_cmd { i8 -57, i8 -19 }, %struct.panel_cmd { i8 -56, i8 -16 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 22 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 10 }, %struct.panel_cmd { i8 -79, i8 0 }, %struct.panel_cmd { i8 -78, i8 5 }, %struct.panel_cmd { i8 -77, i8 16 }, %struct.panel_cmd { i8 -76, i8 34 }, %struct.panel_cmd { i8 -75, i8 54 }, %struct.panel_cmd { i8 -74, i8 74 }, %struct.panel_cmd { i8 -73, i8 108 }, %struct.panel_cmd { i8 -72, i8 -102 }, %struct.panel_cmd { i8 -71, i8 -41 }, %struct.panel_cmd { i8 -70, i8 23 }, %struct.panel_cmd { i8 -69, i8 -110 }, %struct.panel_cmd { i8 -68, i8 21 }, %struct.panel_cmd { i8 -67, i8 24 }, %struct.panel_cmd { i8 -66, i8 -116 }, %struct.panel_cmd { i8 -65, i8 0 }, %struct.panel_cmd { i8 -64, i8 58 }, %struct.panel_cmd { i8 -63, i8 114 }, %struct.panel_cmd { i8 -62, i8 -116 }, %struct.panel_cmd { i8 -61, i8 -91 }, %struct.panel_cmd { i8 -60, i8 -79 }, %struct.panel_cmd { i8 -59, i8 -66 }, %struct.panel_cmd { i8 -58, i8 -54 }, %struct.panel_cmd { i8 -57, i8 -47 }, %struct.panel_cmd { i8 -56, i8 -44 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 22 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 11 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 5 }, %struct.panel_cmd { i8 -77, i8 17 }, %struct.panel_cmd { i8 -76, i8 36 }, %struct.panel_cmd { i8 -75, i8 57 }, %struct.panel_cmd { i8 -74, i8 78 }, %struct.panel_cmd { i8 -73, i8 114 }, %struct.panel_cmd { i8 -72, i8 -93 }, %struct.panel_cmd { i8 -71, i8 -31 }, %struct.panel_cmd { i8 -70, i8 37 }, %struct.panel_cmd { i8 -69, i8 -88 }, %struct.panel_cmd { i8 -68, i8 46 }, %struct.panel_cmd { i8 -67, i8 50 }, %struct.panel_cmd { i8 -66, i8 -83 }, %struct.panel_cmd { i8 -65, i8 40 }, %struct.panel_cmd { i8 -64, i8 99 }, %struct.panel_cmd { i8 -63, i8 -101 }, %struct.panel_cmd { i8 -62, i8 -75 }, %struct.panel_cmd { i8 -61, i8 -49 }, %struct.panel_cmd { i8 -60, i8 -37 }, %struct.panel_cmd { i8 -59, i8 -24 }, %struct.panel_cmd { i8 -58, i8 -11 }, %struct.panel_cmd { i8 -57, i8 -6 }, %struct.panel_cmd { i8 -56, i8 -4 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 22 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }, %struct.panel_cmd { i8 -80, i8 12 }, %struct.panel_cmd { i8 -79, i8 4 }, %struct.panel_cmd { i8 -78, i8 4 }, %struct.panel_cmd { i8 -77, i8 15 }, %struct.panel_cmd { i8 -76, i8 34 }, %struct.panel_cmd { i8 -75, i8 55 }, %struct.panel_cmd { i8 -74, i8 77 }, %struct.panel_cmd { i8 -73, i8 113 }, %struct.panel_cmd { i8 -72, i8 -94 }, %struct.panel_cmd { i8 -71, i8 -31 }, %struct.panel_cmd { i8 -70, i8 38 }, %struct.panel_cmd { i8 -69, i8 -87 }, %struct.panel_cmd { i8 -68, i8 47 }, %struct.panel_cmd { i8 -67, i8 51 }, %struct.panel_cmd { i8 -66, i8 -84 }, %struct.panel_cmd { i8 -65, i8 36 }, %struct.panel_cmd { i8 -64, i8 93 }, %struct.panel_cmd { i8 -63, i8 -108 }, %struct.panel_cmd { i8 -62, i8 -84 }, %struct.panel_cmd { i8 -61, i8 -59 }, %struct.panel_cmd { i8 -60, i8 -47 }, %struct.panel_cmd { i8 -59, i8 -36 }, %struct.panel_cmd { i8 -58, i8 -24 }, %struct.panel_cmd { i8 -57, i8 -19 }, %struct.panel_cmd { i8 -56, i8 -16 }, %struct.panel_cmd { i8 -55, i8 0 }, %struct.panel_cmd { i8 -54, i8 0 }, %struct.panel_cmd { i8 -53, i8 22 }, %struct.panel_cmd { i8 -52, i8 -81 }, %struct.panel_cmd { i8 -51, i8 -1 }, %struct.panel_cmd { i8 -50, i8 -1 }], [138 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pp18\00", [27 x i8] zeroinitializer }, align 32
@panel_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 860, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get pp18 gpio: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"panel_add\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-boe-himax8279d.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panel_add._entry_ptr = internal global ptr @panel_add._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pp33\00", [27 x i8] zeroinitializer }, align 32
@panel_add._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 868, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get pp33 gpio: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@panel_add._entry_ptr.10 = internal global ptr @panel_add._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@panel_add._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 876, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get enable gpio: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@panel_add._entry_ptr.14 = internal global ptr @panel_add._entry.12, section ".printk_index", align 4
@panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @boe_panel_prepare, ptr @boe_panel_enable, ptr @boe_panel_disable, ptr @boe_panel_unprepare, ptr @boe_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@boe_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to send DCS Init Code: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"boe_panel_prepare\00", [46 x i8] zeroinitializer }, align 32
@boe_panel_prepare._entry_ptr = internal global ptr @boe_panel_prepare._entry, section ".printk_index", align 4
@boe_panel_prepare._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@boe_panel_prepare._entry_ptr.19 = internal global ptr @boe_panel_prepare._entry.17, section ".printk_index", align 4
@boe_panel_prepare._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@boe_panel_prepare._entry_ptr.22 = internal global ptr @boe_panel_prepare._entry.20, section ".printk_index", align 4
@boe_panel_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"boe_panel_enable\00", [47 x i8] zeroinitializer }, align 32
@boe_panel_enable._entry_ptr = internal global ptr @boe_panel_enable._entry, section ".printk_index", align 4
@boe_panel_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 95, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"boe_panel_disable\00", [46 x i8] zeroinitializer }, align 32
@boe_panel_disable._entry_ptr = internal global ptr @boe_panel_disable._entry, section ".printk_index", align 4
@boe_panel_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boe_panel_unprepare\00", [44 x i8] zeroinitializer }, align 32
@boe_panel_unprepare._entry_ptr = internal global ptr @boe_panel_unprepare._entry, section ".printk_index", align 4
@boe_panel_unprepare._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@boe_panel_unprepare._entry_ptr.29 = internal global ptr @boe_panel_unprepare._entry.27, section ".printk_index", align 4
@boe_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boe_panel_get_modes\00", [44 x i8] zeroinitializer }, align 32
@boe_panel_get_modes._entry_ptr = internal global ptr @boe_panel_get_modes._entry, section ".printk_index", align 4
@panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 929, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel_remove\00", [19 x i8] zeroinitializer }, align 32
@panel_remove._entry_ptr = internal global ptr @panel_remove._entry, section ".printk_index", align 4
@panel_remove._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 933, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to unprepare panel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@panel_remove._entry_ptr.36 = internal global ptr @panel_remove._entry.34, section ".printk_index", align 4
@panel_remove._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.4, i32 937, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@panel_remove._entry_ptr.39 = internal global ptr @panel_remove._entry.37, section ".printk_index", align 4
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"panel_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 952, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 954, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"panel_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 836, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"boe_himax8279d8p_panel_desc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 523, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [29 x i8] c"boe_himax8279d10p_panel_desc\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 823, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"default_display_mode\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 247, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"boe_himax8279d8p_on_cmds\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 260, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"boe_himax8279d10p_on_cmds\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 537, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 856, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 860, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 864, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 868, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 872, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 876, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"panel_funcs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 239, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 162, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 168, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 177, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 205, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 95, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 114, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 118, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 223, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 929, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 933, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-boe-himax8279d.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 937, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_panel_driver_exit, ptr @__initcall__kmod_panel_boe_himax8279d__302_961_panel_driver_init6, ptr @boe_panel_disable._entry, ptr @boe_panel_disable._entry_ptr, ptr @boe_panel_enable._entry, ptr @boe_panel_enable._entry_ptr, ptr @boe_panel_get_modes._entry, ptr @boe_panel_get_modes._entry_ptr, ptr @boe_panel_prepare._entry, ptr @boe_panel_prepare._entry.17, ptr @boe_panel_prepare._entry.20, ptr @boe_panel_prepare._entry_ptr, ptr @boe_panel_prepare._entry_ptr.19, ptr @boe_panel_prepare._entry_ptr.22, ptr @boe_panel_unprepare._entry, ptr @boe_panel_unprepare._entry.27, ptr @boe_panel_unprepare._entry_ptr, ptr @boe_panel_unprepare._entry_ptr.29, ptr @panel_add._entry, ptr @panel_add._entry.12, ptr @panel_add._entry.8, ptr @panel_add._entry_ptr, ptr @panel_add._entry_ptr.10, ptr @panel_add._entry_ptr.14, ptr @panel_driver_exit, ptr @panel_remove._entry, ptr @panel_remove._entry.34, ptr @panel_remove._entry.37, ptr @panel_remove._entry_ptr, ptr @panel_remove._entry_ptr.36, ptr @panel_remove._entry_ptr.39, ptr @panel_driver, ptr @.str, ptr @panel_of_match, ptr @boe_himax8279d8p_panel_desc, ptr @boe_himax8279d10p_panel_desc, ptr @default_display_mode, ptr @boe_himax8279d8p_on_cmds, ptr @boe_himax8279d10p_on_cmds, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @panel_funcs, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_himax8279d8p_panel_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_himax8279d10p_panel_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_display_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_himax8279d8p_on_cmds to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_himax8279d10p_on_cmds to i32), i32 566, i32 704, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_add._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_add._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_prepare._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_prepare._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_unprepare._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_remove._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_remove._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @panel_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @panel_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %mode_flags = getelementptr inbounds %struct.panel_desc, ptr %call2, i32 0, i32 4
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 4
  %mode_flags3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mode_flags3, align 8
  %format = getelementptr inbounds %struct.panel_desc, ptr %call2, i32 0, i32 5
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %format4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %5 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format4, align 4
  %lanes = getelementptr inbounds %struct.panel_desc, ptr %call2, i32 0, i32 6
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes, align 4
  %lanes5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %8 = ptrtoint ptr %lanes5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lanes5, align 8
  %desc6 = getelementptr inbounds %struct.panel_info, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %desc6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %desc6, align 4
  %link = getelementptr inbounds %struct.panel_info, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dsi, ptr %link, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i34 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #4
  %pp18_gpio.i = getelementptr inbounds %struct.panel_info, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %pp18_gpio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i34, ptr %pp18_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.end
  %cmp.not.i = icmp eq ptr %call.i34, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call.i34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %13) #7
  br label %panel_add.exit

if.end7.i:                                        ; preds = %if.end
  %call8.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 7) #4
  %pp33_gpio.i = getelementptr inbounds %struct.panel_info, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %pp33_gpio.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i, ptr %pp33_gpio.i, align 4
  %cmp.i68.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %if.then11.i, label %if.end20.i

if.then11.i:                                      ; preds = %if.end7.i
  %cmp14.not.i = icmp eq ptr %call8.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp14.not.i, label %if.then11.i.cleanup_crit_edge, label %do.end18.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end18.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call8.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %15) #7
  br label %panel_add.exit

if.end20.i:                                       ; preds = %if.end7.i
  %call21.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 7) #4
  %enable_gpio.i = getelementptr inbounds %struct.panel_info, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21.i, ptr %enable_gpio.i, align 4
  %cmp.i69.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.then24.i, label %if.end33.i

if.then24.i:                                      ; preds = %if.end20.i
  %cmp27.not.i = icmp eq ptr %call21.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp27.not.i, label %if.then24.i.cleanup_crit_edge, label %do.end31.i

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end31.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %call21.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %17) #7
  br label %panel_add.exit

if.end33.i:                                       ; preds = %if.end20.i
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @panel_funcs, i32 noundef 16) #4
  %call35.i = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool.not.i, label %panel_add.exit.thread37, label %if.end33.i.panel_add.exit_crit_edge

if.end33.i.panel_add.exit_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %panel_add.exit

panel_add.exit.thread37:                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #4
  br label %if.end9

panel_add.exit:                                   ; preds = %if.end33.i.panel_add.exit_crit_edge, %do.end31.i, %do.end18.i, %do.end.i
  %retval.0.i = phi i32 [ %13, %do.end.i ], [ %15, %do.end18.i ], [ %17, %do.end31.i ], [ %call35.i, %if.end33.i.panel_add.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %panel_add.exit.cleanup_crit_edge, label %panel_add.exit.if.end9_crit_edge

panel_add.exit.if.end9_crit_edge:                 ; preds = %panel_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

panel_add.exit.cleanup_crit_edge:                 ; preds = %panel_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %panel_add.exit.if.end9_crit_edge, %panel_add.exit.thread37
  %call10 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %panel_add.exit.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %panel_add.exit.cleanup_crit_edge ], [ %call10, %if.then12 ], [ %call10, %if.end9.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ], [ -517, %if.then11.i.cleanup_crit_edge ], [ -517, %if.then24.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled.i = getelementptr inbounds %struct.panel_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %link.i = getelementptr inbounds %struct.panel_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link.i, align 4
  %call1.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled.i, align 1
  br label %if.end

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %call1.i) #7
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call1.i) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end3.i, %entry.if.end_crit_edge
  %call3 = tail call i32 @boe_panel_unprepare(ptr noundef %1)
  %call11 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev17 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.38, i32 noundef %call11) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end.if.end18_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled.i = getelementptr inbounds %struct.panel_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.boe_panel_disable.exit_crit_edge, label %if.end.i

entry.boe_panel_disable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %boe_panel_disable.exit

if.end.i:                                         ; preds = %entry
  %link.i = getelementptr inbounds %struct.panel_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link.i, align 4
  %call1.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %call1.i) #7
  br label %boe_panel_disable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled.i, align 1
  br label %boe_panel_disable.exit

boe_panel_disable.exit:                           ; preds = %if.end3.i, %do.end.i, %entry.boe_panel_disable.exit_crit_edge
  %call3 = tail call i32 @boe_panel_unprepare(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pp18_gpio = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %pp18_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp18_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #4
  %pp33_gpio = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 4
  %4 = ptrtoint ptr %pp33_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp33_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 14000, i32 noundef 15000, i32 noundef 2) #4
  %enable_gpio = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %10 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #4
  %desc = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 2
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %on_cmds = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %on_cmds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %on_cmds, align 4
  %link.i = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 1
  %on_cmds_num9.i = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %on_cmds_num9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %on_cmds_num9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.not.i = icmp eq i32 %17, 0
  br i1 %cmp10.not.i, label %if.end.if.end5_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %on_cmds_num.i = getelementptr inbounds %struct.panel_desc, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %on_cmds_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %on_cmds_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end5_crit_edge

for.cond.i.if.end5_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.i, align 4
  %arrayidx.i = getelementptr %struct.panel_cmd, ptr %15, i32 %i.011.i
  %call1.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %23, ptr noundef %arrayidx.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end, label %for.cond.i

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.15, i32 noundef %call1.i) #7
  br label %poweroff

if.end5:                                          ; preds = %for.cond.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %26 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.i, align 4
  %call6 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef %call6) #7
  br label %poweroff

if.end13:                                         ; preds = %if.end5
  tail call void @usleep_range_state(i32 noundef 120000, i32 noundef 121000, i32 noundef 2) #4
  %30 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.i, align 4
  %call15 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.21, i32 noundef %call15) #7
  br label %poweroff

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 21000, i32 noundef 2) #4
  %34 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

poweroff:                                         ; preds = %do.end20, %do.end11, %do.end
  %err.0 = phi i32 [ %call1.i, %do.end ], [ %call6, %do.end11 ], [ %call15, %do.end20 ]
  %35 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %36, i32 noundef 0) #4
  %37 = ptrtoint ptr %pp33_gpio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pp33_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %38, i32 noundef 0) #4
  %39 = ptrtoint ptr %pp18_gpio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pp18_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %40, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %poweroff, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %poweroff ], [ 0, %if.end22 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_panel_enable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 7
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 120000, i32 noundef 121000, i32 noundef 2) #4
  %link = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %call1) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_panel_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 7
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %call1) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %call1) #7
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %call5 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef %call5) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end3.if.end12_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %enable_gpio.i = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 3
  %10 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #4
  %pp33_gpio.i = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 4
  %12 = ptrtoint ptr %pp33_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp33_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #4
  %pp18_gpio.i = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 5
  %14 = ptrtoint ptr %pp18_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pp18_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 0) #4
  %16 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.panel_info, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %5, ptr noundef %3) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %9 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %11 to i32
  %call4 = tail call i32 @drm_mode_vrefresh(ptr noundef %3) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv3, i32 noundef %call4) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mode_set_name(ptr noundef nonnull %call1) #4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #4
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %width_mm = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %width_mm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width_mm, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %16 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %display_info, align 8
  %17 = load ptr, ptr %desc, align 4
  %height_mm = getelementptr inbounds %struct.panel_desc, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height_mm, align 4
  %height_mm9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %height_mm9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height_mm9, align 4
  %21 = load ptr, ptr %desc, align 4
  %bpc = getelementptr inbounds %struct.panel_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bpc, align 4
  %bpc12 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %24 = ptrtoint ptr %bpc12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bpc12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_panel_boe_himax8279d__302_961_panel_driver_init6, !1, !"__initcall__kmod_panel_boe_himax8279d__302_961_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 961, i32 1}
!2 = !{ptr @__exitcall_panel_driver_exit, !1, !"__exitcall_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 963, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 964, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 965, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 954, i32 11}
!12 = !{ptr @panel_driver, !13, !"panel_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 952, i32 31}
!14 = !{ptr @panel_of_match, !15, !"panel_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 836, i32 34}
!16 = !{ptr @boe_himax8279d8p_panel_desc, !17, !"boe_himax8279d8p_panel_desc", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 523, i32 32}
!18 = !{ptr @default_display_mode, !19, !"default_display_mode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 247, i32 38}
!20 = !{ptr @boe_himax8279d8p_on_cmds, !21, !"boe_himax8279d8p_on_cmds", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 260, i32 31}
!22 = !{ptr @boe_himax8279d10p_panel_desc, !23, !"boe_himax8279d10p_panel_desc", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 823, i32 32}
!24 = !{ptr @boe_himax8279d10p_on_cmds, !25, !"boe_himax8279d10p_on_cmds", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 537, i32 31}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 856, i32 41}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 860, i32 4}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @panel_add._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @panel_add._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 864, i32 41}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 868, i32 4}
!40 = !{ptr @panel_add._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @panel_add._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 872, i32 43}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 876, i32 4}
!46 = !{ptr @panel_add._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @panel_add._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @panel_funcs, !49, !"panel_funcs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 239, i32 37}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 162, i32 3}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @boe_panel_prepare._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @boe_panel_prepare._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 168, i32 3}
!57 = !{ptr @boe_panel_prepare._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @boe_panel_prepare._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 177, i32 3}
!61 = !{ptr @boe_panel_prepare._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @boe_panel_prepare._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 205, i32 3}
!65 = !{ptr @boe_panel_enable._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @boe_panel_enable._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 95, i32 3}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @boe_panel_disable._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @boe_panel_disable._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 114, i32 3}
!74 = !{ptr @boe_panel_unprepare._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @boe_panel_unprepare._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 118, i32 3}
!78 = !{ptr @boe_panel_unprepare._entry.27, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @boe_panel_unprepare._entry_ptr.29, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 223, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @boe_panel_get_modes._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @boe_panel_get_modes._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 929, i32 3}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @panel_remove._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @panel_remove._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 933, i32 3}
!92 = !{ptr @panel_remove._entry.34, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @panel_remove._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-boe-himax8279d.c", i32 937, i32 3}
!96 = !{ptr @panel_remove._entry.37, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @panel_remove._entry_ptr.39, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
