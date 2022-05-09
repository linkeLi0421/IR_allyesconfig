; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.k101_im2ba02_init_cmd = type { [2 x i8] }
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
%struct.k101_im2ba02 = type { %struct.drm_panel, ptr, [3 x %struct.regulator_bulk_data], ptr }
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

@__initcall__kmod_panel_feixin_k101_im2ba02__302_513_k101_im2ba02_driver_init6 = internal global ptr @k101_im2ba02_driver_init, section ".initcall6.init", align 4
@k101_im2ba02_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @k101_im2ba02_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @k101_im2ba02_dsi_probe, ptr @k101_im2ba02_dsi_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_k101_im2ba02_driver_exit = internal global ptr @k101_im2ba02_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [65 x i8] c"panel_feixin_k101_im2ba02.author=Icenowy Zheng <icenowy@aosc.io>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [77 x i8] c"panel_feixin_k101_im2ba02.description=Feixin K101 IM2BA02 MIPI-DSI LCD panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [79 x i8] c"panel_feixin_k101_im2ba02.file=drivers/gpu/drm/panel/panel-feixin-k101-im2ba02\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [38 x i8] c"panel_feixin_k101_im2ba02.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"feixin-k101-im2ba02\00", [44 x i8] zeroinitializer }, align 32
@k101_im2ba02_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"feixin,k101-im2ba02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't get regulators\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@k101_im2ba02_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @k101_im2ba02_prepare, ptr @k101_im2ba02_enable, ptr @k101_im2ba02_disable, ptr @k101_im2ba02_unprepare, ptr @k101_im2ba02_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cvdd\00", [27 x i8] zeroinitializer }, align 32
@k101_im2ba02_init_cmds = internal constant { [217 x %struct.k101_im2ba02_init_cmd], [110 x i8] } { [217 x %struct.k101_im2ba02_init_cmd] [%struct.k101_im2ba02_init_cmd { [2 x i8] c"\E0\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E1\93" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E2e" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E3\F8" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\80\03" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"p\02" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"q#" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"r\06" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E0\01" }, %struct.k101_im2ba02_init_cmd zeroinitializer, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\01f" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\03\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\04%" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\17\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\18m" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\19\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1A\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1B\BF" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1C\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1F>" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c" (" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"!(" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\22\0E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"7\09" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"8\04" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"9\08" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c":\12" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"<x" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"=\FF" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c">\FF" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"?\7F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"@\06" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"A\A0" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"U\0F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"V\01" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"Wi" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"X\0A" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"Y\0A" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"ZE" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"[\15" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"]|" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"^e" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"_U" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"`I" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"aD" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"b5" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"c:" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"d#" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"e=" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"f<" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"g=" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"h]" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"iM" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"jV" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"kH" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"lE" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"m8" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"n%" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"o\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"p|" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"qe" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"rU" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"sI" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"tD" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"u5" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"v:" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"w#" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"x=" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"y<" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"z=" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"{]" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"|M" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"}V" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"~H" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\7FE" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\808" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\81%" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\82\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E0\02" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\00\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\01\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\02A" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\03A" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\04C" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\05C" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\06\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\07\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\08\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\09\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\0A\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\0B\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\0C\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\0DG" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\0EG" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\0FE" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\10E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\11K" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\12K" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\13I" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\14I" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\15\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\16\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\17\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\18@" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\19@" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1AB" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1BB" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1C\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1D\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1E\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\1F\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c" \1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"!\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\22\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"#F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"$F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"%D" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"&D" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"'J" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"(J" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c")H" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"*H" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"+\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c",\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"-\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c".B" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"/B" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"0@" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"1@" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"2\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"3\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"4\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"5\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"6\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"7\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"8\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"9H" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c":H" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c";J" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"<J" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"=D" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c">D" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"?F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"@F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"A\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"B\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"C\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"DC" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"EC" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"FA" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"GA" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"H\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"I\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"J\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"K\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"L\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"M\1E" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"N\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"OI" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"PI" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"QK" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"RK" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"SE" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"TE" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"UG" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"VG" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"W\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"X\10" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"Y\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"Z\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"[0" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\\\02" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"]@" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"^\01" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"_\02" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"`0" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"a\01" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"b\02" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"cj" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"dj" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"e\05" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"f\12" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"gt" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"h\04" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"ij" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"jj" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"k\08" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"l\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"m\04" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"n\04" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"o\88" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"p\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"q\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"r\06" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"s{" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"t\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"u\07" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"v\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"w]" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"x\17" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"y\1F" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"z\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"{\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"|\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"}\03" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"~{" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E0\04" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"++" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c".D" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E0\01" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\0E\01" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E0\03" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\98/" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E0\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E6\02" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\E7\02" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"\11\00" }], [110 x i8] zeroinitializer }, align 32
@timed_cmds = internal constant { [2 x %struct.k101_im2ba02_init_cmd], [28 x i8] } { [2 x %struct.k101_im2ba02_init_cmd] [%struct.k101_im2ba02_init_cmd { [2 x i8] c")\00" }, %struct.k101_im2ba02_init_cmd { [2 x i8] c"5\00" }], [28 x i8] zeroinitializer }, align 32
@k101_im2ba02_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 376, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"k101_im2ba02_unprepare\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@k101_im2ba02_unprepare._entry_ptr = internal global ptr @k101_im2ba02_unprepare._entry, section ".printk_index", align 4
@k101_im2ba02_unprepare._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 380, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@k101_im2ba02_unprepare._entry_ptr.14 = internal global ptr @k101_im2ba02_unprepare._entry.12, section ".printk_index", align 4
@k101_im2ba02_default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 70000, i16 800, i16 820, i16 840, i16 860, i16 0, i16 1280, i16 1296, i16 1300, i16 1304, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 136, i16 217, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@k101_im2ba02_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 419, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"k101_im2ba02_get_modes\00", [41 x i8] zeroinitializer }, align 32
@k101_im2ba02_get_modes._entry_ptr = internal global ptr @k101_im2ba02_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"k101_im2ba02_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 505, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 509, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"k101_im2ba02_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 499, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 460, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 462, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 465, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"k101_im2ba02_funcs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 433, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 20, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 21, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 22, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"k101_im2ba02_init_cmds\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 42, i32 43 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"timed_cmds\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 301, i32 43 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 376, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 380, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"k101_im2ba02_default_mode\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 390, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [53 x i8] c"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 416, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_k101_im2ba02_driver_exit, ptr @__initcall__kmod_panel_feixin_k101_im2ba02__302_513_k101_im2ba02_driver_init6, ptr @k101_im2ba02_driver_exit, ptr @k101_im2ba02_get_modes._entry, ptr @k101_im2ba02_get_modes._entry_ptr, ptr @k101_im2ba02_unprepare._entry, ptr @k101_im2ba02_unprepare._entry.12, ptr @k101_im2ba02_unprepare._entry_ptr, ptr @k101_im2ba02_unprepare._entry_ptr.14, ptr @k101_im2ba02_driver, ptr @.str, ptr @k101_im2ba02_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @k101_im2ba02_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @k101_im2ba02_init_cmds, ptr @timed_cmds, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @k101_im2ba02_default_mode, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_init_cmds to i32), i32 434, i32 544, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timed_cmds to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_unprepare._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2ba02_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @k101_im2ba02_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @k101_im2ba02_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @k101_im2ba02_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_dsi_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.k101_im2ba02, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dsi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dsi, ptr %dsi1, align 4
  %arrayidx2 = getelementptr %struct.k101_im2ba02, ptr %call.i, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.4, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.k101_im2ba02, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.5, ptr %arrayidx2.1, align 4
  %arrayidx2.2 = getelementptr %struct.k101_im2ba02, ptr %call.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %arrayidx2.2, align 4
  %call5 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call5, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 3) #4
  %reset = getelementptr inbounds %struct.k101_im2ba02, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call12 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @k101_im2ba02_funcs, i32 noundef 16) #4
  %call23 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %7 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %format, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %9 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %lanes, align 8
  %call28 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then7 ], [ %call19, %if.then15 ], [ %call28, %if.then30 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_dsi_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  tail call void @drm_panel_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  %supplies = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup14

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 30) #4
  %reset = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 3
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 50) #4
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 200) #4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 217
  br i1 %exitcond.not, label %for.cond.cleanup14_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup14_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup14

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.028 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [217 x %struct.k101_im2ba02_init_cmd], ptr @k101_im2ba02_init_cmds, i32 0, i32 %i.028
  %call6 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %powerdown, label %for.cond

powerdown:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %call13 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #4
  br label %cleanup14

cleanup14:                                        ; preds = %powerdown, %for.cond.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.0 = phi i32 [ %call13, %powerdown ], [ %call2, %entry.cleanup14_crit_edge ], [ 0, %for.cond.cleanup14_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 150) #4
  %dsi = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 50) #4
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 4
  %call3 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %3, ptr noundef getelementptr inbounds ([2 x %struct.k101_im2ba02_init_cmd], ptr @timed_cmds, i32 0, i32 1), i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi, align 4
  %call3 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %call3) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  tail call void @msleep(i32 noundef 200) #4
  %reset = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 3
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 20) #4
  %supplies = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 2
  %call11 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #4
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k101_im2ba02_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @k101_im2ba02_default_mode) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dsi = getelementptr inbounds %struct.k101_im2ba02, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 4
  %dev2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  %call4 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @k101_im2ba02_default_mode) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15, i32 noundef 800, i32 noundef 1280, i32 noundef %call4) #7
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
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_panel_feixin_k101_im2ba02__302_513_k101_im2ba02_driver_init6, !1, !"__initcall__kmod_panel_feixin_k101_im2ba02__302_513_k101_im2ba02_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 513, i32 1}
!2 = !{ptr @__exitcall_k101_im2ba02_driver_exit, !1, !"__exitcall_k101_im2ba02_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 515, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 516, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 517, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 509, i32 11}
!12 = !{ptr @k101_im2ba02_driver, !13, !"k101_im2ba02_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 505, i32 31}
!14 = !{ptr @k101_im2ba02_of_match, !15, !"k101_im2ba02_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 499, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 460, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 462, i32 41}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 465, i32 10}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 20, i32 2}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 21, i32 2}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 22, i32 2}
!28 = distinct !{null, !29, !"regulator_names", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 19, i32 27}
!30 = !{ptr @k101_im2ba02_funcs, !31, !"k101_im2ba02_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 433, i32 37}
!32 = !{ptr @k101_im2ba02_init_cmds, !33, !"k101_im2ba02_init_cmds", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 42, i32 43}
!34 = !{ptr @timed_cmds, !35, !"timed_cmds", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 301, i32 43}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 376, i32 3}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @k101_im2ba02_unprepare._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @k101_im2ba02_unprepare._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 380, i32 3}
!46 = !{ptr @k101_im2ba02_unprepare._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @k101_im2ba02_unprepare._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 416, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @k101_im2ba02_get_modes._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @k101_im2ba02_get_modes._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @k101_im2ba02_default_mode, !54, !"k101_im2ba02_default_mode", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c", i32 390, i32 38}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
