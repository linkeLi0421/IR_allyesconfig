; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-truly-nt35597.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-truly-nt35597.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nt35597_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.cmd_set = type { [4 x i8], i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
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
%struct.truly_nt35597 = type { ptr, %struct.drm_panel, [3 x %struct.regulator_bulk_data], ptr, ptr, ptr, [2 x ptr], ptr, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_truly_nt35597__302_652_truly_nt35597_driver_init6 = internal global ptr @truly_nt35597_driver_init, section ".initcall6.init", align 4
@truly_nt35597_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @truly_nt35597_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @truly_nt35597_probe, ptr @truly_nt35597_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_truly_nt35597_driver_exit = internal global ptr @truly_nt35597_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [63 x i8] c"panel_truly_nt35597.description=Truly NT35597 DSI Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [67 x i8] c"panel_truly_nt35597.file=drivers/gpu/drm/panel/panel-truly-nt35597\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [35 x i8] c"panel_truly_nt35597.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panel-truly-nt35597\00", [44 x i8] zeroinitializer }, align 32
@truly_nt35597_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"truly,nt35597-2K-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nt35597_dir }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nt35597_dir = internal constant { %struct.nt35597_config, [40 x i8] } { %struct.nt35597_config { i32 74, i32 131, ptr @.str.1, ptr @qcom_2k_panel_magic_cmds, i32 125, ptr @qcom_sdm845_mtp_2k_mode }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_sdm845_mtp_2k_panel\00", [39 x i8] zeroinitializer }, align 32
@qcom_2k_panel_magic_cmds = internal constant { [125 x %struct.cmd_set], [143 x i8] } { [125 x %struct.cmd_set] [%struct.cmd_set { [4 x i8] c"\FF \00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\FB\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\00\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\01U\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\02E\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\05@\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\06\19\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\07\1E\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0Bs\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0Cs\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0E\B0\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0F\AE\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\11\B8\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\13\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"X\80\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"Y\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"Z\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"[\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\\\80\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"]\81\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"^\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"_\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"r\11\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"h\03\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\FF$\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\FB\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\00\1C\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\01\0B\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\02\0C\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\03\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\04\0F\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\05\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\06\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\07\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\08\89\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\09\8A\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0A\13\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0B\13\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0C\15\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0D\15\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0E\17\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\0F\17\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\10\1C\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\11\0B\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\12\0C\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\13\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\14\0F\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\15\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\16\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\17\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\18\89\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\19\8A\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\1A\13\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\1B\13\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\1C\15\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\1D\15\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\1E\17\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\1F\17\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c" @\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"!\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\22\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"#@\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"$@\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"%m\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"&@\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"'@\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\E0\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\DC!\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\DD\22\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\DE\07\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\DF\07\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\E3m\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\E1\07\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\E2\07\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c")\D8\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"**\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"K\03\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"L\11\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"M\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"N\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"O\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"P\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"Q\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"R\80\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"S\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"V\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"T\07\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"X\07\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"U%\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"[C\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\\\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"_s\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"`s\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"c\22\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"d\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"g\08\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"h\04\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"r\02\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"z\80\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"{\91\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"|\D8\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"}`\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\7F\15\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"u\15\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\B3\C0\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\B4\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\B5\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"x\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"y\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\80\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\83\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\93\0A\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\94\0A\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\8A\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\9B\FF\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\9D\B0\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\9Fc\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\98\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\EC\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\FF\10\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c";\03\0A\0A", i8 4 }, %struct.cmd_set { [4 x i8] c"5\00\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\E5\01\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\BB\03\00\00", i8 2 }, %struct.cmd_set { [4 x i8] c"\FB\01\00\00", i8 2 }], [143 x i8] zeroinitializer }, align 32
@qcom_sdm845_mtp_2k_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 268316, i16 1440, i16 1640, i16 1672, i16 1736, i16 0, i16 2560, i16 2568, i16 2569, i16 2576, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x2560\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__const.truly_nt35597_probe.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"trulynt35597\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@truly_nt35597_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 562, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing device configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"truly_nt35597_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/panel/panel-truly-nt35597.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@truly_nt35597_probe._entry_ptr = internal global ptr @truly_nt35597_probe._entry, section ".printk_index", align 4
@truly_nt35597_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get remote node for dsi1_device\0A\00", [53 x i8] zeroinitializer }, align 32
@truly_nt35597_probe._entry_ptr.9 = internal global ptr @truly_nt35597_probe._entry.7, section ".printk_index", align 4
@truly_nt35597_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 575, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find dsi host\0A\00", [39 x i8] zeroinitializer }, align 32
@truly_nt35597_probe._entry_ptr.12 = internal global ptr @truly_nt35597_probe._entry.10, section ".printk_index", align 4
@truly_nt35597_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create dsi device\0A\00", [35 x i8] zeroinitializer }, align 32
@truly_nt35597_probe._entry_ptr.15 = internal global ptr @truly_nt35597_probe._entry.13, section ".printk_index", align 4
@truly_nt35597_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to add panel\0A\00", [43 x i8] zeroinitializer }, align 32
@truly_nt35597_probe._entry_ptr.18 = internal global ptr @truly_nt35597_probe._entry.16, section ".printk_index", align 4
@truly_nt35597_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 606, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsi attach failed i = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@truly_nt35597_probe._entry_ptr.21 = internal global ptr @truly_nt35597_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35597_panel_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get reset gpio %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"truly_nt35597_panel_add\00", [40 x i8] zeroinitializer }, align 32
@truly_nt35597_panel_add._entry_ptr = internal global ptr @truly_nt35597_panel_add._entry, section ".printk_index", align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@truly_nt35597_panel_add._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.4, i32 493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot get mode gpio %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@truly_nt35597_panel_add._entry_ptr.28 = internal global ptr @truly_nt35597_panel_add._entry.26, section ".printk_index", align 4
@truly_nt35597_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @truly_nt35597_prepare, ptr @truly_nt35597_enable, ptr @truly_nt35597_disable, ptr @truly_nt35597_unprepare, ptr @truly_nt35597_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdispp\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdispn\00", [25 x i8] zeroinitializer }, align 32
@truly_nt35597_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cmd set tx failed i = %d ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"truly_nt35597_prepare\00", [42 x i8] zeroinitializer }, align 32
@truly_nt35597_prepare._entry_ptr = internal global ptr @truly_nt35597_prepare._entry, section ".printk_index", align 4
@truly_nt35597_prepare._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 396, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"exit_sleep_mode cmd failed ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@truly_nt35597_prepare._entry_ptr.36 = internal global ptr @truly_nt35597_prepare._entry.34, section ".printk_index", align 4
@truly_nt35597_prepare._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set_display_on cmd failed ret = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@truly_nt35597_prepare._entry_ptr.39 = internal global ptr @truly_nt35597_prepare._entry.37, section ".printk_index", align 4
@truly_nt35597_prepare._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power_off failed\0A\00", [46 x i8] zeroinitializer }, align 32
@truly_nt35597_prepare._entry_ptr.42 = internal global ptr @truly_nt35597_prepare._entry.40, section ".printk_index", align 4
@truly_dcs_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to tx cmd [%d], err: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"truly_dcs_write_buf\00", [44 x i8] zeroinitializer }, align 32
@truly_dcs_write_buf._entry_ptr = internal global ptr @truly_dcs_write_buf._entry, section ".printk_index", align 4
@truly_dcs_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd 0x%x failed for dsi = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"truly_dcs_write\00", [16 x i8] zeroinitializer }, align 32
@truly_dcs_write._entry_ptr = internal global ptr @truly_dcs_write._entry, section ".printk_index", align 4
@truly_nt35597_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regulator_set_load failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"truly_nt35597_power_off\00", [40 x i8] zeroinitializer }, align 32
@truly_nt35597_power_off._entry_ptr = internal global ptr @truly_nt35597_power_off._entry, section ".printk_index", align 4
@truly_nt35597_power_off._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator_bulk_disable failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@truly_nt35597_power_off._entry_ptr.51 = internal global ptr @truly_nt35597_power_off._entry.49, section ".printk_index", align 4
@truly_nt35597_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"backlight enable failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"truly_nt35597_enable\00", [43 x i8] zeroinitializer }, align 32
@truly_nt35597_enable._entry_ptr = internal global ptr @truly_nt35597_enable._entry, section ".printk_index", align 4
@truly_nt35597_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"backlight disable failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"truly_nt35597_disable\00", [42 x i8] zeroinitializer }, align 32
@truly_nt35597_disable._entry_ptr = internal global ptr @truly_nt35597_disable._entry, section ".printk_index", align 4
@truly_nt35597_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 342, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set_display_off cmd failed ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"truly_nt35597_unprepare\00", [40 x i8] zeroinitializer }, align 32
@truly_nt35597_unprepare._entry_ptr = internal global ptr @truly_nt35597_unprepare._entry, section ".printk_index", align 4
@truly_nt35597_unprepare._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enter_sleep cmd failed ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@truly_nt35597_unprepare._entry_ptr.60 = internal global ptr @truly_nt35597_unprepare._entry.58, section ".printk_index", align 4
@truly_nt35597_unprepare._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.4, i32 355, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"power_off failed ret = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@truly_nt35597_unprepare._entry_ptr.63 = internal global ptr @truly_nt35597_unprepare._entry.61, section ".printk_index", align 4
@truly_nt35597_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 451, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create a new display mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"truly_nt35597_get_modes\00", [40 x i8] zeroinitializer }, align 32
@truly_nt35597_get_modes._entry_ptr = internal global ptr @truly_nt35597_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"truly_nt35597_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 644, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 646, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"truly_nt35597_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 635, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"nt35597_dir\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 521, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 524, i32 16 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"qcom_2k_panel_magic_cmds\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 76, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"qcom_sdm845_mtp_2k_mode\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 507, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 562, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 568, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 575, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 582, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 594, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 606, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 485, i32 40 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 487, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 491, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 493, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [24 x i8] c"truly_nt35597_drm_funcs\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 464, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 22, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 23, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 24, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 389, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 396, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 405, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 418, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 250, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 233, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 299, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 306, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 433, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 322, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 342, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 350, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 355, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [47 x i8] c"../drivers/gpu/drm/panel/panel-truly-nt35597.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 451, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_truly_nt35597_driver_exit, ptr @__initcall__kmod_panel_truly_nt35597__302_652_truly_nt35597_driver_init6, ptr @truly_dcs_write._entry, ptr @truly_dcs_write._entry_ptr, ptr @truly_dcs_write_buf._entry, ptr @truly_dcs_write_buf._entry_ptr, ptr @truly_nt35597_disable._entry, ptr @truly_nt35597_disable._entry_ptr, ptr @truly_nt35597_driver_exit, ptr @truly_nt35597_enable._entry, ptr @truly_nt35597_enable._entry_ptr, ptr @truly_nt35597_get_modes._entry, ptr @truly_nt35597_get_modes._entry_ptr, ptr @truly_nt35597_panel_add._entry, ptr @truly_nt35597_panel_add._entry.26, ptr @truly_nt35597_panel_add._entry_ptr, ptr @truly_nt35597_panel_add._entry_ptr.28, ptr @truly_nt35597_power_off._entry, ptr @truly_nt35597_power_off._entry.49, ptr @truly_nt35597_power_off._entry_ptr, ptr @truly_nt35597_power_off._entry_ptr.51, ptr @truly_nt35597_prepare._entry, ptr @truly_nt35597_prepare._entry.34, ptr @truly_nt35597_prepare._entry.37, ptr @truly_nt35597_prepare._entry.40, ptr @truly_nt35597_prepare._entry_ptr, ptr @truly_nt35597_prepare._entry_ptr.36, ptr @truly_nt35597_prepare._entry_ptr.39, ptr @truly_nt35597_prepare._entry_ptr.42, ptr @truly_nt35597_probe._entry, ptr @truly_nt35597_probe._entry.10, ptr @truly_nt35597_probe._entry.13, ptr @truly_nt35597_probe._entry.16, ptr @truly_nt35597_probe._entry.19, ptr @truly_nt35597_probe._entry.7, ptr @truly_nt35597_probe._entry_ptr, ptr @truly_nt35597_probe._entry_ptr.12, ptr @truly_nt35597_probe._entry_ptr.15, ptr @truly_nt35597_probe._entry_ptr.18, ptr @truly_nt35597_probe._entry_ptr.21, ptr @truly_nt35597_probe._entry_ptr.9, ptr @truly_nt35597_unprepare._entry, ptr @truly_nt35597_unprepare._entry.58, ptr @truly_nt35597_unprepare._entry.61, ptr @truly_nt35597_unprepare._entry_ptr, ptr @truly_nt35597_unprepare._entry_ptr.60, ptr @truly_nt35597_unprepare._entry_ptr.63, ptr @truly_nt35597_driver, ptr @.str, ptr @truly_nt35597_of_match, ptr @nt35597_dir, ptr @.str.1, ptr @qcom_2k_panel_magic_cmds, ptr @qcom_sdm845_mtp_2k_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @truly_nt35597_drm_funcs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35597_dir to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_2k_panel_magic_cmds to i32), i32 625, i32 768, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_sdm845_mtp_2k_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_panel_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_panel_add._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_prepare._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_prepare._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_prepare._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_dcs_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_dcs_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_power_off._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_unprepare._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_unprepare._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35597_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @truly_nt35597_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @truly_nt35597_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @truly_nt35597_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %info = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #5
  %0 = call ptr @memcpy(ptr %info, ptr @__const.truly_nt35597_probe.info, i32 28)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %config = getelementptr inbounds %struct.truly_nt35597, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %config, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_graph_get_remote_node(ptr noundef %3, i32 noundef 1, i32 noundef -1) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef nonnull %call8) #5
  tail call void @of_node_put(ptr noundef nonnull %call8) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = call ptr @mipi_dsi_device_register_full(ptr noundef nonnull %call15, ptr noundef nonnull %info) #5
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %4 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %dsi31 = getelementptr %struct.truly_nt35597, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %dsi31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dsi, ptr %dsi31, align 4
  %arrayidx33 = getelementptr %struct.truly_nt35597, ptr %call.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %arrayidx33, align 4
  %arrayidx2.i = getelementptr %struct.truly_nt35597, ptr %call.i, i32 0, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.29, ptr %arrayidx2.i, align 4
  %arrayidx2.1.i = getelementptr %struct.truly_nt35597, ptr %call.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.30, ptr %arrayidx2.1.i, align 4
  %arrayidx2.2.i = getelementptr %struct.truly_nt35597, ptr %call.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.31, ptr %arrayidx2.2.i, align 4
  %call.i92 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp4.i = icmp slt i32 %call.i92, 0
  br i1 %cmp4.i, label %if.end29.do.end39_crit_edge, label %if.end.i

if.end29.do.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

if.end.i:                                         ; preds = %if.end29
  %call5.i = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef 3) #5
  %reset_gpio.i = getelementptr inbounds %struct.truly_nt35597, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i, ptr %reset_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.truly_nt35597_panel_add.exit_crit_edge, label %if.end13.i

if.end.i.truly_nt35597_panel_add.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %truly_nt35597_panel_add.exit

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 3) #5
  %mode_gpio.i = getelementptr inbounds %struct.truly_nt35597, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %mode_gpio.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call14.i, ptr %mode_gpio.i, align 4
  %cmp.i52.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52.i, label %if.end13.i.truly_nt35597_panel_add.exit_crit_edge, label %truly_nt35597_panel_add.exit.thread

if.end13.i.truly_nt35597_panel_add.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %truly_nt35597_panel_add.exit

truly_nt35597_panel_add.exit.thread:              ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_value(ptr noundef %call14.i, i32 noundef 0) #5
  %panel.i = getelementptr inbounds %struct.truly_nt35597, ptr %call.i, i32 0, i32 1
  call void @drm_panel_init(ptr noundef %panel.i, ptr noundef %dev1, ptr noundef nonnull @truly_nt35597_drm_funcs, i32 noundef 16) #5
  call void @drm_panel_add(ptr noundef %panel.i) #5
  br label %for.body.preheader

truly_nt35597_panel_add.exit:                     ; preds = %if.end13.i.truly_nt35597_panel_add.exit_crit_edge, %if.end.i.truly_nt35597_panel_add.exit_crit_edge
  %call5.i.sink = phi ptr [ %call5.i, %if.end.i.truly_nt35597_panel_add.exit_crit_edge ], [ %call14.i, %if.end13.i.truly_nt35597_panel_add.exit_crit_edge ]
  %.str.23.sink = phi ptr [ @.str.23, %if.end.i.truly_nt35597_panel_add.exit_crit_edge ], [ @.str.27, %if.end13.i.truly_nt35597_panel_add.exit_crit_edge ]
  %reset_gpio.i.sink = phi ptr [ %reset_gpio.i, %if.end.i.truly_nt35597_panel_add.exit_crit_edge ], [ %mode_gpio.i, %if.end13.i.truly_nt35597_panel_add.exit_crit_edge ]
  %14 = ptrtoint ptr %call5.i.sink to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.23.sink, i32 noundef %14) #8
  %15 = ptrtoint ptr %reset_gpio.i.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio.i.sink, align 4
  %17 = ptrtoint ptr %16 to i32
  %tobool35.not = icmp eq ptr %16, null
  br i1 %tobool35.not, label %truly_nt35597_panel_add.exit.for.body.preheader_crit_edge, label %truly_nt35597_panel_add.exit.do.end39_crit_edge

truly_nt35597_panel_add.exit.do.end39_crit_edge:  ; preds = %truly_nt35597_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

truly_nt35597_panel_add.exit.for.body.preheader_crit_edge: ; preds = %truly_nt35597_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %truly_nt35597_panel_add.exit.for.body.preheader_crit_edge, %truly_nt35597_panel_add.exit.thread
  %18 = ptrtoint ptr %dsi31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsi31, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 5
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3073, ptr %mode_flags, align 8
  %call43 = call i32 @mipi_dsi_attach(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %for.body.preheader.do.end48_crit_edge, label %for.inc

for.body.preheader.do.end48_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

do.end39:                                         ; preds = %truly_nt35597_panel_add.exit.do.end39_crit_edge, %if.end29.do.end39_crit_edge
  %retval.0.i95 = phi i32 [ %17, %truly_nt35597_panel_add.exit.do.end39_crit_edge ], [ %call.i92, %if.end29.do.end39_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %err_panel_add

do.end48:                                         ; preds = %for.inc.do.end48_crit_edge, %for.body.preheader.do.end48_crit_edge
  %i.097.lcssa = phi i32 [ 0, %for.body.preheader.do.end48_crit_edge ], [ 1, %for.inc.do.end48_crit_edge ]
  %call43.lcssa = phi i32 [ %call43, %for.body.preheader.do.end48_crit_edge ], [ %call43.1, %for.inc.do.end48_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %i.097.lcssa) #8
  %panel = getelementptr inbounds %struct.truly_nt35597, ptr %call.i, i32 0, i32 1
  call void @drm_panel_remove(ptr noundef %panel) #5
  br label %err_panel_add

for.inc:                                          ; preds = %for.body.preheader
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx33, align 4
  %lanes.1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %lanes.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %lanes.1, align 8
  %format.1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %24, i32 0, i32 5
  %26 = ptrtoint ptr %format.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %format.1, align 4
  %mode_flags.1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %mode_flags.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3073, ptr %mode_flags.1, align 8
  %call43.1 = call i32 @mipi_dsi_attach(ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.1)
  %cmp44.1 = icmp slt i32 %call43.1, 0
  br i1 %cmp44.1, label %for.inc.do.end48_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.do.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

err_panel_add:                                    ; preds = %do.end48, %do.end39
  %ret.0 = phi i32 [ %retval.0.i95, %do.end39 ], [ %call43.lcssa, %do.end48 ]
  call void @mipi_dsi_device_unregister(ptr noundef %call22) #5
  br label %cleanup

cleanup:                                          ; preds = %err_panel_add, %for.inc.cleanup_crit_edge, %do.end27, %do.end20, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end27 ], [ %ret.0, %err_panel_add ], [ -517, %do.end20 ], [ -19, %do.end13 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_remove(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.truly_nt35597, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @mipi_dsi_detach(ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx6 = getelementptr %struct.truly_nt35597, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @mipi_dsi_detach(ptr noundef nonnull %5) #5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  tail call void @mipi_dsi_device_unregister(ptr noundef %7) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %panel = getelementptr inbounds %struct.truly_nt35597, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mipi_dsi_device_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %prepared = getelementptr i8, ptr %panel, i32 84
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %consumer.i = getelementptr i8, ptr %panel, i32 28
  %2 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %consumer.i, align 4
  %call.i = tail call i32 @regulator_set_load(ptr noundef %3, i32 noundef 62000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.truly_35597_power_on.exit_crit_edge

if.end.truly_35597_power_on.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %truly_35597_power_on.exit

for.cond.i:                                       ; preds = %if.end
  %consumer.1.i = getelementptr i8, ptr %panel, i32 40
  %4 = ptrtoint ptr %consumer.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer.1.i, align 4
  %call.1.i = tail call i32 @regulator_set_load(ptr noundef %5, i32 noundef 100000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.truly_35597_power_on.exit_crit_edge

for.cond.i.truly_35597_power_on.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %truly_35597_power_on.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %consumer.2.i = getelementptr i8, ptr %panel, i32 52
  %6 = ptrtoint ptr %consumer.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer.2.i, align 4
  %call.2.i = tail call i32 @regulator_set_load(ptr noundef %7, i32 noundef 100000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.truly_35597_power_on.exit_crit_edge

for.cond.1.i.truly_35597_power_on.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %truly_35597_power_on.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %supplies2.i = getelementptr i8, ptr %panel, i32 24
  %call3.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %for.cond.2.i.cleanup_crit_edge, label %truly_35597_power_on.exit.thread99

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

truly_35597_power_on.exit.thread99:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 60
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %12 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  br label %if.end3

truly_35597_power_on.exit:                        ; preds = %for.cond.1.i.truly_35597_power_on.exit_crit_edge, %for.cond.i.truly_35597_power_on.exit_crit_edge, %if.end.truly_35597_power_on.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.truly_35597_power_on.exit_crit_edge ], [ %call.1.i, %for.cond.i.truly_35597_power_on.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.truly_35597_power_on.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %truly_35597_power_on.exit.cleanup_crit_edge, label %truly_35597_power_on.exit.if.end3_crit_edge

truly_35597_power_on.exit.if.end3_crit_edge:      ; preds = %truly_35597_power_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

truly_35597_power_on.exit.cleanup_crit_edge:      ; preds = %truly_35597_power_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %truly_35597_power_on.exit.if.end3_crit_edge, %truly_35597_power_on.exit.thread99
  %dsi = getelementptr i8, ptr %panel, i32 72
  %14 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsi, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode_flags, align 8
  %or = or i32 %17, 2048
  store i32 %or, ptr %mode_flags, align 8
  %arrayidx5 = getelementptr i8, ptr %panel, i32 76
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  %mode_flags6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %mode_flags6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode_flags6, align 8
  %or7 = or i32 %21, 2048
  store i32 %or7, ptr %mode_flags6, align 8
  %config8 = getelementptr i8, ptr %panel, i32 80
  %22 = ptrtoint ptr %config8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config8, align 4
  %panel_on_cmds9 = getelementptr inbounds %struct.nt35597_config, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %panel_on_cmds9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %panel_on_cmds9, align 4
  %num_on_cmds = getelementptr inbounds %struct.nt35597_config, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %num_on_cmds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_on_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10106.not = icmp eq i32 %27, 0
  br i1 %cmp10106.not, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.cmd_set, ptr %25, i32 %i.0107
  %size = getelementptr %struct.cmd_set, ptr %25, i32 %i.0107, i32 1
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %size, align 1
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dsi, align 4
  %call1.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %31, ptr noundef %arrayidx11, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %for.body.do.end_crit_edge, label %for.inc.i

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc.i:                                        ; preds = %for.body
  %32 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx5, align 4
  %call1.1.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %33, ptr noundef %arrayidx11, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp slt i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.inc.i.do.end_crit_edge, label %for.inc

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %for.body.do.end_crit_edge
  %i.014.lcssa.i = phi i32 [ 0, %for.body.do.end_crit_edge ], [ 1, %for.inc.i.do.end_crit_edge ]
  %call1.lcssa.i = phi i32 [ %call1.i, %for.body.do.end_crit_edge ], [ %call1.1.i, %for.inc.i.do.end_crit_edge ]
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.43, i32 noundef %i.014.lcssa.i, i32 noundef %call1.lcssa.i) #8
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.32, i32 noundef %i.0107, i32 noundef %call1.lcssa.i) #8
  br label %power_off

for.inc:                                          ; preds = %for.inc.i
  %inc = add nuw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %38 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsi, align 4
  %call1.i79 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %39, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %cmp2.i80 = icmp slt i32 %call1.i79, 0
  br i1 %cmp2.i80, label %do.end.i81, label %for.end.for.inc.i85_crit_edge

for.end.for.inc.i85_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i85

do.end.i81:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.45, i32 noundef 17, i32 noundef 0) #8
  br label %for.inc.i85

for.inc.i85:                                      ; preds = %do.end.i81, %for.end.for.inc.i85_crit_edge
  %42 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx5, align 4
  %call1.1.i83 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %43, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i83)
  %cmp2.1.i84 = icmp slt i32 %call1.1.i83, 0
  br i1 %cmp2.1.i84, label %do.end24, label %if.end26

do.end24:                                         ; preds = %for.inc.i85
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.45, i32 noundef 17, i32 noundef 1) #8
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.35, i32 noundef %call1.1.i83) #8
  br label %power_off

if.end26:                                         ; preds = %for.inc.i85
  tail call void @msleep(i32 noundef 120) #5
  %48 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dsi, align 4
  %call1.i88 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %49, i8 noundef zeroext 41, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %cmp2.i89 = icmp slt i32 %call1.i88, 0
  br i1 %cmp2.i89, label %do.end.i90, label %if.end26.for.inc.i94_crit_edge

if.end26.for.inc.i94_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i94

do.end.i90:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.45, i32 noundef 41, i32 noundef 0) #8
  br label %for.inc.i94

for.inc.i94:                                      ; preds = %do.end.i90, %if.end26.for.inc.i94_crit_edge
  %52 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx5, align 4
  %call1.1.i92 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %53, i8 noundef zeroext 41, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i92)
  %cmp2.1.i93 = icmp slt i32 %call1.1.i92, 0
  br i1 %cmp2.1.i93, label %do.end33, label %if.end35

do.end33:                                         ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.45, i32 noundef 41, i32 noundef 1) #8
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.38, i32 noundef %call1.1.i92) #8
  br label %power_off

if.end35:                                         ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 120) #5
  %58 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

power_off:                                        ; preds = %do.end33, %do.end24, %do.end
  %ret.0 = phi i32 [ %call1.lcssa.i, %do.end ], [ %call1.1.i83, %do.end24 ], [ %call1.1.i92, %do.end33 ]
  %call37 = tail call fastcc i32 @truly_nt35597_power_off(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %power_off.cleanup_crit_edge, label %do.end42

power_off.cleanup_crit_edge:                      ; preds = %power_off
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end42:                                         ; preds = %power_off
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.41) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %power_off.cleanup_crit_edge, %if.end35, %truly_35597_power_on.exit.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %truly_35597_power_on.exit.cleanup_crit_edge ], [ %ret.0, %do.end42 ], [ %ret.0, %power_off.cleanup_crit_edge ], [ %call3.i, %for.cond.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_enable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %enabled = getelementptr i8, ptr %panel, i32 85
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %backlight = getelementptr i8, ptr %panel, i32 68
  %2 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.end.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i = and i32 %7, -3
  store i32 %and.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_enable.exit.thread_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_enable.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_enable.exit.thread

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_enable.exit.thread_crit_edge, label %backlight_enable.exit

land.lhs.true.i.i.backlight_enable.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_enable.exit.thread

backlight_enable.exit.thread:                     ; preds = %land.lhs.true.i.i.backlight_enable.exit.thread_crit_edge, %if.end.i.backlight_enable.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  br label %do.end

backlight_enable.exit:                            ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 %11(ptr noundef nonnull %3) #5
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %backlight_enable.exit.do.end_crit_edge, label %backlight_enable.exit.if.end7_crit_edge

backlight_enable.exit.if.end7_crit_edge:          ; preds = %backlight_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

backlight_enable.exit.do.end_crit_edge:           ; preds = %backlight_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %backlight_enable.exit.do.end_crit_edge, %backlight_enable.exit.thread
  %ret.0.i.i17 = phi i32 [ -2, %backlight_enable.exit.thread ], [ %call.i.i, %backlight_enable.exit.do.end_crit_edge ]
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.52, i32 noundef %ret.0.i.i17) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %backlight_enable.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %enabled = getelementptr i8, ptr %panel, i32 85
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %backlight = getelementptr i8, ptr %panel, i32 68
  %2 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.end.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %or.i = or i32 %7, 2
  store i32 %or.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_disable.exit.thread_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_disable.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_disable.exit.thread

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_disable.exit.thread_crit_edge, label %backlight_disable.exit

land.lhs.true.i.i.backlight_disable.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_disable.exit.thread

backlight_disable.exit.thread:                    ; preds = %land.lhs.true.i.i.backlight_disable.exit.thread_crit_edge, %if.end.i.backlight_disable.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  br label %do.end

backlight_disable.exit:                           ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 %11(ptr noundef nonnull %3) #5
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %backlight_disable.exit.do.end_crit_edge, label %backlight_disable.exit.if.end7_crit_edge

backlight_disable.exit.if.end7_crit_edge:         ; preds = %backlight_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

backlight_disable.exit.do.end_crit_edge:          ; preds = %backlight_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %backlight_disable.exit.do.end_crit_edge, %backlight_disable.exit.thread
  %ret.0.i.i17 = phi i32 [ -2, %backlight_disable.exit.thread ], [ %call.i.i, %backlight_disable.exit.do.end_crit_edge ]
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.54, i32 noundef %ret.0.i.i17) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %backlight_disable.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %prepared = getelementptr i8, ptr %panel, i32 84
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsi = getelementptr i8, ptr %panel, i32 72
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode_flags, align 8
  %arrayidx2 = getelementptr i8, ptr %panel, i32 76
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %mode_flags3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %mode_flags3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mode_flags3, align 8
  %8 = load ptr, ptr %dsi, align 4
  %call1.i = tail call i32 @mipi_dsi_dcs_write(ptr noundef %8, i8 noundef zeroext 40, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end.i, label %if.end.for.inc.i_crit_edge

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.45, i32 noundef 40, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %if.end.for.inc.i_crit_edge
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2, align 4
  %call1.1.i = tail call i32 @mipi_dsi_dcs_write(ptr noundef %12, i8 noundef zeroext 40, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp slt i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %do.end, label %for.inc.i.if.end6_crit_edge

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.45, i32 noundef 40, i32 noundef 1) #8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.56, i32 noundef %call1.1.i) #8
  br label %if.end6

if.end6:                                          ; preds = %do.end, %for.inc.i.if.end6_crit_edge
  tail call void @msleep(i32 noundef 120) #5
  %17 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsi, align 4
  %call1.i42 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %18, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %cmp2.i43 = icmp slt i32 %call1.i42, 0
  br i1 %cmp2.i43, label %do.end.i44, label %if.end6.for.inc.i48_crit_edge

if.end6.for.inc.i48_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i48

do.end.i44:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.45, i32 noundef 16, i32 noundef 0) #8
  br label %for.inc.i48

for.inc.i48:                                      ; preds = %do.end.i44, %if.end6.for.inc.i48_crit_edge
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2, align 4
  %call1.1.i46 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %22, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i46)
  %cmp2.1.i47 = icmp slt i32 %call1.1.i46, 0
  br i1 %cmp2.1.i47, label %do.end12, label %for.inc.i48.if.end14_crit_edge

for.inc.i48.if.end14_crit_edge:                   ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end12:                                         ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.45, i32 noundef 16, i32 noundef 1) #8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.59, i32 noundef %call1.1.i46) #8
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %for.inc.i48.if.end14_crit_edge
  %call15 = tail call fastcc i32 @truly_nt35597_power_off(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.62, i32 noundef %call15) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end14.if.end22_crit_edge
  %29 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end22 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35597_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr i8, ptr %panel, i32 80
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %call2 = tail call ptr @drm_mode_create(ptr noundef %3) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.64) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %8 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.nt35597_config, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height_mm, align 4
  %height_mm6 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %height_mm6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height_mm6, align 4
  %dm = getelementptr inbounds %struct.nt35597_config, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dm, align 4
  tail call void @drm_mode_copy(ptr noundef nonnull %call2, ptr noundef %13) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 28
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @truly_nt35597_power_off(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.truly_nt35597, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #5
  %consumer = getelementptr %struct.truly_nt35597, ptr %ctx, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %consumer, align 4
  %call = tail call i32 @regulator_set_load(ptr noundef %3, i32 noundef 80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond:                                         ; preds = %entry
  %consumer.1 = getelementptr %struct.truly_nt35597, ptr %ctx, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer.1, align 4
  %call.1 = tail call i32 @regulator_set_load(ptr noundef %5, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %consumer.2 = getelementptr %struct.truly_nt35597, ptr %ctx, i32 0, i32 2, i32 2, i32 1
  %6 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer.2, align 4
  %call.2 = tail call i32 @regulator_set_load(ptr noundef %7, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.do.end_crit_edge

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %supplies2 = getelementptr inbounds %struct.truly_nt35597, ptr %ctx, i32 0, i32 2
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.2.cleanup_crit_edge, label %do.end8

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.cond.do.end_crit_edge ], [ %call.2, %for.cond.1.do.end_crit_edge ]
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.47, i32 noundef %call.lcssa) #8
  br label %cleanup

do.end8:                                          ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %do.end, %for.cond.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ %call3, %do.end8 ], [ 0, %for.cond.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_panel_truly_nt35597__302_652_truly_nt35597_driver_init6, !1, !"__initcall__kmod_panel_truly_nt35597__302_652_truly_nt35597_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 652, i32 1}
!2 = !{ptr @__exitcall_truly_nt35597_driver_exit, !1, !"__exitcall_truly_nt35597_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 654, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 655, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 646, i32 11}
!10 = !{ptr @truly_nt35597_driver, !11, !"truly_nt35597_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 644, i32 31}
!12 = !{ptr @truly_nt35597_of_match, !13, !"truly_nt35597_of_match", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 635, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 524, i32 16}
!16 = !{ptr @nt35597_dir, !17, !"nt35597_dir", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 521, i32 36}
!18 = !{ptr @qcom_2k_panel_magic_cmds, !19, !"qcom_2k_panel_magic_cmds", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 76, i32 29}
!20 = !{ptr @qcom_sdm845_mtp_2k_mode, !21, !"qcom_sdm845_mtp_2k_mode", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 507, i32 38}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 562, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @truly_nt35597_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @truly_nt35597_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 568, i32 3}
!32 = !{ptr @truly_nt35597_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @truly_nt35597_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 575, i32 3}
!36 = !{ptr @truly_nt35597_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @truly_nt35597_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 582, i32 3}
!40 = !{ptr @truly_nt35597_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @truly_nt35597_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 594, i32 3}
!44 = !{ptr @truly_nt35597_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @truly_nt35597_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 606, i32 4}
!48 = !{ptr @truly_nt35597_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @truly_nt35597_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 485, i32 40}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 487, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @truly_nt35597_panel_add._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @truly_nt35597_panel_add._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 491, i32 39}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 493, i32 3}
!61 = !{ptr @truly_nt35597_panel_add._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @truly_nt35597_panel_add._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 22, i32 2}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 23, i32 2}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 24, i32 2}
!69 = distinct !{null, !70, !"regulator_names", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 21, i32 27}
!71 = !{ptr @truly_nt35597_drm_funcs, !72, !"truly_nt35597_drm_funcs", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 464, i32 37}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 389, i32 4}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @truly_nt35597_prepare._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @truly_nt35597_prepare._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 396, i32 3}
!80 = !{ptr @truly_nt35597_prepare._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @truly_nt35597_prepare._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 405, i32 3}
!84 = !{ptr @truly_nt35597_prepare._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @truly_nt35597_prepare._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 418, i32 3}
!88 = !{ptr @truly_nt35597_prepare._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @truly_nt35597_prepare._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"regulator_enable_loads", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 27, i32 28}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 250, i32 4}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @truly_dcs_write_buf._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @truly_dcs_write_buf._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 233, i32 4}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @truly_dcs_write._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @truly_dcs_write._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 299, i32 4}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @truly_nt35597_power_off._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @truly_nt35597_power_off._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 306, i32 3}
!109 = !{ptr @truly_nt35597_power_off._entry.49, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @truly_nt35597_power_off._entry_ptr.51, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"regulator_disable_loads", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 33, i32 28}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 433, i32 4}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @truly_nt35597_enable._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @truly_nt35597_enable._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 322, i32 4}
!120 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @truly_nt35597_disable._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @truly_nt35597_disable._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 342, i32 3}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @truly_nt35597_unprepare._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @truly_nt35597_unprepare._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 350, i32 3}
!130 = !{ptr @truly_nt35597_unprepare._entry.58, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @truly_nt35597_unprepare._entry_ptr.60, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 355, i32 3}
!134 = !{ptr @truly_nt35597_unprepare._entry.61, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @truly_nt35597_unprepare._entry_ptr.63, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/panel/panel-truly-nt35597.c", i32 451, i32 3}
!138 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @truly_nt35597_get_modes._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @truly_nt35597_get_modes._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i8 0, i8 2}
